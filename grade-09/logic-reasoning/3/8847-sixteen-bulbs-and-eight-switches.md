---
id: "8847"
title: "Seize ampoules et huit interrupteurs"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, grille, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 3, p. 123"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Seize ampoules sont disposées en carré, $4$ lignes et $4$ colonnes.

Il y a $8$ interrupteurs : un par ligne et un par colonne. Actionner un interrupteur **inverse l'état** (allumée $\leftrightarrow$ éteinte) des $4$ ampoules de sa ligne, ou des $4$ ampoules de sa colonne.

Au départ, seule l'ampoule en haut à gauche est allumée ; les $15$ autres sont éteintes.

Peut-on, en actionnant des interrupteurs, allumer les $16$ ampoules ?

## Hints

1. Il faut trouver une quantité dont le comportement ne dépend pas de l'interrupteur actionné. Regarde le **nombre d'ampoules allumées**.
2. Si une ligne contient $k$ ampoules allumées et qu'on actionne son interrupteur, combien y en aura-t-il ensuite ? De combien le total a-t-il varié ?
3. Cette variation est-elle toujours paire ?
4. Compare la parité du nombre d'ampoules allumées au départ et à l'arrivée voulue.

## Solution

### L'invariant

Comptons le nombre total d'ampoules allumées, et voyons comment il varie.

Actionnons l'interrupteur d'une ligne (ou d'une colonne) qui contient $k$ ampoules allumées, avec $0 \leqslant k \leqslant 4$. Après l'opération :

- les $k$ ampoules allumées s'éteignent ;
- les $4-k$ ampoules éteintes s'allument.

La variation du nombre total d'ampoules allumées vaut donc
$$(4-k) - k = 4 - 2k = 2\,(2-k) ,$$
qui est un nombre **pair**, quelle que soit la valeur de $k$.

Donc **la parité du nombre d'ampoules allumées ne change jamais.**

### On conclut

Au départ, il y a $1$ ampoule allumée : un nombre **impair**.

À l'arrivée voulue, il y en aurait $16$ : un nombre **pair**.

C'est impossible.

**Conclusion.** On ne peut pas allumer les $16$ ampoules.

### Une remarque

L'argument ne dépend pas du fait que la grille soit $4 \times 4$, mais du fait que les lignes et les colonnes aient un nombre **pair** d'ampoules. Sur une grille $5 \times 5$, actionner une ligne de $5$ ampoules dont $k$ sont allumées fait varier le total de $5-2k$, qui est impair : la parité n'est plus conservée et cette preuve-là ne dit plus rien. Cela ne veut pas dire que la réponse change ; cela veut dire qu'il faut un autre invariant.

## Going further

1. Sur une grille $3 \times 3$ avec le même jeu d'interrupteurs, en partant d'une seule ampoule allumée en haut à gauche, peut-on tout allumer ?
2. Sur la grille $4 \times 4$, quelles configurations peut-on atteindre en partant de tout éteint ?
