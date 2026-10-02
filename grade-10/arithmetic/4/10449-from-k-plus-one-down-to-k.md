---
id: "10449"
title: "De r/aᵣ = k + 1 à s/aₛ = k"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [suites, entiers, valeurs-intermediaires, principe-extremal]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices communs, exercice 4 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Soit $a_1, a_2, a_3, \ldots$ une suite infinie d'entiers strictement positifs, rangés dans l'ordre croissant au sens large :

$$a_1 \leqslant a_2 \leqslant a_3 \leqslant \cdots$$

Soit $k \geqslant 1$ un entier. On suppose qu'il existe un entier $r \geqslant 1$ tel que

$$\frac{r}{a_r} = k + 1 .$$

Montrer qu'il existe un entier $s \geqslant 1$ tel que $s / a_s = k$.

## Hints

1. L'égalité $s / a_s = k$ s'écrit aussi $s - k\,a_s = 0$. Pose $v_n = n - k\,a_n$ pour tout $n \geqslant 1$.
2. Quel est le signe de $v_1$ ? Et celui de $v_r$ ?
3. De combien la suite $(v_n)$ peut-elle augmenter, au plus, quand on passe de $n$ à $n + 1$ ?
4. Une suite d'entiers qui part d'un nombre négatif ou nul, finit par être strictement positive, et monte d'au plus $1$ à chaque pas, passe forcément par $0$. Pour le démontrer, regarde le dernier rang avant $r$ où elle est négative ou nulle.

## Solution

Pour tout entier $n \geqslant 1$, posons

$$v_n = n - k\,a_n .$$

C'est un entier. Comme $a_s > 0$, l'égalité $s / a_s = k$ équivaut à $s = k\,a_s$, c'est-à-dire à $v_s = 0$. Il suffit donc de trouver un rang $s$ tel que $v_s = 0$.

**Étape 1 : le départ et l'arrivée.** Comme $k \geqslant 1$ et $a_1 \geqslant 1$, on a $k\,a_1 \geqslant 1$, donc

$$v_1 = 1 - k\,a_1 \leqslant 0 .$$

D'autre part, l'hypothèse donne $r = (k + 1)\,a_r$, donc

$$v_r = (k + 1)\,a_r - k\,a_r = a_r \geqslant 1 > 0 .$$

En particulier $r \neq 1$, donc $r \geqslant 2$.

**Étape 2 : des pas d'au plus $1$ vers le haut.** Pour tout $n \geqslant 1$, on a $a_{n+1} \geqslant a_n$, donc $k\,(a_{n+1} - a_n) \geqslant 0$, et

$$v_{n+1} - v_n = 1 - k\,(a_{n+1} - a_n) \leqslant 1 .$$

**Étape 3 : la suite passe par $0$.** Parmi les entiers $1, 2, \ldots, r - 1$, il y en a au moins un, à savoir $1$, pour lequel $v_n \leqslant 0$. Notons $s$ le plus grand d'entre eux. Alors $v_s \leqslant 0$, et $v_{s+1} > 0$ :

- si $s + 1 = r$, c'est l'étape 1 ;
- si $s + 1 \leqslant r - 1$, c'est parce que $s$ est le plus grand rang de $1, \ldots, r - 1$ où $v_n \leqslant 0$.

Comme $v_{s+1}$ est un entier strictement positif, $v_{s+1} \geqslant 1$. L'étape 2 donne alors

$$v_s \geqslant v_{s+1} - 1 \geqslant 0 .$$

On a donc à la fois $v_s \leqslant 0$ et $v_s \geqslant 0$, c'est-à-dire $v_s = 0$.

**Conclusion.** L'entier $s$ vérifie $s = k\,a_s$, c'est-à-dire $s / a_s = k$.

## Going further

1. L'hypothèse que la suite est croissante est indispensable. Avec $a_1 = 2$, $a_2 = 1$ et $a_n = n + 1$ pour $n \geqslant 3$, vérifier que $2 / a_2 = 2$, mais qu'aucun $s$ ne vérifie $s / a_s = 1$.
2. Montrer que, sous les hypothèses de l'énoncé, pour chaque entier $j$ entre $1$ et $k + 1$, il existe un entier $s$ tel que $s / a_s = j$.
