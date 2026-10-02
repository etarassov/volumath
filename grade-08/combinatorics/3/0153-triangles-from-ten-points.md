---
id: "0153"
title: "Combien de triangles avec dix points ?"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, triangle, alignement, choix, repetition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 17, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On a marqué $10$ points dans le plan, et il n'y en a jamais trois alignés.

Combien y a-t-il de triangles dont les trois sommets sont parmi ces points ?

## Hints

1. Pourquoi l'énoncé prend-il soin de dire qu'il n'y a jamais trois points alignés ? Que se passerait-il si trois des points étaient sur une même droite ?
2. Un triangle est entièrement déterminé par ses trois sommets. Compter les triangles revient donc à compter les façons de choisir $3$ points parmi les $10$.
3. Commence par choisir les points l'un après l'autre : un premier, puis un deuxième, puis un troisième. Combien de possibilités à chaque étape ?
4. Attention : le triangle de sommets $A$, $B$, $C$ et le triangle de sommets $B$, $C$, $A$ sont le même triangle. Combien de fois as-tu compté chaque triangle ?

## Solution

**D'abord, à quoi sert l'hypothèse ?**

Si trois points étaient alignés, ils ne formeraient pas un triangle : la figure serait aplatie. Comme il n'y a jamais trois points alignés, chaque fois qu'on choisit trois des dix points, on obtient un vrai triangle. Compter les triangles revient donc exactement à compter les façons de choisir trois points parmi dix.

**Étape 1. Compter les choix ordonnés.**

Choisissons les trois sommets l'un après l'autre :

- $10$ possibilités pour le premier point ;
- $9$ possibilités pour le deuxième, puisqu'il doit être différent du premier ;
- $8$ possibilités pour le troisième.

Cela fait

$$10 \times 9 \times 8 = 720$$

façons de choisir trois points *dans un certain ordre*.

**Étape 2. L'idée : on a compté chaque triangle plusieurs fois.**

Prenons un triangle de sommets $A$, $B$ et $C$. Dans le décompte précédent, il apparaît une fois pour chaque ordre dans lequel on peut citer ses trois sommets :

$$ABC,\quad ACB,\quad BAC,\quad BCA,\quad CAB,\quad CBA$$

Il y a $3$ possibilités pour le sommet cité en premier, puis $2$ pour le suivant, puis $1$ pour le dernier, soit

$$3 \times 2 \times 1 = 6$$

ordres possibles. Chaque triangle a donc été compté $6$ fois.

**Étape 3. Conclure.**

Il suffit de diviser par $6$ :

$$\frac{10 \times 9 \times 8}{6} = \frac{720}{6} = 120$$

**Réponse.** Ces dix points forment $120$ triangles.

## Going further

Le même raisonnement marche avec $n$ points, toujours sans trois points alignés : le nombre de triangles vaut

$$\frac{n \times (n-1) \times (n-2)}{6}$$

On peut aussi compter les droites : une droite est déterminée par deux points, il y a $10 \times 9 = 90$ choix ordonnés de deux points, et chaque droite a été comptée $2$ fois, donc il y a $45$ droites.
