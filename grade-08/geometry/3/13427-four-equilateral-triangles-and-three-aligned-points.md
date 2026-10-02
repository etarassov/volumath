---
id: "13427"
title: "Quatre triangles équilatéraux et trois points alignés"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle-equilateral, triangle-isocele, chasse-aux-angles, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 5 ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

Soient $A$, $B$, $C$ et $O$ quatre points distincts tels que les triangles $OAB$ et $OAC$ soient équilatéraux de côté $1$. Soient $D$ et $E$ deux points distincts, et différents de $A$, tels que les triangles $OBD$ et $OCE$ soient équilatéraux.

Soit $P$ le point du segment $[AD]$ tel que $DP = 1$, et soit $Q$ le point du segment $[AE]$ tel que $AQ = 1$.

Montrer que les points $B$, $P$ et $Q$ sont alignés.

![Les quatre triangles équilatéraux OAB, OAC, OBD et OCE, les segments [AD] et [AE], et les points P et Q](13427-figure-1.svg)

## Hints

1. Tous les côtés de la figure tracés en noir mesurent $1$. Repère tous les triangles isocèles.
2. Calcule l'angle $\widehat{DBA}$, puis les angles du triangle isocèle $DBA$.
3. Pour montrer que $B$, $P$ et $Q$ sont alignés, montre que les angles $\widehat{DBP}$ et $\widehat{DBQ}$ sont égaux.
4. Pour $\widehat{DBQ}$, calcule d'abord l'angle $\widehat{BAQ}$, puis les angles du triangle isocèle $BAQ$.

## Solution

Tous les angles d'un triangle équilatéral valent $60^\circ$, et tous ses côtés sont égaux. Ici, tous les triangles équilatéraux ont un côté commun avec $OAB$, donc ils ont tous des côtés de longueur $1$.

**Idée.** Les demi-droites $[BP)$ et $[BQ)$ partent toutes les deux de $B$, du même côté de la droite $(BD)$, celui où se trouve $A$ (voir la figure). Si elles font le même angle avec la demi-droite $[BD)$, elles sont confondues, et les points $B$, $P$ et $Q$ sont alignés. On va donc montrer que $\widehat{DBP} = \widehat{DBQ}$.

**Deux angles de $120^\circ$.** Les triangles $OBD$ et $OBA$ sont accolés le long de $[OB]$, donc

$$\widehat{DBA} = \widehat{DBO} + \widehat{OBA} = 60^\circ + 60^\circ = 120^\circ.$$

De même, les triangles $OAB$ et $OAC$ sont accolés le long de $[OA]$, donc $\widehat{BAC} = 60^\circ + 60^\circ = 120^\circ$, et les triangles $OCA$ et $OCE$ sont accolés le long de $[OC]$, donc $\widehat{ACE} = 120^\circ$.

**Les triangles $DBA$ et $ECA$.** On a $BD = BA = 1$, donc le triangle $DBA$ est isocèle en $B$. Ses deux autres angles sont égaux et valent

$$\widehat{BDA} = \widehat{BAD} = \frac{180^\circ - 120^\circ}{2} = 30^\circ.$$

De même, $CE = CA = 1$, donc le triangle $ECA$ est isocèle en $C$, et $\widehat{CAE} = 30^\circ$.

**Calcul de $\widehat{DBP}$.** Le point $P$ est sur $[DA]$, donc $\widehat{BDP} = \widehat{BDA} = 30^\circ$. Comme $DP = 1 = DB$, le triangle $BDP$ est isocèle en $D$, et ses deux autres angles sont égaux :

$$\widehat{DBP} = \frac{180^\circ - 30^\circ}{2} = 75^\circ.$$

**Calcul de $\widehat{DBQ}$.** La demi-droite $[AE)$ est à l'intérieur de l'angle $\widehat{BAC}$, donc

$$\widehat{BAQ} = \widehat{BAE} = \widehat{BAC} - \widehat{EAC} = 120^\circ - 30^\circ = 90^\circ.$$

Comme $AQ = 1 = AB$, le triangle $BAQ$ est isocèle en $A$ (et même rectangle), donc $\widehat{ABQ} = \frac{180^\circ - 90^\circ}{2} = 45^\circ$. La demi-droite $[BQ)$ est à l'intérieur de l'angle $\widehat{DBA}$, donc

$$\widehat{DBQ} = \widehat{DBA} - \widehat{ABQ} = 120^\circ - 45^\circ = 75^\circ.$$

**Conclusion.** On a $\widehat{DBP} = \widehat{DBQ} = 75^\circ$, et $P$ et $Q$ sont du même côté de la droite $(BD)$. Les demi-droites $[BP)$ et $[BQ)$ sont donc confondues : les points $B$, $P$ et $Q$ sont alignés.

*Attention au piège.* Il ne faut pas utiliser, pendant les calculs, un angle qui n'est connu que si l'on sait déjà que $B$, $P$ et $Q$ sont alignés, par exemple en écrivant $\widehat{ABP} = \widehat{ABQ}$. Ici, chaque angle a été calculé dans un triangle qui ne contient que l'un des deux points $P$ ou $Q$.
