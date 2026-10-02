---
id: "13004"
title: "Au-dessus et au-dessous d'un quart"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, developpement, somme-et-produit, disjonction-de-cas, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 5 octobre 2011"
  reference: "2017-09_coupe_automne_2011.pdf, exercice 8 ; corrigé 2017-09_coupe_automne_2011_corrige.pdf (première des deux méthodes du corrigé, la seconde passe en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2011.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois nombres réels compris entre $0$ et $1$ (au sens large), tels que
$$(1 - x)(1 - y)(1 - z) = xyz .$$
On considère les trois nombres
$$X = (1 - x)\,y, \qquad Y = (1 - y)\,z, \qquad Z = (1 - z)\,x .$$

1. Montrer que l'un au moins des nombres $X$, $Y$, $Z$ est supérieur ou égal à $\frac{1}{4}$.
2. Montrer que l'un au moins des nombres $X$, $Y$, $Z$ est inférieur ou égal à $\frac{1}{4}$.

## Hints

1. Les trois nombres $X$, $Y$, $Z$ sont positifs. Si tous les trois étaient strictement plus petits que $\frac14$, que pourrait-on dire de leur somme ? De leur produit ?
2. Calcule le produit $XYZ$. Tu dois y reconnaître deux fois une même quantité grâce à l'hypothèse.
3. Développe $(1-x)(1-y)(1-z)$ et calcule la somme $X + Y + Z$. Exprime-la à l'aide de $p = xyz$ seulement.
4. Sépare deux cas, selon que $p$ est plus grand ou plus petit que $\frac18$.

## Solution

Notons $p = xyz$. Les nombres $x$, $y$, $z$, $1-x$, $1-y$, $1-z$ sont tous positifs ou nuls, donc $X$, $Y$, $Z$ et $p$ aussi.

**Le produit $XYZ$.** En regroupant les facteurs autrement :
$$XYZ = (1-x)y \cdot (1-y)z \cdot (1-z)x = [xyz] \times [(1-x)(1-y)(1-z)] = p \times p = p^2,$$
car, d'après l'hypothèse, le second crochet vaut aussi $p$.

**La somme $X + Y + Z$.** D'une part,
$$X + Y + Z = y - xy + z - yz + x - zx = (x + y + z) - (xy + yz + zx).$$
D'autre part, en développant l'hypothèse :
$$(1-x)(1-y)(1-z) = 1 - (x + y + z) + (xy + yz + zx) - xyz .$$
L'hypothèse s'écrit donc $1 - (x+y+z) + (xy+yz+zx) - p = p$, c'est-à-dire
$$(x + y + z) - (xy + yz + zx) = 1 - 2p .$$
Finalement
$$X + Y + Z = 1 - 2p .$$

**Ce qu'on va utiliser.** Le nombre $\frac14$ est lié à $p$ par $\left(\frac14\right)^3 = \frac{1}{64} = \left(\frac18\right)^2$ et $3 \times \frac14 = \frac34 = 1 - 2 \times \frac18$. Le seuil naturel pour $p$ est donc $\frac18$.

**Question 1.** Raisonnons par l'absurde : supposons $X < \frac14$, $Y < \frac14$ et $Z < \frac14$.

- Si $p \geqslant \frac18$ : comme $X$, $Y$, $Z$ sont positifs, on peut multiplier les inégalités, et $XYZ < \frac{1}{64}$. Mais $XYZ = p^2 \geqslant \frac{1}{64}$. Contradiction.
- Si $p < \frac18$ : en additionnant, $X + Y + Z < \frac34$. Mais $X + Y + Z = 1 - 2p > 1 - \frac28 = \frac34$. Contradiction.

Dans les deux cas on aboutit à une contradiction : l'un au moins des trois nombres est supérieur ou égal à $\frac14$.

**Question 2.** Même méthode : supposons $X > \frac14$, $Y > \frac14$ et $Z > \frac14$.

- Si $p \leqslant \frac18$ : en multipliant, $XYZ > \frac{1}{64}$, alors que $XYZ = p^2 \leqslant \frac{1}{64}$. Contradiction.
- Si $p > \frac18$ : en additionnant, $X + Y + Z > \frac34$, alors que $X + Y + Z = 1 - 2p < \frac34$. Contradiction.

Donc l'un au moins des trois nombres est inférieur ou égal à $\frac14$.

**Conclusion.** Sous l'hypothèse $(1-x)(1-y)(1-z) = xyz$, l'un des nombres $(1-x)y$, $(1-y)z$, $(1-z)x$ est toujours au moins égal à $\frac14$, et l'un d'eux est toujours au plus égal à $\frac14$.

## Going further

1. Une autre preuve de la question 2, sans l'hypothèse. Montrer que pour tout réel $t$, $t(1-t) = \frac14 - \left(t - \frac12\right)^2 \leqslant \frac14$. En déduire que le produit $XYZ = x(1-x) \cdot y(1-y) \cdot z(1-z)$ est au plus $\frac{1}{64}$, et conclure. Pourquoi cette méthode ne marche-t-elle pas pour la question 1 ?
2. Trouver des valeurs de $x$, $y$, $z$ vérifiant l'hypothèse pour lesquelles $X = Y = Z = \frac14$.
