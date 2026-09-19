---
id: "2813"
title: "Le tour du circuit et ses stations-service"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [somme-partielle, minimum, invariant, recurrence]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Proofs using Induction"
  reference: "Handout-772-875.pdf, problème 6 b)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-772-875.pdf"
---

## Statement

Une voiture se trouve sur un circuit fermé le long duquel sont réparties $n$ stations-service. Le réservoir de la voiture est vide au départ, et il est assez grand pour ne jamais limiter quoi que ce soit.

Dans chaque station se trouve une certaine quantité d'essence. Mises bout à bout, ces quantités représentent **exactement** ce qu'il faut pour faire un tour complet du circuit, ni plus ni moins.

La voiture démarre à une station, y prend toute l'essence disponible, roule jusqu'à la station suivante dans le sens du circuit, y prend toute l'essence disponible, et ainsi de suite.

Démontrer qu'il existe au moins une station de départ à partir de laquelle la voiture peut boucler le tour complet sans jamais tomber en panne.

## Hints

1. Fais d'abord un exemple avec trois stations, en choisissant des quantités qui ne conviennent pas toutes comme départ.
2. Pour chaque station, compare l'essence qu'on y trouve à l'essence nécessaire pour atteindre la station suivante : appelle $d_i$ cette différence (elle peut être négative).
3. Que vaut la somme $d_1 + d_2 + \cdots + d_n$ ?
4. Autorise-toi provisoirement à tricher : pars de la station $1$ avec un réservoir qui a le droit de descendre en dessous de zéro, et note le niveau du réservoir à chaque arrivée. Tu obtiens une liste de $n$ nombres.
5. Dans cette liste, repère le **plus petit** niveau. Que se passe-t-il si l'on part de la station juste après celle-là ?

## Solution

**Mettre le problème en formules.**

Numérotons les stations $S_1, S_2, \ldots, S_n$ dans le sens de circulation. Pour chaque $i$, notons

- $g_i$ la quantité d'essence disponible à la station $S_i$ ;
- $c_i$ la quantité d'essence nécessaire pour aller de $S_i$ à la station suivante ;
- $d_i = g_i - c_i$ le **bilan** de l'étape $i$ : ce qui reste dans le réservoir (ou ce qui manque) après cette étape.

L'hypothèse de l'énoncé dit que l'essence totale suffit exactement pour un tour, c'est-à-dire

$$g_1 + g_2 + \cdots + g_n = c_1 + c_2 + \cdots + c_n, \qquad \text{donc} \qquad d_1 + d_2 + \cdots + d_n = 0 .$$

**Le tour « à crédit ».**

Imaginons d'abord que la voiture parte de $S_1$ et qu'on l'autorise à rouler même avec un réservoir négatif : disons qu'elle emprunte l'essence qui lui manque, quitte à devoir la rendre.

Posons

$$T_0 = 0, \qquad T_k = d_1 + d_2 + \cdots + d_k \quad (1 \leqslant k \leqslant n).$$

Le nombre $T_k$ est le niveau du réservoir à l'arrivée à la station $S_{k+1}$ (et $T_n = 0$ est le niveau à la fin du tour, de retour à $S_1$). Certains $T_k$ peuvent être négatifs : cela signifie que la voiture serait tombée en panne avant.

**L'idée : partir du point le plus bas.**

Parmi les $n+1$ nombres $T_0, T_1, \ldots, T_n$, choisissons un indice $m$ pour lequel $T_m$ est **le plus petit** :

$$T_m \leqslant T_k \qquad \text{pour tout } k \in \{0, 1, \ldots, n\}.$$

Nous affirmons que la station $S_{m+1}$ convient comme point de départ (avec la convention $S_{n+1} = S_1$).

**Vérification.**

Partons de $S_{m+1}$ avec un réservoir vide, et regardons le niveau du réservoir à chaque arrivée. Après $j$ étapes ($1 \leqslant j \leqslant n$), ce niveau vaut

$$N_j = d_{m+1} + d_{m+2} + \cdots + d_{m+j},$$

les indices étant pris en tournant sur le circuit. Deux cas se présentent.

*Cas 1 : $m + j \leqslant n$.* On ne repasse pas par $S_1$, et

$$N_j = T_{m+j} - T_m \geqslant 0,$$

puisque $T_m$ est le plus petit de tous les $T_k$.

*Cas 2 : $m + j > n$.* On repasse par $S_1$. En coupant la somme en deux à cet endroit :

$$N_j = \underbrace{\left(d_{m+1} + \cdots + d_n\right)}_{= \, T_n - T_m \, = \, -T_m} + \underbrace{\left(d_1 + \cdots + d_{m+j-n}\right)}_{= \, T_{m+j-n}} = T_{m+j-n} - T_m \geqslant 0,$$

toujours parce que $T_m$ est le plus petit. (C'est ici que sert l'hypothèse $T_n = 0$.)

Dans les deux cas, $N_j \geqslant 0$ : le réservoir n'est jamais vide en cours de route, la voiture atteint chaque station suivante. Après $n$ étapes elle est revenue à son point de départ.

**Conclusion.** Il existe toujours une station de départ permettant de boucler le tour : il suffit de partir de la station qui suit immédiatement le point où le « réservoir à crédit » atteint son minimum.

**Une remarque.** Le raisonnement fournit en prime un algorithme : faire une fois le tour en notant les niveaux, repérer le minimum, et repartir de la station suivante. Il montre aussi que la quantité totale d'essence, si elle suffisait à faire **plus** d'un tour, ne changerait rien : seule la comparaison des sommes partielles compte.

## Going further

1. Combien de stations de départ valables peut-il y avoir au minimum ? au maximum ? Construire un exemple où toutes les stations conviennent.
2. Voici une autre démonstration, par récurrence sur $n$. Montrer d'abord qu'il existe une station $S_i$ dont l'essence suffit à atteindre $S_{i+1}$. Fusionner alors $S_i$ et $S_{i+1}$ en une seule station, ce qui ramène à un circuit à $n-1$ stations. Rédiger cette preuve en entier.
3. Version équivalente : on place $2n$ points sur un cercle, $n$ rouges et $n$ bleus. Montrer qu'on peut choisir un point de départ tel qu'en parcourant le cercle dans le sens des aiguilles d'une montre, on ait à tout instant vu au moins autant de rouges que de bleus.
