---
id: "8121"
title: "Les caméléons de l'île"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, congruences, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["7644"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Invariants », exercice 13"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Sur une île vivent $45$ caméléons : $25$ rouges, $12$ verts et $8$ bleus.

Quand deux caméléons **de la même couleur** se rencontrent, ils se font peur : chacun prend l'une des deux autres couleurs, et pas la même que son voisin. (Par exemple, deux rouges qui se rencontrent deviennent l'un vert, l'autre bleu.)

Quand deux caméléons **de couleurs différentes** se rencontrent, ils se font peur aussi : tous les deux prennent la troisième couleur. (Par exemple, un rouge et un vert deviennent tous les deux bleus.)

Peut-il arriver qu'au bout d'un certain temps, tous les caméléons de l'île soient bleus ?

## Hints

1. Notons $R$, $V$ et $B$ les nombres de caméléons rouges, verts et bleus. Une rencontre les fait varier : dresse la liste complète des six types de rencontres et de leur effet.
2. Cherche une quantité qui ne change pas, ou qui change toujours d'un multiple de $3$.
3. Essaie la différence $R - V$. Que lui arrive-t-il à chaque rencontre ?
4. Compare le reste de $R - V$ dans la division par $3$ au début, et ce qu'il devrait valoir si tous les caméléons étaient bleus.

## Solution

Notons $R$, $V$ et $B$ les nombres de caméléons rouges, verts et bleus. Au départ,

$$R = 25, \qquad V = 12, \qquad B = 8.$$

**L'effet des rencontres.**

Il y a six types de rencontres. Voici comment chacune fait varier $R$, $V$, $B$, puis la différence $R - V$.

| Rencontre | Variation de $R$ | de $V$ | de $B$ | Variation de $R-V$ |
|---|---|---|---|---|
| rouge + rouge | $-2$ | $+1$ | $+1$ | $-3$ |
| vert + vert | $+1$ | $-2$ | $+1$ | $+3$ |
| bleu + bleu | $+1$ | $+1$ | $-2$ | $0$ |
| rouge + vert (deviennent bleus) | $-1$ | $-1$ | $+2$ | $0$ |
| rouge + bleu (deviennent verts) | $-1$ | $+2$ | $-1$ | $-3$ |
| vert + bleu (deviennent rouges) | $+2$ | $-1$ | $-1$ | $+3$ |

**L'invariant.**

Dans les six cas, la différence $R - V$ varie de $-3$, de $0$ ou de $+3$ : toujours d'un multiple de $3$.

Donc **le reste de $R - V$ dans la division par $3$ ne change jamais**, quelles que soient les rencontres qui ont lieu.

**Conclusion.**

Au départ,

$$R - V = 25 - 12 = 13 = 4 \times 3 + 1,$$

donc $R - V$ a pour reste $1$ dans la division par $3$. Ce reste vaudra donc toujours $1$.

Si tous les caméléons devenaient bleus, on aurait $R = 0$ et $V = 0$, donc $R - V = 0$, dont le reste par $3$ est $0$. C'est impossible.

**Non, les caméléons ne peuvent jamais devenir tous bleus.**

## Going further

Le même argument en dit beaucoup plus.

Comme le reste de $R-V$ par $3$ vaut toujours $1$, on a en particulier $R - V \neq 0$, donc $R$ et $V$ ne peuvent jamais être nuls en même temps : **il reste toujours au moins un caméléon rouge ou au moins un caméléon vert.**

Du coup, les caméléons ne peuvent pas non plus devenir tous rouges (il faudrait $V = 0$ et $R = 45$, donc $R - V = 45$, de reste $0$), ni tous verts ($R-V = -45$, de reste $0$ également). Autrement dit, avec ce départ-là, les caméléons de l'île ne seront **jamais** tous de la même couleur.
