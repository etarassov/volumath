---
id: "13438"
title: "Deux triangles équilatéraux sur un carré et GH = GC"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [carre, triangle equilateral, triangle isocele, chasse aux angles, triangle rectangle, cercle circonscrit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 6 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf. Dans la solution alternative n° 1 du corrigé, le calcul de l'angle EAF s'écrit 360° − 60° − 60° − 60° = 150° ; le terme du milieu est l'angle droit du carré et vaut 90°, le résultat 150° est juste"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soit $ABCD$ un carré. Soient $E$ et $F$ les deux points situés à l'extérieur du carré tels que les triangles $ABE$ et $DAF$ sont équilatéraux.

On note $H$ le milieu du segment $[EF]$, et $G$ le point d'intersection des droites $(BF)$ et $(CE)$.

Montrer que $GH = GC$.

![Le carré ABCD, le triangle équilatéral ABE construit à l'extérieur sur le côté [AB], le triangle équilatéral DAF construit à l'extérieur sur le côté [DA], le milieu H de [EF] et le point G où se coupent les droites (BF) et (CE)](13438-figure-1.svg)

## Hints

1. Les triangles $EBC$, $FAB$ et $FDC$ sont isocèles. Pourquoi ? Calcule leurs angles.
2. Calcule l'angle $\widehat{BGC}$ dans le triangle $GBC$. Que peux-tu dire du triangle $EGF$ ?
3. Dans un triangle rectangle, où se trouve le centre du cercle circonscrit ? Déduis-en $GH$ en fonction de $EF$.
4. Montre que le triangle $CEF$ est équilatéral, puis que $G$ est le milieu de $[EC]$.

## Solution

On rappelle qu'un triangle équilatéral a ses trois angles égaux à $60^\circ$, et que les deux angles à la base d'un triangle isocèle sont égaux. On note $c$ le côté du carré.

**Étape 1 : trois triangles isocèles.**

- Dans le triangle $EBC$, on a $BE = BA = c$ (le triangle $ABE$ est équilatéral) et $BC = c$. Il est donc isocèle en $B$. Son angle en $B$ vaut $\widehat{EBC} = \widehat{EBA} + \widehat{ABC} = 60^\circ + 90^\circ = 150^\circ$. Ses deux autres angles sont égaux et leur somme vaut $180^\circ - 150^\circ = 30^\circ$, donc
$$\widehat{BCE} = \widehat{BEC} = 15^\circ.$$
- De la même façon, le triangle $FAB$ est isocèle en $A$ ($AF = AD = c$ et $AB = c$), avec $\widehat{FAB} = 60^\circ + 90^\circ = 150^\circ$, donc $\widehat{ABF} = 15^\circ$.
- Enfin le triangle $FDC$ est isocèle en $D$ ($DF = DA = c$ et $DC = c$), avec $\widehat{FDC} = 60^\circ + 90^\circ = 150^\circ$, donc $\widehat{DCF} = 15^\circ$.

**Étape 2 : les droites $(BF)$ et $(CE)$ sont perpendiculaires.** Dans le triangle $GBC$ :

- l'angle en $B$ vaut $\widehat{GBC} = \widehat{ABC} - \widehat{ABF} = 90^\circ - 15^\circ = 75^\circ$ ;
- l'angle en $C$ vaut $\widehat{GCB} = \widehat{ECB} = 15^\circ$.

Donc $\widehat{BGC} = 180^\circ - 75^\circ - 15^\circ = 90^\circ$. Les droites $(BF)$ et $(CE)$ sont perpendiculaires en $G$, et le triangle $EGF$ est rectangle en $G$.

**Étape 3 : on calcule $GH$.** Dans un triangle rectangle, le milieu de l'hypoténuse est le centre du cercle circonscrit. Dans le triangle $EGF$, rectangle en $G$, l'hypoténuse est $[EF]$ et son milieu est $H$. Donc $H$ est à la même distance des trois sommets :
$$GH = HE = HF = \frac{EF}{2}.$$

**Étape 4 : le triangle $CEF$ est équilatéral.**

- Les triangles $CBE$ et $CDF$ ont un angle de $150^\circ$ (en $B$ et en $D$) compris entre deux côtés de longueur $c$. Ils sont donc superposables, et $CE = CF$.
- L'angle en $C$ vaut $\widehat{ECF} = \widehat{BCD} - \widehat{BCE} - \widehat{DCF} = 90^\circ - 15^\circ - 15^\circ = 60^\circ$.

Le triangle $CEF$ est isocèle en $C$ avec un angle de $60^\circ$ en $C$. Ses deux autres angles valent donc $\frac{180^\circ - 60^\circ}{2} = 60^\circ$ chacun : il est équilatéral, et $EF = EC$.

**Étape 5 : $G$ est le milieu de $[EC]$.** Le triangle $BEC$ est isocèle en $B$, et la droite $(BG)$ est perpendiculaire à $(EC)$ d'après l'étape 2. Dans un triangle isocèle, la hauteur issue du sommet principal est aussi la médiane. Donc $G$ est le milieu de $[EC]$, et
$$GC = \frac{EC}{2}.$$

**Conclusion.** D'après les étapes 3, 4 et 5,
$$GH = \frac{EF}{2} = \frac{EC}{2} = GC.$$

*Une autre façon de finir.* Une fois l'angle droit en $G$ obtenu, on peut aussi calculer l'angle $\widehat{EAF}$ autour du point $A$ : $360^\circ - 60^\circ - 90^\circ - 60^\circ = 150^\circ$. Le triangle $EAF$ est isocèle en $A$, donc $\widehat{AEF} = 15^\circ$. On en déduit $\widehat{HEG} = \widehat{FEA} + \widehat{AEB} - \widehat{CEB} = 15^\circ + 60^\circ - 15^\circ = 60^\circ$. Le triangle $HEG$ est isocèle en $H$ (étape 3) avec un angle de $60^\circ$ : il est équilatéral, donc $GH = GE$. Et $GE = GC$ d'après l'étape 5.

## Going further

Montrer que les points $H$, $A$ et $C$ sont alignés.
