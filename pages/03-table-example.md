---
# transition: slide-up moves up when advancing to this slide.
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

<img
  v-click
  class="absolute -bottom-9 -left-7 w-80 opacity-50"
  src="https://sli.dev/assets/arrow-bottom-left.svg"
  alt=""
/>
<p v-after class="absolute bottom-23 left-45 opacity-30 transform -rotate-10">Here!</p>

<!--
THE ARROW AND "HERE!" LABEL
----------------------------
Both elements use absolute positioning with UnoCSS utility classes.

  class="absolute -bottom-9 -left-7 w-80 opacity-50"
    absolute   - out of normal flow, positioned relative to the slide
    -bottom-9  - 9 units (2.25rem) below the slide bottom edge
    -left-7    - 7 units (1.75rem) past the left edge
    w-80       - width 20rem
    opacity-50 - 50% transparent

  class="absolute bottom-23 left-45 opacity-30 transform -rotate-10"
    bottom-23  - 5.75rem from the bottom
    left-45    - 11.25rem from the left
    -rotate-10 - rotated -10 degrees

v-click / v-after:
  v-click  - element appears on the next click
  v-after  - element appears at the SAME click step as the nearest preceding v-click
  v-click="3"     - appears on click 3 specifically
  v-click="[2,4]" - visible only between clicks 2 and 4

POSITIONING CHEATSHEET (1 unit = 0.25rem = 4px):
  Center:    class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"
  Top-right: class="absolute top-4 right-4"
  Positive values move inward from edge; negative values move outside/beyond edge.
-->
