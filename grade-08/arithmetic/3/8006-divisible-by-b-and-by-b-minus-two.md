---
id: "8006"
title: "Divisible à la fois par b et par b − 2"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [multiples, divisibilite, denombrement, recherche-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Combien y a-t-il de couples d'entiers $(a, b)$ tels que

$$1 \leqslant a \leqslant 30, \qquad 3 \leqslant b \leqslant 30,$$

et tels que $a$ soit divisible à la fois par $b$ et par $b - 2$ ?

## Hints

1. Fixe une valeur de $b$ et demande-toi combien de valeurs de $a$ conviennent.
2. Un nombre divisible à la fois par $b$ et par $b - 2$ est un multiple commun de ces deux
   nombres : c'est donc un multiple de leur plus petit multiple commun.
3. Dès que $b$ est un peu grand, le plus petit multiple commun de $b$ et de $b - 2$ dépasse
   $30$. À partir de quelle valeur de $b$ ? Tu n'auras alors plus que quelques cas à traiter.

## Solution

**La stratégie.** On fixe $b$, puis on compte les $a$ qui conviennent.

Un entier $a$ divisible à la fois par $b$ et par $b - 2$ est un multiple commun de $b$ et de
$b - 2$. Or les multiples communs de deux nombres sont exactement les multiples de leur plus
petit multiple commun, que nous noterons $\mathrm{PPCM}(b,\, b-2)$. Il faut donc compter les
multiples de $\mathrm{PPCM}(b,\, b-2)$ compris entre $1$ et $30$.

**Presque tous les $b$ sont trop grands.** Les nombres $b$ et $b - 2$ diffèrent de $2$, donc
tout diviseur commun aux deux divise aussi leur différence $2$ : leur plus grand diviseur
commun vaut $1$ ou $2$. Par conséquent

$$\mathrm{PPCM}(b,\, b-2) \geqslant \frac{b(b-2)}{2}.$$

Dès que $b \geqslant 10$, on a $\dfrac{b(b-2)}{2} \geqslant \dfrac{10 \times 8}{2} = 40 > 30$ :
aucun multiple commun ne tient dans $[1 ; 30]$. **Il ne reste donc que les valeurs
$b = 3, 4, 5, 6, 7, 8, 9$.**

**On traite ces sept cas.**

| $b$ | $b-2$ | $\mathrm{PPCM}$ | multiples $\leqslant 30$ | combien |
|---|---|---|---|---|
| $3$ | $1$ | $3$ | $3, 6, 9, \ldots, 30$ | $10$ |
| $4$ | $2$ | $4$ | $4, 8, 12, \ldots, 28$ | $7$ |
| $5$ | $3$ | $15$ | $15, 30$ | $2$ |
| $6$ | $4$ | $12$ | $12, 24$ | $2$ |
| $7$ | $5$ | $35$ | aucun | $0$ |
| $8$ | $6$ | $24$ | $24$ | $1$ |
| $9$ | $7$ | $63$ | aucun | $0$ |

**Le total.**

$$10 + 7 + 2 + 2 + 0 + 1 + 0 = 22.$$

**Il y a $22$ couples $(a, b)$.**

## Going further

L'étape qui fait gagner tout le temps est la majoration : plutôt que d'examiner les $28$
valeurs possibles de $b$, on montre d'un coup que les $21$ dernières ne donnent rien. Repérer
tôt « à partir d'ici, c'est trop grand » est une habitude qui sert dans presque tous les
problèmes de dénombrement par cas.
