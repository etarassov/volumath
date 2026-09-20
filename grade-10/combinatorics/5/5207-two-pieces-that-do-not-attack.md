---
id: "5207"
title: "Deux pièces qui ne se menacent pas"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 55
tags: [denombrement, echiquier, complementaire, diagonales, combinaisons]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problème 19"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

On pose deux pièces identiques sur deux cases différentes d'un échiquier $8 \times 8$. Deux positions qui se déduisent l'une de l'autre en échangeant les deux pièces sont considérées comme identiques, puisque les pièces sont identiques.

Dans chacun des cas suivants, combien y a-t-il de positions où les deux pièces **ne se menacent pas** ?

1. Deux **fous**. Un fou menace les cases situées sur l'une de ses deux diagonales.
2. Deux **cavaliers**. Un cavalier menace les cases atteintes en avançant de deux cases dans une direction puis d'une case perpendiculairement.
3. Deux **dames**. Une dame menace les cases situées sur sa ligne, sur sa colonne ou sur l'une de ses deux diagonales.

*(Une pièce n'est pas gênée par l'autre : on ne s'occupe pas des pièces qui « bloquent » une direction.)*

## Hints

1. Dans les trois cas, comptez d'abord le nombre total de façons de poser les deux pièces, puis retranchez le nombre de positions où elles se menacent. Il est bien plus facile de compter les positions interdites.
2. Pour les fous : regroupez les cases par diagonale. Dans une diagonale de $k$ cases, combien y a-t-il de paires de cases ? N'oubliez pas qu'il y a deux familles de diagonales.
3. Les diagonales d'une même famille ont pour longueurs $1, 2, 3, \ldots, 7, 8, 7, \ldots, 3, 2, 1$.
4. Pour les cavaliers : deux cases séparées d'un saut de cavalier sont exactement deux coins opposés d'un rectangle de $2 \times 3$ cases. Combien un tel rectangle contient-il de telles paires, et combien y a-t-il de rectangles $2 \times 3$ sur l'échiquier ?
5. Pour les dames : deux cases distinctes ne peuvent pas être à la fois sur une même ligne et sur une même diagonale. Les trois familles de menaces ne se recouvrent donc pas, et on peut additionner.

## Solution

### Le nombre total de positions

Poser deux pièces identiques sur deux cases différentes, c'est choisir une paire de cases parmi $64$ :

$$\binom{64}{2} = \frac{64 \times 63}{2} = 2016 .$$

Dans chaque question, on comptera les paires **menaçantes** et on les retranchera de $2016$.

### 1. Deux fous

Deux cases se menacent pour un fou exactement lorsqu'elles sont sur une même diagonale.

L'échiquier a deux familles de diagonales : celles qui montent vers la droite et celles qui descendent vers la droite. Dans chaque famille, les longueurs sont

$$1, \; 2, \; 3, \; 4, \; 5, \; 6, \; 7, \; 8, \; 7, \; 6, \; 5, \; 4, \; 3, \; 2, \; 1 .$$

Une diagonale de $k$ cases fournit $\binom{k}{2}$ paires menaçantes :

| $k$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| $\binom{k}{2}$ | 0 | 1 | 3 | 6 | 10 | 15 | 21 | 28 |

Dans une famille, la diagonale de longueur $8$ apparaît une fois et chacune des longueurs $1$ à $7$ apparaît deux fois, d'où

$$2 \times (0 + 1 + 3 + 6 + 10 + 15 + 21) + 28 = 2 \times 56 + 28 = 140 .$$

Les deux familles donnent $2 \times 140 = 280$ paires menaçantes, et aucune paire n'est comptée deux fois : deux cases distinctes ne peuvent être alignées que selon une seule des deux directions diagonales.

$$2016 - 280 = \boxed{1736} .$$

### 2. Deux cavaliers

Un saut de cavalier relie deux cases qui sont les coins opposés d'un rectangle de $2$ cases sur $3$ cases. Réciproquement, dans un tel rectangle, il y a exactement **deux** paires de coins opposés, et chacune est un saut de cavalier :

- un rectangle de $2$ lignes et $3$ colonnes contient la paire coin haut-gauche / coin bas-droite, et la paire coin haut-droite / coin bas-gauche.

Comptons les rectangles $2 \times 3$ que l'on peut découper dans l'échiquier :

- $2$ lignes de haut et $3$ colonnes de large : $7$ positions verticales et $6$ horizontales, soit $42$ ;
- $3$ lignes de haut et $2$ colonnes de large : $6$ positions verticales et $7$ horizontales, soit $42$.

Cela fait $84$ rectangles, donc

$$84 \times 2 = 168$$

paires de cases reliées par un saut de cavalier. Chaque paire provient d'un seul rectangle, car le plus petit rectangle contenant les deux cases est bien déterminé.

$$2016 - 168 = \boxed{1848} .$$

### 3. Deux dames

Deux cases se menacent pour une dame lorsqu'elles sont sur une même ligne, sur une même colonne, ou sur une même diagonale.

- **Lignes** : $8$ lignes de $8$ cases, soit $8 \times \binom{8}{2} = 8 \times 28 = 224$ paires.
- **Colonnes** : de même, $224$ paires.
- **Diagonales** : $280$ paires, calculées à la question 1.

Ces trois comptes ne se recouvrent pas. En effet, deux cases distinctes d'une même ligne ont la même ordonnée et des abscisses différentes, donc elles ne sont ni sur une même colonne, ni sur une même diagonale (une diagonale change à la fois de ligne et de colonne). Le même raisonnement vaut pour les colonnes.

Il y a donc $224 + 224 + 280 = 728$ paires menaçantes, et

$$2016 - 728 = \boxed{1288} .$$

### Récapitulatif

| Pièce | positions menaçantes | positions tranquilles |
|---|---|---|
| fou | 280 | 1736 |
| cavalier | 168 | 1848 |
| dame | 728 | 1288 |

Le cavalier est la pièce la moins encombrante des trois, et la dame la plus encombrante, ce qui est conforme à l'intuition.
