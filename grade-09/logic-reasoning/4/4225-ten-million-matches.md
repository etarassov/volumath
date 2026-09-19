---
id: "4225"
title: "Dix millions d'allumettes"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [jeu, strategie gagnante, nombre premier, multiples]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Games and Geometry II"
  reference: "Handout-2192-1945.pdf, exercice 2 (corrigé dans Handout-2193-1945.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2192-1945.pdf"
---

## Statement

Un tas contient $10\,000\,000$ allumettes. Deux joueurs jouent au jeu suivant, chacun son tour.

À son tour, un joueur retire du tas un nombre d'allumettes de la forme $p^n$, où $p$ est un nombre
premier et $n$ un entier naturel. Les coups autorisés sont donc $1, 2, 3, 4, 5, 7, 8, 9, 11, 13,
16, 17, 19, 23, 25, 27, 29, 31, 32, \ldots$ (on rappelle que $p^0 = 1$).

Celui qui prend la dernière allumette gagne.

Lequel des deux joueurs possède une stratégie gagnante : celui qui commence, ou son adversaire ?

## Hints

1. Note bien quels petits nombres sont des coups autorisés : $1$, $2$, $3$, $4$, $5$ le sont.
   Le premier entier strictement positif qui **n'est pas** un coup autorisé est $6$. Pourquoi ?
2. Un nombre de la forme $p^n$ peut-il être un multiple de $6$ ? Il faudrait qu'il soit à la fois
   pair et divisible par $3$.
3. Essaie la règle suivante : « je laisse toujours à l'adversaire un multiple de $6$ ». Vérifie
   d'abord qu'on peut toujours le faire quand le tas n'est pas déjà un multiple de $6$.
4. Que vaut le reste de $10\,000\,000$ dans la division par $6$ ?

## Solution

**La clé : les multiples de $6$ ne sont jamais des coups autorisés.**

Un coup consiste à retirer $p^n$ allumettes, avec $p$ premier. Si $p^n$ était un multiple de $6$,
il serait à la fois divisible par $2$ et par $3$. Mais les seuls diviseurs premiers de $p^n$ sont
$p$ lui-même : un nombre ne peut donc pas être divisible à la fois par $2$ et par $3$ s'il est
une puissance d'un seul nombre premier. (Et pour $n = 0$, le coup vaut $1$, qui n'est pas non plus
un multiple de $6$.)

**Les positions perdantes sont les multiples de $6$.**

Appelons *position* le nombre d'allumettes qui restent au moment où un joueur doit jouer.

*Première remarque : depuis un multiple de $6$, on ne peut pas laisser un multiple de $6$.*
En effet, si le tas contient $6k$ allumettes et qu'on en retire $p^n$, il reste $6k - p^n$. Si ce
nombre était un multiple de $6$, alors $p^n = 6k - (6k - p^n)$ serait une différence de deux
multiples de $6$, donc un multiple de $6$ : on vient de voir que c'est impossible.

*Deuxième remarque : depuis une position qui n'est pas un multiple de $6$, on peut toujours
laisser un multiple de $6$.* Soit $N$ le nombre d'allumettes, et soit $r$ le reste de $N$ dans la
division par $6$, avec $1 \leq r \leq 5$. Il suffit de retirer $r$ allumettes : il en restera
$N - r$, qui est un multiple de $6$. Or chacun des cinq restes possibles est un coup autorisé :
$$1 = 2^0, \quad 2 = 2^1, \quad 3 = 3^1, \quad 4 = 2^2, \quad 5 = 5^1.$$
Et ce coup est toujours possible puisque $r \leq 5 \leq N$.

**La stratégie.**

Un joueur qui reçoit un tas dont le nombre d'allumettes **n'est pas** un multiple de $6$ applique
la règle : *retirer le reste dans la division par $6$*. Il laisse ainsi toujours à son adversaire
un multiple de $6$.

L'adversaire, lui, ne peut jamais laisser un multiple de $6$ : il rend donc toujours une position
qui n'est pas un multiple de $6$, et le premier joueur peut recommencer.

Le nombre d'allumettes diminue strictement à chaque coup, donc la partie se termine. Elle se
termine sur la position $0$, qui est un multiple de $6$ : c'est donc l'adversaire qui la reçoit.
Autrement dit, c'est bien celui qui applique la stratégie qui a pris la dernière allumette, et il
gagne.

**Qui gagne ici ?**

Il faut donc savoir si $10\,000\,000$ est un multiple de $6$. Il est pair, mais la somme de ses
chiffres vaut $1$, qui n'est pas divisible par $3$ : le nombre n'est donc pas divisible par $3$,
donc pas par $6$.

Plus précisément, $10\,000\,000 = 6 \times 1\,666\,666 + 4$ : le reste vaut $4$.

**Conclusion.** Le **premier joueur** possède une stratégie gagnante. Il commence par retirer $4$
allumettes, ce qui laisse $9\,999\,996 = 6 \times 1\,666\,666$ allumettes, puis il ramène à chaque
tour le tas à un multiple de $6$.

## Going further

1. Que se passerait-il avec $9\,999\,996$ allumettes au départ ? (Ce serait le second joueur qui
   gagnerait.)
2. Le même jeu, mais où l'on peut retirer n'importe quel nombre **premier** d'allumettes (donc
   plus le coup $1$, ni $4$, ni $8$, ni $9$). Les positions perdantes sont-elles encore les
   multiples de $6$ ? Cherche les premières positions perdantes à la main.
