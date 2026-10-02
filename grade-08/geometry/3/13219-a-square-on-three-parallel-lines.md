---
id: "13219"
title: "Un carré posé sur trois droites parallèles"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [carre, triangles-egaux, pythagore, paralleles, aire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 20 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf. L'énoncé original demande l'aire « d'un carré dont chacune de ces trois droites contient un sommet » : il y a en fait trois carrés possibles, d'aires 1130, 2105 et 2897 cm², et le corrigé ne donne que 1130. On précise ici la position des sommets ; les deux autres cas sont dans « Pour aller plus loin »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Trois droites $D_1$, $D_2$, $D_3$ sont parallèles. La droite $D_2$ est entre les deux autres, à $13$ cm de $D_1$ et à $31$ cm de $D_3$.

Un carré $ABCD$ a son sommet $A$ sur $D_1$, son sommet $B$ sur $D_2$ et son sommet $C$ sur $D_3$.

Quelle est l'aire de ce carré, en cm² ?

## Hints

1. Trace les perpendiculaires à $D_2$ issues de $A$ et de $C$. Note $H$ et $K$ leurs pieds. Que valent $AH$ et $CK$ ?
2. Compare les triangles $AHB$ et $BKC$ : ils sont rectangles, et $AB = BC$. Que dire de leurs angles ?
3. Les deux triangles sont égaux. Que vaut $BH$ ? Conclus avec le théorème de Pythagore.

## Solution

Notons $H$ et $K$ les pieds des perpendiculaires à $D_2$ issues de $A$ et de $C$. Comme $A \in D_1$ et $C \in D_3$, on a $AH = 13$ et $CK = 31$. Les points $A$ et $C$ sont de part et d'autre de $D_2$.

**Deux triangles égaux.** Les triangles $AHB$ et $BKC$ sont rectangles en $H$ et en $K$, et leurs hypoténuses sont deux côtés du carré : $AB = BC$.

Comparons leurs angles. Sur la droite $D_2$, au point $B$, les trois angles $\widehat{HBA}$, $\widehat{ABC}$ et $\widehat{CBK}$ forment un angle plat, et $\widehat{ABC} = 90^\circ$, donc $\widehat{HBA} + \widehat{CBK} = 90^\circ$. Dans le triangle $BKC$ rectangle en $K$, on a aussi $\widehat{BCK} + \widehat{CBK} = 90^\circ$. Donc $\widehat{HBA} = \widehat{BCK}$.

Les deux triangles rectangles ont la même hypoténuse et un angle aigu égal : ils sont égaux. Le côté $[BH]$, opposé à l'angle $\widehat{BAH}$, correspond au côté $[CK]$, opposé à l'angle $\widehat{CBK}$, et ces deux angles sont égaux (chacun vaut $90^\circ$ moins l'angle égal). Donc $BH = CK = 31$.

**Le théorème de Pythagore.** Dans le triangle $AHB$ rectangle en $H$,

$$AB^2 = AH^2 + BH^2 = 13^2 + 31^2 = 169 + 961 = 1130.$$

**Conclusion.** L'aire du carré est $AB^2 = 1130$ cm².

## Going further

L'énoncé d'origine demandait seulement « un carré dont chacune des trois droites contient un sommet ». Il y a alors trois cas, selon le sommet qui est sur $D_2$ et la façon dont les autres se placent.

- Le cas ci-dessus : le sommet sur $D_2$ est entre les deux autres le long du carré. Aire $13^2 + 31^2 = 1130$.
- Le sommet $B$ sur $D_1$, ses deux voisins $A$ sur $D_2$ et $C$ sur $D_3$. Le même raisonnement donne une aire $13^2 + 44^2 = 2105$.
- Le sommet $B$ sur $D_3$, ses deux voisins $A$ sur $D_1$ et $C$ sur $D_2$. On trouve $31^2 + 44^2 = 2897$.

Dans les deux derniers cas, le quatrième sommet sort de la bande entre $D_1$ et $D_3$. Vérifie-le en dessinant les trois carrés.
