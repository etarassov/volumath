---
id: "17802"
title: "La médiatrice d'une corde et deux angles égaux"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [angle-inscrit, mediatrice, triangle-isocele, chasse-aux-angles, quadrilatere-inscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, test initial"
  reference: "stage_junior_2014.pdf, chapitre « Lundi : test initial », exercice 2, p.19 ; solution p.20"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Les quatre sommets du quadrilatère convexe $ABCD$ sont sur un même cercle.

La médiatrice du segment $[AB]$ coupe la droite $(AC)$ en un point $P$ et le segment $[AD]$ en un point $Q$, situé entre $A$ et $D$.

Montrer que les angles $\widehat{DBP}$ et $\widehat{CBQ}$ sont égaux.

## Hints

1. Faites une grande figure soignée. Un point de la médiatrice de $[AB]$ est à la même distance de $A$ et de $B$ : quels triangles isocèles voyez-vous ?
2. Mesurez les angles à partir de la demi-droite $[BA)$ : que valent $\widehat{ABP}$ et $\widehat{ABQ}$ en fonction d'angles en $A$ ?
3. Écrivez $\widehat{DBP}$ et $\widehat{CBQ}$ comme des différences d'angles de sommet $B$. Il reste à comparer $\widehat{CAD}$ et $\widehat{CBD}$.
4. Les angles $\widehat{CAD}$ et $\widehat{CBD}$ interceptent le même arc $CD$ du cercle.

## Solution

**Un outil : le théorème de l'angle inscrit.** Soit $O$ le centre d'un cercle et $C$, $D$ deux points du cercle. Pour un point $A$ du cercle, l'angle $\widehat{CAD}$ vaut la moitié de l'angle au centre $\widehat{COD}$ qui intercepte le même arc.

Voici pourquoi, dans le cas où $O$ est à l'intérieur de l'angle $\widehat{CAD}$. Traçons le diamètre $[AA']$. Le triangle $OAC$ est isocèle en $O$, ses deux angles à la base valent $\widehat{OAC}$, donc son angle extérieur en $O$ vaut leur somme : $\widehat{COA'} = 2\,\widehat{OAC}$. De même $\widehat{DOA'} = 2\,\widehat{OAD}$. En ajoutant, $\widehat{COD} = 2\,\widehat{CAD}$. Les autres positions de $O$ se traitent de la même façon, avec une différence au lieu d'une somme.

Conséquence : deux angles inscrits qui interceptent le même arc, avec leurs sommets du même côté de la corde, sont égaux, puisqu'ils valent tous les deux la moitié du même angle au centre.

**Étape 1 : deux triangles isocèles.** Le point $Q$ est sur la médiatrice de $[AB]$, donc $QA = QB$ : le triangle $QAB$ est isocèle en $Q$ et

$$\widehat{ABQ} = \widehat{BAQ} = \widehat{BAD},$$

car $Q$ est sur le segment $[AD]$. Ses deux angles à la base sont égaux, donc chacun est inférieur à $90^\circ$ : l'angle $\widehat{BAD}$ est aigu. Comme le quadrilatère est convexe, la diagonale $[AC]$ est à l'intérieur de l'angle $\widehat{BAD}$, donc $\widehat{BAC} < \widehat{BAD} < 90^\circ$. La médiatrice de $[AB]$ coupe alors la droite $(AC)$ du côté de $C$, et de la même façon :

$$PA = PB, \qquad \widehat{ABP} = \widehat{BAP} = \widehat{BAC} .$$

**Étape 2 : l'ordre des demi-droites issues de $B$.** En tournant autour de $B$ à partir de $[BA)$, on rencontre dans l'ordre $[BP)$, $[BQ)$, $[BD)$, $[BC)$. En effet :

- $\widehat{ABP} = \widehat{BAC}$ est plus petit que $\widehat{ABQ} = \widehat{BAD}$ ;
- $Q$ est sur le segment $[AD]$, donc $[BQ)$ est à l'intérieur de l'angle $\widehat{ABD}$ ;
- le quadrilatère est convexe, donc la diagonale $[BD]$ est à l'intérieur de l'angle $\widehat{ABC}$.

On peut donc écrire les deux angles de l'énoncé comme des différences :

$$\widehat{DBP} = \widehat{ABD} - \widehat{ABP} = \widehat{ABD} - \widehat{BAC},$$

$$\widehat{CBQ} = \widehat{ABC} - \widehat{ABQ} = \widehat{ABC} - \widehat{BAD} .$$

**Étape 3 : la différence des deux.** En retranchant,

$$\widehat{DBP} - \widehat{CBQ} = (\widehat{BAD} - \widehat{BAC}) - (\widehat{ABC} - \widehat{ABD}) = \widehat{CAD} - \widehat{CBD} .$$

**Étape 4 : l'angle inscrit.** Les angles $\widehat{CAD}$ et $\widehat{CBD}$ interceptent tous les deux l'arc $CD$, et leurs sommets $A$ et $B$ sont du même côté de la corde $[CD]$, car $ABCD$ est convexe. D'après le théorème de l'angle inscrit, ils sont égaux. La différence calculée à l'étape 3 est donc nulle.

**Conclusion : les angles $\widehat{DBP}$ et $\widehat{CBQ}$ sont égaux.**
