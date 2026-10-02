---
id: "11035"
title: "Quand p divise toutes les sommes de puissances"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [nombres-premiers, restes, polynome, sommes-de-puissances, lemme-d-euclide]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 16 ; corrigé 2022-02_corrige-envoi-3.pdf (première solution, rédigée ici sans congruences et sans raisonnement par l'absurde)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soient $p$ un nombre premier impair et $x_1, x_2, \ldots, x_p$ des entiers relatifs (il y en a exactement
$p$). On suppose que, pour tout entier $k \geqslant 1$,

$$p \text{ divise } x_1^k + x_2^k + \cdots + x_p^k .$$

Montrer que $x_1, x_2, \ldots, x_p$ ont tous le même reste dans la division par $p$.

## Hints

1. Note $S_k = x_1^k + \cdots + x_p^k$. Que vaut $S_0$ ? Montre que, pour tout polynôme $Q$ à coefficients entiers, $p$ divise $Q(x_1) + Q(x_2) + \cdots + Q(x_p)$.
2. Choisis bien $Q$ : fais-le s'annuler (au sens « devenir un multiple de $p$ ») sur tous les $x_\ell$ qui n'ont pas le même reste que $x_1$.
3. Avec $Q(X) = (X - r_2) \cdots (X - r_s)$, où $r_2, \ldots, r_s$ sont les restes différents de celui de $x_1$, la somme des $Q(x_\ell)$ se réduit à « le nombre de $x_\ell$ qui ont le reste de $x_1$, fois un nombre non divisible par $p$ ».

## Solution

Notons $S_k = x_1^k + x_2^k + \cdots + x_p^k$ pour $k \geqslant 0$. Par hypothèse, $p$ divise $S_k$ pour
$k \geqslant 1$, et c'est vrai aussi pour $k = 0$ car $S_0 = 1 + 1 + \cdots + 1 = p$.

**Étape 1 : avec n'importe quel polynôme.** Soit $Q(X) = c_0 + c_1 X + \cdots + c_d X^d$ un polynôme à
coefficients entiers. En regroupant les termes de même degré,

$$Q(x_1) + Q(x_2) + \cdots + Q(x_p) = c_0 S_0 + c_1 S_1 + \cdots + c_d S_d ,$$

et ce nombre est divisible par $p$, puisque chaque $S_k$ l'est.

**Étape 2 : deux outils.**

- *Même reste au départ, même reste à l'arrivée.* Si $x$ et $y$ ont le même reste dans la division par $p$,
  alors $Q(x)$ et $Q(y)$ aussi. En effet $x - y$ divise $x^k - y^k$ pour tout $k$, donc divise
  $Q(x) - Q(y) = c_1(x - y) + c_2(x^2 - y^2) + \cdots + c_d(x^d - y^d)$, et $p$ divise $x - y$.
- *Le lemme d'Euclide.* Si un nombre premier divise un produit, il divise l'un des facteurs.

**Étape 3 : le bon polynôme.** Soit $r_1$ le reste de $x_1$ dans la division par $p$, et soient
$r_2, \ldots, r_s$ les **autres** restes qui apparaissent parmi les $x_\ell$ (s'il n'y en a pas, il n'y a
rien à démontrer). Posons

$$Q(X) = (X - r_2)(X - r_3) \cdots (X - r_s) .$$

En développant, c'est un polynôme à coefficients entiers. Regardons chaque $Q(x_\ell)$.

- Si $x_\ell$ a un reste $r_j$ avec $j \geqslant 2$, alors $p$ divise $x_\ell - r_j$, qui est l'un des
  facteurs de $Q(x_\ell)$. Donc $p$ divise $Q(x_\ell)$.
- Si $x_\ell$ a le reste $r_1$, alors $Q(x_\ell)$ a le même reste que
  $Q(r_1) = (r_1 - r_2) \cdots (r_1 - r_s)$. Chaque facteur $r_1 - r_j$ est non nul et compris entre
  $-(p-1)$ et $p - 1$, donc n'est pas divisible par $p$. D'après le lemme d'Euclide, $p$ ne divise pas
  $Q(r_1)$.

**Étape 4 : on compte.** Soit $a$ le nombre d'indices $\ell$ tels que $x_\ell$ a le reste $r_1$. On a
$1 \leqslant a \leqslant p$, car $x_1$ en fait partie. D'après l'étape 3, la somme
$Q(x_1) + \cdots + Q(x_p)$ a le même reste que $a \times Q(r_1)$. D'après l'étape 1, cette somme est
divisible par $p$. Donc $p$ divise $a \times Q(r_1)$, et comme $p$ ne divise pas $Q(r_1)$, le lemme
d'Euclide donne que $p$ divise $a$.

Comme $1 \leqslant a \leqslant p$, on obtient $a = p$ : **tous** les $x_\ell$ ont le reste $r_1$.

## Going further

- Le polynôme $Q$ a un degré au plus $p - 1$. On a donc seulement utilisé l'hypothèse pour
  $k = 1, 2, \ldots, p - 1$.
- On n'a pas utilisé que $p$ est impair : le résultat est vrai aussi pour $p = 2$.
- En revanche, il est essentiel d'avoir **exactement** $p$ nombres. Avec les six nombres
  $0, 0, 0, 1, 1, 1$ et $p = 3$, toutes les sommes de puissances valent $3$, mais les restes ne sont pas
  tous égaux. L'argument casse à l'étape 4 : on a seulement $1 \leqslant a \leqslant 6$.
