---
id: "12418"
title: "Le PGCD des aᵢⁿ + A est au plus 2dⁿ"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pgcd, congruences, nombres-premiers, divisibilite, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 mars 2018"
  reference: "juge_Enonce-03-2018.pdf, exercices du groupe A, exercice 5 ; corrigé juge_Corrige-03-2018.pdf"
  url: "http://igm.univ-mlv.fr/~juge/pofm/doc/%c3%89nonc%c3%a9-03-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/juge_Enonce-03-2018.pdf"
---

## Statement

Soit $n$ un entier naturel impair, et soient $a_1, a_2, \ldots, a_n$ des entiers naturels non
nuls. On note $A = a_1 a_2 \cdots a_n$ leur produit et $d = \mathrm{PGCD}(a_1, a_2, \ldots, a_n)$.

Montrer que
$$\mathrm{PGCD}\left(a_1^n + A,\ a_2^n + A,\ \ldots,\ a_n^n + A\right) \leqslant 2d^n.$$

## Hints

1. Commence par te ramener au cas $d = 1$ : écris $a_i = d\,b_i$ et regarde ce que deviennent
   $A$ et les nombres $a_i^n + A$.
2. Dans le cas $d = 1$, note $\Delta$ le PGCD des nombres $b_i^n + B$, où $B$ est le produit des
   $b_i$. Montre qu'aucun nombre premier ne divise à la fois $\Delta$ et $B$.
3. Modulo $\Delta$, chaque $b_i^n$ est congru à $-B$. Multiplie ces $n$ congruences entre elles,
   et n'oublie pas que $n$ est impair.

## Solution

### Étape 1 : on se ramène au cas où le PGCD vaut 1

Pour tout $i$, posons $b_i = \dfrac{a_i}{d}$ : ce sont des entiers naturels non nuls. Leur PGCD
vaut $1$ : si un entier $k > 1$ divisait tous les $b_i$, alors $dk$ diviserait tous les $a_i$, ce
qui est impossible puisque $dk > d$.

Posons $B = b_1 b_2 \cdots b_n$. Alors $A = d^n B$ et, pour tout $i$,
$$a_i^n + A = d^n b_i^n + d^n B = d^n\,(b_i^n + B).$$
En notant
$$\Delta = \mathrm{PGCD}\left(b_1^n + B,\ \ldots,\ b_n^n + B\right),$$
on obtient
$$\mathrm{PGCD}\left(a_1^n + A,\ \ldots,\ a_n^n + A\right) = d^n\,\Delta.$$
Il suffit donc de montrer que $\Delta \leqslant 2$.

### Étape 2 : $\Delta$ et $B$ sont premiers entre eux

Supposons qu'un nombre premier $p$ divise à la fois $\Delta$ et $B$. Pour tout $j$, $p$ divise
$b_j^n + B$ (car il divise $\Delta$) et $p$ divise $B$, donc $p$ divise la différence $b_j^n$.
Comme $p$ est premier, $p$ divise $b_j$. Ainsi $p$ divise tous les $b_j$, ce qui contredit
$\mathrm{PGCD}(b_1, \ldots, b_n) = 1$.

Aucun nombre premier ne divise à la fois $\Delta$ et $B$ : ils sont premiers entre eux. Il en
est donc de même de $\Delta$ et $B^n$.

### Étape 3 : $\Delta$ divise $2B^n$

Pour tout $i$, $\Delta$ divise $b_i^n + B$, c'est-à-dire
$$b_i^n \equiv -B \pmod{\Delta}.$$
Multiplions ces $n$ congruences :
$$B^n = b_1^n\,b_2^n \cdots b_n^n \equiv (-B)^n \pmod{\Delta}.$$
Comme $n$ est impair, $(-B)^n = -B^n$. Donc $B^n \equiv -B^n \pmod{\Delta}$, autrement dit
$\Delta$ divise $2B^n$.

### Conclusion

L'entier $\Delta$ divise $2B^n$ et il est premier avec $B^n$. D'après le lemme de Gauss, $\Delta$
divise $2$, donc $\Delta \leqslant 2$. Finalement,
$$\mathrm{PGCD}\left(a_1^n + A,\ \ldots,\ a_n^n + A\right) = d^n\,\Delta \leqslant 2d^n.$$

## Going further

1. Montrer que la borne $2d^n$ peut être atteinte, par exemple avec $n = 3$.
2. Montrer que le résultat devient faux si $n$ est pair. On pourra essayer $n = 2$, $a_1 = 1$ et
   $a_2 = 2$.
