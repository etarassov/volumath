---
id: "8559"
title: "Relier 2n points sans croisement"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [principe-de-lextremum, minimum, inegalite-triangulaire, segments]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On donne $2n$ points du plan, trois d'entre eux n'étant jamais alignés.

Démontrer qu'on peut les relier deux par deux par $n$ segments, de sorte que deux segments ne
se croisent jamais.

## Hints

1. Il n'y a qu'un nombre fini de façons de relier les $2n$ points deux par deux. On peut donc choisir celle qui rend minimale une certaine quantité.
2. Quelle quantité ? La somme des longueurs des $n$ segments.
3. Suppose que dans cet appariement minimal, deux segments $[AB]$ et $[CD]$ se croisent en un point $X$. Remplace-les par deux autres segments reliant les mêmes quatre points, choisis pour « décroiser ».
4. Compare la nouvelle somme des longueurs à l'ancienne, en utilisant l'inégalité triangulaire dans les triangles $AXC$ et $BXD$.

## Solution

**Le choix de l'appariement.** Il n'y a qu'un nombre fini de façons de répartir les $2n$
points en $n$ paires. Pour chacune, calculons la somme des longueurs des $n$ segments
obtenus. Choisissons un appariement pour lequel cette somme est **la plus petite possible**.

Montrons que cet appariement-là n'a aucun croisement.

**Raisonnement par l'absurde.** Supposons que deux segments $[AB]$ et $[CD]$ de cet
appariement se croisent, en un point $X$. Les quatre points $A$, $B$, $C$, $D$ sont
distincts, et $X$ est strictement à l'intérieur des deux segments.

Remplaçons les deux paires $\{A, B\}$ et $\{C, D\}$ par les deux paires $\{A, C\}$ et
$\{B, D\}$, en choisissant les noms de sorte que $A$ et $C$ soient du même côté du
croisement. Les autres segments ne bougent pas : on obtient un nouvel appariement des mêmes
$2n$ points.

**On compare les longueurs.** Comme trois des points ne sont jamais alignés, le point $X$
n'est aligné ni avec $A$ et $C$, ni avec $B$ et $D$. L'inégalité triangulaire est donc
stricte dans les triangles $AXC$ et $BXD$ :

$$AC < AX + XC \qquad \text{et} \qquad BD < BX + XD .$$

En additionnant, et en regroupant les longueurs le long des segments d'origine :

$$AC + BD < (AX + XB) + (CX + XD) = AB + CD .$$

La somme des longueurs du nouvel appariement est donc **strictement plus petite** que celle
de l'ancien.

**La contradiction.** C'est impossible, puisque l'appariement de départ était choisi de somme
minimale.

**Conclusion.** Dans l'appariement de somme minimale, deux segments ne se croisent jamais.
Un tel appariement existe donc bien.
