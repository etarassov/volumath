---
id: "5215"
title: "Un carré magique fait de nombres premiers"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [parite, nombres-premiers, carre-magique, raisonnement-par-labsurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par_extra.pdf, « More Parity problems », problème 10"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par_extra.pdf"
---

## Statement

On appelle *carré magique* un tableau carré de nombres tel que la somme des nombres d'une ligne, d'une colonne ou d'une des deux diagonales soit toujours la même.

Peut-on ranger les $36$ premiers nombres premiers, c'est-à-dire

$$2, \; 3, \; 5, \; 7, \; 11, \; \ldots, \; 149, \; 151$$

dans un tableau de $6 \times 6$ cases, un nombre par case, de façon à obtenir un carré magique ?

## Hints

1. Parmi ces $36$ nombres premiers, l'un d'eux n'est pas comme les autres. Lequel ?
2. Le nombre $2$ est le seul nombre premier pair : tous les autres sont impairs.
3. Regardez la ligne dans laquelle se trouverait le nombre $2$, et une autre ligne. Comparez la parité de leurs deux sommes.
4. Une somme de six nombres impairs, est-elle paire ou impaire ? Et une somme de cinq nombres impairs et du nombre $2$ ?

## Solution

Supposons qu'un tel carré magique existe, et notons $S$ la somme commune à toutes les lignes.

**Un nombre premier à part.**

Parmi les $36$ premiers nombres premiers, seul $2$ est pair : tous les autres sont impairs, puisqu'un nombre premier pair est forcément $2$ lui-même.

Il y a donc dans le tableau un $2$ et trente-cinq nombres impairs.

**La ligne du 2.**

Le nombre $2$ occupe une case, donc il appartient à exactement une ligne. Cette ligne contient $2$ et cinq nombres impairs. Or la somme de cinq nombres impairs est impaire (impair $+$ impair $=$ pair, puis pair $+$ impair $=$ impair, et ainsi de suite). En ajoutant $2$, qui est pair, on obtient encore un nombre impair :

$$S \text{ est impair.}$$

**Les autres lignes.**

Le tableau compte six lignes, et une seule contient le $2$. Prenons n'importe laquelle des cinq autres : elle est faite de six nombres impairs. Or la somme de six nombres impairs est paire (on peut les grouper deux par deux, chaque paire donnant un nombre pair). Donc

$$S \text{ est pair.}$$

**Conclusion.**

La somme $S$ ne peut pas être à la fois paire et impaire.

**Il est donc impossible de former un tel carré magique.**

## Going further

L'argument ne dit rien contre les carrés magiques formés de nombres premiers en général : il s'en prend uniquement au fait d'utiliser **tous** les $36$ premiers, donc le nombre $2$. Si l'on s'autorise à choisir les nombres premiers, des carrés magiques existent, par exemple le carré $3 \times 3$

| 17 | 113 | 47 |
|---|---|---|
| 89 | 59 | 29 |
| 71 | 5 | 101 |

dont toutes les lignes, colonnes et diagonales donnent $177$.
