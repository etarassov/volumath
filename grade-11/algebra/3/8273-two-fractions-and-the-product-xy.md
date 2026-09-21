---
id: "8273"
title: "Deux fractions et le produit xy"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, moyenne arithmetique geometrique, majoration terme a terme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 33 (niveau 1, proposé par Samuel Avril). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Montrer que pour tous réels $x$ et $y$ strictement positifs,

$$\frac{x}{x^4 + y^2} + \frac{y}{y^4 + x^2} \ \le \ \frac{1}{xy} .$$

## Hints

1. Le membre de droite est la somme de deux moitiés : $\dfrac{1}{xy} = \dfrac{1}{2xy} +
   \dfrac{1}{2xy}$. Cela suggère de majorer chaque fraction de gauche **séparément** par
   $\dfrac{1}{2xy}$.
2. Pour majorer une fraction, il suffit de **minorer** son dénominateur : les numérateurs et
   les dénominateurs sont tous strictement positifs.
3. Minore $x^4 + y^2$. C'est une somme de deux carrés : $x^4 = (x^2)^2$ et $y^2$.
4. Pour tous réels $u$ et $v$, $u^2 + v^2 \ge 2uv$, car $(u-v)^2 \ge 0$.

## Solution

**L'outil.**

Pour tous réels $u$ et $v$, l'identité $(u-v)^2 \ge 0$ donne, en développant,

$$u^2 + v^2 \ \ge \ 2uv .$$

**On minore le premier dénominateur.**

Appliquons-la à $u = x^2$ et $v = y$ :

$$x^4 + y^2 = \left(x^2\right)^2 + y^2 \ \ge \ 2 x^2 y .$$

Comme $x > 0$ et $y > 0$, les deux membres sont strictement positifs, et passer à l'inverse
renverse l'inégalité :

$$\frac{1}{x^4 + y^2} \ \le \ \frac{1}{2x^2 y} .$$

En multipliant par $x > 0$ :

$$\frac{x}{x^4 + y^2} \ \le \ \frac{x}{2x^2 y} = \frac{1}{2xy} .$$

**On minore le second dénominateur.**

C'est la même chose en échangeant les rôles de $x$ et $y$ : avec $u = y^2$ et $v = x$,

$$y^4 + x^2 \ \ge \ 2y^2 x, \qquad \text{donc} \qquad \frac{y}{y^4 + x^2} \ \le \
\frac{y}{2y^2 x} = \frac{1}{2xy} .$$

**On additionne.**

$$\frac{x}{x^4 + y^2} + \frac{y}{y^4 + x^2} \ \le \ \frac{1}{2xy} + \frac{1}{2xy} =
\frac{1}{xy} .$$

$$\blacksquare$$

**Le cas d'égalité.**

Chaque majoration est une égalité exactement quand $u = v$, c'est-à-dire $x^2 = y$ pour la
première et $y^2 = x$ pour la seconde. Les deux à la fois donnent $x^2 = y$ et $y^2 = x$, donc
$x = y^2 = (x^2)^2 = x^4$, donc $x^3 = 1$ et $x = 1$, puis $y = 1$.

On vérifie : pour $x = y = 1$, le membre de gauche vaut $\dfrac{1}{2} + \dfrac{1}{2} = 1$ et le
membre de droite vaut $1$. ✓

## Going further

1. L'inégalité reste-t-elle vraie si $x$ et $y$ sont seulement supposés non nuls, l'un pouvant
   être négatif ? Tester $x = 1$ et $y = -1$.
2. Démontrer de la même façon que, pour $a, b > 0$, on a $\dfrac{a}{a^2+b^2} \le \dfrac{1}{2b}$
   et $\dfrac{b}{a^2+b^2} \le \dfrac{1}{2a}$, puis en déduire une majoration de
   $\dfrac{a+b}{a^2+b^2}$.
3. Que devient le raisonnement pour trois variables, avec
   $\dfrac{x}{x^4+y^2} + \dfrac{y}{y^4+z^2} + \dfrac{z}{z^4+x^2}$ ? Quelle majoration obtient-on ?
