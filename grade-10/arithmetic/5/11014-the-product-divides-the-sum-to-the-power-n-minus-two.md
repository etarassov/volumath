---
id: "11014"
title: "Le produit divise la somme à la puissance n − 2"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [ppcm, divisibilite, decomposition-en-facteurs-premiers, nombres-premiers, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Juniors, exercice 7 (repris en Seniors, exercice 12) ; corrigé 2021-02_Corrige-envoi-3.pdf. Le sujet dit « entiers naturels » ; on les prend ici non nuls."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier, et soient $a_1, a_2, \ldots, a_n$ des entiers strictement positifs. On suppose
que :

- aucun nombre premier ne divise à la fois tous les $a_i$ (on dit qu'ils sont premiers entre eux dans leur
  ensemble) ;
- $\mathrm{PPCM}(a_1, a_2, \ldots, a_n)$ divise la somme $S = a_1 + a_2 + \cdots + a_n$.

Montrer que le produit $a_1 a_2 \cdots a_n$ divise $S^{\,n-2}$.

*Par exemple, avec $n = 3$ et $(a_1, a_2, a_3) = (1, 2, 3)$ : le PPCM vaut $6$, qui divise $S = 6$, et le
produit $6$ divise bien $S^1 = 6$.*

## Hints

1. Le PPCM est un multiple de chaque $a_i$. Que peux-tu dire de chaque $a_i$ par rapport à $S$ ?
2. Fixe un nombre premier $p$ et compare, dans les décompositions en facteurs premiers, l'exposant de $p$
   dans le produit et dans $S^{\,n-2}$.
3. Montre qu'un nombre premier $p$ ne peut pas diviser exactement $n - 1$ des nombres $a_i$. Combien de
   $a_i$ peut-il diviser au plus ?

## Solution

**Notation.** Pour un entier $N \geqslant 1$ et un nombre premier $p$, notons $e_p(N)$ l'exposant de $p$ dans
la décomposition de $N$ en facteurs premiers ($e_p(N) = 0$ si $p$ ne divise pas $N$). Par exemple
$e_2(12) = 2$ et $e_3(12) = 1$. Trois propriétés suffiront.

- L'exposant d'un produit est la somme des exposants : $e_p(MN) = e_p(M) + e_p(N)$. En particulier
  $e_p(N^k) = k \, e_p(N)$.
- Si $M$ divise $N$, alors $e_p(M) \leqslant e_p(N)$ pour tout $p$, car $N = M \times Q$ donne
  $e_p(N) = e_p(M) + e_p(Q)$.
- Inversement, si $e_p(M) \leqslant e_p(N)$ pour tout nombre premier $p$, alors $M$ divise $N$ : le
  quotient $N / M$ est le produit des $p^{\,e_p(N) - e_p(M)}$, qui est un entier.

D'après la dernière propriété, il suffit de montrer que, pour tout nombre premier $p$,
$$e_p(a_1 a_2 \cdots a_n) \leqslant e_p(S^{\,n-2}) , \qquad \text{c'est-à-dire} \qquad e_p(a_1) + e_p(a_2) + \cdots + e_p(a_n) \leqslant (n - 2)\, e_p(S) .$$

**Chaque $a_i$ divise $S$.** Le PPCM est un multiple de $a_i$ et il divise $S$, donc $a_i$ divise $S$. Par
conséquent
$$e_p(a_i) \leqslant e_p(S) \qquad \text{pour tout } i .$$

**Le point clé : $p$ divise au plus $n - 2$ des nombres $a_i$.** Fixons un nombre premier $p$.

- $p$ ne divise pas tous les $a_i$, par hypothèse.
- Supposons que $p$ divise exactement $n - 1$ d'entre eux. Quitte à changer l'ordre, ce sont
  $a_1, \ldots, a_{n-1}$, et $p$ ne divise pas $a_n$. D'une part $p$ divise $a_1$, qui divise $S$, donc $p$
  divise $S$. D'autre part $p$ divise $a_1 + \cdots + a_{n-1}$. Il divise donc la différence
  $$S - (a_1 + \cdots + a_{n-1}) = a_n ,$$
  ce qui est contraire à notre hypothèse. C'est impossible.

Ainsi au moins deux des $a_i$ ne sont pas divisibles par $p$. Quitte à changer l'ordre, ce sont $a_{n-1}$ et
$a_n$, de sorte que $e_p(a_{n-1}) = e_p(a_n) = 0$.

**On conclut.**
$$e_p(a_1) + \cdots + e_p(a_{n-2}) + \underbrace{e_p(a_{n-1}) + e_p(a_n)}_{= \, 0} \leqslant \underbrace{e_p(S) + \cdots + e_p(S)}_{n - 2 \text{ termes}} = (n - 2)\, e_p(S) .$$

Cette inégalité est vraie pour tout nombre premier $p$, donc **$a_1 a_2 \cdots a_n$ divise $S^{\,n-2}$.**

## Going further

Pour $n = 3$, l'exposant $n - 2 = 1$ ne peut pas être diminué : avec $(1, 2, 3)$, le produit vaut $6$, alors
que $S^{0} = 1$ n'est pas un multiple de $6$.

Attention à une erreur fréquente : il est faux de croire que $\mathrm{PPCM}(a_1, \ldots, a_n)$ vaut le
produit des $a_i$ dès qu'ils sont premiers entre eux dans leur ensemble. Pour $(2, 3, 6)$, aucun nombre
premier ne divise les trois, mais le PPCM vaut $6$ et le produit $36$. La formule
$\mathrm{PGCD} \times \mathrm{PPCM} = \text{produit}$ n'est vraie que pour deux nombres.
