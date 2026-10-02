---
id: "13815"
title: "Une sauterelle monte dix marches"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, recurrence, fibonacci, escalier]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_lycee-bis.pdf, questionnaire lycéens, exercice 9 ; réponse dans 2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_lycee-bis.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_lycee-bis.pdf"
---

## Statement

Une sauterelle se trouve au pied d'un escalier de $10$ marches. À chaque saut, elle monte
soit une marche, soit deux marches. Elle doit arriver exactement sur la dixième marche.

De combien de façons différentes peut-elle monter l'escalier ? Deux façons sont différentes
si la suite des sauts n'est pas la même : par exemple, sauter $1$ puis $2$ n'est pas la même
chose que sauter $2$ puis $1$.

## Hints

1. Remplace $10$ par un petit nombre de marches : $1$, $2$, $3$, $4$. Compte à la main.
2. Note $u_n$ le nombre de façons de monter $n$ marches. Regarde le **dernier** saut : il est
   de $1$ marche ou de $2$ marches. Que reste-t-il à compter dans chaque cas ?
3. Tu dois trouver $u_n = u_{n-1} + u_{n-2}$. Il ne reste qu'à calculer de proche en proche.

## Solution

Notons $u_n$ le nombre de façons de monter un escalier de $n$ marches.

**Les petits cas.** Pour $1$ marche, il n'y a qu'une façon : $u_1 = 1$. Pour $2$ marches, on
peut faire $1 + 1$ ou $2$ : $u_2 = 2$.

**Une relation entre les nombres $u_n$.** Prenons $n \geqslant 3$ et regardons le dernier saut
de la sauterelle.

- S'il est d'une marche, la sauterelle était juste avant sur la marche $n - 1$. Elle y est
  arrivée d'une des $u_{n-1}$ façons de monter $n - 1$ marches.
- S'il est de deux marches, elle était sur la marche $n - 2$, où elle est arrivée d'une des
  $u_{n-2}$ façons de monter $n - 2$ marches.

Ces deux cas ne se recouvrent pas (le dernier saut n'est pas le même), et ils couvrent toutes
les façons. Donc

$$u_n = u_{n-1} + u_{n-2}.$$

**On calcule de proche en proche.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | $1$ | $2$ | $3$ | $5$ | $8$ | $13$ | $21$ | $34$ | $55$ | $89$ |

Par exemple, pour $3$ marches on trouve bien les $3$ façons $1 + 1 + 1$, $1 + 2$ et $2 + 1$.

**La sauterelle peut monter l'escalier de $89$ façons différentes.**

## Going further

Les nombres $1, 2, 3, 5, 8, 13, \ldots$ obtenus sont les nombres de Fibonacci : chacun est la
somme des deux précédents. Si la sauterelle pouvait aussi sauter trois marches d'un coup, le
même raisonnement donnerait $u_n = u_{n-1} + u_{n-2} + u_{n-3}$.
