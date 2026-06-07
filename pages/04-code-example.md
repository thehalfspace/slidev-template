---
# Remove the image-right layout to get a plain full-width slide.
# To restore it, uncomment the two lines below:
# layout: image-right
# image: https://cover.sli.dev
level: 2
---

# Code Example

Use code snippets and get the highlighting directly, and even types hover!

```ts [filename-example.ts] {all|4|6|6-7|9|all} twoslash
// TwoSlash enables TypeScript hover information
// and errors in markdown code blocks
// More at https://shiki.style/packages/twoslash
import { computed, ref } from 'vue'

const count = ref(0)
const doubled = computed(() => count.value * 2)

doubled.value = 2
```

<arrow v-click="[4, 5]" x1="350" y1="310" x2="195" y2="342" color="#953" width="2" arrowSize="1" />

<<< @/snippets/external.ts#snippet

[Learn more](https://sli.dev/features/line-highlighting)

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
CODE BLOCK HIGHLIGHT SYNTAX
  Format: ```ts [filename.ts] {HIGHLIGHT_SPEC} twoslash
  {all}        - all lines highlighted
  {1-4|6|8-9} - lines 1-4 on click 1, line 6 on click 2, lines 8-9 on click 3
  Each pipe | = one click step. twoslash enables TS hover info.

  Example above: {all|4|6|6-7|9|all}
    initial: all | click1: line 4 | click2: line 6 | click3: lines 6-7 | click4: line 9 | click5: all

ARROW COMPONENT
  x1,y1 = tail (start); x2,y2 = head (arrowhead). Coordinates in slide pixels (origin = top-left).
  v-click="[4,5]" = visible only between clicks 4 and 5.
  Omit v-click to always show. Use v-click="2" to show from click 2 onwards.
  Slide canvas: ~980x552px (16:9).

EXTERNAL CODE SNIPPETS
  <<< @/snippets/file.ts#region-name
  Tag regions in source file with // #region name ... // #endregion name

CLICK-SYNCED PRESENTER NOTES
  [click] This note appears after the first click
  [click] This note appears after the second click
  [click:3] This note appears after click 3 (skip two)
-->
