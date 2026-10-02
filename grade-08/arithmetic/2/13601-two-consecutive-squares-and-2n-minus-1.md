---
id: "13601"
title: "Deux carrés consécutifs et le nombre 2n − 1"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [carres, parite, developpement, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2009 (test de sélection du stage olympique de Grésillon, 4 juin 2009)"
  reference: "2017-09_coupe_printemps_2009_3.pdf, épreuve collégiens, exercice 1 ; corrigé 2017-09_coupe_printemps_2009_corrige.pdf, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2009_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2009_3.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que :

a) si $n$ est la somme des carrés de deux entiers naturels consécutifs, alors $2n - 1$ est le carré d'un entier ;

b) réciproquement, si $2n - 1$ est le carré d'un entier, alors $n$ est la somme des carrés de deux entiers naturels consécutifs.

Par exemple, $13 = 2^2 + 3^2$ et $2 \times 13 - 1 = 25 = 5^2$.

## Hints

1. Essaie d'autres exemples : $1^2 + 2^2$, $3^2 + 4^2$, $4^2 + 5^2$. Quel carré obtiens-tu à chaque fois pour $2n - 1$ ? Repère-le en fonction des deux entiers de départ.
2. Pour a), appelle $k$ et $k + 1$ les deux entiers consécutifs. Développe $n = k^2 + (k+1)^2$, puis calcule $2n - 1$.
3. Pour b), $2n - 1$ est un nombre impair. Le carré d'un nombre pair est pair : que peux-tu en déduire sur le nombre dont $2n - 1$ est le carré ?
4. Écris ce nombre $2k + 1$ et refais le calcul de a) dans l'autre sens.

## Solution

**Un calcul utile.** Pour tout entier $k$, la double distributivité donne

$$(k+1)^2 = (k+1)(k+1) = k^2 + 2k + 1$$

et de même

$$(2k+1)^2 = (2k+1)(2k+1) = 4k^2 + 4k + 1 .$$

**a)** Supposons que $n$ soit la somme des carrés de deux entiers consécutifs $k$ et $k + 1$. Alors

$$n = k^2 + (k+1)^2 = k^2 + k^2 + 2k + 1 = 2k^2 + 2k + 1 .$$

Donc

$$2n - 1 = 4k^2 + 4k + 2 - 1 = 4k^2 + 4k + 1 = (2k+1)^2 .$$

Ainsi $2n - 1$ est le carré de l'entier $2k + 1$. On remarque que $2k + 1 = k + (k+1)$ est la somme des deux entiers de départ : avec $2^2 + 3^2 = 13$, on trouve bien $25 = 5^2$ et $5 = 2 + 3$.

**b)** Supposons maintenant que $2n - 1 = m^2$ pour un certain entier naturel $m$.

Le nombre $2n - 1$ est impair. Or le carré d'un nombre pair est pair : si $m = 2j$, alors $m^2 = 4j^2 = 2 \times 2j^2$. Donc $m$ ne peut pas être pair : $m$ est impair, et on peut l'écrire $m = 2k + 1$ avec $k$ entier naturel.

Alors

$$2n - 1 = (2k+1)^2 = 4k^2 + 4k + 1 ,$$

donc $2n = 4k^2 + 4k + 2$, et en divisant par $2$ :

$$n = 2k^2 + 2k + 1 .$$

D'après le calcul de a), ce nombre est exactement $k^2 + (k+1)^2$. Donc $n$ est la somme des carrés des deux entiers consécutifs $k$ et $k + 1$.

**Conclusion.** Un entier $n$ est la somme des carrés de deux entiers consécutifs **si et seulement si** $2n - 1$ est un carré parfait. Plus précisément, $n = k^2 + (k+1)^2$ correspond à $2n - 1 = (2k+1)^2$.

## Going further

Les nombres $n$ de la forme $k^2 + (k+1)^2$ sont $1, 5, 13, 25, 41, 61, \ldots$ On remarque que $25 = 3^2 + 4^2$ est lui-même un carré. Trouver un autre carré parfait dans cette liste (indication : essayer $20^2 + 21^2$).
