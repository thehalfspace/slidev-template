---
# foo: bar is an arbitrary custom frontmatter key — access it in components via $frontmatter.foo
foo: bar
# dragPos stores the persisted positions of v-drag elements after you drag them in the editor.
# The key is the drag ID you give with v-drag="'id'", value is "x,y,w,h,rotate"
# Slidev writes this back automatically — you normally don't edit it by hand.
dragPos:
  square: 691,32,167,_,-16
---

# Draggable Elements

Double-click on the draggable elements to edit their positions.

<br>

<!--
v-drag DIRECTIVE — DRAGGABLE ELEMENTS
---------------------------------------
Makes any element draggable in the Slidev editor (double-click to unlock).
The position is saved back to the frontmatter dragPos map automatically.

DIRECTIVE USAGE (bind element to a named drag handle):
  <img v-drag="'square'" src="...">
    → 'square' is the drag ID; must match a key in dragPos frontmatter.
    → On first drag, Slidev adds it to dragPos for you.

COMPONENT USAGE (wrap any content in a draggable container):
  <v-drag text-3xl>
    <div class="i-carbon:arrow-up" />
    Use the v-drag component for a freely positioned container
  </v-drag>

  <v-drag pos="619,222,261,_,-15">
    The pos prop sets the initial position: "x,y,width,height,rotate"
      x, y      → position from top-left of slide in px
      width     → element width in px  (_ = auto/intrinsic)
      height    → element height in px (_ = auto/intrinsic)
      rotate    → degrees clockwise (-15 = tilted left slightly)

v-drag-arrow COMPONENT — DRAGGABLE ARROWS
------------------------------------------
  <v-drag-arrow pos="x1,y1,x2,y2" />
    pos format for arrows: "startX,startY,deltaX,deltaY"
    two-way    → renders arrowheads on both ends
    op70       → opacity-70 (any UnoCSS utility works as a prop)

  Example:
    <v-drag-arrow pos="204,422,120,42" two-way op70 />
    → starts at (204, 422), ends at (204+120, 422+42) = (324, 464)
-->

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
