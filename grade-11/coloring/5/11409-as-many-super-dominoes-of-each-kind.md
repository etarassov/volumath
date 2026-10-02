---
id: "11409"
title: "Autant de super-dominos de chaque sorte"
grade: 11
theme: coloring
difficulty: 5
duration_min: 50
tags: [pavage, dominos, coloriage, construction, espace]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Seniors, exercice 17 ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

Un **super-domino** est un pavé droit formé de deux cubes unités collés par une face. Selon sa
direction, il est de l'une des trois sortes $2 \times 1 \times 1$, $1 \times 2 \times 1$ ou
$1 \times 1 \times 2$.

Pour quels entiers $a, b, c \geqslant 2$ peut-on remplir exactement un pavé droit
$a \times b \times c$ avec des super-dominos, sans trou ni chevauchement, de sorte qu'il y ait
autant de super-dominos de chacune des trois sortes ?

## Hints

1. S'il y a $t$ super-dominos de chaque sorte, combien de cubes unités le pavé contient-il ? Que
   peux-tu en déduire sur $abc$ ?
2. L'une des trois dimensions est paire. Colorie les cubes unités en damier dans des tranches bien
   choisies. Quelles sortes de super-dominos couvrent toujours un cube noir et un cube blanc ?
   Qu'en est-il de la troisième sorte ?
3. Déduis-en que $t$ est pair, puis que $12$ divise $abc$.
4. Pour la réciproque, trouve de petits pavés qui se remplissent avec autant de super-dominos de
   chaque sorte, par exemple un pavé $2 \times 2 \times 3$, puis découpe le grand pavé en petits
   pavés de ce genre.

## Solution

On place le pavé dans l'espace et on repère chaque cube unité par trois coordonnées entières
$(x, y, z)$, avec $1 \leqslant x \leqslant a$, $1 \leqslant y \leqslant b$ et
$1 \leqslant z \leqslant c$. Un super-domino est de sorte $X$, $Y$ ou $Z$ selon qu'il est allongé
dans la direction des $x$, des $y$ ou des $z$ (verticale). Un remplissage est dit **équilibré**
s'il contient autant de super-dominos de chaque sorte.

**Une remarque.** Les trois directions jouent le même rôle : si l'on fait tourner un pavé rempli
de façon équilibrée, il reste rempli de façon équilibrée, seuls les noms des sortes changent. On
peut donc parler d'un pavé « $2 \times 2 \times 3$ » sans préciser dans quel sens il est posé, et,
pour un grand pavé, on peut toujours renommer les directions.

On va montrer que **c'est possible exactement quand $12$ divise $abc$**.

**Si c'est possible, alors $12$ divise $abc$.**

Supposons qu'il y ait $t$ super-dominos de chaque sorte. Ils couvrent $3 \times 2t = 6t$ cubes,
donc $abc = 6t$. En particulier $abc$ est pair, donc l'une des dimensions est paire ; d'après la
remarque, on peut supposer que c'est $a$.

Colorions le cube $(x, y, z)$ en noir si $x + y$ est pair, et en blanc sinon. C'est un damier dans
chaque tranche horizontale.

- Un super-domino de sorte $X$ ou $Y$ relie deux cubes dont les valeurs de $x + y$ diffèrent de
  $1$ : il couvre un cube noir et un cube blanc.
- Un super-domino de sorte $Z$ relie deux cubes qui ont les mêmes $x$ et $y$ : il couvre deux cubes
  de la même couleur.

Dans le pavé, il y a autant de cubes noirs que de cubes blancs : chaque rangée de cubes dans la
direction des $x$ en contient $a$, avec les couleurs qui alternent, et $a$ est pair. Les
super-dominos $X$ et $Y$ couvrent autant de noirs que de blancs, donc les super-dominos $Z$ aussi.
Si $u$ d'entre eux sont tout noirs et $v$ tout blancs, ils couvrent $2u$ cubes noirs et $2v$ cubes
blancs, donc $u = v$ et $t = u + v = 2u$ est pair. Finalement $abc = 6t = 12u$ est divisible par
$12$.

**Si $12$ divise $abc$, alors c'est possible.**

*Deux petits pavés équilibrés.*

Le pavé $2 \times 2 \times 3$ (de dimensions $2$ selon $x$, $2$ selon $y$, $3$ selon $z$), avec
deux super-dominos de chaque sorte :

- dans la couche du bas ($z = 1$), deux super-dominos $X$, l'un dans la rangée $y = 1$, l'autre
  dans la rangée $y = 2$ ;
