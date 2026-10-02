---
id: "11839"
title: "Une suite qui ne grandit pas trop vite"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, suites, differences, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 13 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $a_1, a_2, a_3, \ldots$ une suite strictement croissante d'entiers positifs, telle que $a_1 = 1$ et, pour tout entier $n \geqslant 1$,

$$a_{n+1} \leqslant 2n.$$

Montrer que, pour tout entier $n \geqslant 1$, on peut trouver deux indices $p$ et $q$ tels que $a_p - a_q = n$.

## Hints

1. Fixer $n$. Entre quelles bornes se trouvent les nombres $a_1, a_2, \ldots, a_{n+1}$ ?
2. On veut deux nombres dont la différence vaut exactement $n$. Regrouper les entiers de $1$ à $2n$ par paires de deux nombres dont la différence vaut $n$.
3. Combien de paires obtient-on, et combien de nombres faut-il y ranger ?

## Solution

**Un outil : le principe des tiroirs.** Si l'on range $n + 1$ objets dans $n$ tiroirs, l'un des tiroirs contient au moins deux objets. En effet, si chaque tiroir contenait au plus un objet, il y aurait au plus $n$ objets.

Fixons un entier $n \geqslant 1$.

**Étape 1 : les $n + 1$ premiers termes sont entre $1$ et $2n$.** La suite est strictement croissante, donc pour tout $m$ entre $1$ et $n + 1$,

$$1 = a_1 \leqslant a_m \leqslant a_{n+1} \leqslant 2n.$$

Les $n + 1$ nombres $a_1, a_2, \ldots, a_{n+1}$ sont donc des entiers compris entre $1$ et $2n$. Ils sont deux à deux distincts, puisque la suite est strictement croissante.

**Étape 2 : les tiroirs.** On range les entiers de $1$ à $2n$ dans les $n$ tiroirs

$$\{1, n + 1\}, \quad \{2, n + 2\}, \quad \ldots, \quad \{n, 2n\}.$$

Chaque entier de $1$ à $2n$ est dans exactement un tiroir, et les deux nombres d'un même tiroir ont pour différence $n$.

**Étape 3 : conclure.** On range les $n + 1$ nombres $a_1, \ldots, a_{n+1}$ dans ces $n$ tiroirs. Par le principe des tiroirs, deux d'entre eux, disons $a_p$ et $a_q$ avec $a_p > a_q$, sont dans le même tiroir. Comme ils sont distincts, ce sont les deux nombres du tiroir, donc $a_p - a_q = n$.

**Conclusion.** Pour tout entier $n \geqslant 1$, il existe deux indices $p$ et $q$ tels que $a_p - a_q = n$.

## Going further

On garde $a_1 = 1$ et la suite strictement croissante, mais on suppose seulement $a_{n+1} \leqslant 2n + 1$ pour tout $n \geqslant 1$. Trouver une telle suite et un entier $n$ pour lesquels la conclusion est fausse.
