---
id: "7214"
title: "Les soixante-quatre ampoules du plafond"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, grille, interrupteurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Un plafond porte $64$ ampoules disposées en carré, $8$ rangées de $8$ ampoules.

Sur le mur, il y a $16$ interrupteurs : un par rangée et un par colonne. Appuyer sur un
interrupteur **inverse l'état** des $8$ ampoules de la rangée (ou de la colonne)
correspondante : celles qui étaient allumées s'éteignent, celles qui étaient éteintes
s'allument.

Au départ, les $64$ ampoules sont allumées.

Peut-on, en appuyant sur les interrupteurs autant de fois qu'on veut et dans l'ordre qu'on veut,
arriver à une situation où **exactement une** ampoule est allumée ?

## Hints

1. Compte les ampoules allumées au départ. Compte-les après un appui sur un interrupteur.
2. Quand on appuie sur un interrupteur, $8$ ampoules changent d'état. Si $k$ d'entre elles étaient
   allumées, combien y en a-t-il d'allumées après ?
3. De combien le nombre total d'ampoules allumées varie-t-il ? Ce nombre est-il pair ou impair ?

## Solution

**Ce que fait un appui.**

Appuyons sur un interrupteur. Il concerne $8$ ampoules. Supposons que parmi ces $8$ ampoules,
$k$ soient allumées et donc $8-k$ éteintes. Après l'appui, ce sont les $8-k$ autres qui sont
allumées.

Le nombre total d'ampoules allumées dans la pièce varie donc de
$$(8-k) - k = 8 - 2k .$$

C'est un nombre **pair**, quelle que soit la valeur de $k$.

**L'invariant.**

Au départ, $64$ ampoules sont allumées, et $64$ est pair. Chaque appui fait varier ce nombre d'une
quantité paire, donc ne change pas sa parité.

**Le nombre d'ampoules allumées reste donc toujours pair.**

**Conclusion.**

$1$ est impair. Il est donc impossible d'arriver à une situation où exactement une ampoule est
allumée.

**Non, c'est impossible.**

## Going further

Le même argument montre qu'on ne peut jamais obtenir $3$, $5$, $7$, ... ampoules allumées.

Mais tous les nombres pairs ne sont pas atteignables non plus. Appuyer deux fois sur le même
interrupteur ne sert à rien, donc tout ce qu'on peut faire revient à choisir une fois pour toutes
un groupe de $\ell$ rangées et un groupe de $c$ colonnes sur lesquelles on appuie. Une ampoule
s'éteint exactement lorsque sa rangée est choisie et pas sa colonne, ou l'inverse. Le nombre
d'ampoules **éteintes** à la fin vaut donc
$$\ell(8-c) + c(8-\ell) .$$
En faisant varier $\ell$ et $c$ de $0$ à $8$, on obtient la liste complète des situations
possibles. On peut par exemple vérifier qu'il est impossible d'obtenir exactement $2$ ampoules
allumées.
