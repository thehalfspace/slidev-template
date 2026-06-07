---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
# some information about your slides (markdown enabled)
title: Welcome to Slidev
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# apply UnoCSS classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable Comark Syntax: https://comark.dev/syntax/markdown
comark: true
# duration of the presentation
duration: 35min
---

# Welcome to Slidev

Presentation slides for developers

<div @click="$slidev.nav.next" class="mt-12 py-1" hover:bg="white op-10">
  Press Space for next page <carbon:arrow-right />
</div>

<div class="abs-br m-6 text-xl">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="slidev-icon-btn">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

<!--
BACKGROUND IMAGES
-----------------
Background is set in the frontmatter above (the global config), not in the slide body.

Options:

1. Remote URL (any image link):
   background: https://cover.sli.dev        <- Slidev's own cover image service
   background: https://unsplash.it/1920/1080  <- any public image URL

2. Local file (place image in public/ folder):
   background: /my-photo.jpg               <- resolves to public/my-photo.jpg

3. Unsplash shorthand:
   background: https://source.unsplash.com/1920x1080/?nature,water

4. Gradient (plain CSS value):
   background: linear-gradient(135deg, #1a1a2e, #16213e)

5. Solid color:
   background: '#1a1a2e'

After setting background you can also control the overlay darkness with:
  class: text-center   <- already present; add bg-black/40 for a dark overlay

Full docs: https://sli.dev/guide/syntax#frontmatter-options
-->

---
src: ./pages/02-bullet-points.md
---

---
layout: two-cols
layoutClass: gap-16
---

# Table of Contents

You can use the `Toc` component to generate a table of contents for your slides:

```html
<Toc minDepth="1" maxDepth="1" />
```

The title will be inferred from your slide content, or you can override it with `title` and `level` in your frontmatter.

::right::

<Toc text-sm minDepth="1" maxDepth="2" />

---
src: ./pages/03-table-example.md
---

---
src: ./pages/04-code-example.md
---

---
src: ./pages/05-shiki-magic-move.md
---

---
src: ./pages/06-components.md
---

---
src: ./pages/07-clicks-animation.md
---

---
src: ./pages/08-motions.md
---

---
src: ./pages/09-latex.md
---

---
src: ./pages/10-diagrams.md
---

---
src: ./pages/11-draggable.md
---

---
src: ./pages/12-monaco.md
---

---
layout: center
class: text-center
---

# Learn More

[Documentation](https://sli.dev) · [GitHub](https://github.com/slidevjs/slidev) · [Showcases](https://sli.dev/resources/showcases)

<PoweredBySlidev mt-10 />
