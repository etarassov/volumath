---
id: "12427"
title: "Exactement n villes à chaque distance"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [villes, reseau, distance, parite, double-comptage, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 novembre 2018"
  reference: "2018-12_Test_RMM_28_novembre_enonce.pdf, exercice 1 ; corrigé 2018-12_Test_RMM_28_novembre_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/Test_RMM_28_novembre_enonce.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-12_Test_RMM_28_novembre_enonce.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Un pays compte $2018n + 1$ villes. Certaines paires de villes
sont reliées par une ligne directe de chemin de fer, avec au plus une ligne entre deux villes ;
chaque ligne se parcourt dans les deux sens.

La **distance** entre deux villes $A$ et $B$ est le nombre minimal de lignes qu'il faut prendre
pour aller de $A$ à $B$.

Déterminer tous les entiers $n \geqslant 1$ pour lesquels on peut construire un réseau qui vérifie
la condition suivante : pour toute ville $C$ et pour tout $i \in \{1, 2, \ldots, 2018\}$, il y a
exactement $n$ villes à distance $i$ de $C$.

## Hints

1. Que veut dire la condition pour $i = 1$ ? Combien de lignes partent de chaque ville ?
2. Compte le nombre total de lignes de deux façons. Tu dois trouver que $n$ est forcément pair.
3. Pour la construction, écris $n = 2m$ et dispose les villes régulièrement sur un cercle.
   Relie chaque ville à ses $m$ voisines de chaque côté.
4. Dans ce réseau, de combien de « crans » le long du cercle peut-on avancer au plus avec une
   seule ligne ? Déduis-en la distance entre deux villes en fonction de leur écart sur le cercle.

## Solution

Notons $N = 2018n + 1$ le nombre de villes. La réponse est : **tous les entiers $n$ pairs.**

### Étape 1 : $n$ doit être pair

Les villes à distance $1$ d'une ville $C$ sont exactement les villes reliées directement à $C$.
La condition pour $i = 1$ dit donc que **de chaque ville partent exactement $n$ lignes.**

Comptons les couples (ville, ligne qui part de cette ville). Il y a $N$ villes et $n$ lignes par
ville, donc $N \times n$ couples. Mais chaque ligne a deux extrémités, donc elle est comptée deux
fois : le nombre de couples est le double du nombre de lignes. Ainsi $N \times n = (2018n + 1)\,n$
est pair. Comme $2018n + 1$ est impair, c'est $n$ qui est pair.

### Étape 2 : pour tout $n$ pair, un réseau convient

Écrivons $n = 2m$, avec $m \geqslant 1$. Alors
$$N = 2018 \times 2m + 1 = 2 \times 2018m + 1.$$

Plaçons les $N$ villes régulièrement sur un cercle. Pour deux villes, appelons **écart** le
nombre de crans qui les séparent sur le cercle en faisant le tour par le côté le plus court.
Comme $N$ est impair, l'écart va de $0$ à $\dfrac{N - 1}{2} = 2018m$. On relie deux villes par une
ligne lorsque leur écart est compris entre $1$ et $m$.

**Combien de villes à chaque écart ?** Fixons une ville $C$. Pour chaque $k$ entre $1$ et $2018m$,
il y a exactement deux villes à l'écart $k$ de $C$ : celle qu'on atteint en avançant de $k$ crans
dans le sens des aiguilles d'une montre, et celle qu'on atteint en avançant de $k$ crans dans
l'autre sens. Ces deux villes sont différentes, car $2k \leqslant 4036m < N$.

**La distance en fonction de l'écart.** Soit $D$ une ville à l'écart $k \geqslant 1$ de $C$.

- Une ligne relie deux villes d'écart au plus $m$. Après avoir pris $j$ lignes depuis $C$, on est
  donc à un écart au plus $jm$ de $C$ (à chaque ligne, l'écart à $C$ augmente au plus de $m$).
  Pour atteindre $D$, il faut donc au moins $j$ lignes avec $jm \geqslant k$.
- Inversement, soit $j$ le plus petit entier tel que $jm \geqslant k$. En suivant le chemin le
  plus court le long du cercle de $C$ vers $D$, on avance de $m$ crans à chaque ligne, sauf
  peut-être à la dernière, où l'on avance de moins. On arrive en $D$ en $j$ lignes.

La distance de $C$ à $D$ est donc **le plus petit entier $j$ tel que $jm \geqslant k$.**

**Conclusion.** Soit $i \in \{1, \ldots, 2018\}$. Une ville est à distance $i$ de $C$ exactement
quand son écart $k$ vérifie $(i - 1)m < k \leqslant im$, c'est-à-dire
$$k \in \{(i-1)m + 1, \ (i-1)m + 2, \ \ldots, \ im\}.$$
Ce sont $m$ valeurs de l'écart, toutes entre $1$ et $2018m$, avec deux villes pour chacune : il y a
bien $2m = n$ villes à distance $i$ de $C$. Le réseau convient.

### Conclusion

Un tel réseau existe **si et seulement si $n$ est pair.**

