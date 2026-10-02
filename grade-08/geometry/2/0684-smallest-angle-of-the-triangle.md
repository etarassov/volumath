---
id: "0684"
title: "Le plus petit angle du triangle"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [triangle, angles, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 23, d'après la Coupe Animath de printemps 2018"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Dans un triangle, le plus grand angle est le triple du plus petit, et l'angle du milieu dépasse de $10$ degrés le plus petit.

Déterminer la valeur en degrés du plus petit angle de ce triangle.

## Hints

1. Appelle $x$ la mesure du plus petit angle. Écris les deux autres en fonction de $x$.
2. Quelle propriété relie les trois angles d'un triangle ?

## Solution

**Étape 1. Nommer les trois angles.**

Notons $x$ la mesure, en degrés, du plus petit angle. D'après l'énoncé :

- le plus grand angle mesure $3x$ ;
- l'angle du milieu mesure $x + 10$.

**Étape 2. Utiliser la somme des angles d'un triangle.**

Dans tout triangle, la somme des mesures des trois angles vaut $180$ degrés :

$$x + (x + 10) + 3x = 180.$$

**Étape 3. Résoudre.**

$$5x + 10 = 180,$$
$$5x = 170,$$
$$x = 34.$$

**Étape 4. Vérifier que l'ordre des angles est bien celui de l'énoncé.**

Les trois angles mesurent $34$, $34 + 10 = 44$ et $3 \times 34 = 102$ degrés. On a bien $34 < 44 < 102$ : le plus petit est bien $34$, celui du milieu est bien $44$, et le plus grand est bien $102$, qui est le triple de $34$. La somme fait $34 + 44 + 102 = 180$.

**Conclusion.** Le plus petit angle du triangle mesure $34$ degrés.

## Going further

1. Ce triangle est-il rectangle ? isocèle ? A-t-il un angle obtus, c'est-à-dire supérieur à $90$ degrés ?
2. Même question si le plus grand angle est le double du plus petit et que l'angle du milieu dépasse toujours de $10$ degrés le plus petit. Les trois angles sont-ils encore des nombres entiers de degrés ?
3. On garde la condition « l'angle du milieu dépasse de $10$ degrés le plus petit », mais on remplace « le triple » par « $k$ fois ». Pour quelles valeurs entières de $k$ les trois angles sont-ils des nombres entiers de degrés ? (Indication : montre que le plus petit angle vaut $\frac{170}{k+2}$.)
