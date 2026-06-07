---
# transition: slide-up  ← moves up when advancing to this slide
transition: slide-up
# level: 2 means this slide is a sub-section (depth 2) in the table of contents.
# level: 1 = top-level section, level: 2 = subsection, etc.
level: 2
---

# Table Example

Hover on the bottom-left corner to see the navigation's controls panel, [learn more](https://sli.dev/guide/ui#navigation-bar)

## Keyboard Shortcuts

|                                                     |                             |
| --------------------------------------------------- | --------------------------- |
| <kbd>right</kbd> / <kbd>space</kbd>                 | next animation or slide     |
| <kbd>left</kbd>  / <kbd>shift</kbd><kbd>space</kbd> | previous animation or slide |
| <kbd>up</kbd>                                       | previous slide              |
| <kbd>down</kbd>                                     | next slide                  |

<!-- https://sli.dev/guide/animations.html#click-animation -->
<img
  v-click
  class="absolute -bottom-9 -left-7 w-80 opacity-50"
  src="https://sli.dev/assets/arrow-bottom-left.svg"
  alt=""
/>
<p v-after class="absolute bottom-23 left-45 opacity-30 transform -rotate-10">Here!</p>

<!--
THE ARROW AND "HERE!" BOX
--------------------------
Both elements use Tailwind/UnoCSS utility classes for absolute positioning.

  class="absolute -bottom-9 -left-7 w-80 opacity-50"
    absolute       → takes the element out of normal flow, positioned relative to the slide
    -bottom-9      → moves 9 units (2.25rem) below the bottom edge of the slide
    -left-7        → moves 7 units (1.75rem) to the left of the left edge
    w-80           → width of 80 units (20rem)
    opacity-50     → 50% transparent

  class="absolute bottom-23 left-45 opacity-30 transform -rotate-10"
    bottom-23      → 23 units (5.75rem) from the bottom of the slide
    left-45        → 45 units (11.25rem) from the left edge
    opacity-30     → 30% opacity
    -rotate-10     → rotated -10 degrees

HOW v-click AND v-after WORK
------------------------------
  v-click   → element appears on the NEXT click/keypress
  v-after   → element appears at the SAME click step as the preceding v-click element
              (so the arrow and "Here!" label appear together)

You can also pass a specific click index number:
  v-click="1"   → appears on click 1
  v-click="3"   → appears on click 3
  v-after       → always matches the click step of the nearest preceding v-click

POSITIONING CHEATSHEET
------------------------
Positive values move inward from that edge:   bottom-4, left-4, top-4, right-4
Negative values move outside/beyond that edge: -bottom-4, -left-4

To place something in the CENTER of the slide:
  class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"

To place something in the TOP-RIGHT corner:
  class="absolute top-4 right-4"

Full UnoCSS spacing scale: 1 unit = 0.25rem = 4px
  -4  → -16px  |  4  → 16px
  8   → 32px   |  16 → 64px   |  24 → 96px   |  32 → 128px
-->
