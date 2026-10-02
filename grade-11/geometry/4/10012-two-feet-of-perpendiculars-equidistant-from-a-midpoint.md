---
id: "10012"
title: "Deux pieds de perpendiculaires à égale distance d'un milieu"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [produit-scalaire, quadrilatere-inscrit, angle-inscrit, projection-orthogonale, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 6 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi6.pdf, Exercices Juniors, exercice 3 ; corrigé 2017-10_ofm-2012-2013-envoi6-corrige.pdf (solution 2 du corrigé, au produit scalaire, refaite avec des projections pour éviter les angles orientés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi6.pdf"
---

## Statement

$ABCD$ est un quadrilatère inscrit dans un cercle, et $L$ est le point d'intersection de ses diagonales $[AC]$ et $[BD]$. On note $J$ et $K$ les pieds des perpendiculaires menées de $L$ aux droites $(AD)$ et $(BC)$, et $I$ le milieu du segment $[CD]$.

![Le quadrilatère ABCD inscrit dans un cercle, ses diagonales qui se coupent en L, les pieds J et K des perpendiculaires issues de L, le milieu I de [CD] et les segments [IJ] et [IK] en pointillés](10012-figure-1.svg)

Montrer que $IJ = IK$.

## Hints

1. Écris $\overrightarrow{IJ} = \overrightarrow{ID} + \overrightarrow{DJ}$ et $\overrightarrow{IK} = \overrightarrow{IC} + \overrightarrow{CK}$, en te souvenant que $\overrightarrow{ID} = \frac{1}{2}\overrightarrow{CD}$. Développe $IJ^2$ et $IK^2$.
2. Tu dois arriver à $IJ^2 - IK^2 = \overrightarrow{JD} \cdot \overrightarrow{JC} - \overrightarrow{KC} \cdot \overrightarrow{KD}$. Fais apparaître $L$ en écrivant $\overrightarrow{JC} = \overrightarrow{JL} + \overrightarrow{LC}$.
3. Le vecteur $\overrightarrow{JD}$ est le projeté orthogonal de $\overrightarrow{LD}$ sur la droite $(AD)$. Exprime $\overrightarrow{JD} \cdot \overrightarrow{LC}$ avec $LD$, $LC$ et le cosinus de deux angles du quadrilatère, puis utilise le théorème de l'angle inscrit.

## Solution

Le quadrilatère est inscrit dans un cercle, donc convexe : $L$ est entre $A$ et $C$, et entre $B$ et $D$.

### Étape 1 : on se ramène à deux produits scalaires

Comme $I$ est le milieu de $[CD]$, on a $ID = IC$, $\overrightarrow{ID} = \frac{1}{2}\overrightarrow{CD}$ et $\overrightarrow{IC} = \frac{1}{2}\overrightarrow{DC}$. Alors
$$IJ^2 = \left(\overrightarrow{ID} + \overrightarrow{DJ}\right)^2 = ID^2 + \overrightarrow{CD} \cdot \overrightarrow{DJ} + DJ^2 = ID^2 + \overrightarrow{DJ} \cdot \left(\overrightarrow{CD} + \overrightarrow{DJ}\right) = ID^2 + \overrightarrow{DJ} \cdot \overrightarrow{CJ} .$$
De la même façon,
$$IK^2 = \left(\overrightarrow{IC} + \overrightarrow{CK}\right)^2 = IC^2 + \overrightarrow{DC} \cdot \overrightarrow{CK} + CK^2 = IC^2 + \overrightarrow{CK} \cdot \overrightarrow{DK} .$$
Comme $ID = IC$ :
$$IJ^2 - IK^2 = \overrightarrow{JD} \cdot \overrightarrow{JC} - \overrightarrow{KC} \cdot \overrightarrow{KD} .$$

### Étape 2 : on fait apparaître $L$

On écrit $\overrightarrow{JC} = \overrightarrow{JL} + \overrightarrow{LC}$. Le vecteur $\overrightarrow{JL}$ est perpendiculaire à $(AD)$, et $\overrightarrow{JD}$ est porté par $(AD)$, donc $\overrightarrow{JD} \cdot \overrightarrow{JL} = 0$, et
$$\overrightarrow{JD} \cdot \overrightarrow{JC} = \overrightarrow{JD} \cdot \overrightarrow{LC} .$$
De même, $\overrightarrow{KC} \cdot \overrightarrow{KD} = \overrightarrow{KC} \cdot \left(\overrightarrow{KL} + \overrightarrow{LD}\right) = \overrightarrow{KC} \cdot \overrightarrow{LD}$. Il suffit donc de montrer que
$$\overrightarrow{JD} \cdot \overrightarrow{LC} = \overrightarrow{KC} \cdot \overrightarrow{LD} .$$

### Étape 3 : calcul des deux produits

Soit $\vec{u}$ le vecteur unitaire qui a la direction et le sens de $\overrightarrow{AD}$. On a $\overrightarrow{LD} = \overrightarrow{LJ} + \overrightarrow{JD}$ avec $\overrightarrow{LJ}$ perpendiculaire à $\vec{u}$, donc $\overrightarrow{LD} \cdot \vec{u} = \overrightarrow{JD} \cdot \vec{u}$. Comme $\overrightarrow{JD}$ est colinéaire à $\vec{u}$, cela donne
$$\overrightarrow{JD} = \left(\overrightarrow{LD} \cdot \vec{u}\right) \vec{u} .$$

Le vecteur $\overrightarrow{LD}$ a la direction et le sens de $\overrightarrow{BD}$, puisque $L$ est entre $B$ et $D$. L'angle entre $\overrightarrow{BD}$ et $\overrightarrow{AD}$ est le même que l'angle entre $\overrightarrow{DB}$ et $\overrightarrow{DA}$, c'est-à-dire $\widehat{BDA}$. Donc $\overrightarrow{LD} \cdot \vec{u} = LD \cos \widehat{BDA}$.

De même, $\overrightarrow{LC}$ a la direction et le sens de $\overrightarrow{AC}$, donc $\vec{u} \cdot \overrightarrow{LC} = LC \cos \widehat{DAC}$. En regroupant :
$$\overrightarrow{JD} \cdot \overrightarrow{LC} = LD \cos \widehat{BDA} \times \left(\vec{u} \cdot \overrightarrow{LC}\right) = LD \times LC \times \cos \widehat{BDA} \times \cos \widehat{DAC} .$$

Le même calcul, avec le vecteur unitaire $\vec{v}$ de $\overrightarrow{BC}$, donne $\overrightarrow{KC} = \left(\overrightarrow{LC} \cdot \vec{v}\right)\vec{v}$, puis $\overrightarrow{LC} \cdot \vec{v} = LC \cos \widehat{ACB}$ et $\vec{v} \cdot \overrightarrow{LD} = LD \cos \widehat{CBD}$. Donc
$$\overrightarrow{KC} \cdot \overrightarrow{LD} = LC \times LD \times \cos \widehat{ACB} \times \cos \widehat{CBD} .$$

Ces formules restent justes quand $J$ n'est pas sur le segment $[AD]$ : le signe est alors porté par le cosinus.

### Étape 4 : le théorème de l'angle inscrit

Les angles inscrits $\widehat{BDA}$ et $\widehat{BCA}$ interceptent le même arc $AB$, donc ils sont égaux. Les angles inscrits $\widehat{DAC}$ et $\widehat{DBC}$ interceptent le même arc $DC$, donc ils sont égaux. Les deux produits de l'étape 3 sont donc égaux, et $IJ^2 - IK^2 = 0$.

**Conclusion.** $IJ = IK$.
