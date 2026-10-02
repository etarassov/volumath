---
id: "13836"
title: "Un point D tel que DB = DC"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [angles, triangle-isocele, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 5 ; réponse 142 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB < AC$ et $\widehat{BCA} = 71^\circ$. Soit $D$ le point du
côté $[AC]$ tel que $DC = DB$.

Quelle est la mesure de l'angle $\widehat{ADB}$ ?

## Hints

1. Que peux-tu dire du triangle $DBC$ ?
2. Dans un triangle isocèle, les deux angles à la base sont égaux. Calcule l'angle
   $\widehat{BDC}$.
3. Les points $A$, $D$ et $C$ sont alignés.

## Solution

**Le triangle $DBC$.** Comme $DB = DC$, le triangle $DBC$ est isocèle en $D$. Ses deux angles à
la base sont égaux :

$$\widehat{DBC} = \widehat{DCB} = \widehat{BCA} = 71^\circ.$$

La somme des angles du triangle $DBC$ vaut $180^\circ$, donc

$$\widehat{BDC} = 180^\circ - 71^\circ - 71^\circ = 38^\circ.$$

**L'angle cherché.** Le point $D$ est sur le segment $[AC]$, donc les angles $\widehat{ADB}$ et
$\widehat{BDC}$ sont côte à côte et forment un angle plat :

$$\widehat{ADB} = 180^\circ - 38^\circ = 142^\circ.$$

**L'angle $\widehat{ADB}$ mesure $142^\circ$.**

## Going further

On a trouvé $\widehat{ADB} = 71^\circ + 71^\circ$. Ce n'est pas un hasard : dans un triangle,
l'angle extérieur en un sommet est toujours la somme des deux angles intérieurs aux deux autres
sommets. Sais-tu le démontrer ?
