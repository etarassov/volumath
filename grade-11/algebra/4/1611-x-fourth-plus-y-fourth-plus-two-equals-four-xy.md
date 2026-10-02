---
id: "1611"
title: "Résoudre x⁴ + y⁴ + 2 = 4xy"
grade: 11
theme: algebra
difficulty: 4
duration_min: 25
tags: [identites-remarquables, somme-de-carres, equation-a-deux-inconnues]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1A, Mean Inequalities"
  reference: "Handout-2330-2069.pdf, problème 7 c)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2330-2069.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ de nombres réels tels que
$$x^4 + y^4 + 2 = 4xy .$$

## Hints

1. Cherche d'abord des solutions évidentes en essayant de petits nombres. Tu devrais en trouver deux.
2. Fais tout passer du même côté : il faut montrer que $x^4 + y^4 + 2 - 4xy$ ne s'annule que pour ces couples-là. Essaie de l'écrire comme une somme de carrés.
3. Le terme $x^4 + y^4$ fait penser à $(x^2 - y^2)^2 = x^4 - 2x^2y^2 + y^4$. Que reste-t-il à ajouter ?
4. Il reste $2x^2y^2 - 4xy + 2$. Reconnais-y $2$ fois une identité remarquable en posant $t = xy$.

## Solution

**L'idée : réécrire l'équation sous la forme « somme de deux carrés $= 0$ ». Une telle somme
ne s'annule que si les deux carrés s'annulent à la fois, ce qui donne deux conditions au lieu
d'une.**

**Étape 1. Une identité.**

Pour tous réels $x$ et $y$ :
$$(x^2 - y^2)^2 + 2(xy - 1)^2 = \bigl(x^4 - 2x^2y^2 + y^4\bigr) + 2\bigl(x^2y^2 - 2xy + 1\bigr) .$$

En développant le second membre :
$$x^4 - 2x^2y^2 + y^4 + 2x^2y^2 - 4xy + 2 = x^4 + y^4 + 2 - 4xy ,$$
les termes en $x^2y^2$ se simplifiant. Donc, pour tous réels $x, y$,
$$x^4 + y^4 + 2 - 4xy = (x^2 - y^2)^2 + 2(xy - 1)^2 . \qquad (\star)$$

**Étape 2. Résoudre.**

L'équation de l'énoncé équivaut à $x^4 + y^4 + 2 - 4xy = 0$, c'est-à-dire, d'après $(\star)$, à
$$(x^2 - y^2)^2 + 2(xy-1)^2 = 0 .$$

Le membre de gauche est une somme de deux quantités positives ou nulles. Elle est nulle si et
seulement si les deux le sont :
$$x^2 - y^2 = 0 \qquad\text{et}\qquad xy - 1 = 0 .$$

**Étape 3. Le système.**

La première équation donne $y^2 = x^2$, donc $y = x$ ou $y = -x$.

- Si $y = -x$, la seconde équation devient $-x^2 = 1$, impossible pour un réel.
- Si $y = x$, la seconde équation devient $x^2 = 1$, donc $x = 1$ ou $x = -1$.

On obtient donc exactement deux couples : $(1, 1)$ et $(-1, -1)$.

**Étape 4. Vérification.**

Pour $(1,1)$ : $1 + 1 + 2 = 4$ et $4 \times 1 \times 1 = 4$. ✔

Pour $(-1,-1)$ : $1 + 1 + 2 = 4$ et $4 \times (-1) \times (-1) = 4$. ✔

**Conclusion : les seules solutions réelles sont $(1,1)$ et $(-1,-1)$.**

## Going further

L'identité $(\star)$ n'est pas tombée du ciel : elle traduit l'inégalité arithmético-géométrique
sur les quatre nombres positifs $x^4$, $y^4$, $1$, $1$, qui donne
$$\frac{x^4 + y^4 + 1 + 1}{4} \ \ge\ \sqrt[4]{x^4 y^4 \times 1 \times 1} = |xy| \ \ge\ xy ,$$
avec égalité seulement si les quatre nombres sont égaux, c'est-à-dire $x^4 = y^4 = 1$, et si
$xy \ge 0$. On retrouve les mêmes solutions. L'écriture en somme de carrés a l'avantage de ne
rien supposer connu.
