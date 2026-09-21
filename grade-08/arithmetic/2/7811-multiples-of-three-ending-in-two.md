---
id: "7811"
title: "Les multiples de 3 qui se terminent par 2"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [multiples, divisibilite, denombrement, suite arithmetique]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Combien y a-t-il de multiples de $3$ compris entre $1$ et $2015$ dont le chiffre des unités est
un $2$ ?

## Hints

1. Commence par les trouver à la main : $12$, puis le suivant, puis le suivant. Que remarques-tu
   sur l'écart entre deux nombres consécutifs de la liste ?
2. Entre deux multiples de $3$ qui se terminent tous les deux par $2$, l'écart est un multiple
   de $3$ et un multiple de $10$. Le plus petit écart possible est donc $30$.
3. Il reste à trouver le premier et le dernier de la liste, puis à compter combien de pas de
   $30$ séparent les deux.

## Solution

**Étape 1 : on repère la régularité.**

Cherchons les premiers : les nombres qui se terminent par $2$ sont $2$, $12$, $22$, $32$, $42$,
... et parmi eux les multiples de $3$ sont
$$12, \quad 42, \quad 72, \quad 102, \ldots$$

L'écart est constant et vaut $30$. Ce n'est pas un hasard : si deux nombres de la liste
diffèrent de $d$, alors $d$ est un multiple de $10$ (ils ont le même chiffre des unités) et un
multiple de $3$ (ce sont deux multiples de $3$). Donc $d$ est un multiple de $30$, et le plus
petit écart possible est exactement $30$.

Réciproquement, en ajoutant $30$ à un nombre de la liste, on reste bien un multiple de $3$ se
terminant par $2$. La liste est donc exactement
$$12, \; 42, \; 72, \; \ldots, \; 12 + 30k, \; \ldots$$

**Étape 2 : le dernier terme.**

On veut $12 + 30k \leq 2015$, c'est-à-dire $30k \leq 2003$, donc
$$k \leq \frac{2003}{30} = 66{,}76\ldots$$

Le plus grand entier possible est $k = 66$, ce qui donne
$$12 + 30 \times 66 = 12 + 1980 = 1992.$$

(Et le suivant, $2022$, dépasse bien $2015$.)

**Étape 3 : on compte.**

Les valeurs de $k$ vont de $0$ à $66$, ce qui fait
$$66 - 0 + 1 = \boxed{67}$$
nombres.
