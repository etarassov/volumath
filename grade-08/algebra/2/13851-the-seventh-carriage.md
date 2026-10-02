---
id: "13851"
title: "Le septième wagon"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [periodicite, somme, mise en equation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 20 (aussi sujet senior, exercice 17) ; réponse 17 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Un train a $19$ wagons et transporte $275$ passagers en tout. Quels que soient les trois wagons
consécutifs que l'on choisit, ils contiennent toujours $43$ passagers à eux trois.

Combien y a-t-il de passagers dans le septième wagon ?

## Hints

1. Appelle $w_1, w_2, \ldots, w_{19}$ les nombres de passagers des wagons, dans l'ordre. Compare
   $w_1 + w_2 + w_3$ et $w_2 + w_3 + w_4$.
2. Que peux-tu dire des nombres $w_1, w_4, w_7, \ldots$ ?
3. Regroupe les $18$ premiers wagons par paquets de trois wagons consécutifs.

## Solution

Notons $w_1, w_2, \ldots, w_{19}$ les nombres de passagers des wagons, dans l'ordre.

**Les wagons se répètent de trois en trois.** Pour chaque $k$ de $1$ à $16$, on a

$$w_k + w_{k+1} + w_{k+2} = 43 \qquad \text{et} \qquad w_{k+1} + w_{k+2} + w_{k+3} = 43.$$

En retirant la seconde égalité de la première, on obtient $w_k = w_{k+3}$. Donc

$$w_7 = w_{10} = w_{13} = w_{16} = w_{19}.$$

**Le dernier wagon.** Les wagons $1$ à $18$ forment six paquets de trois wagons consécutifs :
$1$ à $3$, $4$ à $6$, et ainsi de suite jusqu'à $16$ à $18$. Ils contiennent donc
$6 \times 43 = 258$ passagers. Le dix-neuvième wagon en contient

$$w_{19} = 275 - 258 = 17.$$

**Le septième wagon contient $17$ passagers.**

Une telle répartition existe bien : par exemple $17, 13, 13, 17, 13, 13, \ldots, 17$, ce qui fait
$7 \times 17 + 12 \times 13 = 119 + 156 = 275$ passagers.
