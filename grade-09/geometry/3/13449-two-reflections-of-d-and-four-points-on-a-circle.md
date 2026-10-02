---
id: "13449"
title: "Deux symétriques de D et quatre points sur un cercle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, triangle-rectangle, triangle-isocele, symetrie-centrale, cocyclicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve collège, exercice 3 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf. Dans le corrigé, la phrase « [PF] est un diamètre du cercle circonscrit à PDF » doit se lire [PD]"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Soit $ABC$ un triangle dont le plus petit côté est $[BC]$, et soit $D$ un point du segment $[BC]$.

On place le point $E$ sur le segment $[AC]$ tel que $CE = CD$, et le point $F$ sur le segment $[AB]$ tel que $BF = BD$.

On note $P$ le symétrique de $D$ par rapport à $B$, et $Q$ le symétrique de $D$ par rapport à $C$. Les droites $(QE)$ et $(PF)$ se coupent en un point $X$.

Montrer que les points $D$, $E$, $F$ et $X$ sont sur un même cercle.

## Hints

1. Fais une grande figure soignée. Pourquoi l'énoncé demande-t-il que $[BC]$ soit le plus petit côté ?
2. Compare les longueurs $BP$, $BD$ et $BF$. Sur quel cercle se trouvent les points $P$, $D$ et $F$ ?
3. Déduis-en la mesure de l'angle $\widehat{PFD}$. Si tu ne connais pas la propriété du cercle, utilise les deux triangles isocèles $BPF$ et $BFD$.
4. Fais de même du côté de $C$. Tu obtiens deux triangles rectangles qui ont la même hypoténuse.

## Solution

**Pourquoi $[BC]$ est le plus petit côté.** On a $CE = CD \leqslant CB \leqslant CA$ et $BF = BD \leqslant BC \leqslant BA$. Les points $E$ et $F$ tombent donc bien sur les segments $[AC]$ et $[AB]$.

![Le triangle ABC, les points Q, C, D, B, P alignés, les droites (QE) et (PF) qui se coupent en X, et le cercle de diamètre [XD] qui passe par E et F](13449-figure-1.svg)

**Étape 1 : l'angle $\widehat{PFD}$ est droit.** Comme $P$ est le symétrique de $D$ par rapport à $B$, le point $B$ est le milieu de $[PD]$, et $BP = BD$. De plus $BF = BD$ par hypothèse. Donc

$$BP = BD = BF.$$

Les points $P$, $D$ et $F$ sont sur le cercle de centre $B$ et de rayon $BD$, et $[PD]$ est un diamètre de ce cercle. Or un triangle inscrit dans un cercle, dont un côté est un diamètre, est rectangle, et l'angle droit est en face de ce diamètre. Le triangle $PFD$ est donc rectangle en $F$ :

$$\widehat{PFD} = 90^\circ.$$

*Sans la propriété du cercle.* Les triangles $BPF$ et $BFD$ sont isocèles en $B$. Notons $u = \widehat{BPF} = \widehat{BFP}$ et $v = \widehat{BDF} = \widehat{BFD}$. Comme $B$ est sur $[PD]$, l'angle $\widehat{PFD}$ vaut $u + v$, et la somme des angles du triangle $PFD$ donne $u + (u + v) + v = 180^\circ$. Donc $u + v = 90^\circ$.

**Étape 2 : l'angle $\widehat{XFD}$ est droit.** Les droites $(FD)$ et $(FP)$ sont donc perpendiculaires. Le point $X$ est sur la droite $(PF)$, donc les droites $(FD)$ et $(FX)$ sont perpendiculaires : le triangle $XFD$ est rectangle en $F$.

**Étape 3 : de même du côté de $C$.** Le point $C$ est le milieu de $[QD]$ et $CQ = CD = CE$. Le même raisonnement montre que $\widehat{QED} = 90^\circ$. Comme $X$ est sur la droite $(QE)$, le triangle $XED$ est rectangle en $E$.

**Étape 4 : le cercle.** Les triangles $XFD$ et $XED$ sont rectangles, en $F$ et en $E$, et ils ont la même hypoténuse $[XD]$. Le cercle circonscrit à un triangle rectangle a pour diamètre l'hypoténuse. Donc $F$ et $E$ sont tous les deux sur le cercle de diamètre $[XD]$.

**Conclusion.** Les points $D$, $E$, $F$ et $X$ sont sur un même cercle : le cercle de diamètre $[XD]$.

*Attention.* Sur la figure, on pourrait croire que $D$, $E$ et $F$ sont les points où le cercle inscrit touche les côtés. C'est faux en général : $D$ est un point quelconque de $[BC]$.

## Going further

Montrer que $\widehat{EDF} = 90^\circ - \frac{1}{2}\widehat{BAC}$. Cet angle dépend-il de la position du point $D$ sur $[BC]$ ?
