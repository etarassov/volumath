---
id: "12046"
title: "Diviser par deux ou ajouter la racine"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [suites, partie entiere, racine carree, parite, minimum, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 5 (groupe A) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf ; réponse vérifiée par ordinateur pour tous les premiers termes jusqu'à 1 000 000"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

Pour un nombre réel $x \geqslant 0$, on note $[x]$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple, $[\text{2,718}] = 2$ et $[\sqrt{10}] = 3$.

On dit qu'une suite $(u_n)_{n \geqslant 1}$ est **sicilienne** si $u_1$ est un entier strictement positif et si, pour tout $n \geqslant 1$,

- $u_{n+1} = u_n / 2$ lorsque $u_n$ est pair ;
- $u_{n+1} = u_n + [\sqrt{u_n}]$ lorsque $u_n$ est impair.

Par exemple, la suite sicilienne qui commence par $u_1 = 3$ est $3, \ 4, \ 2, \ 1, \ 2, \ 1, \ldots$

Existe-t-il une suite sicilienne telle que $u_n > 1$ pour tout $n \geqslant 1$ ?

## Hints

1. Calculez les premiers termes de quelques suites siciliennes, par exemple en partant de $5$, de $7$ ou de $13$.
2. Supposez qu'une telle suite existe, et notez $M$ le plus petit de ses termes. Pourquoi $M$ ne peut-il pas être pair ?
3. Si $M$ est impair, notez $k = [\sqrt M]$, de sorte que $k^2 \leqslant M < (k + 1)^2$. Que se passe-t-il si $k$ est impair ?
4. Si $k$ est pair, suivez la suite pendant trois ou quatre étapes à partir de $M$, en distinguant $M \leqslant k^2 + k$ et $M > k^2 + k$. Vous trouverez un terme plus petit que $M$, sauf pour très peu de valeurs de $M$, à traiter à la main.

## Solution

**Réponse.** Non : toute suite sicilienne finit par prendre la valeur $1$.

Tous les termes d'une suite sicilienne sont des entiers strictement positifs : la moitié d'un entier pair strictement positif en est un, et la somme de deux entiers positifs aussi.

Pour lire une partie entière, on utilise la définition sous la forme suivante : si $k$ est un entier positif et $k^2 \leqslant x < (k + 1)^2$, alors $k \leqslant \sqrt x < k + 1$, donc $[\sqrt x] = k$.

Supposons qu'il existe une suite sicilienne dont tous les termes sont supérieurs ou égaux à $2$. Ses termes sont des entiers strictement positifs ; l'un d'eux est donc le plus petit. Notons $M$ ce plus petit terme, et $m$ un rang tel que $u_m = M$. Ainsi $M \geqslant 2$, et $u_n \geqslant M$ pour tout $n$. On va trouver un terme strictement plus petit que $M$, ce qui est absurde.

**Cas 1 : $M$ est pair.** Alors $u_{m+1} = M/2 < M$. C'est absurde.

**Cas 2 : $M$ est impair.** Alors $M \geqslant 3$. Notons $k = [\sqrt M]$, de sorte que $k \geqslant 1$ et $k^2 \leqslant M < (k + 1)^2 = k^2 + 2k + 1$, c'est-à-dire

$$k^2 \leqslant M \leqslant k^2 + 2k .$$

On a $u_{m+1} = M + k$.

*Cas 2a : $k$ est impair.* Alors $M + k$ est pair, comme somme de deux nombres impairs, et $u_{m+2} = (M + k)/2$. Or $k \leqslant \sqrt M < M$ car $M > 1$, donc $(M + k)/2 < (M + M)/2 = M$. C'est absurde.

*Cas 2b : $k$ est pair.* Alors $k^2$ est pair et $M$ impair, donc $M \neq k^2$, et $M \geqslant k^2 + 1$. Le nombre $u_{m+1} = M + k$ est impair, comme somme d'un impair et d'un pair. Deux sous-cas se présentent.

- Si $M \leqslant k^2 + k$. Alors $k^2 \leqslant M + k \leqslant k^2 + 2k$, donc $[\sqrt{M + k}] = k$, et $u_{m+2} = M + 2k$, qui est impair. Ensuite $(k + 1)^2 = k^2 + 2k + 1 \leqslant M + 2k \leqslant k^2 + 3k < (k + 2)^2$, donc $[\sqrt{M + 2k}] = k + 1$, et $u_{m+3} = M + 3k + 1$. Ce nombre est pair (impair plus impair), donc $u_{m+4} = (M + 3k + 1)/2$. Comme $M$ est le plus petit terme, $(M + 3k + 1)/2 \geqslant M$, c'est-à-dire $M \leqslant 3k + 1$.
- Si $M \geqslant k^2 + k + 1$. Alors $(k + 1)^2 \leqslant M + k \leqslant k^2 + 3k < (k + 2)^2$, donc $[\sqrt{M + k}] = k + 1$, et $u_{m+2} = M + 2k + 1$. Ce nombre est pair, donc $u_{m+3} = (M + 2k + 1)/2$. Comme $M$ est le plus petit terme, $M \leqslant 2k + 1$, donc a fortiori $M \leqslant 3k + 1$.

Dans les deux sous-cas, $k^2 + 1 \leqslant M \leqslant 3k + 1$, donc $k^2 \leqslant 3k$, puis $k \leqslant 3$. Comme $k$ est pair et $k \geqslant 1$, on a $k = 2$. Alors $M$ est un nombre impair compris entre $k^2 + 1 = 5$ et $k^2 + 2k = 8$ : $M = 5$ ou $M = 7$. Calculons directement.

- À partir de $5$ : $5 + [\sqrt 5] = 7$, puis $7 + [\sqrt 7] = 9$, puis $9 + 3 = 12$, puis $6$, puis $3$.
- À partir de $7$ : $9$, puis $12$, puis $6$, puis $3$.

Dans les deux cas, la suite atteint $3$, qui est plus petit que $M$. C'est absurde.

**Conclusion.** Tous les cas mènent à une contradiction. Il n'existe donc pas de suite sicilienne dont tous les termes sont strictement supérieurs à $1$ : toute suite sicilienne prend au moins une fois la valeur $1$.

## Going further

1. Une fois la valeur $1$ atteinte, que fait la suite ?
2. Montrer que la suite qui part de $u_1 = 2^j$ atteint $1$ en $j$ étapes. Trouver le premier terme $u_1 \leqslant 20$ dont la suite met le plus de temps à atteindre $1$.
