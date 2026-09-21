---
id: "7270"
title: "Le milieu du côté et une tangente inattendue"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [hauteurs, orthocentre, cercle de diametre, tangente, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Puissance d'un point », exercice 7 ; le polycopié note les pieds des hauteurs HB et HC, ils sont appelés E et F ici"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus.

On note $E$ le pied de la hauteur issue de $B$ (il est donc sur le côté $[AC]$), $F$ le pied de la
hauteur issue de $C$ (il est donc sur le côté $[AB]$), et $M$ le milieu du côté $[BC]$.

Montrer que la droite $(ME)$ est tangente au cercle circonscrit au triangle $AEF$.

## Hints

1. Une droite est tangente à un cercle en un point lorsqu'elle est perpendiculaire au rayon en ce
   point. Où est le centre du cercle circonscrit à $AEF$ ?
2. Note $H$ l'orthocentre. Que valent les angles $\widehat{AEH}$ et $\widehat{AFH}$ ? Quel cercle
   passe donc par $A$, $E$, $H$ et $F$ ?
3. Pourquoi $ME = MB = MC$ ? Pense à l'angle $\widehat{BEC}$.
4. Note $N$ le milieu de $[AH]$ et calcule les deux angles $\widehat{AEN}$ et $\widehat{AEM}$ en
   fonction de l'angle $\widehat{ACB}$. Puis soustrais.

## Solution

Notons $\gamma = \widehat{ACB}$ et $H$ l'orthocentre du triangle, c'est-à-dire le point de
concours des trois hauteurs. Comme le triangle est acutangle, $H$ est à l'intérieur du triangle.

**Le cercle circonscrit à $AEF$.**

Le point $H$ est sur la hauteur issue de $B$, c'est-à-dire sur la droite $(BE)$, et cette hauteur
est perpendiculaire à $(AC)$. Donc
$$\widehat{AEH} = 90^\circ .$$

De même, $H$ est sur la droite $(CF)$, perpendiculaire à $(AB)$, donc
$$\widehat{AFH} = 90^\circ .$$

Les points $E$ et $F$ voient donc le segment $[AH]$ sous un angle droit : ils sont sur le cercle de
diamètre $[AH]$. Ce cercle passe aussi par $A$ et par $H$.

**Le cercle circonscrit au triangle $AEF$ est donc le cercle de diamètre $[AH]$.** Notons $N$ son
centre, c'est-à-dire le milieu de $[AH]$.

**Premier angle : $\widehat{AEN}$.**

Comme $NA = NE$ (ce sont deux rayons), le triangle $NAE$ est isocèle en $N$, donc
$$\widehat{AEN} = \widehat{NAE} .$$

Le point $N$ est sur le segment $[AH]$, donc sur la hauteur issue de $A$. Notons $K$ le pied de
cette hauteur, sur $[BC]$. Dans le triangle $AKC$, rectangle en $K$, les deux angles aigus sont
complémentaires :
$$\widehat{KAC} = 90^\circ - \gamma .$$

Comme $E$ est sur le segment $[AC]$, la demi-droite $[AE)$ est la demi-droite $[AC)$, et comme $N$
est sur $[AK)$, on obtient
$$\widehat{AEN} = \widehat{NAE} = \widehat{KAC} = 90^\circ - \gamma .$$

**Second angle : $\widehat{AEM}$.**

Les angles $\widehat{BEC}$ et $\widehat{BFC}$ sont droits, donc $E$ et $F$ sont sur le cercle de
diamètre $[BC]$. Le centre de ce cercle est le milieu de $[BC]$, c'est-à-dire $M$. Ainsi
$$ME = MB = MC .$$

Le triangle $MEC$ est donc isocèle en $M$, et
$$\widehat{MEC} = \widehat{MCE} = \widehat{BCA} = \gamma .$$

Or $E$ est entre $A$ et $C$, donc les demi-droites $[EA)$ et $[EC)$ sont opposées, et
$$\widehat{AEM} = 180^\circ - \widehat{MEC} = 180^\circ - \gamma .$$

**La soustraction.**

Les points $N$ et $M$ sont tous les deux strictement du même côté de la droite $(AC)$ que $B$ : en
effet $M$ est le milieu de $[BC]$ avec $C$ sur la droite et $B$ hors d'elle, et $N$ est le milieu de
$[AH]$ avec $A$ sur la droite et $H$ à l'intérieur du triangle.

Les deux demi-droites $[EN)$ et $[EM)$ partent donc du même côté de $(AC)$, et
$$\widehat{AEN} = 90^\circ - \gamma \ < \ 180^\circ - \gamma = \widehat{AEM} .$$

La demi-droite $[EN)$ est donc située entre $[EA)$ et $[EM)$, d'où
$$\widehat{NEM} = \widehat{AEM} - \widehat{AEN} = (180^\circ - \gamma) - (90^\circ - \gamma)
= 90^\circ .$$

**Conclusion.**

La droite $(EM)$ est perpendiculaire en $E$ au rayon $[NE]$ du cercle circonscrit au triangle
$AEF$.

**Elle est donc tangente à ce cercle en $E$.**

## Going further

L'énoncé ne suppose pas le triangle acutangle. Le résultat reste vrai pour un triangle obtusangle,
mais la figure change : l'orthocentre sort du triangle, les pieds $E$ et $F$ peuvent tomber hors
des côtés, et la soustraction d'angles ci-dessus doit être remplacée par une addition. Les
démonstrations qui traitent tous les cas d'un coup utilisent les angles orientés.

Par symétrie, la droite $(MF)$ est également tangente au même cercle, en $F$. Le point $M$ est donc
à égale distance des deux points de tangence, ce qui redonne $MF = ME$, que l'on savait déjà.

Ce cercle de diamètre $[AH]$ et ce cercle de diamètre $[BC]$ se coupent précisément en $E$ et $F$.
La droite $(EF)$ est donc leur axe radical, et l'on peut montrer que la droite $(MN)$ en est la
médiatrice.
