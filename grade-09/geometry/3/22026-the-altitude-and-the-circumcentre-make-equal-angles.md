---
id: "22026"
title: "La hauteur et le centre du cercle circonscrit"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [triangles-semblables, angle-au-centre, cercle-circonscrit, mediatrice, triangle-isocele, hauteur]
adapted_from: null
see_also: ["10216"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, « Entraînement de mi-parcours », exercice 2 (le corrigé dit que les triangles sont rectangles « en D et en O » ; il faut lire « en D et en M »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note $M$ le milieu de $[AC]$, $D$ le pied de la hauteur issue de $A$, et $O$ le centre du cercle circonscrit au triangle $ABC$.

Démontrer que les triangles $MOA$ et $DBA$ sont semblables.

## Hints

1. Les deux triangles ont chacun un angle droit. Lesquels ?
2. Il suffit alors de trouver un deuxième angle égal. Comparez $\widehat{MOA}$ et $\widehat{ABC}$.
3. Le triangle $AOC$ est isocèle. Exprimez $\widehat{MOA}$ à l'aide de $\widehat{AOC}$, puis $\widehat{AOC}$ à l'aide de $\widehat{ABC}$.

## Solution

**Un outil : l'angle au centre.** Comme le triangle $ABC$ a ses trois angles aigus, le centre $O$ est à l'intérieur du triangle, et

$$\widehat{AOC} = 2\,\widehat{ABC}.$$

*Preuve.* Soit $B'$ le point diamétralement opposé à $B$, de sorte que $O$ est sur $[BB']$. Le triangle $OAB$ est isocèle en $O$, car $OA = OB$ : ses angles à la base valent tous deux $\widehat{OBA}$. L'angle $\widehat{AOB'}$ est un angle extérieur de ce triangle, donc il est égal à la somme des deux autres angles : $\widehat{AOB'} = 2\,\widehat{OBA}$. De même, $\widehat{COB'} = 2\,\widehat{OBC}$. Comme $O$ est à l'intérieur du triangle, la demi-droite $[BO)$ passe entre $[BA)$ et $[BC)$, et la demi-droite $[OB')$ passe entre $[OA)$ et $[OC)$. En additionnant :

$$\widehat{AOC} = 2\,\widehat{OBA} + 2\,\widehat{OBC} = 2\,\widehat{ABC}.$$

**Étape 1 : deux angles droits.** Le point $O$ est sur la médiatrice de $[AC]$, car $OA = OC$, et $M$ est le milieu de $[AC]$. Donc $(OM)$ est la médiatrice de $[AC]$ et $\widehat{OMA} = 90^\circ$. D'autre part, $\widehat{BDA} = 90^\circ$ puisque $D$ est le pied de la hauteur issue de $A$.

**Étape 2 : un deuxième angle égal.** Dans le triangle $AOC$, isocèle en $O$, la médiatrice $(OM)$ de la base est aussi la bissectrice de l'angle au sommet. Donc

$$\widehat{MOA} = \frac{1}{2}\,\widehat{AOC} = \frac{1}{2} \times 2\,\widehat{ABC} = \widehat{ABC}.$$

Les angles du triangle sont aigus, donc $D$ est sur le segment $[BC]$, et $\widehat{DBA} = \widehat{CBA}$. Finalement, $\widehat{MOA} = \widehat{DBA}$.

**Conclusion.** Les triangles $MOA$ et $DBA$ ont deux angles égaux : $\widehat{OMA} = \widehat{BDA} = 90^\circ$ et $\widehat{MOA} = \widehat{DBA}$. Leurs troisièmes angles sont donc égaux aussi, et les deux triangles sont semblables, avec $M$ qui correspond à $D$, $O$ à $B$ et $A$ à $A$.

## Going further

1. En déduire que $\widehat{OAC} = \widehat{BAD}$ : la hauteur issue de $A$ et la droite $(AO)$ font le même angle avec les côtés $[AB]$ et $[AC]$.
2. Que devient le résultat si l'angle $\widehat{ABC}$ est obtus ?
