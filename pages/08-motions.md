# Motions

Motion animations are powered by [@vueuse/motion](https://motion.vueuse.org/), triggered by `v-motion` directive.

```html
<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :click-3="{ x: 80 }"
  :leave="{ x: 1000 }"
>
  Slidev
</div>
```

<!--
v-motion DIRECTIVE — KEY STATES
---------------------------------
Apply v-motion to any element to animate it between named states.
States are bound with Vue's colon-prefix syntax (e.g. :initial, :enter, :leave).

  :initial   → the element's state BEFORE it enters the viewport / before the slide is shown.
               Use this to set the starting position of an enter animation.

  :enter     → the state the element transitions TO when it first becomes visible.
               Typically your "resting" or "default" visible state.

  :leave     → the state when the element is removed / the slide advances away.
               Use this for exit animations.

  :click-N   → the state the element transitions to when click step N is reached.
               Example:  :click-3="{ x: 80 }"  → slides to x=80 on click 3
               You can chain multiple: :click-1, :click-2, :click-3 ...

  :visible   → same as :enter but only triggers when the element enters the browser viewport
               (useful for scroll-based reveals outside Slidev)

ANIMATABLE PROPERTIES
-----------------------
  Position:   x, y          (pixels, relative to natural position)
  Scale:      scale         (1 = normal, 0.5 = half size, 2 = double)
  Rotation:   rotate        (degrees)
  Opacity:    opacity       (0–1)
  All standard CSS transforms are supported.

TRANSITION CONFIG (inside any state object)
--------------------------------------------
  transition: {
    type: 'spring'   | 'tween'   (spring = bouncy, tween = linear/eased)
    duration: 500                (ms, for tween)
    delay: 1000                  (ms before animation starts)
    damping: 10                  (spring: higher = less oscillation)
    stiffness: 20                (spring: higher = faster snap)
    mass: 2                      (spring: higher = heavier/slower)
  }

USING A NAMED FINAL STATE (see script setup below)
---------------------------------------------------
Instead of repeating the same object in :enter, define it once in script setup
and reference it by variable name:
  :enter="final"   where final is a reactive object defined in script setup

EXAMPLE PATTERN
---------------
  Add v-motion to any element with :initial and :enter bindings:
    v-motion
    :initial="{ x: 800, y: -100, scale: 1.5, rotate: -50 }"
    :enter="{ x: 0, y: 0, rotate: 0, scale: 1, transition: { type: 'spring', damping: 10 } }"
-->

<div class="w-60 relative">
  <div class="relative w-40 h-40">
    <img
      v-motion
      :initial="{ x: 800, y: -100, scale: 1.5, rotate: -50 }"
      :enter="final"
      class="absolute inset-0"
      src="https://sli.dev/logo-square.png"
      alt=""
    />
    <img
      v-motion
      :initial="{ y: 500, x: -100, scale: 2 }"
      :enter="final"
      class="absolute inset-0"
      src="https://sli.dev/logo-circle.png"
      alt=""
    />
    <img
      v-motion
      :initial="{ x: 600, y: 400, scale: 2, rotate: 100 }"
      :enter="final"
      class="absolute inset-0"
      src="https://sli.dev/logo-triangle.png"
      alt=""
    />
  </div>

  <div
    class="text-5xl absolute top-14 left-40 text-[#2B90B6] -z-1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 0, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    Slidev
  </div>
</div>

<!-- vue script setup can be used directly in markdown — scoped to this slide only -->
<script setup lang="ts">
const final = {
  x: 0,
  y: 0,
  rotate: 0,
  scale: 1,
  transition: {
    type: 'spring',
    damping: 10,
    stiffness: 20,
    mass: 2
  }
}
</script>

<div
  v-motion
  :initial="{ x:35, y: 30, opacity: 0}"
  :enter="{ y: 0, opacity: 1, transition: { delay: 3500 } }">

[Learn more](https://sli.dev/guide/animations.html#motion)

</div>
