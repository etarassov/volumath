---
id: "11840"
title: "Deux sommes de minimums qui comptent la même chose"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [double comptage, partie entiere, points a coordonnees entieres, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 15 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Pour un réel $t$, on note $\lfloor t \rfloor$ sa *partie entière*, c'est-à-dire le plus grand entier inférieur ou égal à $t$. Par exemple $\lfloor \text{3,7} \rfloor = 3$ et $\lfloor 5 \rfloor = 5$. Pour deux réels $u$ et $v$, on note $\min(u, v)$ le plus petit des deux.

Soient $m$, $n$ et $x$ des entiers strictement positifs. Montrer que

$$\sum_{i=1}^{n} \min\left(\left\lfloor \frac{x}{i} \right\rfloor, m\right) = \sum_{i=1}^{m} \min\left(\left\lfloor \frac{x}{i} \right\rfloor, n\right).$$

## Hints

1. Calculer les deux membres pour $m = 2$, $n = 3$ et $x = 4$.
2. Fixons un entier $i \geqslant 1$. Combien y a-t-il d'entiers $j$ tels que $1 \leqslant j \leqslant m$ et $ij \leqslant x$ ?
3. Chaque membre compte des points d'un quadrillage. Lesquels ?

## Solution

**L'idée.** On va montrer que les deux membres comptent la même chose : le nombre $N$ de couples d'entiers $(i, j)$ tels que

$$1 \leqslant i \leqslant n, \qquad 1 \leqslant j \leqslant m, \qquad ij \leqslant x.$$

**Étape 1 : un calcul utile.** Soient $k \geqslant 1$ et $c \geqslant 1$ deux entiers. Les entiers $j$ tels que $1 \leqslant j \leqslant c$ et $kj \leqslant x$ sont ceux qui vérifient à la fois $j \leqslant c$ et $j \leqslant \frac{x}{k}$. Comme $j$ est entier, $j \leqslant \frac{x}{k}$ revient à $j \leqslant \left\lfloor \frac{x}{k} \right\rfloor$. Ce sont donc les entiers $j$ tels que

$$1 \leqslant j \leqslant \min\left(\left\lfloor \frac{x}{k} \right\rfloor, c\right).$$

Ce minimum est un entier positif ou nul, et il y a exactement $\min\left(\left\lfloor \frac{x}{k} \right\rfloor, c\right)$ tels entiers $j$.

**Étape 2 : compter en fixant $i$.** On range les couples $(i, j)$ selon la valeur de $i$, qui va de $1$ à $n$. Pour un $i$ fixé, d'après l'étape 1 (avec $k = i$ et $c = m$), le nombre de $j$ qui conviennent est $\min\left(\left\lfloor \frac{x}{i} \right\rfloor, m\right)$. En additionnant,

$$N = \sum_{i=1}^{n} \min\left(\left\lfloor \frac{x}{i} \right\rfloor, m\right).$$

**Étape 3 : compter en fixant $j$.** On range maintenant les mêmes couples selon la valeur de $j$, qui va de $1$ à $m$. Pour un $j$ fixé, les $i$ qui conviennent sont les entiers tels que $1 \leqslant i \leqslant n$ et $ji \leqslant x$. D'après l'étape 1 (avec $k = j$ et $c = n$), il y en a $\min\left(\left\lfloor \frac{x}{j} \right\rfloor, n\right)$. En additionnant,

$$N = \sum_{j=1}^{m} \min\left(\left\lfloor \frac{x}{j} \right\rfloor, n\right).$$

**Conclusion.** Les deux membres sont égaux à $N$, donc ils sont égaux entre eux. (Le nom de l'indice de sommation, $i$ ou $j$, ne change rien à la somme.)

**Exemple.** Pour $m = 2$, $n = 3$ et $x = 4$ : le membre de gauche vaut $\min(4, 2) + \min(2, 2) + \min(1, 2) = 2 + 2 + 1 = 5$, et celui de droite vaut $\min(4, 3) + \min(2, 3) = 3 + 2 = 5$. Les $5$ couples $(i, j)$ sont $(1, 1)$, $(1, 2)$, $(2, 1)$, $(2, 2)$ et $(3, 1)$.

## Going further

Pour un entier $k \geqslant 1$, on note $d(k)$ le nombre de diviseurs positifs de $k$. En comptant de deux façons les couples $(i, j)$ d'entiers strictement positifs tels que $ij \leqslant n$, montrer que

$$\sum_{i=1}^{n} \left\lfloor \frac{n}{i} \right\rfloor = d(1) + d(2) + \cdots + d(n).$$
