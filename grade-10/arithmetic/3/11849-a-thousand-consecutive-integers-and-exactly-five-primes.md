---
id: "11849"
title: "Mille entiers consécutifs et exactement cinq nombres premiers"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, factorielle, fenetre-glissante, valeurs-intermediaires-discretes, existence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 6 (repris en exercice 14 chez les Seniors) ; corrigé 2023-07_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Existe-t-il $1000$ entiers strictement positifs consécutifs parmi lesquels se trouvent **exactement** $5$ nombres premiers ?

## Hints

1. Il est difficile de construire directement un tel bloc. Combien de nombres premiers y a-t-il dans le bloc $1, 2, \ldots, 1000$ ? Peut-on trouver un bloc de $1000$ entiers consécutifs qui n'en contient **aucun** ?
2. Pour le second point, on peut regarder les nombres $1001! + 2$, $1001! + 3$, …, $1001! + 1001$, où $1001! = 1 \times 2 \times \cdots \times 1001$.
3. Faire glisser le bloc d'un cran vers la droite. De combien le nombre de nombres premiers du bloc peut-il changer ?

## Solution

La réponse est **oui**. On ne va pas construire le bloc, on va montrer qu'il existe.

Pour tout entier $n \geqslant 1$, notons $f(n)$ le nombre de nombres premiers parmi les $1000$ entiers $n, n+1, \ldots, n + 999$.

**Un bloc avec plus de $5$ nombres premiers.** Le bloc $1, 2, \ldots, 1000$ contient $2, 3, 5, 7, 11, 13$, donc $f(1) \geqslant 6$.

**Un bloc sans nombre premier.** Notons $N = 1001! = 1 \times 2 \times \cdots \times 1001$. Pour chaque entier $i$ entre $2$ et $1001$, le nombre $i$ fait partie du produit, donc $i$ divise $N$, et $i$ divise $N + i$. Comme $N + i > i \geqslant 2$, le nombre $N + i$ a un diviseur autre que $1$ et lui-même : il n'est pas premier. Les $1000$ nombres consécutifs $N + 2, N + 3, \ldots, N + 1001$ ne sont donc pas premiers, et $f(N + 2) = 0$.

**Faire glisser le bloc d'un cran.** Le bloc qui commence en $n + 1$ s'obtient à partir de celui qui commence en $n$ en enlevant le nombre $n$ et en ajoutant le nombre $n + 1000$. On enlève au plus un nombre premier et on en ajoute au plus un, donc

$$f(n+1) - f(n) \in \{-1,\ 0,\ 1\}.$$

**Conclusion : $f$ ne peut pas sauter la valeur $5$.** La suite $f(1), f(2), \ldots, f(N+2)$ commence à une valeur au moins égale à $6$ et finit à $0$. Soit $k$ le premier entier tel que $f(k) \leqslant 5$. Il existe, car $f(N+2) = 0$, et $k \geqslant 2$, car $f(1) \geqslant 6$. Comme $k$ est le premier, $f(k-1) \geqslant 6$. Comme $f$ diminue d'au plus $1$ à chaque pas, $f(k) \geqslant f(k-1) - 1 \geqslant 5$. Avec $f(k) \leqslant 5$, on obtient $f(k) = 5$.

Le bloc $k, k+1, \ldots, k + 999$ contient donc exactement $5$ nombres premiers.

## Going further

Le même raisonnement montre que, pour chaque entier $j$ entre $0$ et $f(1) = 168$ (le nombre de nombres premiers inférieurs à $1000$), il existe un bloc de $1000$ entiers consécutifs qui contient exactement $j$ nombres premiers. Un tel argument, où une quantité varie de $1$ en $1$ et doit donc passer par toutes les valeurs intermédiaires, s'appelle parfois « continuité discrète ».
