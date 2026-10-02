---
id: "11031"
title: "mn − 1 divise n³ − 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, factorisation, symetrie, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 12 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Déterminer tous les couples $(m, n)$ d'entiers strictement positifs tels que $mn - 1$ divise $n^3 - 1$.

(On dit que $a$ divise $b$ s'il existe un entier $k$ tel que $b = ka$. En particulier, tout entier divise $0$.)

## Hints

1. Traite d'abord les cas $m = 1$ et $n = 1$. Puis essaie quelques petits couples : tu devrais voir apparaître des carrés.
2. Montre que $mn - 1$ divise aussi $m^3 - 1$. Pense au nombre $(mn)^3 - 1$.
3. Si $m \geqslant n$, retranche $mn - 1$ à $n^3 - 1$ et factorise. Compare ensuite le nombre $n^2 - m$ à $mn - 1$.

## Solution

**Les cas $m = 1$ ou $n = 1$.** Si $m = 1$, alors $n - 1$ divise $n^3 - 1 = (n - 1)(n^2 + n + 1)$. Si
$n = 1$, alors $n^3 - 1 = 0$, et tout entier divise $0$. Tous les couples $(1, n)$ et $(m, 1)$ sont donc
solutions.

Dans la suite, $m \geqslant 2$ et $n \geqslant 2$, de sorte que $mn - 1 \geqslant 3$.

**Un outil.** Le nombre $mn - 1$ n'a aucun facteur premier commun avec $n$, ni avec $m$ : un nombre
premier qui diviserait $n$ et $mn - 1$ diviserait $mn - (mn - 1) = 1$. Par conséquent, si $mn - 1$ divise
un produit $n \times X$, il divise $X$ : chaque facteur premier de $mn - 1$, avec son exposant, doit se
trouver dans $X$, puisqu'il n'est pas dans $n$. De même avec $m$.

**On rend le problème symétrique.** Comme $x - 1$ divise $x^3 - 1 = (x - 1)(x^2 + x + 1)$, le nombre
$mn - 1$ divise $(mn)^3 - 1$. Il divise aussi $m^3 (n^3 - 1) = (mn)^3 - m^3$, par hypothèse. Il divise
donc la différence

$$\left( (mn)^3 - 1 \right) - \left( (mn)^3 - m^3 \right) = m^3 - 1 .$$

Ainsi $mn - 1$ divise **à la fois** $n^3 - 1$ et $m^3 - 1$.

**Cas $m \geqslant n$.** Le nombre $mn - 1$ divise

$$(n^3 - 1) - (mn - 1) = n^3 - mn = n \, (n^2 - m),$$

donc, d'après l'outil, il divise $n^2 - m$. Comparons maintenant ces deux nombres.

- D'un côté, $n^2 - m \leqslant n^2 - n = n(n - 1) \leqslant m(n - 1) = mn - m < mn - 1$, car $m \geqslant 2$.
- De l'autre, $m - n^2 < m < mn - 1$, car $m(n - 1) \geqslant m \geqslant 2 > 1$.

Donc $n^2 - m$ est strictement compris entre $-(mn - 1)$ et $mn - 1$. Le seul multiple de $mn - 1$ dans
cet intervalle est $0$. Donc $m = n^2$.

**Cas $m \leqslant n$.** On fait exactement le même raisonnement avec $m^3 - 1$ à la place de $n^3 - 1$,
en échangeant les rôles de $m$ et $n$ : $mn - 1$ divise $m(m^2 - n)$, donc $m^2 - n$, et on trouve
$n = m^2$.

**Réciproque.** Pour $k \geqslant 1$ :

- le couple $(k^2, k)$ convient, car $mn - 1 = k^3 - 1$ divise $n^3 - 1 = k^3 - 1$ ;
- le couple $(k, k^2)$ convient, car $mn - 1 = k^3 - 1$ divise $n^3 - 1 = k^6 - 1 = (k^3 - 1)(k^3 + 1)$.

**Conclusion.** Les solutions sont les couples

$$(1, n), \qquad (m, 1), \qquad (k^2, k), \qquad (k, k^2)$$

pour tous les entiers $m, n, k \geqslant 1$.
