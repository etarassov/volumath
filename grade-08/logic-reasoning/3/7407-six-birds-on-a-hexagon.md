---
id: "7407"
title: "Six oiseaux sur un hexagone"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, hexagone, impossibilite]
adapted_from: null
see_also: ["7002", "7106", "7233"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », exercices vus en cours de stratégies de base, exercice 10 (repris en 2011, premier TD, exercice 9)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Six arbres poussent aux six sommets d'un hexagone régulier. Sur chaque arbre est posé un oiseau,
soit six oiseaux en tout.

Toutes les minutes, **deux** oiseaux s'envolent en même temps, et chacun d'eux va se poser sur un
arbre voisin du sien (le voisin de droite ou celui de gauche, à son choix). Plusieurs oiseaux
peuvent se retrouver sur le même arbre.

Peut-on, au bout d'un certain nombre de minutes, voir les six oiseaux réunis sur un seul arbre ?

## Hints

1. Numérote les arbres de $1$ à $6$ en tournant. Quand un oiseau se déplace, comment change la
   parité du numéro de son arbre ?
2. Colorie un arbre sur deux : les arbres $1$, $3$, $5$ en blanc, les arbres $2$, $4$, $6$ en
   noir. Un oiseau qui bouge passe-t-il du blanc au noir, ou reste-t-il sur sa couleur ?
3. Compte les oiseaux posés sur les arbres blancs. Comment ce nombre peut-il varier en une
   minute ? Sa parité change-t-elle ?

## Solution

**La réponse est non : c'est impossible.**

**Un coloriage.**

Numérotons les arbres de $1$ à $6$ en tournant autour de l'hexagone, puis colorions en blanc les
arbres $1$, $3$, $5$ et en noir les arbres $2$, $4$, $6$. Deux arbres voisins sont toujours de
couleurs différentes, puisque les numéros voisins ont des parités différentes (et $6$ et $1$ sont
bien voisins, l'un pair l'autre impair).

Donc : **un oiseau qui se déplace change forcément de couleur.**

**L'invariant.**

Notons $b$ le nombre d'oiseaux posés sur des arbres blancs.

En une minute, deux oiseaux bougent. Trois cas sont possibles.

- Les deux étaient sur des arbres blancs : ils partent tous les deux sur du noir, donc $b$ diminue
  de $2$.
- Les deux étaient sur des arbres noirs : ils arrivent tous les deux sur du blanc, donc $b$
  augmente de $2$.
- L'un était sur du blanc et l'autre sur du noir : ils échangent leurs couleurs, donc $b$ ne
  change pas.

Dans les trois cas, $b$ varie de $-2$, $0$ ou $+2$ : **la parité de $b$ ne change jamais.**

**Conclusion.**

Au départ, il y a un oiseau sur chacun des trois arbres blancs, donc $b = 3$ : ce nombre est
**impair**. Il restera donc impair pour toujours.

Si les six oiseaux étaient réunis sur un même arbre, alors :

- ou bien cet arbre est blanc, et $b = 6$ ;
- ou bien cet arbre est noir, et $b = 0$.

Dans les deux cas $b$ serait **pair**, ce qui est impossible.

**Les six oiseaux ne pourront donc jamais se retrouver tous sur le même arbre.**

## Going further

Et avec un hexagone où l'on ferait bouger **trois** oiseaux à chaque minute au lieu de deux ? Et
avec un pentagone régulier et cinq oiseaux, deux d'entre eux bougeant à chaque minute ?
