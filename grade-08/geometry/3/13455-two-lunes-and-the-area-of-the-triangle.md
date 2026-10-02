---
id: "13455"
title: "Deux lunules et l'aire du triangle"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, demi-cercle, pythagore, triangle-rectangle, disque, lunules]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 9 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Soient $B$ et $C$ deux points du plan, $\mathcal{K}_1$ un demi-cercle de diamètre $[BC]$, et $A$ un point de $\mathcal{K}_1$, distinct de $B$ et de $C$.

On trace aussi le demi-cercle $\mathcal{K}_2$ de diamètre $[CA]$ et le demi-cercle $\mathcal{K}_3$ de diamètre $[AB]$, tous les deux à l'extérieur du triangle $ABC$.

On note :

- $S$ l'aire du triangle $ABC$ ;
- $S_1$ l'aire de la région comprise entre l'arc $AB$ de $\mathcal{K}_1$ et l'arc $AB$ de $\mathcal{K}_3$ (en bleu sur la figure) ;
- $S_2$ l'aire de la région comprise entre l'arc $AC$ de $\mathcal{K}_1$ et l'arc $AC$ de $\mathcal{K}_2$ (en rose sur la figure).

![Le demi-cercle de diamètre [BC] passe par A. Sur [AB] et sur [AC], deux demi-cercles sont tracés vers l'extérieur. Les deux régions en forme de croissant sont coloriées, ainsi que le triangle ABC.](13455-figure-1.svg)

Montrer que $S = S_1 + S_2$.

## Hints

1. Que peux-tu dire de l'angle $\widehat{BAC}$, sachant que $A$ est sur le demi-cercle de diamètre $[BC]$ ?
2. Écris l'aire d'un demi-disque en fonction de son diamètre $d$. Attention : le rayon vaut $d / 2$.
3. Regarde les deux régions blanches de la figure, entre le triangle et le grand demi-cercle. Exprime leur aire totale à l'aide de l'aire du demi-disque $\mathcal{K}_1$ et de $S$.
4. La région bleue, c'est le demi-disque $\mathcal{K}_3$ privé d'une des régions blanches. Utilise enfin le théorème de Pythagore.

## Solution

Pour $i = 1, 2, 3$, on note $D_i$ l'aire du demi-disque limité par $\mathcal{K}_i$ et son diamètre.

**Étape 1 : l'angle en $A$ est droit.** Le point $A$ est sur le demi-cercle de diamètre $[BC]$. Un triangle inscrit dans un cercle, dont un côté est un diamètre, est rectangle, et l'angle droit est en face de ce diamètre. Donc le triangle $ABC$ est rectangle en $A$, et d'après le théorème de Pythagore,

$$BC^2 = AB^2 + AC^2.$$

**Étape 2 : l'aire d'un demi-disque.** Un demi-disque de diamètre $d$ a pour rayon $d / 2$, donc pour aire

$$\frac{1}{2} \times \pi \times \left(\frac{d}{2}\right)^2 = \frac{\pi}{8}\, d^2.$$

Avec l'étape 1, on obtient

$$D_1 = \frac{\pi}{8}\, BC^2 = \frac{\pi}{8}\left(AB^2 + AC^2\right) = \frac{\pi}{8}\, AB^2 + \frac{\pi}{8}\, AC^2 = D_3 + D_2.$$

**Étape 3 : on découpe les aires.** Appelons $T_B$ la région blanche comprise entre le segment $[AB]$ et l'arc $AB$ de $\mathcal{K}_1$, et $T_C$ la région blanche comprise entre le segment $[AC]$ et l'arc $AC$ de $\mathcal{K}_1$. On note aussi $T_B$ et $T_C$ leurs aires.

- Le demi-disque $\mathcal{K}_1$ est formé du triangle $ABC$ et des deux régions blanches : $D_1 = S + T_B + T_C$.
- Le demi-disque $\mathcal{K}_3$ est formé de la région bleue et de la région blanche $T_B$ : $D_3 = S_1 + T_B$, donc $S_1 = D_3 - T_B$.
- De même, $D_2 = S_2 + T_C$, donc $S_2 = D_2 - T_C$.

**Étape 4 : conclusion.** En additionnant, puis en utilisant l'étape 2,

$$S_1 + S_2 = (D_3 + D_2) - (T_B + T_C) = D_1 - (T_B + T_C) = S.$$

On a bien $S = S_1 + S_2$ : l'aire des deux croissants est égale à l'aire du triangle.

*Attention à bien lire l'énoncé.* $S_1$ n'est pas l'aire du demi-disque $\mathcal{K}_3$ tout entier, mais seulement celle du croissant, c'est-à-dire la partie de $\mathcal{K}_3$ qui dépasse du grand demi-cercle.

## Going further

Ces croissants s'appellent les *lunules d'Hippocrate*. On prend maintenant $AB = AC$. Montrer que chacune des deux lunules a la même aire que le triangle $ABO$, où $O$ est le milieu de $[BC]$.
