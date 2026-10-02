---
id: "2619"
title: "Une permutation qui descend puis remonte"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, combinaisons, coefficient-binomial, permutations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, AMC Problem Session"
  reference: "Handout-456-552.pdf, exercice 14 (AIME II 2006, problème 4 ; réponse donnée dans le même fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-456-552.pdf"
---

## Statement

On range les douze nombres $1, 2, 3, \ldots, 12$ dans un certain ordre, que l'on note
$$(a_1,\ a_2,\ a_3,\ \ldots,\ a_{12}) .$$

On veut que ce rangement **descende jusqu'à la sixième place, puis remonte jusqu'au bout** :
$$a_1 > a_2 > a_3 > a_4 > a_5 > a_6 \qquad \text{et} \qquad a_6 < a_7 < a_8 < a_9 < a_{10} < a_{11} < a_{12} .$$

Combien y a-t-il de tels rangements ?

## Hints

1. Commence par la case la plus basse : que peut valoir $a_6$ ?
2. $a_6$ est plus petit que tous les autres nombres de la liste. Or la liste contient tous les entiers de $1$ à $12$.
3. Une fois $a_6$ connu, il reste onze nombres à répartir : cinq à gauche et six à droite. Combien de choix as-tu ?
4. Attention au point clé : une fois qu'on a décidé **quels** nombres vont à gauche, combien de façons y a-t-il de les ranger à gauche ?

## Solution

**Étape 1 : la valeur de $a_6$ est imposée.**

Les inégalités de l'énoncé disent que $a_6$ est strictement plus petit que $a_1, \ldots, a_5$ (première chaîne) et strictement plus petit que $a_7, \ldots, a_{12}$ (seconde chaîne). Donc $a_6$ est **le plus petit des douze nombres**.

Comme la liste est formée exactement des entiers de $1$ à $12$, le plus petit est $1$. Donc nécessairement
$$a_6 = 1 .$$

**Étape 2 : répartir les onze nombres restants.**

Il reste à placer les onze nombres $2, 3, \ldots, 12$ : cinq d'entre eux aux places $1$ à $5$, et les six autres aux places $7$ à $12$.

Choisissons donc **quels** cinq nombres vont à gauche. Le nombre de choix possibles est
$$\binom{11}{5}.$$

**Étape 3 : une fois le choix fait, il n'y a qu'un seul rangement.**

C'est le point important. Une fois les cinq nombres de gauche choisis, l'ordre dans lequel ils doivent apparaître est **imposé** : la condition $a_1 > a_2 > a_3 > a_4 > a_5$ oblige à les écrire du plus grand au plus petit, et il n'y a qu'une seule façon de le faire.

De même, les six nombres restants vont à droite dans l'ordre croissant, et il n'y a là aussi qu'une seule façon.

Enfin, les inégalités « au creux » sont automatiquement vérifiées : $a_5 > a_6 = 1$ et $a_6 = 1 < a_7$, puisque $1$ est le plus petit de tous.

**Conclusion.**

Chaque choix de cinq nombres parmi onze donne exactement un rangement valable, et deux choix différents donnent deux rangements différents. Le nombre cherché est donc
$$\binom{11}{5} = \frac{11 \times 10 \times 9 \times 8 \times 7}{5 \times 4 \times 3 \times 2 \times 1} = \frac{55\,440}{120} = 462 .$$

$$\boxed{\text{Il y a } 462 \text{ rangements possibles.}}$$

**Contrôle.** En faisant énumérer par une machine les $12! = 479\,001\,600$ rangements de $1, \ldots, 12$ et en ne gardant que ceux qui vérifient les deux chaînes d'inégalités, on en trouve exactement $462$.

## Going further

La longueur de la descente n'a rien de spécial. Avec les nombres de $1$ à $n$ et un creux placé à la position $k$, le même raisonnement donne $\binom{n-1}{k-1}$ rangements. En faisant varier $k$ de $1$ à $n$ et en additionnant, on retrouve $2^{n-1}$ : c'est le nombre total de rangements « qui descendent puis remontent », et cela revient à décider, pour chacun des $n-1$ nombres autres que $1$, s'il part à gauche ou à droite.
