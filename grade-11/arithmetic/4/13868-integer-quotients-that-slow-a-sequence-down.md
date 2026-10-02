---
id: "13868"
title: "Des quotients entiers qui freinent une suite"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [suites, inegalite, divisibilite, produit-telescopique]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022"
  reference: "2022-06_sujet-coupe-Animath-printemps-2022.pdf, exercices lycéens, exercice 14 ; corrigé 2022-06_corrige-commente-coupe-Animath-printemps-2022.pdf, solution de l'exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/06/sujet-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-06_sujet-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soient $a_1 < a_2 < \cdots < a_n$ des entiers strictement positifs. On suppose que, pour tous
les entiers $i$ et $j$ tels que $1 \leqslant i < j \leqslant n$, le nombre
$\dfrac{a_i}{a_j - a_i}$ est un entier.

1. Montrer que pour tout entier $m$ tel que $1 \leqslant m \leqslant n - 1$, on a
   $m\,a_{m+1} \leqslant (m + 1)\,a_m$.
2. Montrer que si $1 \leqslant i < j \leqslant n$, alors $i\,a_j \leqslant j\,a_i$.

## Hints

1. Teste l'énoncé sur un exemple : la suite $2, 3, 4$ vérifie l'hypothèse.
2. Pour la question 1, fixe $m$ et regarde les $m$ entiers $k_i = \dfrac{a_i}{a_{m+1} - a_i}$
   pour $i = 1, \ldots, m$. Comment varient-ils quand $i$ augmente ?
3. Des entiers strictement positifs et strictement croissants $k_1 < k_2 < \cdots < k_m$
   vérifient $k_i \geqslant i$. Applique cela à $k_m$.
4. Pour la question 2, écris $\dfrac{a_j}{a_i}$ comme un produit de quotients de termes voisins.

## Solution

**Question 1.** Fixons $m$ avec $1 \leqslant m \leqslant n - 1$. Pour $1 \leqslant i \leqslant m$,
posons

$$k_i = \frac{a_i}{a_{m+1} - a_i}.$$

Comme $i < m + 1$, l'hypothèse dit que $k_i$ est un entier, et il est strictement positif car
$a_i > 0$ et $a_{m+1} > a_i$.

*Les $k_i$ augmentent avec $i$.* En divisant le numérateur et le dénominateur par $a_i$,

$$k_i = \frac{1}{\dfrac{a_{m+1}}{a_i} - 1}.$$

Si $i < j \leqslant m$, alors $a_i < a_j$, donc $\dfrac{a_{m+1}}{a_i} > \dfrac{a_{m+1}}{a_j}$. Les
deux dénominateurs $\dfrac{a_{m+1}}{a_i} - 1$ et $\dfrac{a_{m+1}}{a_j} - 1$ sont positifs, et le
premier est le plus grand, donc $k_i < k_j$.

*Les $k_i$ sont assez grands.* On a donc $k_1 < k_2 < \cdots < k_m$, des entiers strictement
positifs. Alors $k_1 \geqslant 1$, puis $k_2 \geqslant k_1 + 1 \geqslant 2$, puis
$k_3 \geqslant 3$, et ainsi de suite : à chaque pas, on gagne au moins $1$. Donc $k_i \geqslant i$
pour tout $i \leqslant m$, et en particulier

$$k_m = \frac{a_m}{a_{m+1} - a_m} \geqslant m.$$

Comme $a_{m+1} - a_m > 0$, on peut multiplier par ce nombre :
$a_m \geqslant m\,a_{m+1} - m\,a_m$, c'est-à-dire

$$(m + 1)\,a_m \geqslant m\,a_{m+1}.$$

**Question 2.** Soient $i < j$. Pour chaque $k$ de $i$ à $j - 1$, la question 1 donne
$k\,a_{k+1} \leqslant (k + 1)\,a_k$, soit, en divisant par $k\,a_k > 0$,

$$\frac{a_{k+1}}{a_k} \leqslant \frac{k + 1}{k}.$$

Multiplions ces inégalités entre nombres positifs pour $k = i, i + 1, \ldots, j - 1$. À gauche,
les termes intermédiaires se simplifient :

$$\frac{a_j}{a_i} = \frac{a_{i+1}}{a_i} \times \frac{a_{i+2}}{a_{i+1}} \times \cdots \times \frac{a_j}{a_{j-1}}
\leqslant \frac{i + 1}{i} \times \frac{i + 2}{i + 1} \times \cdots \times \frac{j}{j - 1} = \frac{j}{i}.$$

En multipliant par $i\,a_i > 0$, on obtient $i\,a_j \leqslant j\,a_i$.

**Conclusion.** Les deux inégalités sont démontrées. Avec $i = 1$, la seconde dit que
$a_j \leqslant j\,a_1$ : une telle suite ne peut pas grandir plus vite que les multiples de son
premier terme.

## Going further

Sur l'exemple $2, 3, 4$ : la question 1 donne $1 \times 3 \leqslant 2 \times 2$ et
$2 \times 4 \leqslant 3 \times 3$, et la question 2 donne $1 \times 4 \leqslant 3 \times 2$.

Peux-tu trouver une suite de quatre entiers qui vérifie l'hypothèse de l'énoncé ? Il faut
chercher parmi les nombres qui ont beaucoup de diviseurs. Par exemple $6, 8, 9, 12$ convient :
les six quotients valent $\dfrac{6}{2} = 3$, $\dfrac{6}{3} = 2$, $\dfrac{6}{6} = 1$,
$\dfrac{8}{1} = 8$, $\dfrac{8}{4} = 2$ et $\dfrac{9}{3} = 3$.
