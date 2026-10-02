---
id: "13265"
title: "Au plus quatre jetons par ligne et par colonne"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [echiquier, maximum, construction, majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices collégiens, exercice 6 (aussi exercice 12 des lycéens) ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Martin pose des jetons sur un échiquier de $8 \times 8$ cases, avec au plus un jeton par case, et de sorte que chaque ligne et chaque colonne contienne au plus $4$ jetons.

1. Combien de jetons Martin peut-il poser, au plus ?
2. Même question si, en plus, chacune des deux grandes diagonales de l'échiquier (celles qui vont d'un coin au coin opposé) contient au plus $4$ jetons.

## Hints

1. Trouve un nombre que l'on ne peut sûrement pas dépasser, en regardant les colonnes.
2. Il reste à montrer que ce nombre est atteint. Pour la question 2, peut-on même éviter complètement les deux grandes diagonales ?
3. Coupe l'échiquier en quatre carrés de $4 \times 4$ cases et pense aux couleurs de l'échiquier.

## Solution

Il faut faire deux choses : montrer qu'on ne peut pas dépasser un certain nombre, puis montrer qu'on peut l'atteindre.

**On ne peut pas dépasser $32$.** Il y a $8$ colonnes et chacune contient au plus $4$ jetons, donc il y a au plus $8 \times 4 = 32$ jetons. Cela vaut pour les deux questions.

**On peut poser $32$ jetons, même sans rien mettre sur les grandes diagonales.** Coupons l'échiquier en quatre carrés de $4 \times 4$. La grande diagonale qui descend de gauche à droite traverse le carré en haut à gauche et celui en bas à droite ; l'autre traverse les deux autres carrés. Colorions les cases comme un échiquier. Une grande diagonale est formée de cases d'une seule couleur. Dans chacun des quatre carrés, on pose un jeton sur chaque case de la couleur qui **n'est pas** celle de la grande diagonale qui traverse ce carré.

On obtient la disposition suivante (● pour un jeton) :

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| **1** |   | ● |   | ● | ● |   | ● |   |
| **2** | ● |   | ● |   |   | ● |   | ● |
| **3** |   | ● |   | ● | ● |   | ● |   |
| **4** | ● |   | ● |   |   | ● |   | ● |
| **5** | ● |   | ● |   |   | ● |   | ● |
| **6** |   | ● |   | ● | ● |   | ● |   |
| **7** | ● |   | ● |   |   | ● |   | ● |
| **8** |   | ● |   | ● | ● |   | ● |   |

Chaque ligne contient $2$ jetons dans sa moitié gauche et $2$ dans sa moitié droite, soit $4$ jetons. De même, chaque colonne en contient $4$. Les deux grandes diagonales, formées des cases (1,1), (2,2), …, (8,8) et (1,8), (2,7), …, (8,1), ne contiennent aucun jeton. Il y a $8 \times 4 = 32$ jetons.

**Conclusion.** Dans les deux questions, Martin peut poser au plus $32$ jetons.
