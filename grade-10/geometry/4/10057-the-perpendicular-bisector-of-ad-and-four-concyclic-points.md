---
id: "10057"
title: "La médiatrice de [AD] et quatre points cocycliques"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle-inscrit, bissectrice, mediatrice, angle-inscrit, pole-sud, cocyclicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 3 (géométrie)"
  reference: "2017-10_ofm-2016-2017-envoi-3.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2016-2017-envoi-3-solutions.pdf (même méthode que le corrigé, le théorème du pôle Sud puis une chasse aux angles ; on a ajouté la preuve que la bissectrice et la médiatrice ne sont pas confondues, et la position des points sur la figure)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-3.pdf"
---

## Statement

Soit $ABC$ un triangle et $I$ le centre de son cercle inscrit. La droite $(AI)$ coupe le segment $[BC]$ en $D$.

La médiatrice du segment $[AD]$ coupe la droite $(BI)$ en $M$ et la droite $(CI)$ en $N$.

![Le triangle ABC, le centre I du cercle inscrit, le point D de [BC], la médiatrice de [AD] en tirets, et ses points d'intersection M et N avec les droites (BI) et (CI)](10057-figure-1.svg)

Montrer que les quatre points $A$, $M$, $N$ et $I$ sont sur un même cercle.

## Hints

1. Montre que $M$ est sur le cercle circonscrit au triangle $ABD$. Pour cela, appelle $S$ le second point d'intersection de la droite $(BI)$ avec ce cercle, et montre que $SA = SD$ à l'aide d'angles inscrits.
2. Pour conclure que $S = M$, il faut savoir que la droite $(BI)$ et la médiatrice de $[AD]$ ne sont pas la même droite. Compare les angles $\widehat{BAD}$ et $\widehat{BDA}$.
3. Montre que $\widehat{AMI} = \widehat{ADB}$. De la même façon, $\widehat{ANI} = \widehat{ADC}$.

## Solution

**Rappel.**

- *Angle inscrit.* Si $X$ et $Y$ sont deux points d'un cercle, et $Z$, $T$ deux autres points du cercle situés du même côté de la droite $(XY)$, alors $\widehat{XZY} = \widehat{XTY}$.
- *Quatre points cocycliques.* Si $Z$ et $T$ sont de part et d'autre de la droite $(XY)$ et si $\widehat{XZY} + \widehat{XTY} = 180°$, alors $X$, $Z$, $Y$, $T$ sont sur un même cercle.

Le point $I$ est à l'intérieur du triangle, sur la bissectrice issue de $A$, donc il est sur le segment $[AD]$, entre $A$ et $D$. Le point $D$ est entre $B$ et $C$, donc **$B$ et $C$ sont de part et d'autre de la droite $(AD)$**.

### Étape 1 : le théorème du pôle Sud

**Lemme.** Soit $XYZ$ un triangle et $\omega$ son cercle circonscrit. La bissectrice de l'angle $\widehat{YXZ}$ recoupe $\omega$ en un point $S$, situé de l'autre côté de $(YZ)$ par rapport à $X$, et $SY = SZ$.

*Preuve.* La bissectrice traverse le triangle et coupe le segment $[YZ]$, puis elle ressort du cercle de l'autre côté de $(YZ)$ : c'est là qu'elle recoupe $\omega$ en $S$. Sur le cercle, les points se suivent donc dans l'ordre $X$, $Y$, $S$, $Z$.

Les points $X$ et $Y$ sont du même côté de la droite $(SZ)$, donc, d'après le théorème de l'angle inscrit, $\widehat{SYZ} = \widehat{SXZ}$. De même, $X$ et $Z$ sont du même côté de $(SY)$, donc $\widehat{SZY} = \widehat{SXY}$. Comme $(XS)$ est la bissectrice, $\widehat{SXY} = \widehat{SXZ}$. On obtient $\widehat{SYZ} = \widehat{SZY}$ : le triangle $SYZ$ est isocèle en $S$, et $SY = SZ$. $\square$

### Étape 2 : $M$ est sur le cercle circonscrit à $ABD$

Le point $D$ est sur $[BC]$ et différent de $B$, donc l'angle $\widehat{ABD}$ est l'angle $\widehat{ABC}$, et sa bissectrice est la droite $(BI)$.

On applique le lemme au triangle $BAD$ et à son sommet $B$. La droite $(BI)$ recoupe le cercle $\omega_B$ circonscrit à $ABD$ en un point $S$, situé de l'autre côté de $(AD)$ par rapport à $B$, et tel que $SA = SD$. Le point $S$ est donc à la fois sur $(BI)$ et sur la médiatrice de $[AD]$.

**Ces deux droites ne sont pas confondues.** Sinon $B$ serait sur la médiatrice de $[AD]$, et le triangle $ABD$ serait isocèle en $B$, avec $\widehat{BAD} = \widehat{BDA}$. Or l'angle $\widehat{BDA}$ est un angle extérieur du triangle $ADC$, donc
$$\widehat{BDA} = 180° - \widehat{ADC} = \widehat{DAC} + \widehat{DCA} .$$
Comme $(AD)$ est la bissectrice, $\widehat{DAC} = \widehat{BAD}$, donc $\widehat{BDA} = \widehat{BAD} + \widehat{ACB} > \widehat{BAD}$. C'est une contradiction.

Deux droites distinctes ont au plus un point commun. Le point $M$ et le point $S$ sont tous les deux sur ces deux droites, donc $M = S$. Ainsi :

- **$M$ est sur le cercle $\omega_B$, de l'autre côté de $(AD)$ par rapport à $B$**, c'est-à-dire du côté de $C$ ;
- le segment $[BM]$ traverse la droite $(AD)$, en un point qui est sur $(BI)$ et sur $(AD)$ : c'est $I$. Donc **$I$ est entre $B$ et $M$**.

De la même façon, avec le triangle $CAD$ et son sommet $C$ : **$N$ est sur le cercle $\omega_C$ circonscrit à $ACD$, du côté de $B$ par rapport à $(AD)$, et $I$ est entre $C$ et $N$**.

### Étape 3 : deux angles

Le point $I$ est sur le segment $[MB]$ et différent de $M$, donc $\widehat{AMI} = \widehat{AMB}$.

Sur le cercle $\omega_B$, le point $M$ est sur l'arc $AD$ qui ne contient pas $B$. Les points se suivent dans l'ordre $B$, $A$, $M$, $D$, donc $M$ et $D$ sont du même côté de la droite $(AB)$. Le théorème de l'angle inscrit donne $\widehat{AMB} = \widehat{ADB}$. Ainsi
$$\widehat{AMI} = \widehat{ADB} .$$
De la même façon, avec le cercle $\omega_C$,
$$\widehat{ANI} = \widehat{ANC} = \widehat{ADC} .$$

### Étape 4 : conclusion

Le point $D$ est entre $B$ et $C$, donc $\widehat{ADB} + \widehat{ADC} = 180°$, et d'après l'étape 3,
$$\widehat{AMI} + \widehat{ANI} = 180° .$$
D'après l'étape 2, $M$ est du côté de $C$ et $N$ du côté de $B$ par rapport à la droite $(AI)$ : ils sont de part et d'autre de cette droite. D'après le rappel, **les points $A$, $M$, $I$ et $N$ sont sur un même cercle.**

## Going further

- Le point $S$ du lemme s'appelle le pôle Sud de $X$ dans le triangle $XYZ$. Il est sur la bissectrice issue de $X$ et sur la médiatrice de $[YZ]$.
- Applique le lemme au triangle $ABC$ : la bissectrice issue de $A$ recoupe le cercle circonscrit en un point $S_A$ tel que $S_AB = S_AC$. Montre qu'on a aussi $S_AB = S_AI$.
