---
id: "8330"
title: "Un nombre premier caché dans une équation symétrique"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 55
tags: [nombres-premiers, lemme-de-gauss, equation-diophantienne, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A (problème de la JBMO 2011)"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 13, signalé comme JBMO 2011"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Déterminer tous les nombres premiers $p$ pour lesquels il existe des entiers strictement
positifs $x$ et $y$ tels que

$$x\left(y^2 - p\right) + y\left(x^2 - p\right) = 5p .$$

## Hints

1. Développe et regroupe. Tu devrais pouvoir mettre $p$ en facteur d'un côté et $xy$ de l'autre.
2. Tu obtiens $(x + y + 5)\,p = xy(x+y)$. Le membre de gauche est un multiple de $p$, donc $p$ divise le membre de droite.
3. Comme $p$ est premier, il divise l'un des trois facteurs $x$, $y$ ou $x+y$ (c'est le lemme d'Euclide, ou lemme de Gauss).
4. Les rôles de $x$ et $y$ sont symétriques : il suffit donc de traiter deux cas, « $p$ divise $x$ » et « $p$ divise $x+y$ ».
5. Dans chaque cas, pose $x = kp$ (respectivement $x+y = kp$), simplifie, et cherche à factoriser pour obtenir un produit d'entiers égal à $5$.
6. N'oublie pas de vérifier à la fin que chaque $p$ trouvé admet bien un couple $(x, y)$ qui marche.

## Solution

**On met l'équation en forme.**

$$x y^2 - px + x^2 y - py = 5p ,$$
$$xy(y + x) = 5p + px + py = p(x + y + 5) .$$

L'équation équivaut donc à

$$xy(x+y) = p\,(x+y+5) . \qquad (\star)$$

**Le nombre premier $p$ divise $xy(x+y)$.**

Le membre de droite de $(\star)$ est un multiple de $p$, donc $p$ divise $xy(x+y)$. Comme $p$ est
premier, il divise l'un des trois facteurs : $x$, $y$ ou $x+y$.

Les rôles de $x$ et de $y$ sont interchangeables dans $(\star)$ ; on peut donc se limiter à deux
cas.

**Cas 1 : $p$ divise $x$.**

Écrivons $x = kp$ avec $k$ entier, $k \geqslant 1$. L'équation $(\star)$ devient

$$kp \cdot y \cdot (x+y) = p(x+y+5) ,$$

et en simplifiant par $p$ :

$$ky(x+y) = x+y+5 .$$

Donc $(ky - 1)(x+y) = 5$.

Comme $k \geqslant 1$ et $y \geqslant 1$, on a $ky \geqslant 1$, donc $ky - 1 \geqslant 0$.
Le produit valant $5$, les deux facteurs sont des entiers positifs, et
$\{ky-1,\; x+y\} = \{1, 5\}$.

Or $x \geqslant 1$ et $y \geqslant 1$ donnent $x + y \geqslant 2$, donc $x+y \neq 1$. Il reste

$$x + y = 5 \qquad \text{et} \qquad ky = 2 .$$

Deux sous-cas :

- $y = 1$ et $k = 2$ : alors $x = 5 - 1 = 4$, et $x = kp$ donne $4 = 2p$, donc $p = 2$ ;
- $y = 2$ et $k = 1$ : alors $x = 3$, et $x = kp$ donne $3 = p$, donc $p = 3$.

**Cas 2 : $p$ divise $x + y$.**

Écrivons $x + y = kp$ avec $k \geqslant 1$. L'équation $(\star)$ devient

$$xy \cdot kp = p(kp + 5) ,$$

et en simplifiant par $p$ :

$$kxy = kp + 5 , \qquad \text{c'est-à-dire} \qquad k(xy - p) = 5 .$$

Comme $k \geqslant 1$ et $5 > 0$, on a $xy - p > 0$, et les deux facteurs sont des entiers
positifs de produit $5$ : donc $k = 1$ ou $k = 5$.

*Sous-cas $k = 1$.* Alors $x + y = p$ et $xy - p = 5$, donc $xy - (x+y) = 5$, soit

$$(x-1)(y-1) = xy - x - y + 1 = 6 .$$

Les couples d'entiers positifs de produit $6$ donnent
$(x-1, y-1) \in \{(1,6), (2,3), (3,2), (6,1)\}$, c'est-à-dire

$$(x,y) \in \{(2,7), (3,4), (4,3), (7,2)\} .$$

Dans tous ces cas $x + y = 9$ ou $x+y = 7$. Comme $p = x+y$ doit être premier, seul
$x + y = 7$ convient, donc $p = 7$ avec $(x,y) = (3,4)$ ou $(4,3)$.
Le couple $(2,7)$ donnerait $p = 9$, qui n'est pas premier.

*Sous-cas $k = 5$.* Alors $x + y = 5p$ et $xy - p = 1$, donc $p = xy - 1$ et
$x + y = 5(xy-1)$, soit

$$5xy - x - y = 5 .$$

Multiplions par $5$ : $25xy - 5x - 5y = 25$, puis ajoutons $1$ :

$$(5x - 1)(5y - 1) = 25xy - 5x - 5y + 1 = 26 .$$

Il faudrait donc écrire $26$ comme produit de deux entiers de la forme $5t - 1$, c'est-à-dire
congrus à $-1$, donc à $4$, modulo $5$. Les diviseurs positifs de $26$ sont $1$, $2$, $13$ et
$26$, dont les restes modulo $5$ valent $1$, $2$, $3$ et $1$ : aucun ne vaut $4$. Ce sous-cas ne
donne donc rien.

**Vérification.**

- $p = 2$ avec $(x,y) = (4,1)$ : $4(1 - 2) + 1(16 - 2) = -4 + 14 = 10 = 5 \times 2$. ✓
- $p = 3$ avec $(x,y) = (3,2)$ : $3(4-3) + 2(9-3) = 3 + 12 = 15 = 5 \times 3$. ✓
- $p = 7$ avec $(x,y) = (3,4)$ : $3(16-7) + 4(9-7) = 27 + 8 = 35 = 5 \times 7$. ✓

**Conclusion.** Les nombres premiers cherchés sont

$$\boxed{p = 2, \quad p = 3 \quad \text{et} \quad p = 7} .$$

## Going further

Le pivot de la solution est la mise en forme $(\star)$. Une équation où les inconnues sont
mélangées devient traitable dès qu'on parvient à écrire « un produit égale un produit », parce
qu'on peut alors faire jouer la primalité et la divisibilité.

L'autre technique clé est celle qui transforme $xy - x - y = c$ en $(x-1)(y-1) = c+1$. On
l'appelle parfois « l'astuce de Simon » (*Simon's Favorite Factoring Trick*). Elle se généralise :
$axy + bx + cy = d$ devient $(ax + c)(ay + b) = ad + bc$ après multiplication par $a$.
