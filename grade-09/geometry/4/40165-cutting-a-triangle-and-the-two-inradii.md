---
id: "40165"
title: "On coupe un triangle en deux : h(h − 2r) = (h − 2r₁)(h − 2r₂)"
grade: 9
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-inscrit, cercle-exinscrit, bissectrice, bissectrice-exterieure, triangles-semblables, chasse-aux-angles, alignement, rapport]
adapted_from: null
see_also: ["40162", "40163", "40164", "40166", "40167"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie II, questions 4 et 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

*Rappels.* Dans un triangle $XYZ$, le centre du cercle inscrit est le point de concours des
bissectrices intérieures. Le *cercle exinscrit dans l'angle $\widehat{X}$* est le cercle tangent aux
trois droites $(XY)$, $(YZ)$, $(ZX)$ situé de l'autre côté de $(YZ)$ par rapport à $X$ ; son
centre est le point de concours de la bissectrice intérieure issue de $X$ et des bissectrices
extérieures en $Y$ et en $Z$. (La bissectrice extérieure en $Y$ est la bissectrice de l'angle
formé par $[YZ)$ et par le prolongement de $[XY]$ au-delà de $Y$.)

On admet le résultat suivant, démontré dans une partie précédente. Dans un triangle $XYZ$, notons
$I$ le centre et $r$ le rayon du cercle inscrit, $J$ le centre du cercle exinscrit dans l'angle
$\widehat{X}$, et $h$ la longueur de la hauteur issue de $X$. Alors
$$XI \times XJ = XY \times XZ \qquad \text{et} \qquad \frac{XI}{XJ} = \frac{h - 2r}{h} .$$

*Le problème.* Soit $ABC$ un triangle, $h$ la longueur de la hauteur issue de $A$, $I$ et $r$ le
centre et le rayon de son cercle inscrit. Soit $D$ un point du segment $[BC]$, distinct de $B$ et de
$C$. On note $I_1$ et $I_2$ les centres des cercles inscrits dans les triangles $ABD$ et $ACD$, et
$r_1$, $r_2$ leurs rayons. On note enfin $J_1$ et $J_2$ les centres des cercles exinscrits dans
l'angle $\widehat{A}$ des triangles $ABD$ et $ACD$.

1. Montrer que les triangles $AI_1J_2$ et $AIC$ sont semblables. De même, montrer que les
   triangles $AI_2J_1$ et $AIB$ sont semblables.
2. En calculant $\frac{AI_1}{AJ_2} \times \frac{AI_2}{AJ_1}$ de deux façons différentes, établir
   la relation
$$h(h - 2r) = (h - 2r_1)(h - 2r_2) .$$

## Hints

1. **Question 1.** Faire une grande figure. Noter $\widehat{BAD} = 2\alpha_1$,
   $\widehat{DAC} = 2\alpha_2$, $\widehat{ADB} = 2\delta$, et $\widehat{C} = 2\gamma$. Que vaut
   l'angle $\widehat{I_1AJ_2}$ ?
2. **Question 1.** La bissectrice extérieure en $D$ du triangle $ACD$ est la bissectrice de l'angle
   formé par $[DA)$ et $[DB)$. Que peut-on en déduire pour les points $I_1$, $D$ et $J_2$ ?
3. **Question 1.** Calculer l'angle $\widehat{AJ_2D}$ dans le triangle $ADJ_2$, puis utiliser
   l'angle extérieur en $D$ du triangle $ADC$ : $\widehat{ADB} = \widehat{DAC} + \widehat{ACD}$.
4. **Question 2.** D'un côté, utiliser la question 1 puis $AI \times AJ = AB \times AC$. De l'autre,
   regrouper autrement : $\frac{AI_1}{AJ_1} \times \frac{AI_2}{AJ_2}$. Quelle est la hauteur issue de
   $A$ dans les triangles $ABD$ et $ACD$ ?

## Solution

Notons $\widehat{BAC} = 2\alpha$, $\widehat{ABC} = 2\beta$, $\widehat{ACB} = 2\gamma$, puis
$\widehat{BAD} = 2\alpha_1$, $\widehat{DAC} = 2\alpha_2$ (avec $\alpha_1 + \alpha_2 = \alpha$) et
$\widehat{ADB} = 2\delta$, de sorte que $\widehat{ADC} = 180° - 2\delta$.

**1.** *Les points $I_1$, $D$, $J_2$ sont alignés.* Dans le triangle $ACD$, la bissectrice
extérieure en $D$ est la bissectrice de l'angle formé par $[DA)$ et par le prolongement de $[CD]$
au-delà de $D$, qui est la demi-droite $[DB)$. C'est donc la bissectrice de l'angle $\widehat{ADB}$,
qui est aussi la bissectrice intérieure en $D$ du triangle $ABD$. Elle passe donc à la fois par
$I_1$ et par $J_2$. De plus, $I_1$ est à l'intérieur du triangle $ABD$, du même côté de $(BC)$ que
$A$, tandis que $J_2$ est de l'autre côté de $(BC)$ : le point $D$ est donc entre $I_1$ et $J_2$, et
$$\widehat{ADI_1} = \delta, \qquad \widehat{ADJ_2} = 180° - \delta .$$

*L'angle en $J_2$.* Dans le triangle $ADJ_2$, on a $\widehat{DAJ_2} = \alpha_2$ (car $J_2$ est sur
la bissectrice de $\widehat{DAC}$), donc
$$\widehat{AJ_2I_1} = \widehat{AJ_2D} = 180° - \alpha_2 - (180° - \delta) = \delta - \alpha_2 .$$
Or l'angle $\widehat{ADB}$ est un angle extérieur du triangle $ADC$ :
$\widehat{ADB} = \widehat{DAC} + \widehat{ACD}$, soit $2\delta = 2\alpha_2 + 2\gamma$. Donc
$\widehat{AJ_2I_1} = \gamma = \widehat{ACI}$.

