# Clicks Animations

You can add `v-click` to elements to add a click animation.

<!--
v-click DIRECTIVE
------------------
Add v-click to any HTML element or Vue component to make it appear on the next click/keypress.

  <div v-click>Appears on click 1</div>
  <div v-click>Appears on click 2</div>   ← each v-click increments the counter

Explicit click index (jump to a specific step):
  <div v-click="3">Appears on click 3</div>
  <div v-click="[2, 4]">Visible only between clicks 2 and 4 (hidden after)</div>

v-after — appear at the SAME step as the preceding v-click:
  <img v-click />
  <p v-after>I show up together with the image above</p>

MODIFIERS — control the enter animation:
  v-click.up        → slides in from the bottom
  v-click.fade-in   → fades in (stays visible)
  v-click.fade      → dims to 50% opacity (does not disappear)
  v-click.none      → appears instantly, no CSS transition

Modifiers can be composed:
  v-click.fade.right.scale  → multiple effects at once

HIDE ON CLICK (v-click-hide):
  <div v-click-hide>Visible by default, disappears on click</div>
  <div v-click-hide="2">Disappears specifically on click 2</div>

v-mark DIRECTIVE — inline annotations (powered by Rough Notation)
------------------------------------------------------------------
  <span v-mark.red="3">highlighted text</span>

  Annotation types:  underline | box | circle | highlight | strike-through | crossed-off
  Color:             .red | .blue | .green | .orange | .yellow | any CSS color after a dot

  Examples:
    <span v-mark.underline.orange="1">underlined on click 1</span>
    <span v-mark.circle.blue>circled on next click</span>
    <span v-mark.box.red="[2,4]">boxed between clicks 2-4</span>
-->

<div v-click>

This shows up when you press <kbd>space</kbd> or <kbd>right</kbd>, or click outside the slide on the right.

```html
<div v-click>This shows up when you trigger a click animation.</div>
```

</div>

<p v-click>
You can also add modifiers to change the animation:
</p>

<div class="grid gap-3 mt-4 text-sm" style="grid-template-columns: repeat(3, 1fr) 1.5fr 1fr">
  <div v-after.up class="p-3 rounded border border-primary/20 bg-primary/10">
    <div class="font-mono text-xs opacity-60 mb-1">v-click.up</div>
    <div>Slide from bottom</div>
  </div>
  <div v-click.fade-in class="p-3 rounded border border-primary/30 bg-primary/15">
    <div class="font-mono text-xs opacity-60 mb-1">v-click.fade-in</div>
    <div>Fade in</div>
  </div>
  <div v-click.fade class="p-3 rounded border border-primary/40 bg-primary/20">
    <div class="font-mono text-xs opacity-60 mb-1">v-click.fade</div>
    <div>Dim (0.5 opacity)</div>
  </div>
  <div v-click.fade.right.scale class="p-3 rounded border border-primary/50 bg-primary/25">
    <div class="font-mono text-xs opacity-60 mb-1">v-click.fade.right.scale</div>
    <div>Composed</div>
  </div>
  <div v-click.none class="p-3 rounded border border-primary/60 bg-primary/30">
    <div class="font-mono text-xs opacity-60 mb-1">v-click.none</div>
    <div>No transition</div>
  </div>
</div>

<v-click>

The <span v-mark.red="7"><code>v-mark</code> directive</span>
also allows you to add
<span v-mark.circle.orange="8">inline marks</span>
, powered by [Rough Notation](https://roughnotation.com/):

```html
<span v-mark.underline.orange>inline markers</span>
```

</v-click>

<div v-click mt-12>

[Learn more](https://sli.dev/guide/animations#click-animation)

</div>
