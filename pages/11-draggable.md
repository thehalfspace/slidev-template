---
# foo: bar is an arbitrary custom frontmatter key — access it in components via $frontmatter.foo
foo: bar
# dragPos stores the persisted positions of v-drag elements after you drag them in the editor.
# The key matches the drag ID you give with v-drag="'id'", value is "x,y,w,h,rotate".
# Slidev writes this back automatically — you normally don't edit it by hand.
dragPos:
  square: 691,32,167,_,-16
---

# Draggable Elements

Double-click on the draggable elements to edit their positions.

<br>

###### Directive Usage

```md
<img v-drag="'square'" src="https://sli.dev/logo.png">
```

<br>

###### Component Usage

```md
<v-drag text-3xl>
  <div class="i-carbon:arrow-up" />
  Use the `v-drag` component to have a draggable container!
</v-drag>
```

<v-drag pos="619,222,261,_,-15">
  <div text-center text-3xl border border-main rounded>
    Double-click me!
  </div>
</v-drag>

<img v-drag="'square'" src="https://sli.dev/logo.png">

###### Draggable Arrow

```md
<v-drag-arrow two-way />
```

<v-drag-arrow pos="204,422,120,42" two-way op70 />

<!--
v-drag DIRECTIVE: makes any element draggable in the editor (double-click to unlock).
  v-drag="'id'"  - binds to a named key in dragPos frontmatter. Slidev saves position automatically.

v-drag COMPONENT: wraps any content in a freely positioned draggable container.
  pos="x,y,width,height,rotate"
    x,y      - position from top-left of slide in px
    width    - element width in px (_ = auto)
    height   - element height in px (_ = auto)
    rotate   - degrees clockwise (-15 = tilted left)

v-drag-arrow: draggable arrow component.
  pos="startX,startY,deltaX,deltaY"
  two-way - arrowheads on both ends
  Any UnoCSS utility works as a prop (e.g. op70 = opacity-70)
-->
