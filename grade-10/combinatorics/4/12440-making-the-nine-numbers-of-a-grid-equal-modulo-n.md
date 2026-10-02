---
id: "12440"
title: "Rendre égaux modulo n les neuf nombres d'un morpion"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, grille, operations, restes, multiples, combinaison-de-coups]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 février 2019"
  reference: "2019-03_Test-27-02.pdf, exercice 1 ; corrigé 2019-03_Test-27-02-Corrige.pdf (« égaux modulo n » reformulé avec des différences multiples de n)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-27-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-27-02.pdf"
---

## Statement

Carine et Cyril jouent au jeu suivant. D'abord, Cyril choisit un entier $n \geqslant 1$, puis il
écrit un nombre entier dans chacune des neuf cases d'une grille $3 \times 3$ (comme une grille de
morpion).

Ensuite, c'est au tour de Carine. Elle peut, autant de fois qu'elle le souhaite, faire l'opération
suivante : elle choisit une case, et elle ajoute $1$ au nombre de cette case ainsi qu'aux nombres
des cases voisines (les cases qui ont un côté commun avec elle).

Carine gagne si elle réussit à faire en sorte que la différence de deux quelconques des neuf
nombres soit un multiple de $n$ (autrement dit, que les neuf nombres soient égaux modulo $n$).

Lequel des deux joueurs peut être sûr de gagner, quoi que fasse l'autre ?

## Hints

1. Ajouter le même nombre à toutes les cases ne change pas les différences entre les cases. Ce
   sont donc les différences qui comptent.
2. On repère les cases par leur ligne et leur colonne. Choisis une fois chacune les cases
   (ligne 1, colonne 1), (ligne 3, colonne 1) et (ligne 2, colonne 3). Que s'est-il passé ?
3. Tu sais maintenant faire avancer une case du milieu d'un bord d'un cran de plus que toutes les
   autres. Pour un coin, choisis d'abord le coin lui-même, puis rattrape ses deux voisins. Pense
   qu'ajouter $n$ à une différence ne change rien au but.

## Solution

Montrons que **Carine gagne toujours**.

On note $(i, j)$ la case de la ligne $i$ et de la colonne $j$, avec $i$ et $j$ entre $1$ et $3$ ;
la case du centre est $(2, 2)$. Pour chaque case $c$ autre que le centre, on note
$$e(c) = (\text{nombre de la case } c) - (\text{nombre du centre}).$$

**Ce qu'il faut obtenir.** Carine gagne exactement quand les huit nombres $e(c)$ sont tous des
multiples de $n$. En effet, si c'est le cas, chaque nombre de la grille diffère de celui du centre
d'un multiple de $n$, donc deux nombres quelconques diffèrent aussi d'un multiple de $n$.
Réciproquement, si Carine a gagné, chaque $e(c)$ est la différence de deux nombres de la grille.

### Étape 1 : faire avancer une case du milieu d'un bord

Choisissons une fois chacune les cases $(1, 1)$, $(3, 1)$ et $(2, 3)$. Elles ajoutent $1$
respectivement à

- $(1, 1)$, $(1, 2)$ et $(2, 1)$ ;
- $(3, 1)$, $(3, 2)$ et $(2, 1)$ ;
- $(2, 3)$, $(1, 3)$, $(3, 3)$ et $(2, 2)$.

Au total, la case $(2, 1)$ a reçu $2$ et chacune des huit autres cases a reçu $1$ :

| | colonne 1 | colonne 2 | colonne 3 |
|---|:-:|:-:|:-:|
| ligne 1 | $+1$ | $+1$ | $+1$ |
| ligne 2 | $+2$ | $+1$ | $+1$ |
| ligne 3 | $+1$ | $+1$ | $+1$ |

Le centre a reçu $1$, donc **$e(2, 1)$ augmente de $1$ et les sept autres $e(c)$ ne changent pas.**
Appelons ce groupe de trois opérations le « coup pour $(2, 1)$ ».

En tournant la grille d'un quart de tour, on obtient de la même façon un coup pour chacune des
trois autres cases du milieu d'un bord :

- pour $(1, 2)$ : choisir $(1, 1)$, $(1, 3)$ et $(3, 2)$ ;
- pour $(2, 3)$ : choisir $(1, 3)$, $(3, 3)$ et $(2, 1)$ ;
- pour $(3, 2)$ : choisir $(3, 1)$, $(3, 3)$ et $(1, 2)$.

Chacun de ces coups augmente de $1$ le $e$ de sa case, et ne change pas les autres.

### Étape 2 : faire avancer un coin

Choisissons la case $(1, 1)$. Elle ajoute $1$ à $(1, 1)$, $(1, 2)$ et $(2, 1)$, mais pas au centre.
Donc $e(1, 1)$, $e(1, 2)$ et $e(2, 1)$ augmentent de $1$, et les autres ne changent pas.

Jouons ensuite $n - 1$ fois le coup pour $(1, 2)$, et $n - 1$ fois le coup pour $(2, 1)$. Au total :

- $e(1, 1)$ a augmenté de $1$ ;
- $e(1, 2)$ et $e(2, 1)$ ont augmenté de $1 + (n - 1) = n$ ;
- les autres $e(c)$ n'ont pas changé.

Appelons cela le « coup pour $(1, 1)$ ». De même, il existe un coup pour chacun des trois autres
coins. **Chaque coup pour une case $c$ augmente $e(c)$ de $1$, et augmente chacun des autres $e$
de $0$ ou de $n$.**

### Étape 3 : la stratégie de Carine

Pour chacune des huit cases $c$ autres que le centre, Carine joue le coup pour $c$ exactement
$k_c$ fois, où $k_c$ est l'entier de $\{0, 1, \ldots, n - 1\}$ tel que $e(c) + k_c$ soit un
multiple de $n$ (il en existe un : c'est le nombre qu'il faut ajouter au reste de $e(c)$ dans la
division par $n$ pour atteindre $n$, ou $0$ si ce reste est nul).

À la fin, chaque $e(c)$ a augmenté de $k_c$ (grâce à ses propres coups) et d'un multiple de $n$
(à cause des coups des autres cases). Il vaut donc son ancienne valeur plus $k_c$, plus un
multiple de $n$ : c'est un multiple de $n$.

Les huit nombres $e(c)$ sont alors des multiples de $n$, et Carine a gagné. **Quels que soient
l'entier $n$ et les nombres choisis par Cyril, Carine peut toujours gagner.**

## Going further

On change la règle : l'opération ajoute maintenant $1$ seulement aux cases voisines de la case
choisie, et plus à la case elle-même. Montrer que, pour $n = 2$, c'est cette fois Cyril qui peut
gagner. On pourra regarder la somme des nombres des quatre cases du milieu des bords.
