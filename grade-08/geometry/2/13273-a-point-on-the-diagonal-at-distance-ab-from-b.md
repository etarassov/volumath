---
id: "13273"
title: "Un point de la diagonale à distance AB de B"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [carre, angles, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 3 (aussi exercice 10 des lycéens) ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Soit $ABCD$ un carré et $E$ le point du segment $[BD]$ tel que $EB = AB$. La droite $(CE)$ coupe la droite $(AD)$ en un point $F$.

Calculer l'angle $\widehat{FEA}$.

## Hints

1. Fais une figure soignée. Attention, $E$ n'est pas le centre du carré : comme $EB = AB$ est plus long que la moitié de la diagonale, $E$ est plus près de $D$ que de $B$.
2. Compare les longueurs $EB$, $AB$ et $CB$. Quels triangles isocèles vois-tu ?
3. Calcule $\widehat{AEB}$ et $\widehat{CEB}$, puis utilise le fait que $F$, $E$ et $C$ sont alignés.

## Solution

On utilise plusieurs fois que la somme des angles d'un triangle vaut $180^\circ$.

**Deux triangles isocèles.** Comme $ABCD$ est un carré, $CB = AB$. Donc $EB = AB = CB$ : les triangles $ABE$ et $CBE$ sont isocèles en $B$.

**Les angles en $B$.** La diagonale $[BD]$ partage l'angle droit $\widehat{ABC}$ en deux angles égaux, donc $\widehat{ABE} = \widehat{CBE} = 45^\circ$.

**Les angles en $E$.** Dans le triangle $ABE$, isocèle en $B$, les deux angles à la base sont égaux : $\widehat{BAE} = \widehat{AEB}$. Donc

$$45^\circ + 2\,\widehat{AEB} = 180^\circ, \qquad \widehat{AEB} = \frac{135^\circ}{2}.$$

Le même calcul dans le triangle $CBE$ donne $\widehat{CEB} = \dfrac{135^\circ}{2}$.

Les points $A$ et $C$ sont de part et d'autre de la diagonale $(BD)$, donc

$$\widehat{AEC} = \widehat{AEB} + \widehat{BEC} = \frac{135^\circ}{2} + \frac{135^\circ}{2} = 135^\circ.$$

**L'angle cherché.** La droite $(CE)$ part du sommet $C$, traverse le carré en passant par le point intérieur $E$, et en ressort par le côté $[AD]$ au point $F$. Donc $E$ est entre $C$ et $F$, et les angles $\widehat{AEC}$ et $\widehat{FEA}$ sont supplémentaires :

$$\widehat{FEA} = 180^\circ - \widehat{AEC} = 180^\circ - 135^\circ = 45^\circ.$$

**Conclusion.** $\widehat{FEA} = 45^\circ$.
