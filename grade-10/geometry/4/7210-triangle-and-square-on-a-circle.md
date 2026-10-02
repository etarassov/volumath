---
id: "7210"
title: "Le triangle et le carré inscrits dans le même cercle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [tiroirs, cercle, arcs, polygone-regulier]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 matin (Cindy Hua), principe des tiroirs, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Sur un cercle de périmètre $p$, on marque les trois sommets d'un triangle équilatéral inscrit et
les quatre sommets d'un carré inscrit. Ces sept points découpent le cercle en sept arcs.

Montrer que l'un de ces arcs a une longueur inférieure ou égale à $\dfrac{p}{24}$.

*(Si un sommet du triangle coïncide avec un sommet du carré, il n'y a que six arcs ; on montrera
aussi qu'alors la conclusion est immédiate.)*

## Hints

1. Que vaut la longueur d'un arc découpé par deux sommets voisins du triangle ? Et par deux
   sommets voisins du carré ?
2. Les trois sommets du triangle découpent le cercle en trois arcs. Où tombent les quatre
   sommets du carré ?
3. Le principe des tiroirs place deux sommets du carré dans un même arc du triangle. Peux-tu
   choisir ces deux sommets voisins sur le carré ?
4. Cet arc du triangle mesure $p/3$ ; l'arc du carré compris entre ces deux sommets mesure
   $p/4$. Que reste-t-il de part et d'autre ?

## Solution

**Cas particulier.** Si un sommet du triangle est aussi un sommet du carré, alors deux des sept
points sont confondus : il n'y a que six arcs, et l'un d'eux est de longueur $0 \leqslant p/24$.
La conclusion est vraie. Supposons désormais que les sept points sont distincts.

**Les arcs du triangle et les arcs du carré.**

Le triangle équilatéral inscrit découpe le cercle en trois arcs de longueur $\dfrac{p}{3}$
chacun. Le carré inscrit découpe le cercle en quatre arcs de longueur $\dfrac{p}{4}$ chacun.

**Principe des tiroirs.**

Les quatre sommets du carré se répartissent dans les trois arcs du triangle. Comme $4 > 3$, deux
sommets du carré tombent dans un même arc du triangle. Notons $T$ cet arc, de longueur $p/3$.

Mieux : on peut choisir ces deux sommets **voisins sur le carré**. En effet, notons
$S_1, S_2, S_3, S_4$ les sommets du carré dans l'ordre le long du cercle. Si deux sommets
non voisins, disons $S_1$ et $S_3$, étaient dans l'arc $T$, alors tout l'arc allant de $S_1$ à
$S_3$ en passant par $S_2$ serait inclus dans $T$ (car $T$ est un arc, donc connexe), et $S_2$
serait aussi dans $T$ ; on a alors deux sommets voisins, $S_1$ et $S_2$, dans $T$.

Appelons donc $S$ et $S'$ deux sommets voisins du carré situés dans l'arc $T$. L'arc de cercle
allant de $S$ à $S'$ sans passer par les autres sommets du carré est de longueur $\dfrac{p}{4}$,
et il est contenu dans $T$.

**Ce qui reste de part et d'autre.**

Notons $U$ et $V$ les deux extrémités de l'arc $T$ : ce sont deux sommets du triangle. L'arc $T$,
de longueur $p/3$, se décompose en trois morceaux :
$$\underbrace{U \to S}_{\text{longueur } a}, \qquad \underbrace{S \to S'}_{\text{longueur } p/4},
\qquad \underbrace{S' \to V}_{\text{longueur } b} .$$
Donc
$$a + \frac{p}{4} + b = \frac{p}{3}, \qquad \text{d'où} \qquad
a + b = \frac{p}{3} - \frac{p}{4} = \frac{4p - 3p}{12} = \frac{p}{12} .$$

**Conclusion.**

Deux nombres positifs dont la somme vaut $p/12$ : le plus petit des deux est au plus la moitié,
donc
$$\min(a,b) \leqslant \frac{p}{24} .$$

Or $a$ et $b$ sont des longueurs d'arcs délimités par deux des sept points marqués — un sommet du
triangle d'un côté, un sommet du carré de l'autre — donc chacun est un arc du découpage, ou bien
contient un tel arc.

**Il existe donc bien un arc de longueur au plus $\dfrac{p}{24}$.**

## Going further

La borne $p/24$ est la meilleure possible : on l'atteint lorsque les deux sommets $S$ et $S'$ du
carré sont placés symétriquement dans l'arc $T$, c'est-à-dire $a = b = p/24$.
