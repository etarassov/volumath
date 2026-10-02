---
id: "13434"
title: "Les bissectrices de deux angles voisins"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [bissectrice, angles, angle-plat]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 2 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soit $ABC$ un triangle, et soit $D$ un point du segment $[BC]$, autre que $B$ et $C$.

Soit $P$ le point du segment $[AB]$ tel que la droite $(DP)$ est la bissectrice de l'angle $\widehat{ADB}$, et soit $Q$ le point du segment $[AC]$ tel que la droite $(DQ)$ est la bissectrice de l'angle $\widehat{CDA}$.

Que vaut l'angle $\widehat{QDP}$ ?

## Hints

1. Fais une figure, et donne un nom aux angles égaux : $\widehat{ADP} = \widehat{PDB} = x$ et $\widehat{CDQ} = \widehat{QDA} = y$.
2. Les points $B$, $D$ et $C$ sont alignés. Que vaut la somme de ces quatre angles ?
3. Écris l'angle $\widehat{QDP}$ à l'aide de $x$ et de $y$.

## Solution

![Le triangle ABC, le point D sur [BC], le segment [AD], et les deux bissectrices (DP) et (DQ)](13434-figure-1.svg)

La bissectrice d'un angle le partage en deux angles égaux.

- Comme $(DP)$ est la bissectrice de $\widehat{ADB}$, on a $\widehat{ADP} = \widehat{PDB}$. On note $x$ cette valeur.
- Comme $(DQ)$ est la bissectrice de $\widehat{CDA}$, on a $\widehat{CDQ} = \widehat{QDA}$. On note $y$ cette valeur.

**Les quatre angles forment un angle plat.** Les points $B$, $D$ et $C$ sont alignés, et $D$ est entre $B$ et $C$. Les quatre angles $\widehat{CDQ}$, $\widehat{QDA}$, $\widehat{ADP}$ et $\widehat{PDB}$ sont placés côte à côte et remplissent l'angle plat $\widehat{CDB}$, qui vaut $180^\circ$. Donc

$$y + y + x + x = 180^\circ, \qquad \text{c'est-à-dire} \qquad 2(x + y) = 180^\circ,$$

et donc $x + y = 90^\circ$.

**L'angle cherché.** La demi-droite $[DA)$ est entre $[DQ)$ et $[DP)$, donc

$$\widehat{QDP} = \widehat{QDA} + \widehat{ADP} = y + x = 90^\circ.$$

**Conclusion.** L'angle $\widehat{QDP}$ est droit : il vaut $90^\circ$, quelle que soit la position du point $D$ sur $[BC]$.

## Going further

Deux droites se coupent en un point $O$ et forment quatre angles. On trace les bissectrices de ces quatre angles. Montrer qu'elles forment deux droites perpendiculaires.
