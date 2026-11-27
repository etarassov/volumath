---
id: "40010"
title: "Les solutions entières de x² + y² = z² + 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [equation-diophantienne, parite, pgcd, diviseurs, nombre-de-diviseurs, difference-de-carres, factorisation, construction, carres]
adapted_from: null
see_also: ["40001", "40002", "40003", "40004", "40005", "40006", "40007", "40008", "40009"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), quatrième partie, question 3 (a à c). Les points entiers de la surface sont présentés directement comme les solutions entières de l'équation."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

On s'intéresse aux triplets d'entiers $(x, y, z)$ tels que
$$x^2 + y^2 = z^2 + 1 .$$

1. Soit $(x, y, z)$ un tel triplet d'entiers relatifs. Montrer que $x$ ou $y$ est impair.

On note désormais $\mathcal{S}$ l'ensemble des triplets $(x, y, z)$ d'entiers strictement positifs
tels que $x$ est impair et $x^2 + y^2 = z^2 + 1$.

2. Soit $d$ un entier strictement positif fixé. Démontrer que l'ensemble des éléments $(x, y, z)$ de
   $\mathcal{S}$ tels que $\mathrm{PGCD}(x + 1, y + z) = d$ est vide si $d$ est impair, et infini si
   $d$ est pair.
3. Soit $m$ un entier impair supérieur ou égal à $3$. Combien y a-t-il d'éléments $(x, y, z)$ de
   $\mathcal{S}$ tels que $x = m$ ? Déterminer ces éléments lorsque $m = 3$, $5$, $7$ et $9$.

## Hints

1. **Question 1.** Quels restes peut donner un carré dans la division par $4$ ?
2. **Question 2.** Si $x$ est impair, que dire de la parité de $y$ et de $z$ ? Et de celle de
   $y + z$ ?
3. **Question 2.** Pour $d = 2$, essayer $x = 1$.
4. **Question 2.** Pour $d = 2e$ avec $e \geqslant 2$, écrire l'équation
   $(x - 1)(x + 1) = (z - y)(z + y)$ et chercher des solutions avec $x + 1 = 2em$, $x - 1 = 2(em - 1)$,
   $z - y = 2m$ et $z + y = 2e(em - 1)$, où $m \geqslant 1$.
5. **Question 3.** Écrire $m^2 - 1 = (z - y)(z + y)$. Les deux facteurs sont pairs : poser
   $z - y = 2a$ et $z + y = 2b$.
6. **Question 3.** On se ramène à compter les façons d'écrire $\frac{m^2 - 1}{4}$ comme un produit
   $ab$ avec $a < b$. Ce nombre est un produit de deux entiers consécutifs : peut-il être un carré ?

## Solution

**1.** Le carré d'un entier pair $2k$ vaut $4k^2$, et celui d'un entier impair $2k + 1$ vaut
$4(k^2 + k) + 1$ : un carré a pour reste $0$ ou $1$ dans la division par $4$. Si $x$ et $y$ étaient
tous deux pairs, $x^2 + y^2$ serait un multiple de $4$, donc $z^2 = x^2 + y^2 - 1$ aurait pour reste
$3$ : c'est impossible.

**Conclusion :** $x$ ou $y$ est impair.

**2.** *Le PGCD est toujours pair.* Soit $(x, y, z) \in \mathcal{S}$. Comme $x$ est impair, $x^2 - 1$
est pair, et $z^2 - y^2 = x^2 - 1$ aussi : $y^2$ et $z^2$ ont la même parité, donc $y$ et $z$ aussi, et
$y + z$ est pair. Comme $x + 1$ est pair, $2$ divise $\mathrm{PGCD}(x + 1, y + z)$. Donc si $d$ est
impair, aucun élément de $\mathcal{S}$ ne convient : l'ensemble est vide.

*Cas $d = 2$.* Pour tout entier $y \geqslant 1$, le triplet $(1, y, y)$ est dans $\mathcal{S}$, car
$1 + y^2 = y^2 + 1$, et $\mathrm{PGCD}(2, 2y) = 2$. Il y en a une infinité.

*Cas $d = 2e$ avec $e \geqslant 2$.* Pour tout entier $m \geqslant 1$, posons
$$x = 2em - 1, \qquad y = e(em - 1) - m, \qquad z = e(em - 1) + m .$$

