---
id: "7254"
title: "La hauteur et la médiane d'un triangle rectangle"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [triangle-rectangle, hauteur, mediane, angles-complementaires]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Géométrie : chasse aux angles », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $B$. Soit $M$ le milieu de l'hypoténuse $[AC]$, et soit $H$ le
pied de la hauteur issue de $B$.

1. Montrer que $\widehat{ABH} = \widehat{ACB}$.
2. Montrer que $\widehat{ABH} = \widehat{MBC}$.

## Hints

1. Dans un triangle rectangle, que vaut la somme des deux angles non droits ?
2. Le triangle $ABH$ est rectangle en $H$. Le triangle $ABC$ est rectangle en $B$. Compare leurs
   angles en $A$.
3. Pour la deuxième question : où se trouve le centre du cercle circonscrit à un triangle
   rectangle ? Que peux-tu en déduire sur $MB$ et $MC$ ?

## Solution

**1. Les deux angles sont égaux.**

Le triangle $ABH$ est rectangle en $H$ (par définition de la hauteur), donc ses deux autres angles
sont complémentaires :
$$\widehat{ABH} + \widehat{BAH} = 90^\circ .$$

Le triangle $ABC$ est rectangle en $B$, donc de même
$$\widehat{ACB} + \widehat{BAC} = 90^\circ .$$

Or $H$ appartient au segment $[AC]$, donc les demi-droites $[AH)$ et $[AC)$ sont confondues et
$$\widehat{BAH} = \widehat{BAC} .$$

En soustrayant :
$$\widehat{ABH} = 90^\circ - \widehat{BAH} = 90^\circ - \widehat{BAC} = \widehat{ACB} .$$

**2. L'angle $\widehat{MBC}$.**

Dans un triangle rectangle, le centre du cercle circonscrit est le milieu de l'hypoténuse. Ici, le
triangle $ABC$ est rectangle en $B$, donc $M$, milieu de $[AC]$, est le centre du cercle
circonscrit, et
$$MA = MB = MC .$$

En particulier $MB = MC$, donc le triangle $MBC$ est isocèle en $M$, et ses angles à la base sont
égaux :
$$\widehat{MBC} = \widehat{MCB} .$$

Or $M$ appartient au segment $[AC]$, donc $\widehat{MCB} = \widehat{ACB}$.

En combinant avec la question 1 :
$$\widehat{MBC} = \widehat{MCB} = \widehat{ACB} = \widehat{ABH} .$$

**C'est bien ce qu'il fallait démontrer.**

## Going further

Ce résultat dit que la hauteur $[BH]$ et la médiane $[BM]$ issues du sommet de l'angle droit font
le même angle avec les deux côtés de l'angle droit, mais en sens inverse : $[BH]$ « penche » vers
$A$ exactement autant que $[BM]$ penche vers $C$.

On dit que les deux droites $(BH)$ et $(BM)$ sont **isogonales** par rapport à l'angle
$\widehat{ABC}$. Dans un triangle quelconque, la hauteur et le rayon du cercle circonscrit issus
d'un même sommet ont la même propriété, ce qui est un outil très utilisé en géométrie olympique.
