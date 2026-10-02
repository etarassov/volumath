---
id: "0251"
title: "Le numéro du fauteuil et le numéro de la rangée"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [division-euclidienne, numerotation, equation, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, письменная работа, задача 3"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Dans une salle de cinéma, toutes les rangées comptent 12 fauteuils. Les fauteuils sont
numérotés à la suite : la première rangée porte les numéros 1 à 12, la deuxième les
numéros 13 à 24, la troisième les numéros 25 à 36, et ainsi de suite.

Paul et Julien sont assis dans cette salle. Le numéro du fauteuil de Paul est égal au
numéro de la rangée de Julien. La somme des numéros de leurs deux fauteuils vaut 123.

Trouver le numéro du fauteuil de Paul et celui du fauteuil de Julien.

## Hints

1. Appelle $x$ le numéro du fauteuil de Paul. D'après l'énoncé, $x$ est aussi le numéro de la rangée de Julien.
2. Julien est donc dans la rangée $x$. Quels numéros portent les fauteuils de cette rangée ? Le premier fauteuil de la rangée $x$ porte le numéro $12(x-1) + 1$, et le dernier le numéro $12x$.
3. Note $y$ la place de Julien dans sa rangée, avec $1 \le y \le 12$. Son fauteuil porte alors le numéro $12(x-1) + y$. Écris que la somme des deux numéros vaut 123.
4. Tu obtiens $13x + y = 135$ avec $1 \le y \le 12$. Effectue la division euclidienne de 135 par 13.

## Solution

**L'idée : tout écrire en fonction du numéro de la rangée de Julien, puis utiliser la division euclidienne.**

**Étape 1. Mettre le problème en équation.**

Notons $x$ le numéro du fauteuil de Paul. C'est aussi, par hypothèse, le numéro de la
rangée de Julien.

Julien est donc assis dans la rangée numéro $x$. Les rangées 1 à $x-1$ contiennent
$12(x-1)$ fauteuils au total, donc les fauteuils de la rangée $x$ portent les numéros
$$12(x-1)+1,\quad 12(x-1)+2,\quad \dots,\quad 12(x-1)+12 .$$

Notons $y$ la place de Julien dans sa rangée. Le numéro de son fauteuil est $12(x-1)+y$, et
$$1 \le y \le 12 .$$

La somme des deux numéros vaut 123 :
$$x + 12(x-1) + y = 123 .$$

En développant : $x + 12x - 12 + y = 123$, c'est-à-dire
$$13x + y = 135 .$$

**Étape 2. Résoudre grâce à l'encadrement de $y$.**

L'équation $13x + y = 135$ a beaucoup de solutions entières, mais $y$ est coincé
entre 1 et 12. Or c'est exactement la situation d'une division euclidienne par 13 :
écrire $135 = 13x + y$ avec $0 \le y < 13$ détermine $x$ et $y$ de façon unique.

$$135 = 13 \times 10 + 5 .$$

Donc $x = 10$ et $y = 5$.

Si l'on préfère éviter le vocabulaire de la division euclidienne, on peut raisonner par
encadrement. De $1 \le y \le 12$ et $y = 135 - 13x$ on tire
$$1 \le 135 - 13x \le 12, \quad\text{donc}\quad 123 \le 13x \le 134 .$$
Comme $13 \times 9 = 117$ et $13 \times 10 = 130$ et $13 \times 11 = 143$, le seul entier
qui convient est $x = 10$, et alors $y = 135 - 130 = 5$.

**Étape 3. Revenir aux fauteuils.**

- Paul est assis au fauteuil numéro $x = 10$.
- Julien est dans la rangée 10, à la place 5, donc son fauteuil porte le numéro
  $12 \times 9 + 5 = 108 + 5 = 113$.

**Vérification.** $10 + 113 = 123$. Le fauteuil 113 est bien dans la rangée 10, qui va du
numéro 109 au numéro 120. Et le fauteuil 10 de Paul existe bien, il est dans la première
rangée.

**Conclusion.** Paul est au fauteuil numéro 10 et Julien au fauteuil numéro 113.

## Going further

1. La salle doit avoir au moins combien de rangées pour que cette situation soit possible ?
2. Reprends le problème si les rangées comptent 10 fauteuils au lieu de 12, la somme des
   deux numéros valant toujours 123. Combien de solutions trouves-tu ?
3. Pour quelles valeurs de la somme des deux numéros le problème n'a-t-il aucune solution ?
