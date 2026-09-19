---
id: "1409"
title: "n chapeaux numérotés et une somme modulo n"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, strategie, chapeaux, division-euclidienne]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Hat Problems and the Axiom of Choice"
  reference: "Handout-3773-3397.pdf, problème 2 (le corrigé Handout-3774-3397.pdf ne donne pas la solution)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3773-3397.pdf"
---

## Statement

$n$ personnes sont alignées et portent chacune un chapeau. Sur chaque chapeau est écrit un entier compris entre $0$ et $n-1$. Plusieurs chapeaux peuvent porter le même numéro, et certains numéros peuvent ne jamais apparaître.

Chacun voit tous les chapeaux des autres, mais pas le sien. Au signal, tout le monde annonce **en même temps** un entier entre $0$ et $n-1$ : sa prévision du numéro écrit sur son propre chapeau. Aucune communication n'est possible pendant l'épreuve, mais le groupe a pu convenir d'une stratégie à l'avance.

Trouver une stratégie qui garantit qu'**au moins une personne** annonce le bon numéro, quels que soient les numéros distribués.

## Hints

1. Numéroter les personnes $0, 1, \ldots, n-1$, et noter $x_i$ le numéro porté par la personne $i$.
2. Personne ne connaît la somme $S = x_0 + x_1 + \cdots + x_{n-1}$, mais chacun connaît la somme de **tous les autres**. Que manque-t-il à la personne $i$ pour reconstituer $S$ ?
3. Les annonces doivent se répartir les possibilités. Il y a $n$ personnes et $n$ restes possibles pour $S$ modulo $n$ : que chaque personne parie sur un reste différent.
4. Si la personne $i$ fait le pari « $S \equiv i \pmod n$ », elle peut en déduire une valeur pour son propre chapeau. Laquelle ?
5. Vérifier qu'une seule personne fait le bon pari, et que celle-là annonce nécessairement le bon numéro.

## Solution

**Mise en place.**

Numérotons les personnes $0, 1, \ldots, n-1$, et notons $x_i \in \{0, 1, \ldots, n-1\}$ le numéro porté par la personne $i$. Posons

$$S = x_0 + x_1 + \cdots + x_{n-1}.$$

La personne $i$ voit tous les chapeaux sauf le sien, donc elle connaît la quantité

$$T_i = S - x_i = \sum_{j \neq i} x_j .$$

Ce qui lui manque, c'est exactement $x_i$.

**La stratégie.**

Avant l'épreuve, le groupe convient de ceci :

> La personne $i$ fait le pari que $S \equiv i \pmod n$, et elle annonce le numéro que ce pari impose pour son propre chapeau.

Concrètement, la personne $i$ calcule $T_i$, puis annonce l'unique entier $a_i \in \{0, 1, \ldots, n-1\}$ tel que

$$T_i + a_i \equiv i \pmod n,$$

c'est-à-dire $a_i \equiv i - T_i \pmod n$. Un tel $a_i$ existe et est unique : c'est le reste de la division euclidienne de $i - T_i$ par $n$. La personne $i$ peut donc toujours annoncer quelque chose, et son annonce est bien un entier entre $0$ et $n-1$.

**Pourquoi au moins une personne a raison.**

Notons $r$ le reste de la division euclidienne de $S$ par $n$. Alors $r \in \{0, 1, \ldots, n-1\}$, donc $r$ est le numéro de l'une des personnes : c'est la personne $r$ qui, par chance, a fait le bon pari.

Regardons ce qu'elle annonce. Par construction,

$$T_r + a_r \equiv r \pmod n .$$

Or, la vraie situation donne

$$T_r + x_r = S \equiv r \pmod n .$$

En soustrayant ces deux congruences :

$$a_r \equiv x_r \pmod n .$$

Comme $a_r$ et $x_r$ sont tous les deux des entiers compris entre $0$ et $n-1$, leur différence est strictement comprise entre $-n$ et $n$ ; étant multiple de $n$, elle est nulle. Donc

$$a_r = x_r .$$

**Conclusion.** La personne dont le numéro est le reste de $S$ modulo $n$ annonce toujours le bon numéro. La stratégie garantit donc au moins une bonne réponse, quels que soient les chapeaux distribués.

**Remarque : exactement une.** Deux personnes $i \neq j$ ne peuvent pas avoir raison en même temps. En effet, si la personne $i$ a raison, alors $a_i = x_i$, donc $S = T_i + x_i \equiv i \pmod n$, c'est-à-dire $i = r$. Le nombre de bonnes réponses est donc **exactement $1$**, jamais plus. La stratégie ne fait pas de miracle : elle déplace la bonne réponse sur la bonne personne, au lieu de laisser le hasard décider.

## Going further

1. Traiter le cas $n = 2$ avec des chapeaux rouges ou bleus (numéros $0$ et $1$) : la stratégie ci-dessus se lit alors très simplement. Que dit-elle exactement ?
2. Si les numéros pouvaient aller de $0$ à $n$ (soit $n+1$ valeurs possibles) au lieu de $0$ à $n-1$, la stratégie fonctionnerait-elle encore ? Pourquoi ?
3. Montrer qu'aucune stratégie ne peut garantir **deux** bonnes réponses. (Compter, sur l'ensemble des $n^n$ distributions possibles, le nombre total de bonnes réponses.)
