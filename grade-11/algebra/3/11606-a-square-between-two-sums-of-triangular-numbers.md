---
id: "11606"
title: "Un carré parfait entre deux sommes de nombres triangulaires"
grade: 11
theme: algebra
difficulty: 3
duration_min: 35
tags: [racine-carree, quantite-conjuguee, telescopage, nombres-triangulaires, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

Pour tout entier $k \geqslant 1$, on pose $x_k = \dfrac{k(k+1)}{2}$. Ainsi $x_1 = 1$, $x_2 = 3$, $x_3 = 6$, $x_4 = 10$, et ainsi de suite.

Pour tout entier $n \geqslant 1$, on pose ensuite

$$S_n = x_1 + x_2 + \cdots + x_n.$$

Montrer que, pour tout entier $n \geqslant 10$, il existe un entier $a_n$ tel que

$$S_{n-1} < a_n^2 < S_n.$$

## Hints

1. Calcule les premières valeurs : $S_1 = 1$, $S_2 = 4$, $S_3 = 10$, $S_4 = 20$, $S_5 = 35$. Cherche une formule simple pour $S_n$, sous forme d'un produit de trois facteurs divisé par $6$, puis vérifie-la.
2. Si $\sqrt{S_n} - \sqrt{S_{n-1}} > 1$, l'intervalle entre ces deux racines est plus long que $1$, donc il contient un entier.
3. Pour étudier une différence de deux racines carrées, multiplie et divise par leur somme $\sqrt{S_n} + \sqrt{S_{n-1}}$.
4. Le dénominateur $\sqrt{S_n} + \sqrt{S_{n-1}}$ est plus petit que $2\sqrt{S_n}$. Ramène-toi à une inégalité du second degré en $n$.

## Solution

**Étape 1 : une formule pour $S_n$.** Montrons que

$$S_n = \frac{n(n+1)(n+2)}{6}.$$

Notons $T_n = \dfrac{n(n+1)(n+2)}{6}$ pour tout entier $n \geqslant 0$. Alors $T_0 = 0$ et, pour $k \geqslant 1$,

$$T_k - T_{k-1} = \frac{k(k+1)(k+2)}{6} - \frac{(k-1)k(k+1)}{6} = \frac{k(k+1)}{6}((k+2) - (k-1)) = \frac{k(k+1)}{6} \times 3 = x_k.$$

En additionnant ces égalités pour $k = 1, 2, \ldots, n$, les termes se simplifient deux à deux :

$$S_n = (T_1 - T_0) + (T_2 - T_1) + \cdots + (T_n - T_{n-1}) = T_n - T_0 = T_n.$$

**Étape 2 : ce qu'il suffit de montrer.** Supposons que $\sqrt{S_n} - \sqrt{S_{n-1}} > 1$. L'intervalle ouvert qui va de $\sqrt{S_{n-1}}$ à $\sqrt{S_n}$ (bornes exclues) a alors une longueur plus grande que $1$, donc il contient un entier $a_n$ (par exemple le plus petit entier strictement plus grand que $\sqrt{S_{n-1}}$, qui vaut au plus $\sqrt{S_{n-1}} + 1 < \sqrt{S_n}$). Comme ces nombres sont positifs, on peut élever au carré sans changer le sens des inégalités : $S_{n-1} < a_n^2 < S_n$.

Il suffit donc de prouver que $\sqrt{S_n} - \sqrt{S_{n-1}} > 1$ pour $n \geqslant 10$.

**Étape 3 : la différence des racines.** On multiplie et on divise par la somme des racines :

$$\sqrt{S_n} - \sqrt{S_{n-1}} = \frac{S_n - S_{n-1}}{\sqrt{S_n} + \sqrt{S_{n-1}}} = \frac{x_n}{\sqrt{S_n} + \sqrt{S_{n-1}}}.$$

Comme $S_{n-1} < S_n$, le dénominateur est strictement plus petit que $2\sqrt{S_n}$. Donc

$$\sqrt{S_n} - \sqrt{S_{n-1}} > \frac{x_n}{2\sqrt{S_n}}.$$

Il suffit donc que $x_n \geqslant 2\sqrt{S_n}$. Ces deux nombres étant positifs, cela revient à $x_n^2 \geqslant 4 S_n$, c'est-à-dire

$$\frac{n^2(n+1)^2}{4} \geqslant \frac{4\,n(n+1)(n+2)}{6} = \frac{2\,n(n+1)(n+2)}{3}.$$

On divise par $n(n+1) > 0$, puis on multiplie par $12$ :

$$3n(n+1) \geqslant 8(n+2), \qquad \text{c'est-à-dire} \qquad 3n^2 - 5n - 16 \geqslant 0.$$

Or $3n^2 - 5n - 16 = n(3n - 5) - 16$. Pour $n \geqslant 10$, on a $n(3n - 5) \geqslant 10 \times 25 = 250$, donc $3n^2 - 5n - 16 \geqslant 234 > 0$.

**Conclusion : pour tout $n \geqslant 10$, on a $\sqrt{S_n} - \sqrt{S_{n-1}} > 1$, donc il existe un entier $a_n$ tel que $S_{n-1} < a_n^2 < S_n$.**

## Going further

La condition $n \geqslant 10$ est très généreuse. Le même calcul marche dès $n \geqslant 4$, car $4 \times 7 - 16 = 12 > 0$. Pour $n = 3$, on vérifie à la main : $S_2 = 4 < 9 < 10 = S_3$. En revanche, pour $n = 2$, il n'y a aucun carré strictement entre $S_1 = 1$ et $S_2 = 4$.

Les nombres $x_k$ sont les **nombres triangulaires**, et les $S_n$ sont les **nombres tétraédriques** : $S_n$ est le nombre de boulets dans une pyramide à base triangulaire de $n$ étages.
