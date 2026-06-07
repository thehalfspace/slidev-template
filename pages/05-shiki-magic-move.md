---
level: 2
---

# Shiki Magic Move

Powered by [shiki-magic-move](https://shiki-magic-move.netlify.app/), Slidev supports animations across multiple code snippets.

Add multiple code blocks and wrap them with <code>````md magic-move</code> (four backticks) to enable the magic move. For example:

<!--
SHIKI MAGIC MOVE — HOW IT WORKS
---------------------------------
Wrap two or more fenced code blocks inside ````md magic-move ... ```` (4 backticks).
When you advance clicks, Slidev smoothly morphs each token from one block to the next.

BASIC SYNTAX
  ````md magic-move
  ```ts
  // version A
  ```

  ```ts
  // version B — tokens shared with A will animate; new tokens fade in
  ```
  ````

OPTIONS (set on the opening fence)
  ````md magic-move {lines: true}
    lines: true   → show line numbers in every step
    lines: false  → hide line numbers (default)

PER-STEP LINE HIGHLIGHTING
  Each inner code block can carry its own highlight spec, exactly like a normal code block:
    ```ts {1-3}      ← highlight lines 1-3 on this step
    ```ts {*|2|4-5}  ← animate highlights within this step across sub-clicks

LANGUAGE MIXING
  You can change language between steps — Shiki re-tokenizes each block independently:
    ```ts
    const x: number = 1
    ```
    ```js
    const x = 1
    ```

NON-CODE BLOCKS ARE IGNORED
  Any markdown text between code blocks (like "Non-code blocks are ignored." below)
  is skipped by magic-move — only fenced code blocks are animated.

TIPS
  - Tokens that are textually identical across steps get matched and animated.
  - Add/remove tokens to see them fade in/out.
  - You can have as many steps as you like — each ``` block = one click step.
  - Works best when consecutive steps share most of their code (refactoring, incremental adds, etc.).
-->

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
