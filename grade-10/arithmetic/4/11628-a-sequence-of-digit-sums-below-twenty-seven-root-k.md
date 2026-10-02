---
id: "11628"
title: "Une suite de sommes de chiffres qui reste petite"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [somme des chiffres, ecriture decimale, inegalites, puissances de dix, suites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercice commun, exercice 10 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Pour tout entier $x \geqslant 1$, on note $S(x)$ la somme des chiffres de son écriture décimale. Par exemple $S(2015) = 2 + 0 + 1 + 5 = 8$.

Soit $k \geqslant 1$ un entier. On définit une suite d'entiers en posant $x_1 = 1$, puis $x_{n+1} = S(k x_n)$ pour tout $n \geqslant 1$.

Démontrer que $x_n < 27\sqrt{k}$ pour tout $n \geqslant 1$.

## Hints

1. Calcule les premiers termes pour $k = 2$, puis pour $k = 7$.
2. Si un entier $y$ s'écrit avec $m$ chiffres, majore $S(y)$ à l'aide de $m$, et minore $y$ par une puissance de $10$.
3. Montre que $S(y)^3 \leqslant 729\,y$ pour tout entier $y \geqslant 1$. Remarque que $729 = 9^3$.
4. Suppose que $x_n < 27\sqrt{k}$ et utilise l'inégalité précédente avec $y = k x_n$. Note que $27^3 = 729 \times 27$.

## Solution

**Étape 1 : une inégalité sur les puissances de $10$.** Montrons que, pour tout entier $m \geqslant 1$,

$$m^3 \leqslant 10^{m-1}.$$

Pour $m = 1$, on a $1 \leqslant 1$. Quand on passe de $m$ à $m + 1$, le membre de droite est multiplié par $10$, et celui de gauche par

$$\frac{(m+1)^3}{m^3} = \left(1 + \frac{1}{m}\right)^3 \leqslant 2^3 = 8.$$

Le membre de gauche grandit donc moins vite que celui de droite. De proche en proche (c'est un raisonnement par récurrence), l'inégalité reste vraie pour $m = 2, 3, 4, \ldots$ : si $m^3 \leqslant 10^{m-1}$, alors $(m+1)^3 \leqslant 8 m^3 \leqslant 8 \times 10^{m-1} \leqslant 10^m$.

**Étape 2 : $S(y)^3 \leqslant 729\, y$ pour tout entier $y \geqslant 1$.** Soit $y$ un entier qui s'écrit avec $m$ chiffres. Chaque chiffre vaut au plus $9$, donc $S(y) \leqslant 9m$. Le plus petit nombre à $m$ chiffres est $10^{m-1}$, donc $y \geqslant 10^{m-1}$. Avec l'étape 1 :

$$S(y)^3 \leqslant 9^3 m^3 \leqslant 729 \times 10^{m-1} \leqslant 729\, y.$$

**Étape 3 : la suite reste sous $27\sqrt{k}$.** Remarquons d'abord que tous les $x_n$ sont des entiers supérieurs ou égaux à $1$ : $x_1 = 1$, et la somme des chiffres d'un entier $\geqslant 1$ est au moins $1$.

- Pour $n = 1$ : $x_1 = 1 < 27 \leqslant 27\sqrt{k}$.
- Supposons que $x_n < 27\sqrt{k}$ pour un certain $n$. D'après l'étape 2 avec $y = k x_n$ :
  $$x_{n+1}^3 = S(k x_n)^3 \leqslant 729\, k\, x_n < 729\, k \times 27\sqrt{k} = 27^3 \times k\sqrt{k} = \left(27\sqrt{k}\right)^3.$$
  On a utilisé $729 \times 27 = 27^3$ et $\left(\sqrt{k}\right)^3 = k\sqrt{k}$. Deux nombres positifs sont rangés dans le même ordre que leurs cubes, donc $x_{n+1} < 27\sqrt{k}$.

De proche en proche, l'inégalité passe de $x_1$ à $x_2$, puis à $x_3$, et ainsi de suite.

**Conclusion : $x_n < 27\sqrt{k}$ pour tout $n \geqslant 1$.**

## Going further

La borne $27\sqrt{k}$ est très large. Pour $k = 7$, la suite vaut $1, 7, 13, 10, 7, 13, 10, \ldots$ et ne dépasse jamais $13$, alors que $27\sqrt{7}$ vaut environ $71$. Pour $k = 999$, elle vaut $1, 27, 27, 27, \ldots$, loin de $27\sqrt{999}$, qui dépasse $850$.
