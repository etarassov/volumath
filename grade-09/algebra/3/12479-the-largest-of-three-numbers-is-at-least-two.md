---
id: "12479"
title: "Le plus grand de trois nombres vaut au moins 2"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, maximum, moyenne, cas-d-egalite, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 mai 2020"
  reference: "2020-11_Enonce-Test-Mai-2020.pdf, exercice 1 (groupe Junior) ; corrigé 2020-05_Corrige-Web-05-2020.pdf (solution principale et solution alternative n° 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Mai-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Mai-2020.pdf"
---

## Statement

Soit $x$ et $y$ deux nombres réels. On note $M$ le plus grand des trois nombres
$$xy + 1, \qquad xy - x - y + 3, \qquad -2xy + x + y + 2.$$

Démontrer que $M \geqslant 2$, et trouver tous les couples $(x, y)$ pour lesquels $M = 2$.

## Hints

1. Calcule la somme des trois nombres.
2. Le plus grand de trois nombres est au moins égal à leur moyenne.
3. Si $M = 2$, que peux-tu dire des deux autres nombres ?
4. Factorise $xy - x - y + 1$.

## Solution

### $M$ est au moins égal à $2$

Additionnons les trois nombres :
$$(xy + 1) + (xy - x - y + 3) + (-2xy + x + y + 2) = 6.$$
Chacun des trois nombres est au plus égal à $M$, donc leur somme est au plus $3M$. Ainsi
$3M \geqslant 6$, c'est-à-dire $M \geqslant 2$.

### Les cas d'égalité

Supposons $M = 2$. Chacun des trois nombres est au plus égal à $2$, et leur somme vaut $6$. Si l'un
d'eux était strictement plus petit que $2$, la somme serait strictement plus petite que
$2 + 2 + 2 = 6$. Les trois nombres valent donc $2$ :
$$xy + 1 = 2 \qquad \text{et} \qquad xy - x - y + 3 = 2 \qquad \text{et} \qquad -2xy + x + y + 2 = 2.$$

La deuxième égalité s'écrit $xy - x - y + 1 = 0$, c'est-à-dire $(x - 1)(y - 1) = 0$. Donc $x = 1$ ou
$y = 1$.

- Si $x = 1$, la première égalité donne $y + 1 = 2$, donc $y = 1$.
- Si $y = 1$, la première égalité donne $x + 1 = 2$, donc $x = 1$.

Dans les deux cas, $x = y = 1$.

Réciproquement, pour $x = y = 1$, les trois nombres valent $1 + 1 = 2$, $1 - 1 - 1 + 3 = 2$ et
$-2 + 1 + 1 + 2 = 2$, donc $M = 2$.

### Conclusion

**On a toujours $M \geqslant 2$, et $M = 2$ seulement pour $x = y = 1$.**

## Going further

Avec $s = x + y$ et $p = xy$, les trois égalités du cas $M = 2$ s'écrivent $p = 1$ et $s = 2$.
Montrer à l'aide de l'identité $\left(\dfrac{x + y}{2}\right)^2 = \left(\dfrac{x - y}{2}\right)^2 + xy$
que l'on retrouve $x = y = 1$.
