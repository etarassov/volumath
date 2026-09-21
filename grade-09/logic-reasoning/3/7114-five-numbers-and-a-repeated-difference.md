---
id: "7114"
title: "Cinq nombres et une différence qui revient"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [tiroirs, differences, entiers, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Lundi : test initial », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

On choisit cinq entiers **différents** entre $1$ et $10$.

Montrer qu'il existe un entier non nul qui s'écrit d'**au moins deux façons différentes**
comme différence de deux des cinq nombres choisis.

*(Autrement dit : on peut trouver deux paires distinctes parmi les cinq nombres, telles que
la différence entre les deux nombres soit la même pour les deux paires.)*

## Hints

1. Combien de paires peut-on former avec cinq nombres ? Fais la liste, tu en trouveras dix.
2. Chaque paire donne une différence. Entre quelles valeurs cette différence peut-elle se
   trouver, sachant que les nombres sont entre $1$ et $10$ ?
3. Compare le nombre de différences possibles avec le nombre de paires.
4. Autre chemin, si tu préfères : range les cinq nombres dans l'ordre décroissant et regarde
   seulement les quatre écarts entre nombres consécutifs.

## Solution

**Première méthode : le principe des tiroirs.**

Appelons $a, b, c, d, e$ les cinq nombres choisis. On peut former dix paires :

$$ab, \ ac, \ ad, \ ae, \ bc, \ bd, \ be, \ cd, \ ce, \ de .$$

Chaque paire donne une différence, prise positive. Il y a donc **dix** différences.

Or les cinq nombres sont entre $1$ et $10$ et sont tous différents, donc chaque différence
est un entier compris entre $1$ et $9$ : il n'y a que **neuf** valeurs possibles.

On range dix différences dans neuf tiroirs : deux d'entre elles tombent dans le même tiroir,
c'est-à-dire que deux paires différentes donnent la même différence. C'est exactement ce
qu'on voulait.

**Deuxième méthode, sans les tiroirs.**

Rangeons les cinq nombres dans l'ordre décroissant : $a > b > c > d > e$, et considérons
seulement les quatre écarts entre nombres consécutifs :

$$a - b, \quad b - c, \quad c - d, \quad d - e .$$

Ces quatre nombres sont des entiers strictement positifs, et en les additionnant, tout
s'annule sauf les extrêmes :

$$(a-b) + (b-c) + (c-d) + (d-e) = a - e \leqslant 10 - 1 = 9 .$$

Supposons maintenant que ces quatre écarts soient deux à deux différents. Ce sont quatre
entiers strictement positifs distincts, donc les plus petits qu'ils puissent être sont $1$,
$2$, $3$ et $4$, et leur somme vaut au minimum

$$1 + 2 + 3 + 4 = 10 .$$

Cela contredit l'inégalité $a - e \leqslant 9$ obtenue plus haut.

Donc deux de ces quatre écarts sont égaux, et ils proviennent bien de deux paires
différentes. **Le résultat est démontré.**

## Going further

Les deux méthodes ne disent pas tout à fait la même chose. La première utilise les dix
paires et conclut vite. La seconde n'utilise que quatre paires, celles des nombres
consécutifs, et donne donc un résultat plus précis : ce sont déjà deux **écarts consécutifs**
qui coïncident.

Une question pour continuer : avec cinq nombres entre $1$ et $11$, le résultat tient-il
encore ? Et entre $1$ et $12$ ?
