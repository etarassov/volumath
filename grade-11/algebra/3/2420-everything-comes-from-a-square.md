---
id: "2420"
title: "Quatre inégalités venues d'un seul carré"
grade: 11
theme: algebra
difficulty: 3
duration_min: 40
tags: [inegalite, identites-remarquables, moyenne-geometrique, positivite, demonstration]
adapted_from: null
see_also: ["2421"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, The AM-GM Inequality"
  reference: "Handout-434-535.pdf, exercices 2, 3c, 4a et 4b (indications dans Handout-435-535.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-434-535.pdf"
---

## Statement

Le point de départ de tout l'exercice est le fait que le carré d'un nombre réel est positif ou nul.

1. Montrer que pour tous réels $x$ et $y$ : $\;x^{2} + y^{2} \ge 2xy$.
2. Montrer que pour tous réels $a \ge 0$ et $b \ge 0$ :
   $$\frac{a+b}{2} \ \ge \ \sqrt{ab} .$$
   Dans quel cas y a-t-il égalité ?
3. Montrer que pour tous réels $x > 0$ et $y > 0$ :
   $$\frac{1}{x} + \frac{1}{y} \ \ge \ \frac{4}{x+y} .$$
4. Montrer que pour tous réels $a \ge 0$, $b \ge 0$, $c \ge 0$ :
   $$(a+b)(b+c)(c+a) \ \ge \ 8abc .$$

## Hints

1. Question 1 : développe $(x-y)^2$.
2. Question 2 : pose $x = \sqrt{a}$ et $y = \sqrt{b}$, ce qui est permis puisque $a$ et $b$ sont positifs, puis applique la question 1.
3. Question 3 : réduis le membre de gauche au même dénominateur, puis multiplie l'inégalité à démontrer par $xy(x+y)$, qui est strictement positif. Que reste-t-il ?
4. Question 4 : applique la question 2 à chacun des trois facteurs $a+b$, $b+c$, $c+a$, puis multiplie les trois inégalités obtenues. Pourquoi a-t-on le droit de les multiplier ?

## Solution

### 1. L'inégalité de base

Pour tous réels $x$ et $y$,

$$(x-y)^{2} \ge 0 \quad \text{donc} \quad x^{2} - 2xy + y^{2} \ge 0 \quad \text{donc} \quad x^{2} + y^{2} \ge 2xy .$$

L'égalité a lieu exactement lorsque $x = y$.

### 2. La moyenne arithmétique et la moyenne géométrique

Soient $a \ge 0$ et $b \ge 0$. Les racines carrées $\sqrt{a}$ et $\sqrt{b}$ existent. Appliquons la question 1 à $x = \sqrt{a}$ et $y = \sqrt{b}$ :

$$\left(\sqrt{a}\right)^{2} + \left(\sqrt{b}\right)^{2} \ge 2\sqrt{a}\sqrt{b}, \qquad \text{c'est-à-dire} \qquad a + b \ge 2\sqrt{ab} .$$

En divisant par $2$ :

$$\frac{a+b}{2} \ge \sqrt{ab} .$$

L'égalité a lieu lorsque $\sqrt{a} = \sqrt{b}$, c'est-à-dire lorsque $a = b$.

*Le membre de gauche est la moyenne arithmétique de $a$ et $b$, celui de droite leur moyenne géométrique. L'inégalité dit donc que la moyenne géométrique n'est jamais plus grande que la moyenne arithmétique.*

### 3. Les inverses

Soient $x > 0$ et $y > 0$. Le nombre $xy(x+y)$ est strictement positif, donc multiplier par lui ne change pas le sens d'une inégalité. L'inégalité à démontrer équivaut donc successivement à

$$\frac{y + x}{xy} \ge \frac{4}{x+y} \iff (x+y)^{2} \ge 4xy \iff x^{2} + 2xy + y^{2} \ge 4xy \iff x^{2} + y^{2} \ge 2xy ,$$

ce qui est la question 1. L'inégalité demandée est donc vraie, avec égalité si et seulement si $x = y$.

### 4. Le produit des trois sommes

Soient $a, b, c \ge 0$. La question 2 appliquée à chaque paire donne

$$a + b \ge 2\sqrt{ab}, \qquad b + c \ge 2\sqrt{bc}, \qquad c + a \ge 2\sqrt{ca} .$$

Les six nombres qui apparaissent sont tous positifs ou nuls. Or si $0 \le u_1 \le v_1$, $0 \le u_2 \le v_2$ et $0 \le u_3 \le v_3$, alors $u_1u_2u_3 \le v_1v_2v_3$ : on peut multiplier membre à membre des inégalités entre nombres positifs. D'où

$$(a+b)(b+c)(c+a) \ \ge \ 2\sqrt{ab} \times 2\sqrt{bc} \times 2\sqrt{ca} = 8\sqrt{ab \cdot bc \cdot ca} .$$

Enfin

$$ab \cdot bc \cdot ca = a^{2}b^{2}c^{2}, \qquad \text{donc} \qquad \sqrt{ab\cdot bc\cdot ca} = \sqrt{(abc)^{2}} = abc$$

puisque $abc \ge 0$. On obtient bien

$$(a+b)(b+c)(c+a) \ge 8abc ,$$

avec égalité si et seulement si $a = b = c$.

**Ce qu'il faut retenir.** Les quatre énoncés viennent tous du même fait, $(x-y)^2 \ge 0$. Deux réflexes utiles : *remplacer $x$ et $y$ par des racines carrées* pour faire apparaître un produit, et *multiplier des inégalités entre nombres positifs*, opération toujours permise — ce qui n'est pas le cas si les nombres peuvent être négatifs.

## Going further

1. Montrer que pour tous réels $x$, $y$, $z$ : $\;x^{2} + y^{2} + z^{2} \ge xy + yz + zx$. *(Additionner trois inégalités du type de la question 1.)*
2. Montrer que pour tous réels $x$, $y$, $z$ : $\;x^{4} + y^{4} + z^{4} \ge xyz\,(x+y+z)$.
3. Montrer que la question 4 devient fausse si l'on autorise des valeurs négatives : trouver $a$, $b$, $c$ réels pour lesquels $(a+b)(b+c)(c+a) < 8abc$.
