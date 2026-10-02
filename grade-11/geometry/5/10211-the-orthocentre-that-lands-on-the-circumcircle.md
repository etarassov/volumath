---
id: "10211"
title: "L'orthocentre qui tombe sur le cercle circonscrit"
grade: 11
theme: geometry
difficulty: 5
duration_min: 50
tags: [orthocentre, relation-d-euler, vecteurs, produit-scalaire, cercle-circonscrit, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 1 (géométrie)"
  reference: "2019-10_sujet-envoi-1.pdf, Exercices Seniors, exercice 16 ; corrigé 2019-12_corrige-commentaire-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-10_sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle, $H$ son orthocentre et $M$ le milieu du segment $[BC]$.

Une droite $d$ passe par le point $M$ et coupe le cercle de diamètre $[AH]$ en deux points $P$ et $Q$.

Montrer que l'orthocentre du triangle $APQ$ est sur le cercle circonscrit au triangle $ABC$.

## Hints

1. Faites une figure soignée. Le symétrique $X$ de $H$ par rapport à $M$ semble avoir une place particulière sur le cercle circonscrit. Laquelle ?
2. Soit $O$ le centre du cercle circonscrit à $ABC$. Montrez que le point $H'$ défini par $\overrightarrow{OH'} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC}$ est sur les trois hauteurs du triangle : c'est l'orthocentre.
3. Le cercle de diamètre $[AH]$ passe par $A$, $P$ et $Q$ : c'est le cercle circonscrit au triangle $APQ$. Appliquez-lui la même relation pour exprimer l'orthocentre $K$ de $APQ$ à l'aide du milieu $N$ de $[PQ]$.
4. Pour montrer que $K$ est sur le cercle de diamètre $[AX]$, il suffit de montrer que $\overrightarrow{KA} \cdot \overrightarrow{KX} = 0$.

## Solution

**Un lemme : la relation d'Euler.** Soit $UVW$ un triangle et $\omega$ le centre de son cercle circonscrit. Alors le point $L$ défini par

$$\overrightarrow{\omega L} = \overrightarrow{\omega U} + \overrightarrow{\omega V} + \overrightarrow{\omega W}$$

est l'orthocentre du triangle $UVW$.

*Preuve.* Soit $U'$ le milieu de $[VW]$. On a $\overrightarrow{UL} = \overrightarrow{\omega L} - \overrightarrow{\omega U} = \overrightarrow{\omega V} + \overrightarrow{\omega W} = 2\,\overrightarrow{\omega U'}$. Comme $\omega V = \omega W$, le point $\omega$ est sur la médiatrice de $[VW]$, donc le vecteur $\overrightarrow{\omega U'}$ est nul ou orthogonal à $(VW)$. Le vecteur $\overrightarrow{UL}$ aussi : le point $L$ est sur la hauteur issue de $U$. De même, $L$ est sur les hauteurs issues de $V$ et de $W$. C'est donc l'orthocentre.

![Le triangle ABC, son cercle circonscrit Γ de centre O, le cercle de diamètre [AH] de centre E, la droite d, le triangle APQ et son orthocentre K, le point X diamétralement opposé à A](10211-figure-1.svg)

On note $\Gamma$ le cercle circonscrit à $ABC$ et $O$ son centre.

**Étape 1 : le point $X$.** D'après le lemme, $\overrightarrow{OH} = \overrightarrow{OA} + \overrightarrow{OB} + \overrightarrow{OC}$. Soit $X$ le point diamétralement opposé à $A$ sur $\Gamma$, c'est-à-dire tel que $\overrightarrow{OX} = -\overrightarrow{OA}$. Alors

$$\overrightarrow{OH} + \overrightarrow{OX} = \overrightarrow{OB} + \overrightarrow{OC} = 2\,\overrightarrow{OM},$$

donc $M$ est le milieu de $[HX]$ : le symétrique de $H$ par rapport à $M$ est le point de $\Gamma$ diamétralement opposé à $A$.

**Étape 2 : l'orthocentre $K$ de $APQ$.** Soit $E$ le milieu de $[AH]$, centre du cercle de diamètre $[AH]$. Ce cercle passe par $A$, $P$ et $Q$, c'est donc le cercle circonscrit au triangle $APQ$. Soit $N$ le milieu de $[PQ]$. Le lemme appliqué au triangle $APQ$ donne

$$\overrightarrow{EK} = \overrightarrow{EA} + \overrightarrow{EP} + \overrightarrow{EQ} = \overrightarrow{EA} + 2\,\overrightarrow{EN}.$$

On en tire deux choses.

- $\overrightarrow{AK} = \overrightarrow{EK} - \overrightarrow{EA} = 2\,\overrightarrow{EN}$.
- Comme $\overrightarrow{EA} = -\overrightarrow{EH}$, on a $\overrightarrow{EK} + \overrightarrow{EH} = 2\,\overrightarrow{EN}$ : le point $N$ est le milieu de $[HK]$.

**Étape 3 : le vecteur $\overrightarrow{XK}$.** Le point $M$ est le milieu de $[HX]$ et $N$ celui de $[HK]$, donc

$$\overrightarrow{XK} = \overrightarrow{HK} - \overrightarrow{HX} = 2\,\overrightarrow{HN} - 2\,\overrightarrow{HM} = 2\,\overrightarrow{MN}.$$

**Étape 4 : un produit scalaire nul.** Des étapes 2 et 3 :

$$\overrightarrow{AK} \cdot \overrightarrow{XK} = 4\,\overrightarrow{EN} \cdot \overrightarrow{MN}.$$

Or $N$ est le milieu de la corde $[PQ]$ du cercle de centre $E$. Le point $E$ est sur la médiatrice de $[PQ]$, donc $\overrightarrow{EN}$ est nul ou orthogonal à la droite $d$. Par ailleurs $M$ et $N$ sont tous les deux sur $d$, donc $\overrightarrow{MN}$ est un vecteur de la droite $d$ (ou le vecteur nul). Le produit scalaire $\overrightarrow{EN} \cdot \overrightarrow{MN}$ est donc nul, et

$$\overrightarrow{KA} \cdot \overrightarrow{KX} = 0.$$

**Conclusion.** Soit $K = A$, soit $K = X$, soit l'angle $\widehat{AKX}$ est droit. Dans les trois cas, $K$ est sur le cercle de diamètre $[AX]$. Comme $[AX]$ est un diamètre de $\Gamma$, ce cercle est $\Gamma$ lui-même : l'orthocentre du triangle $APQ$ est sur le cercle circonscrit au triangle $ABC$.

Le raisonnement ne fait aucune hypothèse sur la forme du triangle ni sur la position de la droite $d$ : il n'y a pas de cas de figure à distinguer.

## Going further

1. Que décrit le point $N$ quand la droite $d$ tourne autour de $M$ ? (Regardez l'angle $\widehat{ENM}$.) Retrouver alors le résultat avec l'homothétie de centre $H$ et de rapport $2$, qui envoie $N$ sur $K$, $E$ sur $A$ et $M$ sur $X$.
2. Le corrigé officiel procède par une chasse aux angles. Montrer d'abord, sans vecteurs, que le symétrique de $K$ par rapport à $N$ est le point $H$, en remarquant que $PKQH$ est un parallélogramme.
