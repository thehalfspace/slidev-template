# ─── Stage 1: Build ───────────────────────────────────────────────────────────
# Uses Node to install dependencies and run `slidev build`.
# The output is placed in /app/dist.
FROM node:20-slim AS builder

WORKDIR /app

# Copy package files first so Docker can cache the npm install layer.
# Re-runs only when package.json or package-lock.json changes.
COPY package.json package-lock.json* ./

# Install dependencies.
# --legacy-peer-deps is sometimes needed for Slidev's peer dependency tree.
RUN npm install --legacy-peer-deps

# Copy the rest of the source.
COPY . .

# Build the static SPA into /app/dist.
# Note: --base is NOT passed here because routerMode is 'hash' in slides.md.
# With hash routing, all navigation happens after the # so the sub-path is
# handled correctly by GitHub Pages without needing --base on the build.
# If you ever switch back to history mode, add: --base /slidev-template/
RUN npm run build

# ─── Stage 2: Serve ───────────────────────────────────────────────────────────
# Copies only the built dist/ folder into a minimal nginx image.
# This is what runs when you do `docker run` locally.
FROM nginx:alpine AS server

# Remove the default nginx placeholder page.
RUN rm -rf /usr/share/nginx/html/*

# Copy the built slides from the builder stage.
COPY --from=builder /app/dist /usr/share/nginx/html

# nginx serves on port 80 inside the container.
# We expose it so `docker run -p 8080:80` maps it to localhost:8080.
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
