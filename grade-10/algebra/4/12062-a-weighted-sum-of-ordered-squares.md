---
id: "12062"
title: "Une somme pondérée de carrés rangés dans l'ordre"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalites, carre d'une somme, developpement, nombres ranges, sommes, inegalite]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour la JBMO 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice J3 ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice J3, première solution ; dans la solution alternative du corrigé (par convexité), la somme finale est écrite avec 2i + 1 au lieu de 2i − 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et $a_1, a_2, \ldots, a_n$ des nombres réels tels que

$$a_1 \geqslant a_2 \geqslant \cdots \geqslant a_n \geqslant 0 \qquad \text{et} \qquad a_1 + a_2 + \cdots + a_n = 1 .$$

Montrer que

$$a_1^2 + 3a_2^2 + 5a_3^2 + \cdots + (2n - 1)\,a_n^2 \leqslant 1 .$$

## Hints

1. Pourquoi l'hypothèse $a_1 \geqslant a_2 \geqslant \cdots$ est-elle indispensable ? Essayez $a_1 = \cdots = a_{n-1} = 0$ et $a_n = 1$.
2. Le nombre $1$ s'écrit $(a_1 + a_2 + \cdots + a_n)^2$. Développez ce carré pour $n = 3$.
3. Dans le développement, chaque produit $a_i a_j$ avec $i < j$ est au moins égal à un carré. Lequel ?
4. Pour un indice $j$ fixé, combien de produits $a_i a_j$ ont un indice $i$ plus petit que $j$ ?

## Solution

**Un premier cas.** Pour $n = 3$, en développant,

$$1 = (a_1 + a_2 + a_3)^2 = a_1^2 + a_2^2 + a_3^2 + 2a_1a_2 + 2a_1a_3 + 2a_2a_3 .$$

Comme $a_1 \geqslant a_2 \geqslant 0$, on a $a_1 a_2 \geqslant a_2 \cdot a_2 = a_2^2$. De même $a_1 a_3 \geqslant a_3^2$ et $a_2 a_3 \geqslant a_3^2$. Donc

$$1 \geqslant a_1^2 + a_2^2 + a_3^2 + 2a_2^2 + 2a_3^2 + 2a_3^2 = a_1^2 + 3a_2^2 + 5a_3^2 .$$

C'est exactement l'inégalité voulue pour $n = 3$. Faisons la même chose dans le cas général.

**Étape 1 : développer le carré.** Notons $\Pi$ la somme de tous les produits $a_i a_j$ avec $i < j$. Pour $n = 3$, c'est $a_1a_2 + a_1a_3 + a_2a_3$. Le carré d'une somme est la somme des carrés, plus deux fois la somme des produits de deux termes différents :

$$1 = (a_1 + a_2 + \cdots + a_n)^2 = (a_1^2 + a_2^2 + \cdots + a_n^2) + 2\,\Pi .$$

En effet, le développement de $(a_1 + \cdots + a_n)(a_1 + \cdots + a_n)$ contient tous les produits $a_i a_j$, où $i$ et $j$ vont de $1$ à $n$. Quand $i = j$, on obtient un carré. Quand $i \neq j$, le produit $a_i a_j$ apparaît deux fois, sous la forme $a_i a_j$ et sous la forme $a_j a_i$.

**Étape 2 : minorer chaque produit.** Soient $i < j$. Comme $a_i \geqslant a_j$ et $a_j \geqslant 0$, on peut multiplier l'inégalité $a_i \geqslant a_j$ par $a_j$ sans changer son sens :

$$a_i a_j \geqslant a_j^2 .$$

**Étape 3 : compter.** Remplaçons chaque produit $a_i a_j$ (avec $i < j$) par le carré $a_j^2$, qui est plus petit ou égal. Fixons un indice $j$. Les produits qui deviennent $a_j^2$ sont ceux où l'autre indice $i$ est plus petit que $j$, c'est-à-dire $i = 1, 2, \ldots, j - 1$ : il y en a $j - 1$. Ainsi

$$\Pi \geqslant 0 \cdot a_1^2 + 1 \cdot a_2^2 + 2\,a_3^2 + \cdots + (n - 1)\,a_n^2 .$$

On obtient

$$1 \geqslant (a_1^2 + a_2^2 + \cdots + a_n^2) + 2\,[a_2^2 + 2a_3^2 + \cdots + (n - 1)\,a_n^2] .$$

Dans le membre de droite, le coefficient de $a_j^2$ vaut $1 + 2(j - 1) = 2j - 1$.

**Conclusion.** On a bien

$$a_1^2 + 3a_2^2 + 5a_3^2 + \cdots + (2n - 1)\,a_n^2 \leqslant 1 .$$

**Remarque.** Il y a égalité par exemple quand $a_1 = a_2 = \cdots = a_n = 1/n$, car alors chaque produit $a_i a_j$ est égal à $a_j^2$.

## Going further

1. Montrer que l'égalité a lieu aussi lorsque $a_1 = \cdots = a_k = 1/k$ et $a_{k+1} = \cdots = a_n = 0$, pour un entier $k$ entre $1$ et $n$. Peut-elle avoir lieu dans d'autres cas ?
2. Sous les mêmes hypothèses, montrer que $a_1^2 + a_2^2 + \cdots + a_n^2 \geqslant 1/n$.
