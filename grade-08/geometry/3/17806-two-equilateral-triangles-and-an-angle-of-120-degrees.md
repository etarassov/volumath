---
id: "17806"
title: "Deux triangles équilatéraux et un angle de 120°"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-equilateral, cas-d-egalite, symetrie-axiale, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie (mardi après-midi, vecteurs et transformations), exercice 4, p.32 ; solution p.33 (par deux rotations). La solution publiée ici remplace les rotations par des triangles égaux."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle.

- À l'extérieur du triangle, on construit les triangles équilatéraux $ABE$ et $ACF$.
- Du même côté de la droite $(BC)$ que $A$, on place le point $D$ tel que le triangle $BDC$ soit isocèle en $D$ avec $\widehat{BDC} = 120^\circ$.

Montrer que $DE = DF$.

## Hints

1. Que valent les angles $\widehat{DBC}$ et $\widehat{DCB}$ ?
2. Introduisez le point $D'$, symétrique de $D$ par rapport à la droite $(BC)$.
3. Comparez les triangles $EBD$ et $ABD'$ : deux côtés égaux, et l'angle entre eux ?
4. Faites de même avec les triangles $FCD$ et $ACD'$.

## Solution

**Étape 1 : les angles en $B$ et en $C$.** Le triangle $BDC$ est isocèle en $D$ et son angle au sommet vaut $120^\circ$. Ses deux angles à la base valent donc

$$\widehat{DBC} = \widehat{DCB} = \frac{180^\circ - 120^\circ}{2} = 30^\circ .$$

**Étape 2 : un point auxiliaire.** Soit $D'$ le symétrique de $D$ par rapport à la droite $(BC)$. La symétrie conserve les longueurs et les angles, donc

$$BD' = BD, \qquad CD' = CD, \qquad \widehat{D'BC} = \widehat{D'CB} = 30^\circ ,$$

et $D'$ est de l'autre côté de $(BC)$ que $A$.

**Étape 3 : les angles autour de $B$.** Notons $\beta = \widehat{ABC}$. Tournons autour de $B$ en partant de la demi-droite $[BC)$, vers le côté où se trouve $A$ :

- la demi-droite $[BD)$ arrive après $30^\circ$ ;
- la demi-droite $[BA)$ arrive après $\beta$ ;
- la demi-droite $[BE)$ arrive après $\beta + 60^\circ$, car $E$ est de l'autre côté de $(AB)$ que $C$ et $\widehat{ABE} = 60^\circ$ ;
- la demi-droite $[BD')$ est de l'autre côté de $[BC)$, à $30^\circ$.

Pour aller de $[BD)$ à $[BE)$, on tourne donc de $(\beta + 60^\circ) - 30^\circ = \beta + 30^\circ$. Pour aller de $[BD')$ à $[BA)$, on tourne de $30^\circ + \beta$. Ainsi

$$\widehat{DBE} = \widehat{D'BA} = \beta + 30^\circ .$$

(Si $\beta + 30^\circ$ dépasse $180^\circ$, les deux angles valent $360^\circ - (\beta + 30^\circ)$ : ils restent égaux.)

**Étape 4 : deux triangles égaux.** Les triangles $EBD$ et $ABD'$ ont :

- $BE = BA$, car $ABE$ est équilatéral ;
- $BD = BD'$ (étape 2) ;
- l'angle compris entre ces deux côtés égal : $\widehat{EBD} = \widehat{ABD'}$ (étape 3).

Ils sont donc égaux, et leurs troisièmes côtés aussi : $DE = D'A$.

**Étape 5 : la même chose en $C$.** En notant $\gamma = \widehat{ACB}$ et en tournant cette fois autour de $C$, on trouve de la même façon $\widehat{DCF} = \widehat{D'CA} = \gamma + 30^\circ$. Les triangles $FCD$ et $ACD'$ ont $CF = CA$, $CD = CD'$ et le même angle compris entre ces côtés. Ils sont égaux, donc $DF = D'A$.

**Conclusion.** Les deux longueurs sont égales à la même longueur $AD'$ :

$$DE = AD' = DF .$$

## Going further

On peut aussi voir les étapes 3 et 4 comme une rotation : la rotation de centre $B$ et d'angle $60^\circ$ qui envoie $E$ sur $A$ envoie aussi $D$ sur $D'$, car $BD = BD'$ et $\widehat{DBD'} = 60^\circ$. Elle transforme donc le segment $[ED]$ en $[AD']$.
