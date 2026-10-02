---
id: "11015"
title: "125 × 2ⁿ − 3ᵐ = 271"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-diophantienne, restes, puissances-de-deux, puissances-de-trois, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Juniors, exercice 8 ; corrigé 2021-02_Corrige-envoi-3.pdf. La solution suit la « solution alternative » du corrigé (restes modulo 5 et 16). La première solution du corrigé échange m et n en posant « m = 3k, n = 3ℓ » et annonce « le couple (3, 6) » alors que l'énoncé demande (m, n) = (6, 3)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Déterminer tous les couples $(m, n)$ d'entiers strictement positifs tels que

$$125 \times 2^{n} - 3^{m} = 271 .$$

## Hints

1. Regarde l'équation en ne gardant que les restes dans la division par $5$. Que peux-tu dire de $3^m$ ?
   Calcule les restes de $3, 3^2, 3^3, 3^4, \ldots$ dans la division par $5$.
2. Si $n$ est assez grand, $125 \times 2^n$ est un multiple de $16$. Regarde alors les restes dans la
   division par $16$.
3. Les deux informations obtenues sur $m$ se contredisent quand $n \geqslant 4$. Il ne reste que trois
   valeurs de $n$ à essayer.

## Solution

**Les restes dans la division par 5.** Le nombre $125 \times 2^n$ est un multiple de $5$. Comme
$271 = 5 \times 54 + 1$, l'équation $3^m = 125 \times 2^n - 271$ montre que $3^m + 1$ est un multiple de
$5$, autrement dit que **$3^m$ a pour reste $4$ dans la division par $5$**.

Les restes de $3^1, 3^2, 3^3, 3^4, 3^5, \ldots$ dans la division par $5$ sont
$$3, \quad 4, \quad 2, \quad 1, \quad 3, \quad 4, \quad 2, \quad 1, \quad \ldots$$
On passe d'un reste au suivant en multipliant par $3$ et en reprenant le reste, et comme le reste $1$
revient au quatrième rang, la suite se répète de quatre en quatre. Le reste vaut $4$ exactement quand
$m$ est de la forme $4k + 2$. En particulier, **$m$ n'est pas un multiple de $4$**.

**Les restes dans la division par 16, si $n \geqslant 4$.** Alors $2^n$ est un multiple de $16$, donc
$125 \times 2^n$ aussi. Comme $271 = 16 \times 17 - 1$, l'équation donne
$$3^m = 125 \times 2^n - 16 \times 17 + 1 ,$$
donc **$3^m$ a pour reste $1$ dans la division par $16$**.

Les restes de $3^1, 3^2, 3^3, 3^4, \ldots$ dans la division par $16$ sont
$$3, \quad 9, \quad 11, \quad 1, \quad 3, \quad 9, \quad 11, \quad 1, \quad \ldots$$
($3 \times 9 = 27 = 16 + 11$ et $3 \times 11 = 33 = 2 \times 16 + 1$). Le reste $1$ n'apparaît que lorsque
$m$ est un multiple de $4$.

Les deux conclusions se contredisent. Donc **$n \leqslant 3$**.

**Les trois cas restants.**

- $n = 1$ : $3^m = 250 - 271 < 0$, impossible.
- $n = 2$ : $3^m = 500 - 271 = 229$, qui n'est pas divisible par $3$, impossible.
- $n = 3$ : $3^m = 1000 - 271 = 729 = 3^6$, donc $m = 6$.

**Conclusion.** L'unique solution est $(m, n) = (6, 3)$ : on a bien $125 \times 8 - 729 = 1000 - 729 = 271$.
