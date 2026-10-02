---
id: "13275"
title: "Douze cailloux, quatre lignes et quatre colonnes"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [echiquier, recouvrement, disjonction-de-cas, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 6 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

On pose $12$ cailloux sur un échiquier de $8$ lignes et $8$ colonnes, avec au plus un caillou par case. Les cailloux sont placés n'importe comment.

Montrer qu'on peut toujours colorier en rouge $4$ lignes et $4$ colonnes de sorte que chacun des $12$ cailloux soit sur une case rouge, c'est-à-dire sur une ligne rouge ou sur une colonne rouge.

## Hints

1. Commence par choisir les $4$ colonnes. Lesquelles semblent les plus utiles ?
2. Prends les $4$ colonnes qui contiennent le plus de cailloux. Montre qu'à elles quatre, elles contiennent au moins $8$ cailloux. Sépare deux cas, selon le nombre de cailloux de la quatrième de ces colonnes.
3. Combien de cailloux restent alors en dehors des colonnes rouges ? Comment les attraper avec les lignes ?

## Solution

Notons $x_1, x_2, \ldots, x_8$ les nombres de cailloux des $8$ colonnes, rangés du plus grand au plus petit :

$$x_1 \geqslant x_2 \geqslant \cdots \geqslant x_8, \qquad x_1 + x_2 + \cdots + x_8 = 12.$$

On colorie en rouge les $4$ colonnes les plus chargées, celles qui contiennent $x_1$, $x_2$, $x_3$ et $x_4$ cailloux.

**Ces $4$ colonnes contiennent au moins $8$ cailloux.** Il y a deux cas.

- Si $x_4 \geqslant 2$, alors $x_1$, $x_2$, $x_3$ sont aussi au moins égaux à $2$, donc $x_1 + x_2 + x_3 + x_4 \geqslant 4 \times 2 = 8$.
- Si $x_4 \leqslant 1$, alors $x_5$, $x_6$, $x_7$, $x_8$ valent au plus $1$. Les $4$ autres colonnes contiennent donc au plus $4$ cailloux, et les $4$ colonnes rouges en contiennent au moins $12 - 4 = 8$.

**On finit avec les lignes.** Il reste au plus $12 - 8 = 4$ cailloux en dehors des colonnes rouges. Pour chacun d'eux, on colorie en rouge la ligne où il se trouve. Cela fait au plus $4$ lignes ; s'il en faut moins, on complète par des lignes quelconques pour en avoir exactement $4$.

**Conclusion.** Chaque caillou est dans une colonne rouge ou dans une ligne rouge : on a bien colorié $4$ lignes et $4$ colonnes qui recouvrent les $12$ cailloux.

Attention à une erreur fréquente : dire « le pire cas est celui où… » ne suffit pas. Le raisonnement doit marcher pour **toutes** les dispositions, et c'est ce que fait la séparation en deux cas ci-dessus.

## Going further

Avec $13$ cailloux, ce n'est plus toujours possible. Voici une disposition qui résiste (● pour un caillou) :

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| **1** | ● | ● |   |   |   |   |   |   |
| **2** |   | ● | ● |   |   |   |   |   |
| **3** |   |   | ● | ● |   |   |   |   |
| **4** |   |   |   | ● | ● |   |   |   |
| **5** | ● |   |   |   | ● |   |   |   |
| **6** |   |   |   |   |   | ● |   |   |
| **7** |   |   |   |   |   |   | ● |   |
| **8** |   |   |   |   |   |   |   | ● |

Pourquoi ? Les cailloux des cases (6, 6), (7, 7) et (8, 8) sont chacun seuls dans leur ligne et dans leur colonne. Chacun d'eux demande donc sa propre ligne ou colonne rouge, qui ne sert à rien d'autre. Il reste au plus $8 - 3 = 5$ lignes ou colonnes rouges parmi les lignes $1$ à $5$ et les colonnes $1$ à $5$, pour recouvrir les $10$ autres cailloux.

Chacune de ces lignes et colonnes contient exactement $2$ de ces $10$ cailloux. Avec $5$ d'entre elles, on recouvre au plus $10$ cailloux, et tous les $10$ seulement si aucun caillou n'est recouvert deux fois.

Supposons que la ligne $1$ soit rouge. Son caillou (1, 2) est dans la colonne $2$, qui ne doit donc pas être rouge. Le caillou (2, 2) doit alors être recouvert par sa ligne : la ligne $2$ est rouge. De la même façon la ligne $3$, puis la ligne $4$, puis la ligne $5$ sont rouges. Le même enchaînement marche en partant de n'importe quelle ligne, en revenant à la ligne $1$ après la ligne $5$. Donc si l'une des lignes $1$ à $5$ est rouge, elles le sont toutes, ce qui fait $5$ lignes rouges : c'est trop. Et si aucune ne l'est, il faut les $5$ colonnes $1$ à $5$ : c'est encore trop.
