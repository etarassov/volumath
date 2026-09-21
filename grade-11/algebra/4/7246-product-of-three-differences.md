---
id: "7246"
title: "Le produit des trois différences"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite arithmetico-geometrique, changement de variable, triangle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Algèbre : calcul », exercice 6 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, « Calculus » (Clémentine), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

1. Montrer que pour tous nombres réels $a$ et $b$ strictement positifs,
   $$\frac{a+b}{2} \geqslant \sqrt{ab} .$$
   *(C'est l'inégalité arithmético-géométrique pour deux nombres.)*

2. Soient $a$, $b$, $c$ trois nombres positifs tels que les trois quantités
   $$a+b-c, \qquad a+c-b, \qquad b+c-a$$
   soient toutes positives. Montrer que
   $$(a+b-c)(a+c-b)(b+c-a) \leqslant abc .$$

## Hints

1. Pour la question 1, compare les carrés, ou bien reconnais un carré parfait dans la différence.
2. Pour la question 2, pose $x = a+b-c$, $y = a+c-b$, $z = b+c-a$. Exprime $a$, $b$, $c$ en
   fonction de $x$, $y$, $z$.
3. Tu devrais trouver $a = \dfrac{x+y}{2}$, et deux formules analogues.
4. Applique alors trois fois l'inégalité de la question 1, puis multiplie.

## Solution

**1. L'inégalité arithmético-géométrique.**

Soient $a, b > 0$. Un carré est toujours positif, donc
$$\left(\sqrt{a} - \sqrt{b}\right)^2 \geqslant 0 .$$
Développons :
$$a - 2\sqrt{a}\sqrt{b} + b \geqslant 0 ,$$
c'est-à-dire $a + b \geqslant 2\sqrt{ab}$, donc
$$\frac{a+b}{2} \geqslant \sqrt{ab} .$$
Il y a égalité exactement lorsque $\sqrt{a} = \sqrt{b}$, c'est-à-dire $a = b$.

**2. Le changement de variable.**

Posons
$$x = a+b-c, \qquad y = a+c-b, \qquad z = b+c-a .$$
Par hypothèse, $x$, $y$ et $z$ sont positifs. Écartons d'abord le cas où l'un d'eux est nul : le
produit $xyz$ vaut alors $0$, qui est bien inférieur ou égal à $abc \geqslant 0$. Supposons donc
$x$, $y$, $z$ strictement positifs.

Additionnons deux à deux :
$$x + y = (a+b-c) + (a+c-b) = 2a ,$$
$$x + z = (a+b-c) + (b+c-a) = 2b ,$$
$$y + z = (a+c-b) + (b+c-a) = 2c .$$

D'où
$$a = \frac{x+y}{2}, \qquad b = \frac{x+z}{2}, \qquad c = \frac{y+z}{2} .$$

**L'inégalité appliquée trois fois.**

D'après la question 1 :
$$a = \frac{x+y}{2} \geqslant \sqrt{xy}, \qquad
b = \frac{x+z}{2} \geqslant \sqrt{xz}, \qquad
c = \frac{y+z}{2} \geqslant \sqrt{yz} .$$

Les six quantités en jeu sont strictement positives, donc on peut multiplier les trois inégalités
membre à membre :
$$abc \geqslant \sqrt{xy} \times \sqrt{xz} \times \sqrt{yz} = \sqrt{x^2 y^2 z^2} = xyz ,$$
la dernière égalité parce que $x$, $y$, $z$ sont positifs.

**Conclusion.**

$$(a+b-c)(a+c-b)(b+c-a) = xyz \leqslant abc .$$

**C'est bien ce qu'il fallait démontrer.**

## Going further

Les conditions de l'énoncé, « $a+b-c$, $a+c-b$ et $b+c-a$ sont positifs », ne sont rien d'autre
que les **inégalités triangulaires** : elles disent exactement qu'il existe un triangle dont les
côtés mesurent $a$, $b$ et $c$.

L'inégalité démontrée est donc une propriété des triangles. Le cas d'égalité arrive lorsque
$x = y = z$, c'est-à-dire $a = b = c$ : le triangle équilatéral.

En reprenant le demi-périmètre $p = \dfrac{a+b+c}{2}$, l'inégalité s'écrit aussi
$$8(p-a)(p-b)(p-c) \leqslant abc .$$
