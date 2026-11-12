---
id: "22021"
title: "Le centre du cercle qui passe par B, I et C"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [pole-sud, bissectrice, mediatrice, cercle-inscrit, angle-inscrit, triangle-isocele]
adapted_from: null
see_also: ["7225", "22001", "22023", "22024"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 7 (on a ajouté AB ≠ AC : sinon la médiatrice de [BC] et la droite (AI) sont la même droite et S n'est pas défini)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle avec $AB \neq AC$. Ses trois bissectrices se coupent en un point $I$. La médiatrice du segment $[BC]$ coupe la droite $(AI)$ en un point $S$.

Démontrer que les points $B$, $I$ et $C$ sont sur un même cercle de centre $S$.

## Hints

1. Il s'agit de montrer que $SB = SI = SC$. Une de ces égalités est immédiate.
2. Tracez le cercle circonscrit au triangle $ABC$. La bissectrice issue de $A$ le recoupe en un point. Montrez que ce point est à égale distance de $B$ et de $C$. Qu'en déduire ?
3. Pour $SB = SI$, montrez que le triangle $SBI$ est isocèle : calculez ses angles en $B$ et en $I$ à l'aide des angles $\widehat{A}$ et $\widehat{B}$ du triangle.

## Solution

On note $\alpha = \widehat{BAC}$ et $\beta = \widehat{ABC}$. Comme $I$ est sur les bissectrices, $\widehat{BAI} = \widehat{IAC} = \frac{\alpha}{2}$ et $\widehat{ABI} = \widehat{IBC} = \frac{\beta}{2}$.

**Un outil : l'angle inscrit.** Si $U$, $V$, $X$, $Y$ sont quatre points d'un cercle, avec $X$ et $Y$ du même côté de la droite $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$. Les deux angles valent en effet la moitié de l'angle au centre qui intercepte le même arc.

**Étape 1 : $S$ est sur le cercle circonscrit.** Soit $\Gamma$ le cercle circonscrit au triangle $ABC$. La bissectrice issue de $A$ traverse le côté $[BC]$, puis recoupe $\Gamma$ en un point $S'$ situé de l'autre côté de $(BC)$ par rapport à $A$. Sur $\Gamma$, les points se suivent dans l'ordre $A$, $B$, $S'$, $C$.

- Les points $A$ et $B$ sont du même côté de $(S'C)$, donc $\widehat{S'BC} = \widehat{S'AC} = \frac{\alpha}{2}$.
- Les points $A$ et $C$ sont du même côté de $(S'B)$, donc $\widehat{S'CB} = \widehat{S'AB} = \frac{\alpha}{2}$.

Le triangle $S'BC$ a deux angles égaux : il est isocèle en $S'$, et $S'B = S'C$. Le point $S'$ est donc à la fois sur la droite $(AI)$ et sur la médiatrice de $[BC]$.

Ces deux droites ne sont pas confondues : sinon la médiatrice de $[BC]$ passerait par $A$, et on aurait $AB = AC$. Deux droites distinctes ont au plus un point commun, donc $S' = S$. Ainsi $S$ est sur $\Gamma$, de l'autre côté de $(BC)$ par rapport à $A$, et $\widehat{SBC} = \frac{\alpha}{2}$.

**Étape 2 : $SB = SC$.** C'est immédiat, puisque $S$ est sur la médiatrice de $[BC]$.

**Étape 3 : $SB = SI$.** Regardons le triangle $SBI$.

- *L'angle en $I$.* Les points $A$, $I$, $S$ sont alignés dans cet ordre, donc $\widehat{SIB} = 180^\circ - \widehat{AIB}$. Dans le triangle $AIB$, la somme des angles donne $180^\circ - \widehat{AIB} = \widehat{IAB} + \widehat{IBA}$. Donc
$$\widehat{SIB} = \frac{\alpha}{2} + \frac{\beta}{2}.$$
- *L'angle en $B$.* La demi-droite $[BC)$ est entre $[BI)$ et $[BS)$, car $I$ et $S$ sont de part et d'autre de $(BC)$. Donc
$$\widehat{IBS} = \widehat{IBC} + \widehat{CBS} = \frac{\beta}{2} + \frac{\alpha}{2}.$$

Le triangle $SBI$ a deux angles égaux, en $I$ et en $B$ : il est isocèle en $S$, et $SB = SI$.

**Conclusion.** On a $SB = SI = SC$ : les points $B$, $I$ et $C$ sont sur le cercle de centre $S$ et de rayon $SB$.

## Going further

1. Soit $J$ le point de la droite $(AI)$ tel que $S$ soit le milieu de $[IJ]$. Montrez que $\widehat{IBJ} = 90^\circ$, et que $(BJ)$ est la bissectrice extérieure de l'angle $\widehat{ABC}$.
2. Que se passe-t-il quand $AB = AC$ ?
