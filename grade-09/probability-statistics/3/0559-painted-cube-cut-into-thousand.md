---
id: "0559"
title: "Un cube peint découpé en mille"
grade: 9
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [probabilite, equiprobabilite, denombrement, cube, geometrie-dans-lespace]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 14 «Вероятность-2», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

On peint en rouge **toutes** les faces d'un gros cube en bois. Puis on le scie en $1000$ petits cubes identiques, en le découpant en $10$ tranches dans chacune des trois directions ($10 \times 10 \times 10$).

On mélange soigneusement les $1000$ petits cubes dans un sac, et on en tire un au hasard.

Quelle est la probabilité que le petit cube tiré ait **exactement une** face peinte ?

## Hints

1. Les $1000$ petits cubes ont tous la même chance d'être tirés. La probabilité cherchée est donc le nombre de petits cubes ayant exactement une face peinte, divisé par $1000$.
2. Un petit cube n'a de peinture que sur les faces qui étaient à la surface du gros cube. Où doit-il se trouver pour toucher la surface par une seule de ses faces ?
3. Un petit cube collé contre une arête du gros cube touche deux faces à la fois : il aura deux faces peintes. Il faut donc rester à l'intérieur d'une face, sans toucher son bord.
4. Sur une face du gros cube, on voit $10 \times 10$ petits carrés. Combien en reste-t-il si l'on retire tout le contour ?

## Solution

**L'idée : compter, puis diviser.**

Les $1000$ petits cubes sont mélangés, donc ils ont tous la même chance d'être tirés. La probabilité cherchée vaut

$$p = \frac{\text{nombre de petits cubes ayant exactement une face peinte}}{1000}.$$

Il ne reste donc qu'à compter.

**Où se trouve un petit cube ayant exactement une face peinte ?**

La peinture n'a touché que la surface du gros cube. Un petit cube a donc :

- **trois** faces peintes s'il occupe un coin du gros cube (il touche trois faces à la fois) ;
- **deux** faces peintes s'il est le long d'une arête, sans être à un coin (il touche deux faces) ;
- **une** face peinte s'il est au milieu d'une face du gros cube, sans toucher le bord de cette face ;
- **aucune** face peinte s'il est complètement à l'intérieur.

Ce sont donc les petits cubes situés **au milieu d'une face** que l'on cherche.

**Le comptage sur une face.**

Regardons une seule face du gros cube. On y voit un carré $10 \times 10$, soit $100$ petits carrés, chacun étant la face visible d'un petit cube.

Il faut écarter tout le contour de ce carré : les petits cubes du contour touchent une arête du gros cube et auraient deux faces peintes (ou trois, aux coins). En enlevant la première et la dernière ligne, ainsi que la première et la dernière colonne, il reste un carré

$$(10 - 2) \times (10 - 2) = 8 \times 8 = 64$$

petits cubes.

Il y a donc $64$ petits cubes qui n'ont de peinture que sur cette face-là.

**Le total.**

Le gros cube a $6$ faces. Et ces six groupes de $64$ cubes sont bien distincts : un petit cube de ce type ne touche qu'une seule face du gros cube, donc il n'est compté qu'une fois. Le nombre cherché est

$$6 \times 64 = 384.$$

**La probabilité.**

$$p = \frac{384}{1000} = \frac{48}{125} = \text{0,384}.$$

**Conclusion.** La probabilité que le petit cube tiré ait exactement une face peinte est $\dfrac{48}{125}$, c'est-à-dire un peu plus de $38\ \%$.

## Going further

1. Calculer de la même manière la probabilité que le petit cube tiré ait exactement deux faces peintes, exactement trois faces peintes, et aucune face peinte. Vérifier que les quatre probabilités ont pour somme $1$.
2. Un petit cube peut-il avoir quatre faces peintes ?
3. Reprendre l'exercice pour un gros cube découpé en $n \times n \times n$ petits cubes, avec $n \geqslant 3$. Exprimer la probabilité en fonction de $n$. Que devient-elle quand $n$ est très grand, et pourquoi était-ce prévisible ?
