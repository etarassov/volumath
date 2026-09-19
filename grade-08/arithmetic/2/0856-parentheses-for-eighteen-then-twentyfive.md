---
id: "0856"
title: "Des parenthèses pour obtenir 18, puis 25"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [priorite des operations, parentheses, recherche]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 2, section « Calculer avec des nombres, priorité des opérateurs »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

On part de l'expression

$$1 + 2 \times 3 + 4 + 5.$$

Place des parenthèses dans cette expression pour obtenir :

**a)** le résultat $18$ ;

**b)** le résultat $25$.

Les nombres, les signes et leur ordre ne changent pas : tu as seulement le droit d'ajouter des parenthèses.

## Hints

1. Commence par calculer l'expression telle quelle. Combien vaut-elle ? Il faudra donc gagner un peu pour arriver à $18$, et beaucoup plus pour arriver à $25$.
2. Une parenthèse ne change rien si elle entoure un morceau qui se calculait déjà en premier. Ici, la seule multiplication est $2 \times 3$ : ce sont donc des **additions** qu'il faut forcer à passer avant elle.
3. Pour $18$ : et si on ne multipliait pas $2$ par $3$, mais $1+2$ par $3$ ?
4. Pour $25$ : cette fois, garde le $2$ tout seul devant la multiplication, mais fais-lui multiplier une somme aussi grande que possible.

## Solution

**Le point de départ.** Sans parenthèses, la multiplication passe en premier :

$$1 + 2 \times 3 + 4 + 5 = 1 + 6 + 4 + 5 = 16.$$

Il faut donc trouver le moyen de gagner $2$, puis $9$.

**a) Obtenir 18.**

La seule multiplication de l'expression est $2 \times 3$. Une parenthèse utile va donc servir à
faire entrer un ou plusieurs termes supplémentaires dans cette multiplication.

Si on met $1 + 2$ entre parenthèses :

$$(1 + 2) \times 3 + 4 + 5 = 3 \times 3 + 4 + 5 = 9 + 4 + 5 = 18. \qquad \checkmark$$

**b) Obtenir 25.**

Cette fois, on fait multiplier par $2$ tout ce qui suit :

$$1 + 2 \times (3 + 4 + 5) = 1 + 2 \times 12 = 1 + 24 = 25. \qquad \checkmark$$

**Conclusion.**

$$(1+2) \times 3 + 4 + 5 = 18, \qquad 1 + 2 \times (3+4+5) = 25.$$

**Remarque.** En examinant toutes les façons de parenthéser cette expression, on ne trouve que
six résultats possibles : $16$, $18$, $20$, $25$, $26$ et $36$. Les deux solutions ci-dessus sont
donc les seules, à des parenthèses inutiles près (par exemple $((1+2) \times 3) + (4+5)$ est la
même solution que la première, écrite plus lourdement).

## Going further

1. Trouve les six résultats possibles annoncés dans la remarque, et la façon de parenthéser qui donne chacun d'eux.
2. Même jeu avec $1 + 2 \times 3 + 4 \times 5$ : quels résultats peut-on atteindre ?
