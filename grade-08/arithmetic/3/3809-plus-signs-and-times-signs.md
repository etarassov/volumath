---
id: "3809"
title: "Des plus et des fois entre 1 et 6"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [optimisation, produit, priorites-operatoires, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 19"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Dans l'expression

$$1 * 2 * 3 * 4 * 5 * 6$$

on remplace chacune des cinq étoiles par un signe $+$ ou par un signe $\times$. On n'a pas le droit d'ajouter de parenthèses : on applique les priorités habituelles, donc les multiplications se font avant les additions.

Quelle est la plus grande valeur que l'on peut obtenir ? Montre qu'on ne peut pas faire mieux.

## Hints

1. Essaie d'abord quelques possibilités : tout en $\times$, tout en $+$, puis des mélanges. Laquelle semble la meilleure ?
2. Comme les multiplications passent avant les additions, le résultat est toujours une **somme de paquets**, chaque paquet étant un produit de nombres consécutifs. Par exemple $1 \times 2 + 3 \times 4 \times 5 + 6$ donne les paquets $1 \times 2$, $3 \times 4 \times 5$ et $6$.
3. Multiplie entre eux les résultats des paquets, quelle que soit la découpe choisie. Que remarques-tu ?
4. Pour deux entiers $a \geqslant 2$ et $b \geqslant 2$, compare $a + b$ et $a \times b$.

## Solution

**L'idée : voir le résultat comme une somme de paquets, et remarquer que le produit de ces paquets est toujours le même.**

**Étape 1. Le résultat est une somme de paquets.**

Les multiplications se faisant avant les additions, les signes $+$ découpent la ligne $1, 2, 3, 4, 5, 6$ en paquets de nombres consécutifs, et le résultat est la somme des produits de chaque paquet.

Par exemple, $1 + 2 \times 3 \times 4 + 5 \times 6$ a pour paquets $\{1\}$, $\{2, 3, 4\}$ et $\{5, 6\}$, et vaut $1 + 24 + 30 = 55$.

**Étape 2. Le produit des paquets ne change jamais.**

Si on note $P_1, P_2, \dots, P_k$ les produits des paquets, alors en les multipliant tous entre eux on retrouve le produit de tous les nombres de $1$ à $6$ :

$$P_1 \times P_2 \times \dots \times P_k = 1 \times 2 \times 3 \times 4 \times 5 \times 6 = 720.$$

Le problème devient donc : **écrire $720$ comme un produit d'entiers, de façon que leur somme soit la plus grande possible.**

**Étape 3. Regrouper vaut mieux que séparer, sauf avec un $1$.**

Soient deux entiers $a \geqslant 2$ et $b \geqslant 2$. Alors

$$a \times b - (a + b) = (a - 1)(b - 1) - 1 \geqslant 1 \times 1 - 1 = 0,$$

donc $a \times b \geqslant a + b$ : remplacer deux paquets par un seul paquet ne fait jamais baisser le total, dès que les deux valent au moins $2$.

On a donc intérêt à ne garder qu'un seul paquet de valeur $\geqslant 2$. Comme le $1$ est le seul nombre de la ligne qui vaut $1$, et qu'il est tout au début, la meilleure découpe possible est

$$1 \;+\; 2 \times 3 \times 4 \times 5 \times 6 = 1 + 720 = 721.$$

**Étape 4. On vérifie que c'est bien le maximum.**

Un paquet ne peut valoir $1$ que s'il est réduit au seul nombre $1$ : tous les autres paquets contiennent un nombre au moins égal à $2$, donc leur produit vaut au moins $2$. Comme le nombre $1$ est en tête de ligne, **au plus un paquet vaut $1$, et c'est le premier**.

Tous les paquets de valeur $\geqslant 2$ sont donc côte à côte. On peut les fusionner un par un, deux voisins à la fois, et d'après l'étape 3 la somme ne diminue jamais. À la fin il reste au plus deux paquets : éventuellement celui qui vaut $1$, et un paquet qui vaut $720$. La somme de départ est donc majorée par

$$1 + 720 = 721.$$

Et cette valeur est atteinte. Le maximum vaut donc exactement $721$.

**Conclusion.** La plus grande valeur possible est $721$, obtenue avec

$$1 + 2 \times 3 \times 4 \times 5 \times 6.$$

## Going further

1. Quelle est la plus **petite** valeur que l'on peut obtenir ?
2. Même question avec $1 * 2 * 3 * 4 * 5 * 6 * 7$.
3. Et si la ligne était $2 * 3 * 4 * 5 * 6$, sans le $1$ ?
