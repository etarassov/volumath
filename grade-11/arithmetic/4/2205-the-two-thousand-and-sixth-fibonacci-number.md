---
id: "2205"
title: "Le deux mille sixième nombre de Fibonacci"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [suites, fibonacci, reste, periodicite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 1)"
  reference: "Handout-823-872.pdf, exercice 8 (e)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-823-872.pdf"
---

## Statement

La suite de Fibonacci est définie par

$$F_1 = 1, \qquad F_2 = 1, \qquad \text{et} \qquad F_{n+2} = F_{n+1} + F_n \quad \text{pour tout } n \geqslant 1 .$$

Elle commence donc par $1, 1, 2, 3, 5, 8, 13, 21, 34, \ldots$

Quel est le reste de $F_{2006}$ dans la division euclidienne par $5$ ?

## Hints

1. $F_{2006}$ a plus de quatre cents chiffres : il n'est pas question de le calculer. Mais on ne demande que son reste modulo $5$.
2. Écris la suite des restes modulo $5$ : $1, 1, 2, 3, 0, 3, 3, 1, \ldots$ et continue. Au bout d'un moment, quelque chose se répète.
3. Pour être sûr que la répétition continue pour toujours, ce n'est pas un seul reste qu'il faut voir revenir, mais **deux restes consécutifs**, car la règle de calcul ne regarde que les deux derniers termes.
4. Une fois la période $p$ trouvée, calcule le reste de $2006$ dans la division par $p$.

## Solution

**L'idée : les restes se répètent.**

On ne peut pas calculer $F_{2006}$, mais on peut calculer les restes modulo $5$ de proche en proche, car le reste d'une somme ne dépend que des restes des deux termes. Écrivons-les, pour $n = 1, 2, 3, \ldots$ :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| reste de $F_n$ | 1 | 1 | 2 | 3 | 0 | 3 | 3 | 1 | 4 | 0 |

| $n$ | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 |
|---|---|---|---|---|---|---|---|---|---|---|
| reste de $F_n$ | 4 | 4 | 3 | 2 | 0 | 2 | 2 | 4 | 1 | 0 |

| $n$ | 21 | 22 | 23 | 24 |
|---|---|---|---|---|
| reste de $F_n$ | 1 | 1 | 2 | 3 |

**Pourquoi cela se répète pour toujours.**

Aux rangs $21$ et $22$ on retrouve le couple de restes $(1, 1)$, c'est-à-dire exactement le couple des rangs $1$ et $2$.

Or la règle $F_{n+2} = F_{n+1} + F_n$ ne regarde que les **deux** termes précédents. Si deux couples de restes consécutifs coïncident, tout ce qui suit coïncide également, terme par terme. Donc pour tout $n \geqslant 1$ :

$$F_{n + 20} \equiv F_n \pmod 5 .$$

**La suite des restes est périodique de période $20$.**

**On applique cela à $n = 2006$.**

$$2006 = 20 \times 100 + 6 .$$

En descendant de $20$ en $20$ cent fois, on arrive au rang $6$ :

$$F_{2006} \equiv F_{2006 - 20 \times 100} = F_6 \pmod 5 .$$

Or $F_6 = 8$, et $8 = 5 + 3$.

**Conclusion.** Le reste de $F_{2006}$ dans la division par $5$ est $3$.

**Attention à un piège fréquent.** Il ne suffit pas de voir revenir un seul reste pour annoncer une période. Le reste $0$ apparaît déjà aux rangs $5$, $10$, $15$ et $20$, mais les termes qui les suivent ne sont pas les mêmes : après le $0$ du rang $5$ vient un $3$, après celui du rang $10$ vient un $4$. C'est bien le retour du **couple** $(1, 1)$ qui garantit la répétition.

## Going further

1. Quelle est la période de la suite des restes de $F_n$ modulo $2$ ? modulo $3$ ? modulo $4$ ?
2. Montrer que, quel que soit l'entier $m \geqslant 2$, la suite des restes de $F_n$ modulo $m$ est périodique. (Indication : il n'y a qu'un nombre fini de couples de restes possibles, donc un couple finit par revenir.)
3. Pour quels rangs $n$ le nombre $F_n$ est-il divisible par $5$ ? Et par $2$ ?
