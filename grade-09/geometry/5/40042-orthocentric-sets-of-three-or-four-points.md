---
id: "40042"
title: "Les ensembles orthocentriques de trois ou quatre points"
grade: 9
theme: geometry
difficulty: 5
duration_min: 60
tags: [orthocentre, triangle-rectangle, rectangle, cercle-de-diametre, disjonction-de-cas, classification, demonstration]
adapted_from: null
see_also: ["40041", "40043", "40044", "40045", "40046", "40047", "40048", "40125"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2003, mathématiques, série S"
  reference: "cg-2003-s-sujet.pdf, problème « parties orthocentriques », première partie, questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2003.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2003-s-sujet.pdf"
---

## Statement

On appelle **triangle** tout ensemble de trois points non alignés du plan. Ses trois hauteurs se
coupent en un point, son **orthocentre**.

Soit $X$ un ensemble de points du plan qui ne sont pas tous sur une même droite. On dit que $X$
est **orthocentrique** si, chaque fois que l'on choisit dans $X$ trois points non alignés,
l'orthocentre du triangle qu'ils forment est lui aussi un point de $X$.

1. Déterminer tous les ensembles orthocentriques formés de 3 points.
2. Déterminer tous les ensembles orthocentriques formés de 4 points.

## Hints

1. **Question 1.** Où se trouve l'orthocentre d'un triangle rectangle ? Inversement, si
   l'orthocentre d'un triangle $ABC$ est le sommet $A$, que peut-on dire de l'angle en $A$ ?
2. **Question 2.** Séparer deux cas : trois des quatre points sont alignés, ou bien aucun groupe de
   trois points n'est aligné.
3. **Question 2.** Montrer que si l'orthocentre d'un triangle $ABC$ est sur la droite $(BC)$, alors
   ce triangle est rectangle en $B$ ou en $C$.
4. **Question 2, trois points alignés.** Si $A$, $B$, $C$ sont sur une droite $\Delta$ et $D$ n'y
   est pas, les seuls triangles sont $ABD$, $ACD$ et $BCD$. Montrer que chacun doit être rectangle.
5. **Question 2, trois points alignés.** Soit $F$ le pied de la perpendiculaire à $\Delta$ passant
   par $D$. Quand le triangle $ABD$ est-il rectangle en $A$ ?
6. **Question 2, aucun alignement.** Si l'un des quatre triangles, disons $ABC$, n'est pas
   rectangle, son orthocentre ne peut être que $D$. Montrer qu'alors $A$ est l'orthocentre du
   triangle $DBC$.
7. **Question 2, aucun alignement.** Si les quatre triangles sont rectangles, regarder le plus long
   des six segments qui joignent deux des points. Dans un triangle rectangle, l'hypoténuse est le
   plus long côté.

## Solution

Trois faits sur l'orthocentre $H$ d'un triangle $ABC$ servent tout au long de la solution.

- **(F1)** Si $ABC$ est rectangle en $A$, alors $H = A$. En effet, les hauteurs issues de $B$ et de
  $C$ sont les droites $(BA)$ et $(CA)$, qui se coupent en $A$.
- **(F2)** Si $H = A$, alors $ABC$ est rectangle en $A$. En effet, la hauteur issue de $B$ passe par
  $B$ et par $H = A$ : c'est la droite $(AB)$, et elle est perpendiculaire à $(AC)$.
- **(F3)** Si $H$ est sur la droite $(BC)$, alors $ABC$ est rectangle en $B$ ou en $C$, et $H$ est
  ce sommet. En effet, $H$ est sur la hauteur issue de $A$, qui coupe $(BC)$ en un seul point, le
  pied $A'$ de cette hauteur ; donc $H = A'$. Si $H = B$, (F2) dit que $ABC$ est rectangle en $B$.
  Sinon, la hauteur issue de $B$ est la droite $(BH)$, c'est-à-dire $(BC)$, et elle est
  perpendiculaire à $(AC)$ : le triangle est rectangle en $C$, et alors $H = C$ par (F1).

**1.** Un ensemble $X = \{A, B, C\}$ de trois points non alignés ne contient qu'un seul triangle.
Il est orthocentrique si et seulement si l'orthocentre de $ABC$ est l'un des points $A$, $B$, $C$,
c'est-à-dire, d'après (F1) et (F2), si et seulement si $ABC$ est rectangle.

**Conclusion :** les ensembles orthocentriques de 3 points sont les trois sommets d'un triangle
rectangle.

**2.** Soit $X = \{A, B, C, D\}$ formé de quatre points qui ne sont pas tous alignés.

*Premier cas : trois des points sont alignés*, disons $A$, $B$, $C$ sur une droite $\Delta$, et
$D$ hors de $\Delta$. Les seuls triangles sont alors $ABD$, $ACD$ et $BCD$.

Considérons $ABD$. Son orthocentre est dans $X$. Il ne peut pas être $C$ : $C$ est sur la droite
$(AB)$, et d'après (F3) un orthocentre situé sur $(AB)$ est $A$ ou $B$, qui sont différents de $C$.
Son orthocentre est donc $A$, $B$ ou $D$, et d'après (F2) le triangle $ABD$ est rectangle. De même,
$ACD$ et $BCD$ sont rectangles.

Soit $F$ le pied de la perpendiculaire à $\Delta$ passant par $D$. Pour deux points $P$ et $Q$ de
$\Delta$, le triangle $PQD$ est rectangle en $P$ exactement quand $(PD) \perp \Delta$, c'est-à-dire
quand $P = F$.

- Si aucun des points $A$, $B$, $C$ n'est $F$, les trois triangles sont rectangles en $D$. Alors
  $(DB)$ et $(DC)$ sont toutes deux perpendiculaires à $(DA)$ en $D$ : c'est la même droite, qui
  coupe $\Delta$ en un seul point, donc $B = C$. C'est impossible.
- Donc l'un des trois points est $F$, disons $A = F$. Les triangles $ABD$ et $ACD$ sont alors
  rectangles en $A$. Le triangle $BCD$ ne peut être rectangle ni en $B$ ni en $C$ (ces points ne
  sont pas $F$), il est donc rectangle en $D$.

Ainsi $BCD$ est un triangle rectangle en $D$ et $A$ est le pied de la hauteur issue de $D$.
Réciproquement, un tel ensemble est orthocentrique : les orthocentres de $ABD$, $ACD$ et $BCD$
sont $A$, $A$ et $D$ d'après (F1).

*Second cas : trois points ne sont jamais alignés.* Les quatre triangles $ABC$, $ABD$, $ACD$,
$BCD$ existent.

- *Si l'un d'eux n'est pas rectangle*, disons $ABC$, son orthocentre n'est ni $A$, ni $B$, ni $C$
  (d'après (F2)), donc c'est $D$. Montrons qu'alors $A$ est l'orthocentre de $DBC$. La droite
  $(DA)$ est la hauteur de $ABC$ issue de $A$, donc elle est perpendiculaire à $(BC)$ : c'est la
  hauteur de $DBC$ issue de $D$, et elle passe par $A$. La droite $(CD)$ est perpendiculaire à
  $(AB)$, donc $(BA)$ est perpendiculaire à $(DC)$ : c'est la hauteur de $DBC$ issue de $B$, et elle
  passe par $A$. Donc $A$ est l'orthocentre de $DBC$. De même, $B$ est l'orthocentre de $DCA$ et
  $C$ celui de $DAB$. L'ensemble est bien orthocentrique.

  Réciproquement, si $ABC$ est un triangle non rectangle et $D$ son orthocentre, ce calcul montre
  que $\{A, B, C, D\}$ est orthocentrique. Les quatre points sont distincts (F2) et trois d'entre
  eux ne sont jamais alignés : d'après (F3), $D$ n'est sur aucune des droites $(AB)$, $(BC)$,
  $(CA)$.

- *Si les quatre triangles sont rectangles.* Parmi les six segments qui joignent deux des points,
  choisissons-en un de longueur maximale, disons $[AB]$. Dans un triangle rectangle, l'hypoténuse
  est strictement plus longue que chacun des deux autres côtés (théorème de Pythagore). Dans le
  triangle rectangle $ABC$, aucun côté n'est plus long que $[AB]$, donc l'hypoténuse est $[AB]$ et
  l'angle droit est en $C$. De même, $ABD$ est rectangle en $D$. Les points $C$ et $D$ sont donc sur
  le cercle $\mathcal{C}$ de diamètre $[AB]$.

  Le triangle $ACD$ est rectangle, et ses trois sommets sont sur $\mathcal{C}$. Or le cercle
  circonscrit à un triangle rectangle a pour diamètre l'hypoténuse : l'un des segments $[AC]$,
  $[AD]$, $[CD]$ est un diamètre de $\mathcal{C}$. Ce n'est pas $[AC]$, car le diamètre issu de $A$
  aboutit en $B \neq C$ ; ni $[AD]$, pour la même raison. Donc $[CD]$ est un diamètre de
  $\mathcal{C}$.

  Le quadrilatère $ACBD$ a alors deux diagonales $[AB]$ et $[CD]$ de même milieu (le centre de
  $\mathcal{C}$) et de même longueur : c'est un rectangle. Réciproquement, les quatre sommets d'un
  rectangle forment un ensemble orthocentrique : trois de ces sommets forment toujours un triangle
  rectangle, dont l'orthocentre est le sommet de l'angle droit (F1).

**Conclusion :** les ensembles orthocentriques de 4 points sont exactement :

- les trois sommets d'un triangle non rectangle avec son orthocentre ;
- les quatre sommets d'un rectangle ;
- les trois sommets d'un triangle rectangle avec le pied de la hauteur issue de l'angle droit.

**Bilan.** Un ensemble orthocentrique de trois points est un triangle rectangle. Un ensemble
orthocentrique de quatre points est un triangle complété par son orthocentre, ou un rectangle, ou
un triangle rectangle complété par le pied de sa hauteur. Le premier cas a une propriété
remarquable : chacun des quatre points est l'orthocentre du triangle formé par les trois autres.

## Going further

- Le dernier cas est un cas limite du premier : quand le triangle devient rectangle, son
  orthocentre vient se confondre avec le sommet de l'angle droit, et il faut un quatrième point
  pour remplacer celui qui a disparu.
- Dans la suite du sujet, on cherchait des ensembles orthocentriques infinis : une droite et une
  perpendiculaire (exercice 40044), une hyperbole d'équation $xy = k$ (exercice 40046), et même un
  ensemble de points à coordonnées entières (exercice 40047).
