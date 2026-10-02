---
id: "11825"
title: "Le plus grand ensemble où aucune somme ne retombe dedans"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 35
tags: [ensemble sans somme, maximum, construction, appariement, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 13 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On cherche des ensembles $S$ d'entiers compris entre $1$ et $2n - 1$ ayant la propriété suivante :

> si $a$, $b$, $c$ sont trois éléments de $S$ tels que $a + b = c$, alors forcément $a = b$.

Autrement dit, la somme de deux éléments **différents** de $S$ n'est jamais dans $S$.

Quel est le plus grand nombre d'éléments que peut avoir un tel ensemble $S$ ?

## Hints

1. Essayer $n = 2$, $n = 3$, $n = 4$. Trouver un ensemble à $n$ éléments qui convient. (Penser à la parité, ou aux plus grands nombres.)
2. Pour montrer qu'on ne peut pas faire mieux, appeler $m$ le plus grand élément de $S$, et regrouper les entiers de $1$ à $m - 1$ par paires de somme $m$.
3. Dans chaque paire $\{j, m - j\}$ avec $j \neq m - j$, combien d'éléments de $S$ peut-il y avoir ? Distinguer selon que $m$ est pair ou impair.

## Solution

On va montrer que la réponse est $n$.

**Des ensembles à $n$ éléments.** L'ensemble des nombres impairs $\{1, 3, 5, \ldots, 2n - 1\}$ convient : il a $n$ éléments, et la somme de deux nombres impairs est paire, donc n'est jamais dans l'ensemble. (L'ensemble $\{n, n + 1, \ldots, 2n - 1\}$ convient aussi : la somme de deux de ses éléments différents vaut au moins $n + (n + 1) = 2n + 1$, trop grand.)

**On ne peut pas faire mieux.** Soit $S$ un ensemble qui a la propriété, et soit $m$ son plus grand élément, avec $m \leqslant 2n - 1$. Regroupons les entiers de $1$ à $m - 1$ par paires $\{j, m - j\}$ de somme $m$, avec $j < m - j$. Si $j$ et $m - j$ étaient tous deux dans $S$, on aurait deux éléments différents de $S$ de somme $m \in S$, ce qui est interdit. Donc **chaque paire contient au plus un élément de $S$.**

- Si $m$ est impair, les entiers de $1$ à $m - 1$ forment exactement $\frac{m - 1}{2}$ paires. Avec $m$ lui-même, on obtient
  $$|S| \leqslant \frac{m - 1}{2} + 1 = \frac{m + 1}{2} \leqslant \frac{2n - 1 + 1}{2} = n.$$
- Si $m$ est pair, les entiers de $1$ à $m - 1$ forment $\frac{m - 2}{2}$ paires, plus le nombre $\frac{m}{2}$ qui reste seul. Avec $m$ lui-même :
  $$|S| \leqslant \frac{m - 2}{2} + 1 + 1 = \frac{m}{2} + 1.$$
  Or $m$ est pair et au plus $2n - 1$, donc $m \leqslant 2n - 2$, et $|S| \leqslant (n - 1) + 1 = n$.

Dans les deux cas, $S$ a au plus $n$ éléments.

**Conclusion.** Le plus grand nombre d'éléments d'un tel ensemble est **$n$**.

## Going further

- Pour $n = 3$, trouver tous les ensembles à $3$ éléments qui conviennent.
- Que devient la réponse si l'on interdit aussi $a + a = c$, c'est-à-dire si l'on demande que la somme de deux éléments, égaux ou non, ne soit jamais dans $S$ ?
