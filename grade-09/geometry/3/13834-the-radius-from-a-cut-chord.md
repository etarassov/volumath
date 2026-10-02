---
id: "13834"
title: "Le rayon à partir d'une corde coupée"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [cercle, corde, pythagore, identites-remarquables, mise-en-equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 19 ; corrigé dans le même fichier, solution 19 (Olympiades mathématiques belges, demi-finale maXi 2001, Q24). Le corrigé passe par des triangles semblables et l'angle inscrit ; la solution ci-dessous n'utilise que le théorème de Pythagore."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Les points $A$, $B$ et $D$ sont sur un cercle de centre $O$. Les segments $[AB]$ et $[OD]$ se
coupent en un point $C$, et l'on sait que

$$AC = 75\ \text{mm}, \qquad BC = 35\ \text{mm} \qquad \text{et} \qquad DC = 21\ \text{mm}.$$

Quel est le rayon du cercle ?

## Hints

1. Fais une figure. Appelle $r$ le rayon. Que vaut $OC$ en fonction de $r$ ?
2. Le triangle $OAB$ est isocèle en $O$. Trace la hauteur issue de $O$ : elle tombe au milieu
   $M$ de $[AB]$. Calcule $AM$, puis $MC$.
3. Calcule $OM^2$ de deux façons, avec le théorème de Pythagore dans les triangles $OMA$ et
   $OMC$.

## Solution

Notons $r$ le rayon du cercle.

**Les longueurs connues.** Le point $C$ est sur le segment $[OD]$ et $OD = r$, donc
$OC = r - 21$. Le point $C$ est sur le segment $[AB]$, donc $AB = AC + CB = 75 + 35 = 110$.

**Le milieu de la corde.** On a $OA = OB = r$, donc le triangle $OAB$ est isocèle en $O$. Sa
hauteur issue de $O$ coupe $[AB]$ en son milieu $M$, à angle droit. On a $AM = 110 \div 2 = 55$.
Comme $AC = 75$ est plus grand que $AM = 55$, le point $M$ est entre $A$ et $C$, et

$$MC = AC - AM = 75 - 55 = 20.$$

**Deux fois Pythagore.** Le triangle $OMA$ est rectangle en $M$, donc

$$OM^2 = OA^2 - AM^2 = r^2 - 55^2 = r^2 - 3025.$$

Le triangle $OMC$ est rectangle en $M$, donc

$$OM^2 = OC^2 - MC^2 = (r - 21)^2 - 20^2 = r^2 - 42r + 441 - 400 = r^2 - 42r + 41.$$

**L'équation.** En égalant les deux expressions de $OM^2$, les termes $r^2$ disparaissent :

$$-3025 = -42r + 41, \qquad \text{donc} \qquad 42r = 3066 \qquad \text{et} \qquad r = 73.$$

**On vérifie.** Avec $r = 73$, on trouve $OM^2 = 5329 - 3025 = 2304 = 48^2$, et d'autre part
$OC = 52$ et $52^2 - 20^2 = 2704 - 400 = 2304$. Les deux calculs concordent.

**Le rayon du cercle mesure $73\ \text{mm}$.**

## Going further

Prolongeons $[DO]$ jusqu'au point $F$ du cercle diamétralement opposé à $D$. Les cordes $[AB]$
et $[DF]$ se coupent en $C$, et l'on peut montrer que $CA \times CB = CD \times CF$, ici
$75 \times 35 = 21 \times CF$. Cela donne directement $CF = 125$, puis le diamètre
$DF = 21 + 125 = 146$. C'est la méthode du corrigé officiel, qui utilise des triangles
semblables.
