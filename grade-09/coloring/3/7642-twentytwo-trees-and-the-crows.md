---
id: "7642"
title: "Vingt-deux arbres et les corbeaux"
grade: 9
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, parite, invariant, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Vingt-deux arbres sont plantés en rond. Sur chaque arbre se pose un corbeau : il y a donc $22$ corbeaux, un par arbre.

Chaque minute, **deux** corbeaux s'envolent de leur arbre et vont se poser chacun sur un arbre **voisin** du sien (à gauche ou à droite, au choix de chaque corbeau).

Est-il possible qu'au bout d'un certain temps, tous les corbeaux se retrouvent sur le même arbre ?

## Hints

1. Coloriez les arbres alternativement en deux couleurs, en faisant le tour du rond. Est-ce possible ? Il y en a $22$…
2. Quand un corbeau change d'arbre, change-t-il de couleur ?
3. Comptez les corbeaux posés sur un arbre d'une couleur donnée. De combien ce nombre peut-il varier en une minute ?
4. Combien y en a-t-il au départ ? Et combien y en aurait-il à l'arrivée ?

## Solution

**Réponse : non, c'est impossible.**

**Le coloriage.**

Comme $22$ est pair, on peut colorier les arbres alternativement, en faisant le tour du rond : cerisier, pommier, cerisier, pommier, … et l'alternance se referme correctement après $22$ arbres. Il y a donc $11$ cerisiers et $11$ pommiers, et **deux arbres voisins sont toujours d'espèces différentes**.

**L'invariant.**

Notons $C$ le nombre de corbeaux posés sur un cerisier.

Chaque minute, deux corbeaux changent d'arbre, et chacun passe sur un arbre voisin, donc sur un arbre de l'autre espèce. Trois cas :

- les deux corbeaux partaient d'un pommier : ils arrivent tous deux sur un cerisier, donc $C$ augmente de $2$ ;
- les deux partaient d'un cerisier : ils arrivent tous deux sur un pommier, donc $C$ diminue de $2$ ;
- l'un partait d'un cerisier et l'autre d'un pommier : l'un s'en va, l'autre arrive, donc $C$ ne change pas.

Dans tous les cas, $C$ varie de $-2$, de $0$ ou de $+2$ :

> **La parité de $C$ ne change jamais.**

**La conclusion.**

Au départ, il y a exactement un corbeau par arbre, donc un corbeau sur chacun des $11$ cerisiers :

$$C_{\text{départ}} = 11, \qquad \text{nombre impair.}$$

Si tous les corbeaux finissaient sur le même arbre, alors

- soit cet arbre est un cerisier, et $C = 22$ ;
- soit c'est un pommier, et $C = 0$.

Dans les deux cas $C$ serait **pair**, alors qu'il doit rester impair.

**Il est donc impossible que tous les corbeaux se retrouvent sur un même arbre.**

## Going further

Tout repose sur le fait que $22$ est pair : c'est ce qui permet d'alterner les couleurs autour du rond. Avec un nombre **impair** d'arbres, l'alternance ne se referme pas, deux arbres voisins de même couleur apparaissent, et l'argument s'effondre.

Question pour continuer : avec $21$ arbres et $21$ corbeaux, mêmes règles, est-ce possible ? Essayez d'abord avec $3$ arbres, puis avec $5$.

Autre variante : et si, chaque minute, c'était **un seul** corbeau qui changeait d'arbre au lieu de deux ?
