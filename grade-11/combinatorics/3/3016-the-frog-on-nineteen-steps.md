---
id: "3016"
title: "La grenouille et les dix-neuf marches"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [suites, recurrence, denombrement, chemins]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Recursion (Combinatorial Point of View)"
  reference: "Handout-3142-2701.pdf, exercice 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3142-2701.pdf"
---

## Statement

Une grenouille monte un escalier. À chaque saut, elle monte soit $2$ marches, soit $3$
marches. L'escalier compte $19$ marches et elle doit arriver exactement sur la dernière.

De combien de façons différentes peut-elle monter l'escalier ?

Deux façons sont différentes si la suite des sauts n'est pas la même : monter $2$ puis $3$
n'est pas la même chose que monter $3$ puis $2$.

## Hints

1. Note $u_n$ le nombre de façons d'atteindre exactement la marche $n$. Commence par les petites valeurs : $u_1$, $u_2$, $u_3$, $u_4$.
2. Pour arriver sur la marche $n$, d'où la grenouille vient-elle juste avant son dernier saut ?
3. Il n'y a que deux possibilités pour ce dernier saut. Cela donne une relation entre $u_n$, $u_{n-2}$ et $u_{n-3}$.
4. Il faut fixer les premières valeurs avec soin : $u_1 = 0$ (impossible), et il est commode de poser $u_0 = 1$ (la grenouille est déjà arrivée, une seule façon : ne rien faire).

## Solution

**La relation de récurrence.**

Notons $u_n$ le nombre de façons d'atteindre exactement la marche $n$ en partant du sol
(marche $0$).

Regardons le **dernier** saut de la grenouille. Il vaut $2$ ou $3$ marches :

- s'il vaut $2$, la grenouille était juste avant sur la marche $n-2$, et il y a $u_{n-2}$
  façons d'y arriver ;
- s'il vaut $3$, elle était sur la marche $n-3$, et il y a $u_{n-3}$ façons d'y arriver.

Ces deux cas sont exclusifs et couvrent tout, donc pour $n \geq 3$ :

$$u_n = u_{n-2} + u_{n-3}.$$

**Les valeurs de départ.**

- $u_0 = 1$ : la grenouille est déjà au but, il y a une seule façon (ne faire aucun saut).
- $u_1 = 0$ : impossible d'atteindre la marche $1$ avec des sauts de $2$ ou $3$.
- $u_2 = 1$ : un seul saut de $2$.

**On déroule.**

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | $1$ | $0$ | $1$ | $1$ | $1$ | $2$ | $2$ | $3$ | $4$ | $5$ |

| $n$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ | $17$ | $18$ | $19$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | $7$ | $9$ | $12$ | $16$ | $21$ | $28$ | $37$ | $49$ | $65$ | $86$ |

Par exemple $u_{10} = u_8 + u_7 = 4 + 3 = 7$, et
$u_{19} = u_{17} + u_{16} = 49 + 37 = 86$.

**Conclusion.**

La grenouille peut monter l'escalier de $86$ façons différentes.

## Going further

On peut aussi compter directement. Si la grenouille fait $a$ sauts de $2$ et $b$ sauts de
$3$, alors $2a + 3b = 19$, donc $b$ est impair :

- $b = 1$, $a = 8$ : il faut choisir la place du saut de $3$ parmi $9$ sauts, soit
  $\binom{9}{1} = 9$ façons ;
- $b = 3$, $a = 5$ : $\binom{8}{3} = 56$ façons ;
- $b = 5$, $a = 2$ : $\binom{7}{5} = 21$ façons.

Total : $9 + 56 + 21 = 86$. Les deux méthodes s'accordent.
