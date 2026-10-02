---
id: "11002"
title: "1 + 2ⁿ + 3ⁿ + 4ⁿ est une puissance de 10"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, restes, puissances, encadrement, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 6 ; corrigé 2020-02_corrige-commente-envoi-3.pdf (le corrigé écrit une fois le couple solution dans le mauvais ordre, « (3, 2) » au lieu de (m, n) = (2, 3))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Trouver tous les couples $(m, n)$ d'entiers strictement positifs tels que
$$1 + 2^n + 3^n + 4^n = 10^m .$$

## Hints

1. Regarde les deux membres dans la division par $3$ : quel est le reste de $10^m$ ? Celui de $4^n$ ? Celui de $2^n$ selon que $n$ est pair ou impair ?
2. Tu dois trouver que $n$ est impair. Traite $n = 1$ à part.
3. Pour $n \geqslant 3$ impair, regarde les restes dans la division par $8$. Remarque que $3^2 = 9$ a pour reste $1$.
4. Quelles puissances de $10$ ont pour reste $4$ dans la division par $8$ ?

## Solution

On écrit $a \equiv b \pmod{k}$ pour dire que $a$ et $b$ ont le même reste dans la division par $k$.
On peut additionner et multiplier ces relations : le reste d'une somme ou d'un produit ne dépend que
des restes des termes.

**Étape 1 : $n$ est impair (division par 3).**

- $10 = 9 + 1$, donc $10 \equiv 1 \pmod 3$ et $10^m \equiv 1^m = 1 \pmod 3$.
- De même $4 \equiv 1 \pmod 3$, donc $4^n \equiv 1 \pmod 3$.
- $3^n$ est un multiple de $3$ : $3^n \equiv 0 \pmod 3$.
- $2 \equiv -1 \pmod 3$, donc $2^n \equiv (-1)^n$ : le reste vaut $1$ si $n$ est pair, $2$ si $n$ est impair.

Si $n$ était pair, le membre de gauche aurait pour reste $1 + 1 + 0 + 1 = 3$, c'est-à-dire $0$, alors
que $10^m$ a pour reste $1$. Donc $n$ est impair. (Pour $n$ impair, on trouve $1 + 2 + 0 + 1 = 4$,
de reste $1$ : pas de contradiction.)

**Étape 2 : le cas $n = 1$.** On a $1 + 2 + 3 + 4 = 10 = 10^1$, donc $(m, n) = (1, 1)$ est solution.

**Étape 3 : le cas $n \geqslant 3$ impair (division par 8).**

- $2^n = 8 \times 2^{n-3}$ est un multiple de $8$, et $4^n$ aussi.
- $3^2 = 9 \equiv 1 \pmod 8$. Comme $n$ est impair, $n = 2j + 1$ et $3^n = 3 \times 9^j \equiv 3 \times 1 = 3 \pmod 8$.

Le membre de gauche a donc pour reste $1 + 0 + 3 + 0 = 4$ dans la division par $8$.

Regardons maintenant $10^m$ : $10 \equiv 2 \pmod 8$, puis $100 = 96 + 4 \equiv 4 \pmod 8$, et pour
$m \geqslant 3$, $10^m = 1000 \times 10^{m-3}$ est un multiple de $1000 = 8 \times 125$, donc de reste $0$.
Le seul cas possible est $m = 2$.

Il faut alors $1 + 2^n + 3^n + 4^n = 100$. Pour $n = 3$ : $1 + 8 + 27 + 64 = 100$, cela marche. Pour
$n \geqslant 5$, le seul terme $4^n \geqslant 4^5 = 1024$ dépasse déjà $100$. Donc $n = 3$.

**Conclusion.** Les solutions sont exactement
$$(m, n) = (1, 1) \qquad \text{et} \qquad (m, n) = (2, 3).$$
