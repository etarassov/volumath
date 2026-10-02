---
id: "0832"
title: "Un angle de 30 degrés et une parallèle"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [thales, triangle-rectangle, angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 8"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$, dont l'angle $\widehat{BCA}$ mesure $30°$. Le point $M$ est sur le côté $[AC]$, le point $N$ est sur le côté $[BC]$, et la droite $(MN)$ est parallèle à $(AB)$. On sait de plus que

$$MN = 6 \qquad \text{et} \qquad \frac{AM}{AC} = \frac{2}{5}.$$

![Le triangle ABC rectangle en A, l'angle de 30 degrés en C, et le segment [MN] parallèle à [AB]](0832-figure-1.svg)

Calculer les longueurs $NB$, $BC$ et $AB$.

## Hints

1. Le point $M$ est sur $[AC]$ et $\dfrac{AM}{AC} = \dfrac{2}{5}$. Que vaut alors $\dfrac{CM}{CA}$ ?
2. Applique le théorème de Thalès dans le triangle $CAB$, avec $(MN)$ parallèle à $(AB)$ : les trois rapports $\dfrac{CM}{CA}$, $\dfrac{CN}{CB}$ et $\dfrac{MN}{AB}$ sont égaux. Un seul d'entre eux est connu, mais il suffit.
3. Il reste à relier $AB$ et $BC$. Dans un triangle rectangle, que vaut le côté opposé à un angle de $30°$, comparé à l'hypoténuse ?

## Solution

**Le rapport de Thalès.** Le point $M$ est sur $[AC]$, donc $CM = AC - AM$ et

$$\frac{CM}{CA} = 1 - \frac{AM}{AC} = 1 - \frac{2}{5} = \frac{3}{5}.$$

Dans le triangle $CAB$, le point $M$ est sur $[CA]$, le point $N$ sur $[CB]$, et $(MN)$ est parallèle à $(AB)$. Le théorème de Thalès donne

$$\frac{CM}{CA} = \frac{CN}{CB} = \frac{MN}{AB} = \frac{3}{5}.$$

**La longueur $AB$.** De $\dfrac{MN}{AB} = \dfrac{3}{5}$ et $MN = 6$ on tire

$$AB = 6 \times \frac{5}{3} = 10.$$

**La longueur $BC$.** Le triangle $ABC$ est rectangle en $A$, donc $[BC]$ est son hypoténuse, et $[AB]$ est le côté opposé à l'angle de $30°$. Or

$$\sin \widehat{BCA} = \frac{AB}{BC}, \qquad \text{c'est-à-dire} \qquad \frac{1}{2} = \frac{AB}{BC},$$

donc $BC = 2 \times AB = 20$.

*Sans trigonométrie.* Appelons $B_1$ le symétrique de $B$ par rapport à la droite $(AC)$. Comme $(AB)$ est perpendiculaire à $(AC)$, le point $B_1$ est sur la droite $(AB)$, de l'autre côté de $A$, et $BB_1 = 2 \times AB$. Par symétrie $CB_1 = CB$ et $\widehat{B_1CA} = 30°$, donc $\widehat{BCB_1} = 60°$. Le triangle $BCB_1$ est isocèle en $C$ avec un angle de $60°$ : il est équilatéral. Donc $BB_1 = BC$, c'est-à-dire $BC = 2 \times AB$.

**La longueur $NB$.** De $\dfrac{CN}{CB} = \dfrac{3}{5}$ on tire

$$CN = \frac{3}{5} \times 20 = 12, \qquad \text{puis} \qquad NB = BC - CN = 20 - 12 = 8.$$

**Réponses : $AB = 10$, $BC = 20$ et $NB = 8$.**

## Going further

Calculer aussi $AC$, $AM$ et $CM$. (On trouvera des longueurs qui ne sont pas des nombres entiers : le théorème de Pythagore donne $AC = \sqrt{300} = 10\sqrt{3}$.)
