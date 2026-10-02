---
id: "3605"
title: "Deux hexagones et deux triangles"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [hexagone, triangle-equilateral, aire, decoupage, rapport]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 6 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On dispose de deux hexagones réguliers superposables et de deux triangles équilatéraux. Les quatre pièces ont toutes le même côté.

On les assemble, sans trou ni chevauchement, et l'assemblage forme un hexagone plus grand, qui lui n'est pas régulier.

Quel est le rapport entre l'aire totale des deux hexagones réguliers et l'aire du grand hexagone ?

## Hints

1. Toutes les pièces ont le même côté. Cherche une figure élémentaire commune, à partir de laquelle on peut reconstruire chaque pièce.
2. Trace les trois grandes diagonales d'un hexagone régulier. En combien de morceaux le découpent-elles, et quelle est la forme de ces morceaux ?
3. Une fois le grand hexagone entièrement pavé par cette figure élémentaire, il ne reste qu'à compter.

## Solution

**Étape 1. Découper un hexagone régulier.**

Traçons les trois grandes diagonales d'un hexagone régulier de côté $c$, c'est-à-dire les segments qui joignent deux sommets opposés. Elles se coupent toutes au centre $O$ de l'hexagone et le découpent en six triangles.

Chacun de ces triangles a pour sommets le centre et deux sommets voisins de l'hexagone. L'angle au centre vaut $360° : 6 = 60°$, et les deux côtés issus du centre ont la même longueur, donc le triangle est isocèle avec un angle de $60°$ : il est équilatéral. Son troisième côté est un côté de l'hexagone, donc il mesure $c$.

Un hexagone régulier de côté $c$ est donc exactement recouvert par $6$ triangles équilatéraux de côté $c$.

**Étape 2. Compter les triangles du grand hexagone.**

Prenons pour unité d'aire celle d'un triangle équilatéral de côté $c$. Alors :

- chacun des deux hexagones réguliers vaut $6$ unités ;
- chacun des deux triangles équilatéraux vaut $1$ unité.

Comme l'assemblage se fait sans trou ni chevauchement, l'aire du grand hexagone est la somme des aires des quatre pièces :

$$6 + 6 + 1 + 1 = 14 \text{ unités}$$

**Étape 3. Former le rapport.**

L'aire des deux hexagones réguliers vaut $6 + 6 = 12$ unités. Le rapport cherché est donc

$$\frac{12}{14} = \frac{6}{7}$$

**Réponse.** Le rapport vaut $\dfrac{6}{7}$.

Remarque : on n'a jamais eu besoin de la valeur de l'aire d'un triangle équilatéral de côté $c$. Elle se simplifie dans le rapport, ce qui est normal puisque la question ne porte que sur une proportion.

## Going further

Le même découpage permet de répondre tout de suite à d'autres questions du même genre. Par exemple, si on assemblait trois hexagones réguliers et quatre triangles équilatéraux de même côté en une seule figure sans trou, l'aire totale vaudrait $3 \times 6 + 4 = 22$ unités, et les hexagones en occuperaient $\frac{18}{22} = \frac{9}{11}$.
