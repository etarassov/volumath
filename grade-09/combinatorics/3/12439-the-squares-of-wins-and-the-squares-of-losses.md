---
id: "12439"
title: "Les carrés des victoires et les carrés des défaites"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tournoi, double-comptage, factorisation, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 26 février 2019"
  reference: "2019-03_Test-26-02.pdf, exercice 4 ; corrigé 2019-03_Test-26-02-Corrige.pdf (solution réécrite par factorisation de d² − v²)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-26-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-26-02.pdf"
---

## Statement

Dans un tournoi, $n$ joueurs numérotés de $1$ à $n$ s'affrontent : chaque joueur rencontre chacun
des autres exactement une fois. Il n'y a pas de match nul : chaque match se termine par la
victoire de l'un des deux joueurs et la défaite de l'autre.

Pour chaque joueur $k$, on note $v_k$ son nombre de victoires et $d_k$ son nombre de défaites à la
fin du tournoi.

Démontrer que
$$v_1^2 + v_2^2 + \cdots + v_n^2 = d_1^2 + d_2^2 + \cdots + d_n^2.$$

## Hints

1. Combien de matchs chaque joueur joue-t-il ? Que vaut $v_k + d_k$ ?
2. Compare le nombre total de victoires $v_1 + \cdots + v_n$ et le nombre total de défaites
   $d_1 + \cdots + d_n$.
3. Regarde la différence $d_k^2 - v_k^2$ et factorise-la.

## Solution

**Deux remarques.**

- Chaque joueur rencontre les $n - 1$ autres joueurs, et chacun de ses matchs est soit une
  victoire, soit une défaite. Donc, pour tout $k$,
  $$v_k + d_k = n - 1.$$
- Chaque match donne exactement une victoire (au gagnant) et une défaite (au perdant). Donc le
  nombre total de victoires est égal au nombre total de défaites :
  $$v_1 + v_2 + \cdots + v_n = d_1 + d_2 + \cdots + d_n.$$

**Le calcul.** Pour chaque joueur $k$, on factorise une différence de deux carrés :
$$d_k^2 - v_k^2 = (d_k + v_k)(d_k - v_k) = (n - 1)(d_k - v_k).$$
En additionnant ces égalités pour $k = 1, 2, \ldots, n$, on obtient
$$(d_1^2 + \cdots + d_n^2) - (v_1^2 + \cdots + v_n^2) = (n - 1)\,[(d_1 + \cdots + d_n) - (v_1 + \cdots + v_n)].$$
D'après la deuxième remarque, le crochet vaut $0$. Donc la différence de gauche est nulle :
$$v_1^2 + v_2^2 + \cdots + v_n^2 = d_1^2 + d_2^2 + \cdots + d_n^2.$$

## Going further

L'égalité reste-t-elle vraie si l'on remplace les carrés par des cubes ? Cherche un exemple avec
quatre joueurs.
