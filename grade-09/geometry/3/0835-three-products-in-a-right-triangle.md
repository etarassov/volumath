---
id: "0835"
title: "Trois produits dans le triangle rectangle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-rectangle, hauteur, similitude]
adapted_from: null
see_also: ["0410"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$, et $H$ est le pied de la hauteur issue de $A$.

![Le triangle ABC rectangle en A et la hauteur [AH], avec H sur l'hypoténuse [BC]](0835-figure-1.svg)

Démontrer les trois égalités suivantes :

1. $HB \times HC = AH^2$ ;
2. $HC \times CB = AC^2$ ;
3. $HB \times BC = AB^2$.

## Hints

1. La figure contient trois triangles rectangles : $ABC$, $HBA$ et $HAC$. Commence par comparer leurs angles.
2. Les triangles $HBA$ et $ABC$ ont l'angle de sommet $B$ en commun, et tous les deux un angle droit : ils sont donc semblables. Écris la similitude en rangeant bien les sommets qui se correspondent.
3. Même travail pour $HAC$ et $ABC$, qui partagent l'angle de sommet $C$.
4. Pour la première égalité, compare directement $HBA$ et $HAC$ : chacun est semblable à $ABC$, donc ils sont semblables entre eux.

## Solution

Notons $\widehat{B}$ et $\widehat{C}$ les angles du triangle $ABC$ en $B$ et en $C$. Comme le triangle est rectangle en $A$,

$$\widehat{B} + \widehat{C} = 90°.$$

**Trois triangles semblables.**

- Le triangle $ABC$ a pour angles $90°$ en $A$, $\widehat{B}$ en $B$, $\widehat{C}$ en $C$.
- Le triangle $HBA$ est rectangle en $H$. Son angle en $B$ est le même que celui de $ABC$, car $H$ est sur $[BC]$. Son troisième angle, en $A$, vaut donc $90° - \widehat{B} = \widehat{C}$.
- Le triangle $HAC$ est rectangle en $H$, son angle en $C$ vaut $\widehat{C}$, et son angle en $A$ vaut $\widehat{B}$.

Les trois triangles ont donc les mêmes angles $90°$, $\widehat{B}$, $\widehat{C}$ : ils sont semblables. Rangeons à chaque fois les sommets dans le même ordre, d'abord celui de l'angle droit, puis celui de l'angle $\widehat{B}$, puis celui de l'angle $\widehat{C}$ :

$$(A, B, C), \qquad (H, B, A), \qquad (H, A, C).$$

**Première égalité.** De $HBA \sim HAC$ (les deux derniers de la liste) on tire

$$\frac{HB}{HA} = \frac{BA}{AC} = \frac{AH}{CH}.$$

Le premier et le troisième rapport donnent, par produit en croix,

$$HB \times HC = AH^2.$$

**Deuxième égalité.** De $HAC \sim ABC$ on tire

$$\frac{HA}{AB} = \frac{AC}{BC} = \frac{CH}{CA},$$

et les deux derniers rapports donnent

$$AC^2 = HC \times CB.$$

**Troisième égalité.** De $HBA \sim ABC$ on tire

$$\frac{HB}{AB} = \frac{BA}{BC} = \frac{AH}{CA},$$

et les deux premiers rapports donnent

$$AB^2 = HB \times BC.$$

Les trois égalités sont démontrées.

**Ce qu'elles disent.** La hauteur $AH$ est la « moyenne géométrique » des deux morceaux $HB$ et $HC$ qu'elle découpe sur l'hypoténuse. Et chaque côté de l'angle droit est la moyenne géométrique de l'hypoténuse entière et du morceau qui le touche.

## Going further

Additionner les deux dernières égalités :

$$AB^2 + AC^2 = HB \times BC + HC \times CB = BC \times (HB + HC).$$

Comme $H$ est entre $B$ et $C$, la parenthèse vaut $BC$. On retrouve le théorème de Pythagore, démontré cette fois sans découper aucun carré.
