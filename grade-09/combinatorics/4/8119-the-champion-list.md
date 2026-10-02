---
id: "8119"
title: "La liste de celui qui a gagné le plus de parties"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tournoi, principe-de-l-extremum, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Récurrence », exercice 9"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On organise un tournoi de jeu de hex. Chaque joueur affronte chacun des autres exactement une fois, et il n'y a jamais de partie nulle : chaque partie a un gagnant et un perdant.

À la fin du tournoi, chaque joueur écrit une liste. Sur sa liste, il inscrit :

- le nom de tous les joueurs qu'il a battus ;
- et le nom de tous les joueurs qui ont été battus par un joueur qu'il a battu.

Montrer qu'au moins un joueur a, sur sa liste, le nom de tous les autres participants.

## Hints

1. Le joueur qu'on cherche n'est pas n'importe lequel. Parmi tous les joueurs, lequel est le plus prometteur ?
2. Essaie : « soit $A$ un joueur ayant remporté le plus grand nombre de parties ».
3. Raisonne par l'absurde : suppose qu'un joueur $X$ ne figure pas sur la liste de $A$. Qu'est-ce que cela dit sur la partie entre $A$ et $X$ ? Et sur les parties entre $X$ et les joueurs battus par $A$ ?
4. Compte alors les victoires de $X$ et compare-les à celles de $A$.

## Solution

**Le choix du joueur.**

Le nombre de joueurs est fini, donc parmi eux il y en a un (au moins) qui a remporté le plus grand nombre de parties. Appelons-le $A$, et notons $v$ son nombre de victoires.

Nous allons montrer que la liste de $A$ contient tous les autres joueurs.

**Le raisonnement par l'absurde.**

Supposons que ce ne soit pas le cas : il existe un joueur $X$, différent de $A$, qui ne figure pas sur la liste de $A$.

*Première conséquence.* Si $A$ avait battu $X$, alors $X$ serait sur la liste de $A$. Donc $A$ n'a pas battu $X$. Comme il n'y a pas de partie nulle, c'est $X$ qui a battu $A$.

*Deuxième conséquence.* Soit $B$ l'un des joueurs battus par $A$. Si $B$ avait battu $X$, alors $X$ serait sur la liste de $A$ (au titre des « battus par un joueur que $A$ a battu »). Donc $B$ n'a pas battu $X$, donc c'est $X$ qui a battu $B$.

**Le compte des victoires.**

Récapitulons les victoires de $X$ :

- $X$ a battu $A$ : cela fait une victoire ;
- $X$ a battu chacun des $v$ joueurs battus par $A$ : cela fait $v$ victoires de plus.

Ces $v+1$ joueurs sont bien distincts : $A$ ne fait pas partie des joueurs qu'il a lui-même battus.

Donc $X$ a remporté au moins $v+1$ parties, c'est-à-dire strictement plus que $A$. Cela contredit le choix de $A$, qui était un joueur ayant gagné le plus de parties.

**Conclusion.**

L'hypothèse était absurde. Donc tout joueur autre que $A$ figure sur la liste de $A$ : **le joueur ayant remporté le plus de parties a tous les autres sur sa liste.**

Remarque : s'il y a plusieurs joueurs à égalité au nombre de victoires, le raisonnement s'applique à chacun d'eux.