- au-dessus reste un cube $2 \times 2 \times 2$ (couches $z = 2$ et $z = 3$). Dans sa moitié
  $x = 1$, on pose deux super-dominos $Y$, un dans chaque couche. Dans sa moitié $x = 2$, on pose
  deux super-dominos $Z$ verticaux, un au-dessus de chacune des cases $(2, 1)$ et $(2, 2)$.

Le pavé $3 \times 4 \times 3$ (de dimensions $3$ selon $x$, $4$ selon $y$, $3$ selon $z$), avec
six super-dominos de chaque sorte. Appelons « rectangle mixte » un rectangle horizontal
$3 \times 2$ (trois cases selon $x$, deux selon $y$) rempli par deux super-dominos $X$ dans les
cases $x = 1, 2$ de chacune des deux rangées, et un super-domino $Y$ dans les deux cases $x = 3$.
On coupe le pavé en deux moitiés $3 \times 2 \times 3$ :

- dans la moitié $y \in \{1, 2\}$ : un rectangle mixte dans la couche $z = 1$, un autre dans la
  couche $z = 2$, et trois super-dominos $Y$ dans la couche $z = 3$. Cela fait $4$ $X$ et $5$ $Y$ ;
- dans la moitié $y \in \{3, 4\}$ : un rectangle mixte dans la couche $z = 1$, et six
  super-dominos $Z$ verticaux qui occupent les couches $z = 2$ et $z = 3$. Cela fait $2$ $X$,
  $1$ $Y$ et $6$ $Z$.

Au total, $6$ super-dominos de chaque sorte.

*Découper.* Si l'on découpe un grand pavé en petits pavés, chacun rempli de façon équilibrée et
posé dans n'importe quel sens, le grand pavé est rempli de façon équilibrée. Un pavé
$p \times q \times r$ se découpe en copies d'un pavé $p' \times q' \times r'$ dès que $p'$ divise
$p$, $q'$ divise $q$ et $r'$ divise $r$. Enfin, tout entier $c \geqslant 2$ s'écrit $c = 2k + 3\ell$
avec $k, \ell$ entiers positifs ou nuls ($c = 2 \times \frac{c}{2}$ si $c$ est pair, et
$c = 3 + 2 \times \frac{c-3}{2}$ si $c$ est impair), donc on peut couper un pavé en tranches
d'épaisseur $2$ et $3$.

Supposons maintenant que $12$ divise $abc$. Alors $3$ divise l'une des dimensions, et au moins une
dimension est paire.

*Cas 1 : au moins deux dimensions sont paires.* D'après la remarque, ce sont $a$ et $b$.

- Si $3$ divise $c$, on découpe le pavé en pavés $2 \times 2 \times 3$.
- Sinon, $3$ divise $a$ ou $b$, disons $a$. On coupe le pavé en tranches horizontales d'épaisseur
  $2$ et $3$. Une tranche $a \times b \times 2$ se découpe en pavés $3 \times 2 \times 2$, car
  $3$ divise $a$ et $2$ divise $b$. Une tranche $a \times b \times 3$ se découpe en pavés
  $2 \times 2 \times 3$.

*Cas 2 : une seule dimension est paire.* Disons $a$. Comme $b$ et $c$ sont impairs et que $4$
divise $abc$, c'est que $4$ divise $a$.

- Si $3$ divise $b$, on coupe en tranches horizontales d'épaisseur $2$ et $3$. Une tranche
  $a \times b \times 2$ se découpe en pavés $2 \times 3 \times 2$. Une tranche
  $a \times b \times 3$ se découpe en pavés $4 \times 3 \times 3$, c'est-à-dire le pavé
  $3 \times 4 \times 3$ tourné.
- Si $3$ divise $c$, c'est pareil en échangeant les rôles de $b$ et $c$.
- Sinon, $3$ divise $a$, donc $12$ divise $a$, et $b$ est impair, pas multiple de $3$, donc
  $b \geqslant 5$. On coupe le pavé en un pavé $a \times 3 \times c$ et un pavé
  $a \times (b - 3) \times c$. Le premier relève du point précédent ($4$ divise $a$, $3$ divise
  la deuxième dimension). Le second a deux dimensions paires, $a$ et $b - 3$, et $12$ divise son
  volume car $12$ divise $a$ : il relève du cas 1.

Dans tous les cas, le pavé se remplit de façon équilibrée.

**Conclusion.**

**On peut remplir le pavé $a \times b \times c$ avec autant de super-dominos de chaque sorte si et
seulement si $abc$ est divisible par $12$.**
