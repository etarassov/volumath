---
id: "7248"
title: "Des boules de couleur dans quatre urnes"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, comptage, couleurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

On répartit des boules de couleur dans quatre urnes, qui contiennent respectivement $5$, $10$,
$20$ et $40$ boules, toutes les urnes étant pleines.

On sait qu'il y a au moins deux boules de chaque couleur présente.

Montrer qu'il existe une urne contenant deux boules de la même couleur.

## Hints

1. Combien y a-t-il de boules en tout ?
2. Chaque couleur est représentée par au moins deux boules. Combien peut-il y avoir de couleurs
   différentes, au maximum ?
3. Regarde la plus grosse urne, celle qui contient $40$ boules, et compare ce nombre au nombre de
   couleurs.

## Solution

**Le nombre total de boules.**

$$5 + 10 + 20 + 40 = 75 .$$

**Le nombre de couleurs.**

Chaque couleur présente est portée par au moins deux boules. Si l'on notait $k$ le nombre de
couleurs différentes, on aurait donc au moins $2k$ boules en tout :
$$2k \leqslant 75, \qquad \text{donc} \qquad k \leqslant 37 ,$$
puisque $k$ est un entier et que $2 \times 38 = 76 > 75$.

**Il y a donc au plus $37$ couleurs.**

**Le principe des tiroirs dans la grosse urne.**

L'urne de $40$ boules contient $40$ boules réparties en au plus $37$ couleurs. Comme
$$40 > 37 ,$$
deux boules au moins de cette urne ont la même couleur.

**Il existe bien une urne contenant deux boules de la même couleur.**

## Going further

Remarquons que l'énoncé ne dit rien sur la façon dont les couleurs sont réparties entre les
urnes : les deux boules d'une même couleur peuvent très bien être dans deux urnes différentes.
C'est précisément ce qui rend l'exercice un peu piquant : on ne peut rien dire des trois petites
urnes, et il faut penser à regarder la grosse.

Les urnes de $5$, $10$ et $20$ boules ne servent d'ailleurs qu'à une chose : fixer le total à
$75$, donc borner le nombre de couleurs. Le même raisonnement marcherait avec n'importe quelle
répartition dont le total est inférieur à $80$, puisqu'il faudrait alors moins de $40$ couleurs.
