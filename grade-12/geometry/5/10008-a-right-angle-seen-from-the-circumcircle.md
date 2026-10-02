---
id: "10008"
title: "Un angle droit vu depuis le cercle circonscrit"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle inscrit, cercle circonscrit, triangles semblables, angle inscrit, chasse aux angles, alignement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 1 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi1.pdf, Exercices olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi1-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi1.pdf"
---

## Statement

$ABC$ est un triangle qui n'est pas isocèle en $A$, de cercle circonscrit $\Gamma$ et de centre $O$. On note $I$ le centre de son cercle inscrit et $D$ le point où le cercle inscrit touche le côté $[BC]$.

La bissectrice intérieure de l'angle en $A$ recoupe $\Gamma$ en $M$. La droite $(DM)$ recoupe $\Gamma$ en $P$.

![Le triangle ABC, son cercle circonscrit et son cercle inscrit, le point D sur [BC], le point M où la bissectrice issue de A recoupe le cercle, et le point P où (MD) recoupe le cercle](10008-figure-1.svg)

Montrer que l'angle $\widehat{API}$ est droit.

## Hints

1. On note $E$ le point de $\Gamma$ diamétralement opposé à $A$. L'angle $\widehat{APE}$ est droit : il suffit donc de montrer que $P$, $I$ et $E$ sont alignés.
2. Montre d'abord que $MB = MI$ : compare les angles $\widehat{MBI}$ et $\widehat{MIB}$.
3. Les triangles $MBD$ et $MPB$ sont semblables. Déduis-en que $MP \times MD = MI^2$, puis que les triangles $MID$ et $MPI$ sont semblables.
4. Les droites $(ID)$ et $(OM)$ sont toutes les deux perpendiculaires à $(BC)$. Utilise-le pour comparer $\widehat{MPI}$ avec $\widehat{MAO}$, puis avec $\widehat{MPE}$.

## Solution

On note $\alpha$, $\beta$, $\gamma$ les angles du triangle en $A$, $B$, $C$. On suit la figure pour la position des points.

### Étape 1 : $MB = MI$, et $(OM)$ est perpendiculaire à $(BC)$

Les angles inscrits $\widehat{MBC}$ et $\widehat{MAC}$ interceptent le même arc $MC$, donc $\widehat{MBC} = \dfrac{\alpha}{2}$. De même, $\widehat{MCB} = \widehat{MAB} = \dfrac{\alpha}{2}$. Le triangle $MBC$ a deux angles égaux, donc $MB = MC$ : le point $M$ est sur la médiatrice de $[BC]$, comme $O$. Ainsi **$(OM)$ est perpendiculaire à $(BC)$**.

Ensuite, dans le triangle $MBI$ :
$$\widehat{MBI} = \widehat{MBC} + \widehat{CBI} = \frac{\alpha}{2} + \frac{\beta}{2} ,$$
et l'angle $\widehat{MIB}$, extérieur en $I$ au triangle $ABI$, vaut $\widehat{IAB} + \widehat{IBA} = \dfrac{\alpha}{2} + \dfrac{\beta}{2}$. Le triangle $MBI$ est isocèle en $M$ : **$MB = MI$**.

### Étape 2 : $MP \times MD = MI^2$

Comparons les triangles $MBD$ et $MPB$.

- Ils ont le même angle en $M$, car $D$ est sur le segment $[MP]$.
- L'angle inscrit $\widehat{MPB}$ intercepte l'arc $MB$, comme $\widehat{MAB}$. Donc $\widehat{MPB} = \dfrac{\alpha}{2} = \widehat{MBC} = \widehat{MBD}$.

Les deux triangles ont deux angles égaux, ils sont semblables, avec $M \to M$, $B \to P$, $D \to B$. Donc
$$\frac{MB}{MP} = \frac{MD}{MB}, \qquad \text{c'est-à-dire} \qquad MP \times MD = MB^2 = MI^2 .$$

### Étape 3 : deux nouveaux triangles semblables

L'égalité $MP \times MD = MI^2$ s'écrit $\dfrac{MI}{MD} = \dfrac{MP}{MI}$. Les triangles $MID$ et $MPI$ ont le même angle en $M$ (car $D$ est sur $[MP]$), compris entre des côtés proportionnels : ils sont semblables, avec $M \to M$, $I \to P$, $D \to I$. Leurs angles correspondants sont égaux :
$$\widehat{MPI} = \widehat{MID} .$$

### Étape 4 : on fait apparaître le diamètre

Les droites $(ID)$ et $(OM)$ sont toutes les deux perpendiculaires à $(BC)$, donc parallèles. Le vecteur $\overrightarrow{ID}$ va de $I$ vers la droite $(BC)$, et $\overrightarrow{MO}$ va de $M$, qui est de l'autre côté de $(BC)$, vers le centre : ces deux vecteurs ont des sens opposés. Comme $\overrightarrow{IM}$ et $\overrightarrow{MI}$ sont aussi opposés, l'angle entre $[IM)$ et $[ID)$ est égal à l'angle entre $[MI)$ et $[MO)$ :
$$\widehat{MID} = \widehat{IMO} = \widehat{AMO} .$$

Le triangle $AOM$ est isocèle en $O$, car $OA = OM$. Donc $\widehat{AMO} = \widehat{MAO}$.

Soit $E$ le point de $\Gamma$ diamétralement opposé à $A$. La demi-droite $[AO)$ est la demi-droite $[AE)$, donc $\widehat{MAO} = \widehat{MAE}$. Enfin, les angles inscrits $\widehat{MAE}$ et $\widehat{MPE}$ interceptent le même arc $ME$, donc ils sont égaux.

En mettant bout à bout :
$$\widehat{MPI} = \widehat{MID} = \widehat{AMO} = \widehat{MAO} = \widehat{MAE} = \widehat{MPE} .$$

### Étape 5 : conclusion

Les demi-droites $[PI)$ et $[PE)$ font le même angle avec $[PM)$, et $I$ et $E$ sont du même côté de la droite $(PM)$. Elles sont donc confondues : $P$, $I$ et $E$ sont alignés, avec $I$ entre $P$ et $E$ (car $I$ est à l'intérieur de $\Gamma$).

Comme $[AE]$ est un diamètre de $\Gamma$ et que $P$ est sur $\Gamma$, l'angle $\widehat{APE}$ est droit.

**Conclusion.** $\widehat{API} = \widehat{APE} = 90°$ : l'angle $\widehat{API}$ est droit.

## Going further

Le point $P$ est donc sur le cercle de diamètre $[AI]$. Ce cercle passe aussi par les points où le cercle inscrit touche $[AB]$ et $[AC]$. Pourquoi ?
