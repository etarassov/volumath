---
id: "11248"
title: "Un ensemble inévitable de permutations"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [permutations, tiroirs, construction, echanges, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices communs, exercice 4 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

Une **permutation** des entiers $1, 2, \ldots, 4035$ est une liste $a_1, a_2, \ldots, a_{4035}$ dans
laquelle chacun de ces entiers apparaît exactement une fois. On dit que deux permutations
$a_1, \ldots, a_{4035}$ et $b_1, \ldots, b_{4035}$ **se croisent** s'il existe une position $k$ telle
que $a_k = b_k$.

Un ensemble $E$ de permutations est dit **inévitable** si toute permutation des entiers
$1, \ldots, 4035$ croise au moins une des permutations de $E$.

a) Montrer qu'il existe un ensemble inévitable formé de $2018$ permutations.

b) Existe-t-il un ensemble inévitable formé de $2017$ permutations ?

## Hints

1. Remarque que $4035 = 2 \times 2018 - 1$. Pour a), regarde les $2018$ premières positions d'une
   permutation $b$ quelconque : peuvent-elles toutes contenir des nombres plus grands que $2018$ ?
2. Pour a) toujours, cherche $2018$ permutations telles que, pour chaque position $p$ entre $1$ et
   $2018$ et chaque valeur $v$ entre $1$ et $2018$, l'une d'elles place la valeur $v$ à la
   position $p$. On peut « faire tourner » la liste $1, 2, \ldots, 2018$.
3. Pour b), la réponse est non. Partant d'une permutation $b$ quelconque, appelle **collision** une
   position $i$ où $b$ a la même valeur qu'une permutation de $E$. Essaie de faire disparaître les
   collisions une par une en échangeant deux valeurs de $b$.
4. Si $i$ est une collision, compte les positions $x$ où aucune permutation de $E$ ne place la
   valeur $b_i$. Il y en a au moins $2018$. Parmi les valeurs $b_x$ à ces positions, l'une d'elles
   n'est la valeur d'aucune permutation de $E$ à la position $i$.

## Solution

### a) Un ensemble inévitable de $2018$ permutations

Pour $k = 1, 2, \ldots, 2018$, notons $\sigma^{(k)}$ la permutation qui commence par
$k, k + 1, \ldots, 2018$, continue par $1, 2, \ldots, k - 1$, et se termine par
$2019, 2020, \ldots, 4035$. Par exemple :

- $\sigma^{(1)}$ est $1, 2, 3, \ldots, 2018, 2019, \ldots, 4035$ ;
- $\sigma^{(2)}$ est $2, 3, \ldots, 2018, 1, 2019, \ldots, 4035$ ;
- $\sigma^{(2018)}$ est $2018, 1, 2, \ldots, 2017, 2019, \ldots, 4035$.

Sur les $2018$ premières positions, on fait « tourner » la liste $1, 2, \ldots, 2018$.

**La propriété clé.** Fixons une position $p$ entre $1$ et $2018$. Quand $k$ passe de $1$ à $2018$,
la valeur de $\sigma^{(k)}$ à la position $p$ prend successivement les valeurs
$$p,\ p + 1,\ \ldots,\ 2018,\ 1,\ 2,\ \ldots,\ p - 1 .$$
Elle augmente de $1$ à chaque fois, et repart à $1$ après $2018$. Ainsi, pour toute valeur $v$ entre
$1$ et $2018$, **une des permutations $\sigma^{(k)}$ place la valeur $v$ à la position $p$.**

**Pourquoi cet ensemble est inévitable.** Soit $b_1, \ldots, b_{4035}$ une permutation quelconque.
Regardons ses $2018$ premières valeurs $b_1, \ldots, b_{2018}$. Elles sont toutes différentes, et il
n'y a que $4035 - 2018 = 2017$ entiers plus grands que $2018$. Elles ne peuvent donc pas être toutes
plus grandes que $2018$ : il existe une position $p \leqslant 2018$ telle que $b_p \leqslant 2018$.
D'après la propriété clé, une des permutations $\sigma^{(k)}$ place la valeur $b_p$ à la position
$p$. Alors $b$ et $\sigma^{(k)}$ se croisent.

