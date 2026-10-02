---
id: "13424"
title: "Un angle dans un carré de côté 1"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [carre, triangle isocele, chasse aux angles, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 2 (et épreuve lycée, exercice 9) ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

Soit $ABCD$ un carré de côté $1$. Soit $E$ le point de la diagonale $[AC]$ tel que $AE = 1$.

Calculer la mesure, en degrés, de l'angle $\widehat{BEC}$.

## Hints

1. Fais une figure. Que vaut l'angle $\widehat{BAC}$ ? Pense à la diagonale comme axe de symétrie du carré.
2. Regarde le triangle $ABE$. Que remarques-tu sur ses côtés $AB$ et $AE$ ?
3. Les points $A$, $E$ et $C$ sont alignés. Quel lien y a-t-il entre les angles $\widehat{AEB}$ et $\widehat{BEC}$ ?

## Solution

![Le carré ABCD, sa diagonale [AC], et le point E de cette diagonale tel que AE = AB. Le triangle ABE est grisé.](13424-figure-1.svg)

**Où est le point $E$ ?** La diagonale d'un carré de côté $1$ mesure $\sqrt{2}$, soit environ 1,41. Comme $1 < \sqrt{2}$, le point $E$ est bien sur le segment $[AC]$, entre $A$ et $C$.

**L'angle $\widehat{BAC}$.** La diagonale $(AC)$ est un axe de symétrie du carré, qui échange $B$ et $D$. Elle coupe donc l'angle droit $\widehat{BAD}$ en deux angles égaux :

$$\widehat{BAC} = \frac{90^\circ}{2} = 45^\circ.$$

**Le triangle $ABE$.** On a $AB = 1$ et $AE = 1$, donc le triangle $ABE$ est isocèle en $A$. Ses angles à la base sont égaux : $\widehat{AEB} = \widehat{ABE}$. Comme la somme des angles d'un triangle vaut $180^\circ$,

$$45^\circ + 2 \times \widehat{AEB} = 180^\circ, \qquad \text{donc} \qquad \widehat{AEB} = \frac{180^\circ - 45^\circ}{2} = \text{67,5}^\circ.$$

**L'angle $\widehat{BEC}$.** Les points $A$, $E$ et $C$ sont alignés, avec $E$ entre $A$ et $C$. Les angles $\widehat{AEB}$ et $\widehat{BEC}$ forment donc ensemble un angle plat :

$$\widehat{BEC} = 180^\circ - \text{67,5}^\circ = \text{112,5}^\circ.$$

**Réponse : $\widehat{BEC} = \text{112,5}^\circ$.**

*Une autre façon de finir.* L'angle $\widehat{EBC}$ vaut $90^\circ - \text{67,5}^\circ = \text{22,5}^\circ$, et $\widehat{ECB} = 45^\circ$ pour la même raison que $\widehat{BAC}$. Dans le triangle $BEC$, on retrouve $\widehat{BEC} = 180^\circ - \text{22,5}^\circ - 45^\circ = \text{112,5}^\circ$.

## Going further

Calculer l'angle $\widehat{BED}$. Montrer ensuite que $EB = ED$.
