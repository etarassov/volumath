---
id: "22033"
title: "Trente-trois pions et un L"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [principe-des-tiroirs, echiquier, decoupage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On place $33$ pions sur un échiquier de $8$ lignes et $8$ colonnes, au plus un pion par case.

Montrer qu'il existe $3$ pions qui forment un « L », c'est-à-dire qui occupent trois des quatre cases d'un carré de $2 \times 2$ cases.

## Hints

1. Découpez l'échiquier en morceaux. Lesquels ?
2. En combien de carrés de $2 \times 2$ cases peut-on découper l'échiquier ?

## Solution

**Un outil : le principe des tiroirs.** Si l'on range $n$ objets dans $k$ tiroirs et que $n > 2k$, alors un tiroir contient au moins $3$ objets. En effet, si chaque tiroir contenait au plus $2$ objets, il y aurait en tout au plus $2k$ objets.

**Étape 1 : les tiroirs.** On découpe l'échiquier en carrés de $2 \times 2$ cases : $4$ carrés dans la largeur et $4$ dans la hauteur, soit $16$ carrés. Chaque case appartient à exactement un de ces carrés.

**Étape 2 : le principe des tiroirs.** On range chaque pion dans le carré qui contient sa case. Il y a $33$ pions et $16$ carrés, et $33 > 2 \times 16 = 32$. Donc l'un des carrés contient au moins $3$ pions.

**Étape 3 : ils forment un L.** Ces $3$ pions sont sur trois cases différentes d'un même carré de $2 \times 2$ cases. Trois cases parmi les quatre cases d'un tel carré forment toujours un « L ».

**Conclusion.** Il existe toujours $3$ pions qui forment un « L ».

## Going further

1. Montrez qu'on peut placer $32$ pions sans qu'aucun groupe de $3$ pions ne forme un « L ». (Essayez de remplir des lignes entières.)
2. Montrez que si l'on place $49$ pions, alors $4$ d'entre eux remplissent un carré de $2 \times 2$ cases.