**Conclusion pour a) : l'ensemble $\{\sigma^{(1)}, \ldots, \sigma^{(2018)}\}$ est inévitable.**

### b) Aucun ensemble de $2017$ permutations n'est inévitable

Soit $E$ un ensemble de $2017$ permutations. On va construire une permutation $b$ qui ne croise
aucune permutation de $E$.

Pour une permutation $b$, appelons **collision** de $b$ une position $i$ telle qu'une des
permutations $a$ de $E$ vérifie $a_i = b_i$. Il s'agit de trouver une permutation $b$ sans aucune
collision.

**L'étape qui fait baisser le nombre de collisions.** Soit $b$ une permutation, et soit $i$ une de
ses collisions. Montrons que l'on peut échanger deux valeurs de $b$ de façon à faire baisser le
nombre de collisions.

1. *Les positions qui acceptent la valeur $b_i$.* Chaque permutation $a$ de $E$ place la valeur
   $b_i$ à une seule position. Il y a donc au plus $2017$ positions où une permutation de $E$ a la
   valeur $b_i$. Notons $X$ l'ensemble des autres positions, celles où **aucune** permutation de $E$
   n'a la valeur $b_i$. Il y en a au moins $4035 - 2017 = 2018$. La position $i$ n'est pas dans $X$,
   puisque c'est une collision.
2. *Une valeur qui convient à la position $i$.* Les valeurs $b_x$, pour $x$ dans $X$, sont toutes
   différentes, donc il y en a au moins $2018$. Or les permutations de $E$ n'ont à la position $i$
   qu'au plus $2017$ valeurs différentes. Il existe donc une position $x$ dans $X$ telle que
   **aucune** permutation de $E$ n'ait la valeur $b_x$ à la position $i$.
3. *L'échange.* Notons $b'$ la permutation obtenue en échangeant les valeurs de $b$ aux positions
   $i$ et $x$ (elles sont différentes, puisque $i$ n'est pas dans $X$). Alors :
   - à la position $i$, $b'$ a la valeur $b_x$, qu'aucune permutation de $E$ n'a à cette position :
     $i$ n'est plus une collision ;
   - à la position $x$, $b'$ a la valeur $b_i$, qu'aucune permutation de $E$ n'a à cette position,
     puisque $x$ est dans $X$ : $x$ n'est pas une collision de $b'$ ;
   - aux autres positions, rien n'a changé.

   La permutation $b'$ a donc au moins une collision de moins que $b$.

**La conclusion.** Partons de n'importe quelle permutation. Tant qu'elle a une collision, on fait
l'échange ci-dessus, ce qui fait baisser le nombre de collisions d'au moins $1$. Ce nombre est un
entier positif ou nul, il ne peut pas baisser indéfiniment : au bout d'au plus $4035$ échanges, on
obtient une permutation sans collision. Elle ne croise aucune permutation de $E$, donc $E$ n'est pas
inévitable.

**Conclusion pour b) : non, aucun ensemble de $2017$ permutations n'est inévitable.**

## Going further

- Où a-t-on utilisé le nombre $4035$ ? Dans a), il faut qu'il y ait moins de $2018$ entiers plus
  grands que $2018$. Dans b), il faut que $4035 - 2017$ soit plus grand que $2017$. Montre de même
  que, pour les permutations de $1, 2, \ldots, 2m - 1$, le plus petit ensemble inévitable a
  exactement $m$ permutations.
- Vérifie à la main le cas $m = 2$ : pour les permutations de $1, 2, 3$, trouve un ensemble
  inévitable de $2$ permutations, et pour chaque permutation $a$, trouve une permutation qui ne la
  croise pas.
