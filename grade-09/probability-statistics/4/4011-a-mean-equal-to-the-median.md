---
id: "4011"
title: "Une moyenne égale à la médiane"
grade: 9
theme: probability-statistics
difficulty: 4
duration_min: 25
tags: [moyenne, mediane, disjonction-de-cas, statistiques]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 7 (réponse 3 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

On considère la série de quatre nombres $3$, $6$, $9$, $10$.

**a)** Calculer sa moyenne et sa médiane.

**b)** On ajoute à cette série un cinquième nombre $n$, qui n'est pas forcément entier. Pour
combien de valeurs de $n$ la moyenne de la nouvelle série de cinq nombres est-elle égale à
sa médiane ? Déterminer ces valeurs.

## Hints

1. Avec cinq nombres, la médiane est celui du milieu une fois la série rangée dans l'ordre croissant. Elle vaut donc l'un des cinq nombres.
2. La position de $n$ dans la série rangée dépend de sa valeur. Sépare les cas selon la place que $n$ vient prendre.
3. Il y a trois cas utiles : $n$ arrive avant $6$, $n$ se place entre $6$ et $9$, $n$ arrive après $9$. Quelle est la médiane dans chaque cas ?
4. Dans chaque cas, écris l'équation « moyenne $=$ médiane », résous-la, puis **vérifie** que la valeur trouvée appartient bien au cas étudié. C'est cette vérification qui fait tout le problème.

## Solution

**a) La série $3$, $6$, $9$, $10$.**

Moyenne : $\dfrac{3+6+9+10}{4} = \dfrac{28}{4} = 7$.

Médiane : la série a quatre termes, la médiane est la demi-somme des deux termes du milieu,
soit $\dfrac{6+9}{2} = \text{7,5}$.

**b) Ajout d'un cinquième nombre.**

La somme des cinq nombres vaut $28 + n$, donc la moyenne vaut $\dfrac{28+n}{5}$.

Pour la médiane, il faut ranger les cinq nombres et prendre celui du milieu, c'est-à-dire
le troisième. Sa valeur dépend de l'endroit où $n$ se place.

*Cas 1 : $n \leqslant 6$.* La série rangée commence par $n$ et $3$ dans un ordre ou dans
l'autre, puis vient $6$, puis $9$, puis $10$. Le troisième terme est $6$ : la médiane vaut
$6$. L'équation devient

$$\frac{28+n}{5} = 6, \qquad \text{donc} \qquad 28 + n = 30, \qquad n = 2.$$

Or $2 \leqslant 6$ : cette valeur appartient bien au cas étudié. **$n = 2$ convient.**

*Cas 2 : $6 \leqslant n \leqslant 9$.* La série rangée est $3$, $6$, $n$, $9$, $10$. Le
troisième terme est $n$ : la médiane vaut $n$. L'équation devient

$$\frac{28+n}{5} = n, \qquad \text{donc} \qquad 28 + n = 5n, \qquad 4n = 28, \qquad n = 7.$$

Or $6 \leqslant 7 \leqslant 9$ : cette valeur appartient bien au cas étudié.
**$n = 7$ convient.**

*Cas 3 : $n \geqslant 9$.* La série rangée commence par $3$, $6$, $9$, puis $n$ et $10$ dans
un ordre ou dans l'autre. Le troisième terme est $9$ : la médiane vaut $9$. L'équation
devient

$$\frac{28+n}{5} = 9, \qquad \text{donc} \qquad 28 + n = 45, \qquad n = 17.$$

Or $17 \geqslant 9$ : cette valeur appartient bien au cas étudié. **$n = 17$ convient.**

**Vérifications.**

- $n = 2$ : série $2$, $3$, $6$, $9$, $10$. Moyenne $\dfrac{30}{5} = 6$, médiane $6$. ✔
- $n = 7$ : série $3$, $6$, $7$, $9$, $10$. Moyenne $\dfrac{35}{5} = 7$, médiane $7$. ✔
- $n = 17$ : série $3$, $6$, $9$, $10$, $17$. Moyenne $\dfrac{45}{5} = 9$, médiane $9$. ✔

Les trois cas couvrent toutes les valeurs possibles de $n$, donc il n'y en a pas d'autres.

**Réponse : il y a $3$ valeurs possibles, à savoir $n = 2$, $n = 7$ et $n = 17$.**

## Going further

Le piège classique est d'oublier la vérification. Si l'on avait aussi traité le cas
« $9 \leqslant n \leqslant 10$ », on aurait trouvé une médiane de $9$ et donc $n = 17$, qui
ne tombe pas dans cet intervalle : cette solution-là serait à rejeter. Ce n'est qu'une autre
façon de découper les cas, et elle donne les mêmes trois réponses au bout du compte.
