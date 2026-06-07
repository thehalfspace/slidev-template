---
level: 2
---

# Shiki Magic Move

Powered by [shiki-magic-move](https://shiki-magic-move.netlify.app/), Slidev supports animations across multiple code snippets.

Add multiple code blocks and wrap them with <code>````md magic-move</code> (four backticks) to enable the magic move. For example:

````md magic-move {lines: true}
```ts {*|2|*}
// step 1
const author = reactive({
  name: 'John Doe',
  books: [
    'Vue 2 - Advanced Guide',
    'Vue 3 - Basic Guide',
    'Vue 4 - The Mystery'
  ]
})
```

```ts {*|1-2|3-4|3-4,8}
// step 2
export default {
  data() {
    return {
      author: {
        name: 'John Doe',
        books: [
          'Vue 2 - Advanced Guide',
          'Vue 3 - Basic Guide',
          'Vue 4 - The Mystery'
        ]
      }
    }
  }
}
```

```ts
// step 3
export default {
  data: () => ({
    author: {
      name: 'John Doe',
      books: [
        'Vue 2 - Advanced Guide',
        'Vue 3 - Basic Guide',
        'Vue 4 - The Mystery'
      ]
    }
  })
}
```

Non-code blocks are ignored.

```vue
<!-- step 4 -->
<script setup>
const author = {
  name: 'John Doe',
  books: [
    'Vue 2 - Advanced Guide',
    'Vue 3 - Basic Guide',
    'Vue 4 - The Mystery'
  ]
}
</script>
```
````

<!--
SHIKI MAGIC MOVE
  Wrap 2+ fenced code blocks in ````md magic-move ... ```` (4 backticks).
  Each code block = one click step. Tokens shared between steps animate smoothly.

OPTIONS (on opening fence):
  {lines: true}  - show line numbers in every step

PER-STEP HIGHLIGHTING (on each inner block):
  ```ts {1-3}      - highlight lines 1-3 on this step
  ```ts {*|2|4-5}  - sub-click highlights within this step

LANGUAGE MIXING: you can change language between steps, Shiki re-tokenizes each block.

NON-CODE BLOCKS: any markdown text between code blocks is skipped (not animated).

TIPS:
  - Identical tokens across steps get matched and animated.
  - Works best when steps share most of the code (refactoring, incremental additions).
  - As many steps as you like — each fenced block = one click.
-->
