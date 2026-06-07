---
# Remove the image-right layout to get a plain full-width slide.
# To restore it, uncomment the two lines below:
# layout: image-right
# image: https://cover.sli.dev
level: 2
---

# Code Example

Use code snippets and get the highlighting directly, and even types hover!

<!--
CODE BLOCK HIGHLIGHT SYNTAX
-----------------------------
Format:  ```ts [optional-filename.ts] {HIGHLIGHT_SPEC} twoslash

HIGHLIGHT_SPEC controls which lines are highlighted on each click:

  {all}          → all lines highlighted (default)
  {1}            → only line 1
  {1,3}          → lines 1 and 3
  {1-4}          → lines 1 through 4
  {1-4|6|8-9}    → lines 1-4 on click 1, line 6 on click 2, lines 8-9 on click 3

The pipe | separates click steps. Each | = one click to advance.

Example used below:
  {all|4|6|6-7|9|all}
  Step 1 (initial): all lines lit
  Step 2 (click 1): only line 4
  Step 3 (click 2): only line 6
  Step 4 (click 3): lines 6-7
  Step 5 (click 4): only line 9
  Step 6 (click 5): back to all

twoslash → enables TypeScript hover info and inline type errors via Shiki TwoSlash.
           Remove it if you don't need TS tooltips.
-->

```ts [filename-example.ts] {all|4|6|6-7|9|all} twoslash
// TwoSlash enables TypeScript hover information
// and errors in markdown code blocks
// More at https://shiki.style/packages/twoslash
import { computed, ref } from 'vue'

const count = ref(0)
const doubled = computed(() => count.value * 2)

doubled.value = 2
```

<!--
THE ARROW COMPONENT
--------------------
<arrow v-click="[4, 5]" x1="350" y1="310" x2="195" y2="342" color="#953" width="2" arrowSize="1" />

  v-click="[4, 5]"  → visible only between click step 4 and 5 (matches the highlight step above
                       where line 9 is highlighted — use this to point at a specific highlighted line)

  x1, y1            → tail of the arrow (starting point), in slide pixels
  x2, y2            → head of the arrow (where the arrowhead points), in slide pixels

  Slide canvas is typically 980 × 552 px (16:9) or 1280 × 720 px depending on theme.
  Origin (0,0) is the TOP-LEFT corner.
  x increases →  (right),  y increases ↓  (down)

  color             → any CSS color string ("#953", "red", "rgba(0,0,0,0.5)")
  width             → stroke width in px
  arrowSize         → multiplier for the arrowhead size (1 = default)

To show an arrow on ALL clicks just omit v-click:
  <arrow x1="350" y1="310" x2="195" y2="342" color="#953" width="2" arrowSize="1" />

To show it from click 2 onwards:
  <arrow v-click="2" x1="350" y1="310" x2="195" y2="342" color="#953" width="2" arrowSize="1" />
-->
<arrow v-click="[4, 5]" x1="350" y1="310" x2="195" y2="342" color="#953" width="2" arrowSize="1" />

<!-- This allows you to embed external code blocks -->
<<< @/snippets/external.ts#snippet

<!-- Footer -->

[Learn more](https://sli.dev/features/line-highlighting)

<!-- Inline style -->
<style>
.footnotes-sep {
  @apply mt-5 opacity-10;
}
.footnotes {
  @apply text-sm opacity-75;
}
.footnote-backref {
  display: none;
}
</style>

<!--
Notes can also sync with clicks

[click] This will be highlighted after the first click

[click] Highlighted with `count = ref(0)`

[click:3] Last click (skip two clicks)
-->
