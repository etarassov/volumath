---
id: "7645"
title: "Les sept tétraminos dans un rectangle"
grade: 9
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, echiquier, pavage, tetraminos, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice 13"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Un **tétramino** est une pièce formée de quatre cases d'un quadrillage collées par les côtés, comme au jeu Tetris.

On considère ici que deux tétraminos sont identiques lorsqu'on peut les superposer **en les faisant tourner**, mais **sans les retourner**, comme si les pièces avaient un endroit et un envers. Il y a alors exactement **sept** tétraminos différents :

![Les sept tétraminos du Tetris](7645-figure-1.svg)

1. Un rectangle $4 \times 7$ a-t-il la bonne aire pour être pavé par ces sept pièces, chacune utilisée exactement une fois ?
2. Un tel pavage est-il possible ?

Dans un pavage, les pièces suivent le quadrillage, ne se chevauchent pas et ne laissent aucun trou. On a toujours le droit de les faire tourner.

## Hints

1. La première question est un simple calcul d'aire.
2. Pour la seconde : coloriez le rectangle $4 \times 7$ comme un damier. Combien y a-t-il de cases de chaque couleur ?
3. Posez chacune des sept pièces sur le damier, dans toutes les positions que vous voulez, et comptez à chaque fois combien de cases noires elle recouvre. Six des sept pièces se comportent toutes de la même façon.
4. Une seule pièce fait exception. Laquelle ? Et que recouvre-t-elle ?
5. Additionnez et comparez avec le nombre de cases noires du rectangle.

## Solution

**Question 1 : l'aire.**

Chaque tétramino couvre $4$ cases, et il y en a sept, soit $7 \times 4 = 28$ cases. Le rectangle $4 \times 7$ en compte $28$ également. **L'aire convient donc parfaitement**, et rien ne s'oppose au pavage de ce côté-là.

**Question 2 : le coloriage.**

**Réponse : non, ce pavage est impossible.**

Colorions le rectangle $4 \times 7$ comme un damier : deux cases voisines par un côté n'ont jamais la même couleur. Chaque ligne de $7$ cases contient alternativement $4$ et $3$ cases noires, donc en tout

$$4 + 3 + 4 + 3 = 14 \ \text{cases noires} \qquad \text{et} \qquad 14 \ \text{cases blanches.}$$

**Ce que recouvre chaque pièce.**

Posons une pièce n'importe où sur le damier, dans n'importe quelle orientation, et comptons ses cases noires.

- *Le tétramino droit* (quatre cases alignées) : quatre cases consécutives alternent les couleurs, donc $2$ noires et $2$ blanches.
- *Le carré* : un carré $2 \times 2$ contient toujours $2$ noires et $2$ blanches.
- *Les tétraminos en $L$ et en $J$, et les tétraminos en $S$ et en $Z$* : on vérifie de la même façon, en les posant dans chaque orientation, qu'ils recouvrent toujours $2$ noires et $2$ blanches.
- *Le tétramino en $T$* : celui-ci fait exception. Il est formé de trois cases alignées, qui recouvrent $2$ cases d'une couleur et $1$ de l'autre, plus une case collée au milieu, qui est de la couleur des deux extrémités. Il recouvre donc toujours **$3$ cases d'une couleur et $1$ de l'autre**.

**Le compte.**

Les six pièces autres que le $T$ recouvrent chacune $2$ cases noires, soit $12$ en tout. Le $T$ en recouvre $1$ ou $3$. Le nombre total de cases noires recouvertes vaut donc

$$12 + 1 = 13 \qquad \text{ou} \qquad 12 + 3 = 15 .$$

Or il faudrait recouvrir exactement $14$ cases noires. Ni $13$ ni $15$ ne vaut $14$.

**Conclusion.** Il est impossible de paver un rectangle $4 \times 7$ avec les sept tétraminos, chacun utilisé une fois.

## Going further

L'argument ne dépend pas de la forme du rectangle, seulement du fait qu'il a $28$ cases : **quel que soit le rectangle de $28$ cases** que l'on prenne ($4 \times 7$, $2 \times 14$ ou $1 \times 28$), un damier dessus compte $14$ cases de chaque couleur, et le même calcul s'applique. Aucun rectangle ne peut donc être pavé par les sept tétraminos.

Le tétramino en $T$ est l'intrus de la famille, et ce n'est pas la première fois : dans presque tous les problèmes de pavage par tétraminos, c'est lui qui fait tout échouer, ou tout réussir.

Une question pour continuer : si l'on retire le $T$ et qu'on s'autorise à utiliser deux fois l'une des six pièces restantes, peut-on paver un rectangle $4 \times 7$ ?
