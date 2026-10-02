---
id: "0833"
title: "Un polygone régulier à 120 côtés"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [polygone, angles, isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 40, d'après les stages Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$A_1A_2A_3\ldots A_{120}$ est un polygone régulier à $120$ côtés : ses $120$ côtés ont la même longueur et ses $120$ angles la même mesure.

Déterminer, en degrés, la mesure de l'angle $\widehat{A_1A_3A_5}$.

## Hints

1. Commence par la mesure d'un angle du polygone. La somme des angles d'un polygone à $n$ côtés vaut $(n-2) \times 180°$.
2. Regarde le petit triangle $A_1A_2A_3$. Deux de ses côtés sont des côtés du polygone : que peux-tu en dire ? Et son angle au sommet $A_2$ ?
3. L'angle cherché est ce qui reste de l'angle $\widehat{A_2A_3A_4}$ quand on lui enlève $\widehat{A_1A_3A_2}$ d'un côté et $\widehat{A_5A_3A_4}$ de l'autre.

## Solution

**Un angle du polygone.** La somme des angles d'un polygone convexe à $n$ côtés vaut $(n-2) \times 180°$. Ici $n = 120$, donc cette somme vaut

$$118 \times 180° = 21240°.$$

Les $120$ angles sont égaux, donc chacun mesure

$$\frac{21240°}{120} = 177°.$$

**Le petit triangle $A_1A_2A_3$.** Les segments $[A_1A_2]$ et $[A_2A_3]$ sont deux côtés du polygone, donc ils ont la même longueur : le triangle $A_1A_2A_3$ est isocèle en $A_2$. Son angle au sommet $A_2$ est un angle du polygone, donc il mesure $177°$. Les deux angles à la base sont égaux et leur somme vaut $180° - 177° = 3°$, donc chacun vaut $\text{1,5°}$. En particulier

$$\widehat{A_1A_3A_2} = \text{1,5°}.$$

**Le petit triangle $A_3A_4A_5$.** Exactement de la même façon,

$$\widehat{A_5A_3A_4} = \text{1,5°}.$$

**On conclut.** L'angle du polygone au sommet $A_3$ est $\widehat{A_2A_3A_4} = 177°$. Le polygone est convexe, donc tous ses sommets sont à l'intérieur de cet angle vu depuis $A_3$ : la demi-droite $[A_3A_1)$ se trouve entre $[A_3A_2)$ et $[A_3A_5)$, et la demi-droite $[A_3A_5)$ entre $[A_3A_1)$ et $[A_3A_4)$. On peut donc enlever les deux petits angles :

$$\widehat{A_1A_3A_5} = \widehat{A_2A_3A_4} - \widehat{A_1A_3A_2} - \widehat{A_5A_3A_4} = 177° - \text{1,5°} - \text{1,5°} = 174°.$$

**Réponse : $\widehat{A_1A_3A_5} = 174°$.**

Ce triangle est donc très aplati : ses trois angles mesurent $174°$, $3°$ et $3°$, ce qui est normal puisque les cinq sommets $A_1$ à $A_5$ sont presque alignés sur un polygone à $120$ côtés.

## Going further

Reprendre le calcul pour un polygone régulier à $n$ côtés, avec $n \geqslant 5$, et montrer que

$$\widehat{A_1A_3A_5} = 180° - \frac{720°}{n}.$$

Vérifier la formule sur le cas $n = 120$, puis dire ce qu'elle donne pour $n = 6$.
