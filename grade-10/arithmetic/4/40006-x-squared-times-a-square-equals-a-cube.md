---
id: "40006"
title: "L'équation x²(y² − z²)² = (y² + z²)³ en entiers"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [equation-diophantienne, triplet-pythagoricien, pgcd, decomposition-en-facteurs-premiers, carre-parfait, parite, nombres-premiers-entre-eux]
adapted_from: null
see_also: ["40001", "40002", "40003", "40004", "40005", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), deuxième partie, question 7"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que
$$x^2\,(y^2 - z^2)^2 = (y^2 + z^2)^3 .$$

On appelle *triplet pythagoricien* un triplet $(y_1, z_1, w_1)$ d'entiers strictement positifs tels
que $y_1^2 + z_1^2 = w_1^2$, et on dit qu'il est *primitif* si $y_1$ et $z_1$ sont premiers entre
eux. On pourra exprimer la réponse à l'aide des triplets pythagoriciens primitifs.

## Hints

1. Si $N^3$ est le carré d'un entier, que peut-on dire de $N$ ? Regarder les exposants dans la
   décomposition en facteurs premiers. En déduire que $y^2 + z^2 = w^2$ pour un entier $w$.
2. Noter $d$ le PGCD de $y$ et $z$, et écrire $y = dy_1$, $z = dz_1$. Montrer que $d$ divise $w$ et
   simplifier l'équation par la plus grande puissance de $d$ possible.
3. Dans un triplet pythagoricien primitif $(y_1, z_1, w_1)$, montrer que $w_1$ est impair, puis que
   $y_1^2 - z_1^2$ et $w_1$ n'ont aucun facteur premier commun.
4. On obtient $x \times \lvert y_1^2 - z_1^2 \rvert = d\,w_1^3$. Que doit diviser
   $\lvert y_1^2 - z_1^2 \rvert$ ?

## Solution

*Un carré qui est un cube.* Si $y = z$, le membre de gauche est nul et pas celui de droite : donc
$y \neq z$. Posons $N = y^2 + z^2$. L'équation dit que $N^3$ est le carré de l'entier
$x \lvert y^2 - z^2 \rvert$. Dans la décomposition en facteurs premiers de $N^3$, chaque exposant est
le triple $3e$ de l'exposant $e$ dans $N$ ; pour un carré, il est pair. Donc chaque $e$ est pair, et
$N$ est un carré : $y^2 + z^2 = w^2$ avec $w$ entier strictement positif. L'équation devient
$x^2(y^2 - z^2)^2 = w^6$, soit, en prenant les racines positives,
$$x\,\lvert y^2 - z^2 \rvert = w^3 .$$

*Réduction au cas primitif.* Soit $d$ le PGCD de $y$ et $z$ ; on écrit $y = dy_1$, $z = dz_1$ avec
$y_1$ et $z_1$ premiers entre eux. Alors $d^2$ divise $w^2 = d^2(y_1^2 + z_1^2)$, donc
$y_1^2 + z_1^2 = \left(\frac{w}{d}\right)^2$ est le carré d'un rationnel, donc d'un entier
$w_1 = \frac{w}{d}$ (un entier qui est le carré d'un rationnel est le carré d'un entier, toujours par
les exposants). Ainsi $(y_1, z_1, w_1)$ est un triplet pythagoricien primitif, et $y_1 \neq z_1$.
En notant $e = \lvert y_1^2 - z_1^2 \rvert \geqslant 1$, l'équation devient
$x\,d^2 e = d^3 w_1^3$, soit
$$x\,e = d\,w_1^3 .$$

*$e$ et $w_1$ n'ont pas de facteur premier commun.* D'abord $w_1$ est impair : $y_1$ et $z_1$ ne sont
pas tous deux pairs, et s'ils étaient tous deux impairs, $w_1^2 = y_1^2 + z_1^2$ serait de la forme
$4k + 2$ (le carré d'un impair est de la forme $4k + 1$), ce qui est impossible pour un carré, qui est
de la forme $4k$ ou $4k + 1$. Soit alors $\ell$ un nombre premier qui divise $w_1$ et $e$ ; il est
impair. Il divise $w_1^2 + (y_1^2 - z_1^2) = 2y_1^2$ et $w_1^2 - (y_1^2 - z_1^2) = 2z_1^2$, donc
$y_1$ et $z_1$ : c'est impossible.

*Conclusion du calcul.* L'entier $e$ divise $d\,w_1^3$ et n'a aucun facteur premier commun avec
$w_1^3$ ; en comparant les décompositions en facteurs premiers, $e$ divise $d$. On écrit $d = ke$
avec $k$ entier strictement positif, et alors $x = k\,w_1^3$, $y = ke\,y_1$, $z = ke\,z_1$.

*Réciproque.* Soit $(y_1, z_1, w_1)$ un triplet pythagoricien primitif, $e = \lvert y_1^2 - z_1^2 \rvert$
et $k \geqslant 1$. Pour $x = kw_1^3$, $y = key_1$, $z = kez_1$, on a $y^2 + z^2 = k^2e^2w_1^2$ et
$(y^2 - z^2)^2 = k^4e^4 \times e^2 = k^4e^6$, donc
$$x^2(y^2 - z^2)^2 = k^2w_1^6 \times k^4e^6 = (k^2e^2w_1^2)^3 = (y^2 + z^2)^3 .$$

**Conclusion :** les solutions sont les triplets
$$x = k\,w_1^3, \qquad y = k\,\lvert y_1^2 - z_1^2 \rvert\, y_1, \qquad z = k\,\lvert y_1^2 - z_1^2 \rvert\, z_1,$$
où $(y_1, z_1, w_1)$ est un triplet pythagoricien primitif et $k$ un entier strictement positif. Par
exemple, avec $(3, 4, 5)$ on a $e = 7$ et l'on obtient $(125, 21, 28)$, puis ses multiples ; avec
$(4, 3, 5)$ on obtient $(125, 28, 21)$ ; avec $(5, 12, 13)$, $e = 119$ et l'on obtient
$(2197, 595, 1428)$.

**Bilan.** Pour que $(y^2 + z^2)^3$ soit un carré, il faut que $y^2 + z^2$ en soit un. Toutes les
solutions viennent donc des triplets pythagoriciens, et la condition de divisibilité impose que le
PGCD de $y$ et $z$ soit un multiple de $\lvert y_1^2 - z_1^2 \rvert$.

## Going further

- Les triplets pythagoriciens primitifs sont connus : ce sont, à l'ordre près,
  $(m^2 - n^2,\ 2mn,\ m^2 + n^2)$ avec $m > n > 0$ premiers entre eux et de parités différentes.
  En déduire une formule pour toutes les solutions.
- Dans le sujet, cette équation venait après $t^2(y^2 + z^2) = (y^2 - z^2)^2$ (exercice 40005).
  Vérifier que si $t$, $y$, $z$ vérifient cette égalité, alors $x = \frac{y^2 + z^2}{t}$ vérifie
  $x^2(y^2 - z^2)^2 = (y^2 + z^2)^3$. Ce $x$ est un rationnel, pas toujours un entier : que donne
  $(t, y, z) = (7, 20, 15)$ ?
