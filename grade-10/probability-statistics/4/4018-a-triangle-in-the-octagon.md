---
id: "4018"
title: "Un triangle dans l'octogone"
grade: 10
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [probabilite, denombrement, polygone-regulier, evenement-contraire]
adapted_from: null
see_also: ["3824"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 15 (réponse 5/7 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

On choisit au hasard trois sommets d'un octogone régulier, tous les choix de trois sommets
étant également probables, et on trace le triangle qui les relie.

Quelle est la probabilité qu'au moins un côté de ce triangle soit aussi un côté de
l'octogone ?

## Hints

1. Commence par compter le nombre total de triangles, c'est-à-dire le nombre de façons de choisir trois sommets parmi huit.
2. Numérote les sommets de $1$ à $8$. Un côté du triangle est un côté de l'octogone exactement lorsque les deux sommets choisis sont voisins.
3. Sépare les triangles favorables en deux familles : ceux qui ont exactement un côté de l'octogone, et ceux qui en ont deux. Peut-on en avoir trois ?
4. Pour la famille « exactement un côté » : choisis d'abord le côté de l'octogone, puis le troisième sommet. Attention à ne pas créer un second côté sans le vouloir.

## Solution

**Étape 1. Le nombre total de triangles.**

Choisir trois sommets parmi $8$, sans ordre, se fait de

$$\binom{8}{3} = \frac{8 \times 7 \times 6}{3 \times 2 \times 1} = 56$$

façons. Il y a donc $56$ triangles également probables.

**Étape 2. Combien de côtés de l'octogone un triangle peut-il avoir ?**

Numérotons les sommets $1, 2, \ldots, 8$ dans l'ordre. Un côté du triangle est un côté de
l'octogone exactement lorsque ses deux extrémités sont deux sommets **voisins**.

Un triangle ne peut pas avoir trois côtés de l'octogone : il faudrait que les trois sommets
soient voisins deux à deux, ce qui est impossible dès que l'octogone a plus de trois
sommets. Il y a donc deux familles de triangles favorables.

**Étape 3. Les triangles à exactement deux côtés de l'octogone.**

Ce sont les triangles formés de trois sommets consécutifs, comme $\{1 ; 2 ; 3\}$. Il y en a
autant que de sommets du milieu possibles, soit $8$.

**Étape 4. Les triangles à exactement un côté de l'octogone.**

Choisissons d'abord ce côté : il y a $8$ côtés dans l'octogone, disons $\{1 ; 2\}$.

Le troisième sommet ne doit être voisin ni de $1$, ni de $2$, sinon le triangle aurait deux
côtés de l'octogone. Sont donc interdits : $1$ et $2$ eux-mêmes, ainsi que leurs voisins
$8$ et $3$. Il reste les sommets $4$, $5$, $6$, $7$, soit $4$ possibilités.

Cela donne $8 \times 4 = 32$ triangles, et chacun n'est compté qu'une fois puisqu'il ne
possède qu'un seul côté de l'octogone.

**Étape 5. Conclure.**

Le nombre de triangles favorables vaut

$$32 + 8 = 40,$$

et la probabilité cherchée vaut

$$\frac{40}{56} = \frac{5}{7}.$$

**Réponse : la probabilité vaut $\dfrac{5}{7}$.**

## Going further

On peut aussi passer par l'événement contraire : compter les triangles dont aucun côté
n'est un côté de l'octogone, c'est-à-dire les choix de trois sommets deux à deux non
voisins. Il y en a $56 - 40 = 16$, et l'on peut les retrouver directement : une fois le plus
petit sommet choisi, il faut placer les deux autres en laissant au moins un sommet libre
entre chaque paire.
