---
id: "12871"
title: "Une tangente, un cercle de centre B et quatre points cocycliques"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [tangente, triangle-isocele, cercle-circonscrit, cercle-de-diametre, cocyclicite, chasse-aux-angles, symetrie-axiale, losange]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test junior, exercice 1 ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (on suit la solution alternative n° 1 ; la seconde preuve, par une symétrie, est ajoutée ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

Soit $ACE$ un triangle tel que $AE < AC$. On note $\Omega$ son cercle circonscrit et $O$ le centre de $\Omega$.

- La tangente à $\Omega$ au point $A$ coupe la droite $(CE)$ en un point $B$.
- Le cercle de centre $B$ qui passe par $A$ recoupe la droite $(AE)$ en un point $D$.
- Les droites $(OE)$ et $(BD)$ se coupent en un point $G$.

![Le triangle ACE, son cercle circonscrit de centre O, la tangente en A, le cercle de centre B passant par A, et les points D et G](12871-figure-1.svg)

Montrer que les points $A$, $B$, $G$ et $O$ sont sur un même cercle.

## Hints

1. Que vaut l'angle $\widehat{OAB}$ ? Repérez ensuite deux triangles isocèles sur la figure.
2. Il suffit de montrer que l'angle $\widehat{OGB}$ est droit. Pourquoi ?
3. Dans le triangle $EGD$, exprimez les angles en $E$ et en $D$ à l'aide d'angles de sommet $A$.

## Solution

### Ce qu'il suffit de montrer

La droite $(AB)$ est tangente en $A$ au cercle $\Omega$ de centre $O$, donc elle est perpendiculaire au rayon $[OA]$ : $\widehat{OAB} = 90^\circ$. Le point $A$ est donc sur le cercle de diamètre $[OB]$.

On va montrer que $\widehat{OGB} = 90^\circ$ aussi. Le point $G$ sera alors, lui aussi, sur le cercle de diamètre $[OB]$, et les quatre points $A$, $B$, $G$ et $O$ seront sur ce cercle.

### Deux triangles isocèles

- On a $OA = OE$, rayons de $\Omega$ : le triangle $OAE$ est isocèle en $O$, et $\widehat{OEA} = \widehat{OAE}$.
- On a $BA = BD$, rayons du cercle de centre $B$ : le triangle $BAD$ est isocèle en $B$, et $\widehat{BDA} = \widehat{BAD}$.

### Les angles en A

Sur la figure, le point $E$ est entre $A$ et $D$, et la demi-droite $[AE)$ est à l'intérieur de l'angle $\widehat{OAB}$. Donc $\widehat{BAD} = \widehat{BAE}$ et

$$\widehat{OAE} + \widehat{BAD} = \widehat{OAE} + \widehat{EAB} = \widehat{OAB} = 90^\circ.$$

### L'angle en G

Sur la figure, le point $E$ est entre $O$ et $G$, et le point $G$ est sur la demi-droite $[DB)$. On regarde le triangle $EGD$.

- Les droites $(OG)$ et $(AD)$ se coupent en $E$, donc les angles $\widehat{GED}$ et $\widehat{OEA}$ sont opposés par le sommet : $\widehat{GED} = \widehat{OEA} = \widehat{OAE}$.
- Comme $E$ est sur $[DA]$ et $G$ sur $[DB)$, on a $\widehat{EDG} = \widehat{ADB} = \widehat{BAD}$.

La somme des angles du triangle $EGD$ vaut $180^\circ$, donc

$$\widehat{EGD} = 180^\circ - \widehat{OAE} - \widehat{BAD} = 180^\circ - 90^\circ = 90^\circ.$$

Les droites $(OG)$ et $(BD)$ sont donc perpendiculaires, et $\widehat{OGB} = 90^\circ$.

### Conclusion

Les triangles $OAB$ et $OGB$ sont rectangles en $A$ et en $G$. Les points $A$ et $G$ sont donc tous les deux sur le cercle de diamètre $[OB]$. **Les points $A$, $B$, $G$ et $O$ sont sur un même cercle.**

### Une autre preuve, qui ne dépend pas de la figure

La preuve ci-dessus lit plusieurs positions sur la figure (quel point est entre quels autres). En voici une qui s'en passe. Les points $A$, $E$ et $D$ sont sur une même droite, la droite $(AE)$. On note $s$ la symétrie d'axe $(AE)$. Elle laisse $A$ et $E$ en place, et elle conserve les distances et les angles.

- Soit $O'$ le symétrique de $O$. On a $O'A = OA$ et $O'E = OE$, et $OA = OE$ : le quadrilatère $AOEO'$ a ses quatre côtés égaux, c'est un losange. Ses côtés opposés $[AO']$ et $[OE]$ sont donc parallèles. (Si $O$ est sur la droite $(AE)$, alors $O' = O$, et les droites $(AO')$ et $(OE)$ sont toutes les deux la droite $(AE)$.)
- Soit $B'$ le symétrique de $B$. Comme $BA = BD$, on obtient de même que $ABDB'$ est un losange, donc $(AB')$ est parallèle à $(BD)$.

La symétrie $s$ envoie les droites $(AO)$ et $(AB)$, qui sont perpendiculaires, sur les droites $(AO')$ et $(AB')$, qui sont donc perpendiculaires elles aussi. Les droites $(OE)$ et $(BD)$ leur sont parallèles, donc elles sont perpendiculaires, quelle que soit la figure. On conclut comme plus haut.

## Going further

1. Montrez que l'angle entre la tangente $(AB)$ et la corde $[AE]$ est égal à l'angle inscrit $\widehat{ACE}$ : $\widehat{BAE} = \widehat{ACE}$. (Utilisez le triangle isocèle $OAE$ et l'angle au centre $\widehat{AOE}$.)
2. Déduisez-en que $\widehat{BDA} = \widehat{BCA}$, puis que les points $A$, $B$, $C$ et $D$ sont, eux aussi, sur un même cercle.