*L'angle en $A$.* Le point $I_1$ est du côté de $B$ par rapport à $(AD)$, le point $J_2$ du côté de
$C$, donc
$$\widehat{I_1AJ_2} = \widehat{I_1AD} + \widehat{DAJ_2} = \alpha_1 + \alpha_2 = \alpha = \widehat{IAC} .$$

Les triangles $AI_1J_2$ et $AIC$ ont deux angles égaux : ils sont semblables, avec la
correspondance $A \leftrightarrow A$, $I_1 \leftrightarrow I$, $J_2 \leftrightarrow C$. En
particulier
$$\frac{AI_1}{AJ_2} = \frac{AI}{AC} .$$

En échangeant les rôles de $B$ et $C$ (donc de $ABD$ et $ACD$), on obtient de même que les points
$I_2$, $D$, $J_1$ sont alignés, que $\widehat{AJ_1I_2} = \beta = \widehat{ABI}$ et que
$\widehat{I_2AJ_1} = \alpha = \widehat{IAB}$. Les triangles $AI_2J_1$ et $AIB$ sont semblables, et
$$\frac{AI_2}{AJ_1} = \frac{AI}{AB} .$$

**2.** *Première façon.* D'après la question 1, puis le résultat admis dans le triangle $ABC$
($AI \times AJ = AB \times AC$, où $J$ est le centre du cercle exinscrit de $ABC$ dans l'angle
$\widehat{A}$) :
$$\frac{AI_1}{AJ_2} \times \frac{AI_2}{AJ_1} = \frac{AI}{AC} \times \frac{AI}{AB} = \frac{AI^2}{AI \times AJ} = \frac{AI}{AJ} = \frac{h - 2r}{h} .$$

*Seconde façon.* Les triangles $ABD$ et $ACD$ ont la même hauteur issue de $A$ que le triangle
$ABC$, de longueur $h$, puisque leurs côtés $[BD]$ et $[DC]$ sont portés par $(BC)$. Le résultat
admis, appliqué à ces deux triangles, donne
$$\frac{AI_1}{AJ_2} \times \frac{AI_2}{AJ_1} = \frac{AI_1}{AJ_1} \times \frac{AI_2}{AJ_2} = \frac{h - 2r_1}{h} \times \frac{h - 2r_2}{h} .$$

En égalant les deux expressions et en multipliant par $h^2$ :
$$h(h - 2r) = (h - 2r_1)(h - 2r_2) .$$

**Bilan.** Quand on coupe un triangle par un segment $[AD]$ issu d'un sommet, les rayons inscrits
$r_1$, $r_2$ des deux morceaux et le rayon inscrit $r$ du triangle entier sont liés par
$\left(1 - \frac{2r_1}{h}\right)\left(1 - \frac{2r_2}{h}\right) = 1 - \frac{2r}{h}$. La clé est
l'alignement de $I_1$, $D$, $J_2$, qui donne deux nouvelles paires de triangles semblables.

## Going further

- Vérifier la relation sur un exemple : le triangle équilatéral de côté $2$, coupé par sa hauteur.
  (On rappelle que le rayon inscrit d'un triangle vaut $\frac{2 \times \text{aire}}{\text{périmètre}}$.)
- Si l'on coupe le triangle en $N$ morceaux par des points $D_1, \ldots, D_{N-1}$ de $[BC]$, que
  vaut le produit des nombres $1 - \frac{2r_i}{h}$ ?
- Dans la suite du sujet, on se servait de cette relation pour trouver le point $D$ qui rend
  $r_1 + r_2$ le plus grand possible : voir l'exercice 40166.
