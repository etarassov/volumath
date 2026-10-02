---
id: "7156"
title: "Le trapèze rectangle et ses diagonales"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [trapeze, perpendicularite, triangles-semblables, coordonnees]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Débutants : géométrie », mardi et mercredi matin, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soit $ABCD$ un trapèze rectangle en $A$ et en $D$, c'est-à-dire que $(AB)$ est parallèle à
$(DC)$ et que $(AD)$ est perpendiculaire aux deux. On pose

$$AB = a, \qquad DC = b, \qquad AD = h .$$

1. Quelle relation doit lier $a$, $b$ et $h$ pour que les diagonales $(AC)$ et $(BD)$ soient
   perpendiculaires ?
2. Soit $M$ le milieu de $[AD]$. Quelle relation doit lier $a$, $b$ et $h$ pour que le
   triangle $BMC$ soit rectangle en $M$ ?

## Hints

1. Place-toi dans un repère : prends $A$ pour origine, $(AB)$ pour axe des abscisses et
   $(AD)$ pour axe des ordonnées. Ils sont perpendiculaires, donc le repère est orthonormé
   si on choisit la même unité.
2. Écris les coordonnées des quatre sommets en fonction de $a$, $b$ et $h$.
3. Deux vecteurs $(x\,;y)$ et $(x'\,;y')$ sont orthogonaux exactement lorsque
   $xx' + yy' = 0$.
4. Pour la question 2, n'oublie pas que $M$ est le milieu : ses coordonnées sont les moyennes
   de celles de $A$ et de $D$.

## Solution

**Le repère.** Prenons $A$ pour origine, l'axe des abscisses dirigé par $\vec{AB}$ et l'axe
des ordonnées dirigé par $\vec{AD}$. Comme $(AD) \perp (AB)$, ce repère est orthonormé. Les
sommets ont alors pour coordonnées

$$A(0\,;0), \qquad B(a\,;0), \qquad D(0\,;h), \qquad C(b\,;h) ,$$

puisque $(DC)$ est parallèle à $(AB)$, donc horizontale, et que $DC = b$.

**Question 1.** Les deux diagonales ont pour vecteurs directeurs

$$\vec{AC}\,(b\,;h) \qquad \text{et} \qquad \vec{BD}\,(-a\,;h) .$$

Elles sont perpendiculaires si et seulement si leur produit scalaire est nul :

$$b \times (-a) + h \times h = 0, \qquad \text{c'est-à-dire} \qquad h^2 = ab .$$

**La relation cherchée est $\boxed{h^2 = ab}$.**

**Question 2.** Le point $M$ est le milieu de $[AD]$, donc $M\left(0\,;\dfrac{h}{2}\right)$.
Les deux vecteurs issus de $M$ sont

$$\vec{MB}\left(a\,;-\frac{h}{2}\right) \qquad \text{et} \qquad \vec{MC}\left(b\,;\frac{h}{2}\right) .$$

Le triangle $BMC$ est rectangle en $M$ si et seulement si

$$a \times b + \left(-\frac{h}{2}\right) \times \frac{h}{2} = 0 ,$$

c'est-à-dire $ab = \dfrac{h^2}{4}$, soit

$$\boxed{h^2 = 4ab} .$$

## Going further

Les deux réponses se ressemblent beaucoup, et ce n'est pas un hasard. La question 2 est en
fait la question 1 appliquée à une autre figure : le triangle $BMC$ est rectangle en $M$
exactement quand $(MB)$ et $(MC)$ sont perpendiculaires, ce qui revient à la question 1 pour
le trapèze $ABCM$… à un facteur près, puisque $AM = h/2$.

Il existe aussi une démonstration sans coordonnées pour la question 1. Les triangles $ADC$ et
$BAD$ sont semblables : ils ont chacun un angle droit ($\widehat{ADC}$ et $\widehat{BAD}$),
et l'angle $\widehat{DAC}$ est égal à l'angle $\widehat{CDB}$, parce que leurs côtés sont
perpendiculaires deux à deux. La similitude donne

$$\frac{AD}{BA} = \frac{DC}{AD}, \qquad \text{c'est-à-dire} \qquad \frac{h}{a} = \frac{b}{h},
\qquad \text{donc} \qquad h^2 = ab .$$

Une question pour continuer : peut-on avoir à la fois les diagonales perpendiculaires **et**
le triangle $BMC$ rectangle en $M$ ?