- $x$ est impair et positif.
- $y = m(e^2 - 1) - e \geqslant (e^2 - 1) - e = e(e - 1) - 1 \geqslant 1$ car $e \geqslant 2$, donc $y$
  et $z$ sont strictement positifs.
- $x^2 - 1 = (x - 1)(x + 1) = (2em - 2) \times 2em = 4em(em - 1)$, et
  $z^2 - y^2 = (z - y)(z + y) = 2m \times 2e(em - 1) = 4em(em - 1)$. Donc $x^2 + y^2 = z^2 + 1$.
- $\mathrm{PGCD}(x + 1, y + z) = \mathrm{PGCD}(2em,\ 2e(em - 1)) = 2e \times \mathrm{PGCD}(m, em - 1)$.
  Un diviseur commun de $m$ et de $em - 1$ divise $e \times m - (em - 1) = 1$, donc
  $\mathrm{PGCD}(m, em - 1) = 1$, et le PGCD cherché vaut $2e = d$.

Les valeurs de $x$ sont toutes différentes quand $m$ varie, ce qui donne une infinité d'éléments.

**Conclusion :** l'ensemble est vide si $d$ est impair et infini si $d$ est pair.

**3.** Soit $(m, y, z) \in \mathcal{S}$. L'équation s'écrit $(z - y)(z + y) = m^2 - 1$. Comme
$m \geqslant 3$, ce produit est strictement positif et $z + y > 0$, donc $z - y > 0$. On a vu en 2 que
$y$ et $z$ ont la même parité, donc $z - y$ et $z + y$ sont pairs. Posons $z - y = 2a$ et
$z + y = 2b$, avec $a$, $b$ entiers. Alors
$$ab = \frac{m^2 - 1}{4} = K, \qquad y = b - a, \qquad z = a + b,$$
et la condition $y \geqslant 1$ s'écrit $a < b$.

Réciproquement, si $a$ et $b$ sont des entiers positifs tels que $ab = K$ et $a < b$, alors
$y = b - a$ et $z = a + b$ donnent un élément $(m, y, z)$ de $\mathcal{S}$ : on a
$z^2 - y^2 = 4ab = m^2 - 1$. Les éléments cherchés correspondent donc exactement aux diviseurs $a$
de $K$ tels que $a < \frac{K}{a}$.

En écrivant $m = 2k + 1$, on a $K = k(k + 1)$, et $k^2 < K < (k + 1)^2$ : $K$ n'est pas un carré. Les
diviseurs de $K$ vont donc par paires $\left\{a, \frac{K}{a}\right\}$ de deux nombres différents, et
dans chaque paire, exactement un est le plus petit.

**Conclusion :** il y a exactement $\frac{N}{2}$ éléments, où $N$ est le nombre de diviseurs positifs
de $K = \frac{m^2 - 1}{4}$.

| $m$ | $K$ | paires $(a, b)$ | éléments $(m, y, z)$ |
|---|---|---|---|
| $3$ | $2$ | $(1, 2)$ | $(3, 1, 3)$ |
| $5$ | $6$ | $(1, 6)$, $(2, 3)$ | $(5, 5, 7)$, $(5, 1, 5)$ |
| $7$ | $12$ | $(1, 12)$, $(2, 6)$, $(3, 4)$ | $(7, 11, 13)$, $(7, 4, 8)$, $(7, 1, 7)$ |
| $9$ | $20$ | $(1, 20)$, $(2, 10)$, $(4, 5)$ | $(9, 19, 21)$, $(9, 8, 12)$, $(9, 1, 9)$ |

Ainsi il y a $1$, $2$, $3$ et $3$ éléments pour $m = 3$, $5$, $7$ et $9$.

**Bilan.** Toute l'étude repose sur l'écriture $x^2 - 1 = (z - y)(z + y)$ : une différence de deux
carrés se factorise, ce qui transforme l'équation en une question de diviseurs. Pour $x = m$ fixé, le
nombre de solutions est la moitié du nombre de diviseurs de $\frac{m^2 - 1}{4}$ ; et les solutions
sont assez nombreuses pour réaliser n'importe quel PGCD pair entre $x + 1$ et $y + z$.

## Going further

- Ces triplets sont les points à coordonnées entières de la surface $x^2 + y^2 = z^2 + 1$, formée
  des sommets des triangles pseudo-rectangles construits au-dessus des diamètres d'un cercle de
  rayon $1$ : voir l'exercice 40009.
- Pour $m = 15$, combien y a-t-il de solutions ? Et pour $m = 2^j + 1$ ?
