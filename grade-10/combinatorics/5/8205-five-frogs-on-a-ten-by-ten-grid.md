---
id: "8205"
title: "Cinq grenouilles et des sommes qui décuplent"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [grille, estimation, principe des tiroirs, moyenne, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés à tous, exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On a une grande grille carrée de côté $10$, découpée en $100$ petits carrés de côté $1$. Deux petits carrés sont dits **voisins** s'ils ont un côté commun.

Sur chacun des $100$ petits carrés, on a écrit un nombre réel positif ou nul. Ces nombres ne changent jamais.

Cinq grenouilles se promènent sur la grille. Chacune est posée sur un petit carré et le cache entièrement ; deux grenouilles ne sont jamais sur le même carré. À chaque instant, un nombre est donc **visible** s'il n'y a pas de grenouille dessus.

D'un instant au suivant, **chaque** grenouille saute du carré où elle se trouve vers un carré voisin.

On observe la chose suivante : la somme des nombres visibles vaut $10$ à l'instant $1$, puis $10^2$ à l'instant $2$, puis $10^3$ à l'instant $3$, et ainsi de suite jusqu'à l'instant $k$ où cette somme vaut $10^k$.

Quelle est la plus grande valeur possible de $k$ ?

## Hints

1. Comme souvent, il y a deux choses à faire : construire un exemple qui atteint une certaine valeur de $k$, et montrer qu'on ne peut pas faire mieux.
2. Pour la construction, tu n'as pas besoin de toute la grille. Mets $0$ presque partout et travaille dans un tout petit rectangle. Combien de cases ce rectangle doit-il avoir pour que cinq grenouilles y laissent exactement une case libre ?
3. Les six cases d'un rectangle $3 \times 2$ forment un **cycle** : on peut les parcourir en tournant, chaque case étant voisine de la suivante. Que se passe-t-il si les cinq grenouilles tournent toutes d'un cran dans le même sens ?
4. Pour la majoration, regarde ce qui change entre l'instant $1$ et l'instant $2$. Combien de nombres **au plus** peuvent apparaître (être découverts) ?
5. La somme visible augmente de $10^2 - 10 = 90$. Certains nombres ont pu disparaître sous une grenouille, ce qui ne fait que **baisser** la somme. Donc la somme des nombres découverts vaut au moins $90$. Avec au plus cinq nombres découverts, que peux-tu dire du plus grand d'entre eux ?
6. Recommence entre l'instant $2$ et l'instant $3$, puis $3$ et $4$... Tu obtiens à chaque fois une case portant un nombre dans une certaine fourchette. Compare ces fourchettes : peuvent-elles se chevaucher ?
7. Si tu trouves six cases distinctes portant chacune un nombre $\ge 18$, compte combien d'entre elles pouvaient être cachées à l'instant $1$.

## Solution

La réponse est $k = 6$.

**Première partie : une construction avec $k = 6$.**

On isole un rectangle de $3$ cases de haut et $2$ cases de large, par exemple dans le coin supérieur gauche de la grille. Sur **toutes** les autres cases, on écrit $0$. Dans le rectangle, on écrit les six nombres $10, 10^2, \ldots, 10^6$ de la façon suivante :

| | |
|---|---|
| $10^3$ | $10^4$ |
| $10^2$ | $10^5$ |
| $10$ | $10^6$ |

L'important est ceci : les six cases du rectangle forment un **cycle**. En partant de la case $10$ et en tournant, on rencontre successivement

$$10 \ \to\ 10^2 \ \to\ 10^3 \ \to\ 10^4 \ \to\ 10^5 \ \to\ 10^6 \ \to\ 10 ,$$

et à chaque flèche les deux cases sont voisines (elles partagent un côté). On peut le vérifier sur le tableau ci-dessus : $10$ et $10^2$ sont l'une au-dessus de l'autre, $10^2$ et $10^3$ aussi, $10^3$ et $10^4$ sont côte à côte, et ainsi de suite jusqu'à $10^6$ qui est voisin de $10$.

À l'instant $1$, on place les cinq grenouilles sur les cases portant $10^2, 10^3, 10^4, 10^5, 10^6$. Le seul nombre non nul visible est donc $10$, et comme toutes les autres cases portent $0$, la somme visible vaut bien $10$.

À chaque étape, on fait tourner les cinq grenouilles d'un cran dans le même sens le long du cycle. Chacune saute bien sur une case voisine, et aucune ne rattrape sa voisine : la case libre se contente de se déplacer d'un cran. En choisissant le bon sens de rotation, la case libre passe successivement sur $10^2$, puis $10^3$, puis $10^4$, $10^5$ et enfin $10^6$.

Les sommes visibles sont donc successivement

$$10,\quad 10^2,\quad 10^3,\quad 10^4,\quad 10^5,\quad 10^6 ,$$

c'est-à-dire exactement ce que demande l'énoncé avec $k = 6$.

**Deuxième partie : $k \ge 7$ est impossible.**

Supposons par l'absurde que $k \ge 7$. Notons $S_j = 10^{\,j}$ la somme visible à l'instant $j$.

*Ce qui peut faire monter la somme.* Entre l'instant $j$ et l'instant $j+1$, un nombre devient visible seulement s'il était caché à l'instant $j$. Or il n'y avait que **cinq** cases cachées. Donc au plus $5$ nombres sont découverts.

D'un autre côté, certains nombres visibles à l'instant $j$ passent sous une grenouille à l'instant $j+1$ : cela ne peut que faire **baisser** la somme, puisque tous les nombres sont positifs ou nuls. On a donc

$$\underbrace{S_{j+1} - S_j}_{\text{variation}} \ \le\ \text{somme des nombres découverts},$$

c'est-à-dire

$$\text{somme des nombres découverts} \ \ge\ 10^{\,j+1} - 10^{\,j} = 9 \times 10^{\,j} .$$

*Le plus grand des découverts.* Au plus cinq nombres se partagent une somme d'au moins $9 \times 10^{\,j}$, donc l'un d'eux vaut au moins

$$\frac{9 \times 10^{\,j}}{5} = \text{1,8} \times 10^{\,j} .$$

*Une borne par le haut.* Ce nombre-là est visible à l'instant $j+1$, et tous les nombres visibles sont positifs ou nuls : il ne peut donc pas dépasser la somme totale visible à cet instant, soit $10^{\,j+1}$.

*Bilan pour chaque $j$.* Pour chaque $j$, il existe une case dont le nombre $v_j$ vérifie

$$\text{1,8} \times 10^{\,j} \ \le\ v_j \ \le\ 10^{\,j+1} .$$

**Six cases distinctes.**

Comme on a supposé $k \ge 7$, on peut faire ce raisonnement pour $j = 1, 2, 3, 4, 5, 6$. On obtient six nombres, rangés dans six fourchettes :

$$[18 \,;\, 100], \quad [180 \,;\, 1000], \quad [1800 \,;\, 10^4], \quad [18\,000 \,;\, 10^5], \quad [\text{1,8} \times 10^5 \,;\, 10^6], \quad [\text{1,8} \times 10^6 \,;\, 10^7] .$$

Ces fourchettes ne se chevauchent pas : le haut de chacune ($10^{\,j+1}$) est strictement plus petit que le bas de la suivante ($\text{1,8} \times 10^{\,j+1}$). Les six nombres sont donc tous différents, et ils sont donc écrits sur **six cases distinctes**.

**La contradiction.**

Chacune de ces six cases porte un nombre au moins égal à $18$. À l'instant $1$, seules cinq cases sont cachées : au moins une de ces six cases était donc visible à l'instant $1$.

Mais alors la somme visible à l'instant $1$ était au moins $18$, alors que l'énoncé dit qu'elle valait $10$. C'est absurde.

**Conclusion.** La plus grande valeur possible est

$$\boxed{k = 6} .$$

## Going further

Avec $g$ grenouilles au lieu de $5$, le même raisonnement donne une majoration de $k$. Laquelle ? Et la construction en cycle s'adapte-t-elle pour l'atteindre ?
