# $\LaTeX$

$\LaTeX$ is supported out-of-box. Powered by [$\KaTeX$](https://katex.org/).

<div h-3 />

<!--
LATEX SYNTAX IN SLIDEV
-----------------------
Slidev uses KaTeX for rendering. Wrap expressions in $ ... $ delimiters.

INLINE MATH (inside a line of text):
  $\sqrt{3x-1}+(1+x)^2$
  → renders inline with surrounding text

BLOCK / DISPLAY MATH (centered, on its own line):
  $$
  your formula here
  $$

BLOCK WITH CLICK-STEP HIGHLIGHTING:
  $$ {1|3|all}
  ...multi-line formula...
  $$
  The spec works exactly like code block highlighting:
    {1}        → highlight line 1
    {1|3|all}  → line 1 on click 1, line 3 on click 2, all on click 3

COMMON KATEX COMMANDS
----------------------
  Fractions:      \frac{a}{b}
  Square root:    \sqrt{x}   \sqrt[n]{x}
  Superscript:    x^2        x^{n+1}
  Subscript:      x_i        x_{ij}
  Greek letters:  \alpha \beta \gamma \delta \epsilon \pi \sigma \omega
  Operators:      \cdot \times \div \pm \leq \geq \neq \approx \equiv
  Sums/integrals: \sum_{i=0}^{n}   \int_{a}^{b}   \prod
  Vectors:        \vec{E}   \hat{x}
  Partial deriv:  \partial
  Aligned block:  \begin{aligned} ... \end{aligned}  (use \\ for new line, & for alignment point)

EXAMPLE — Maxwell's equations (used below):
  \nabla \cdot \vec{E} &= \frac{\rho}{\varepsilon_0}
  \nabla \times \vec{B} &= \mu_0\vec{J} + \mu_0\varepsilon_0\frac{\partial\vec{E}}{\partial t}
-->

Inline $\sqrt{3x-1}+(1+x)^2$

Block
$$ {1|3|all}
\begin{aligned}
\nabla \cdot \vec{E} &= \frac{\rho}{\varepsilon_0} \\
\nabla \cdot \vec{B} &= 0 \\
\nabla \times \vec{E} &= -\frac{\partial\vec{B}}{\partial t} \\
\nabla \times \vec{B} &= \mu_0\vec{J} + \mu_0\varepsilon_0\frac{\partial\vec{E}}{\partial t}
\end{aligned}
$$

[Learn more](https://sli.dev/features/latex)
