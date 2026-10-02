---
id: "7266"
title: "L'angle caché du triangle de contact"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [cercle-inscrit, tangente, angle-inscrit, angle-au-centre, demi-cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Angle tangentiel » (Eva), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Soit $\Gamma$ un cercle et soient $A$ et $B$ deux points de $\Gamma$ tels que $[AB]$ soit un
diamètre. Soit $C$ un troisième point de $\Gamma$, distinct de $A$ et de $B$.

Le cercle inscrit du triangle $ABC$ touche les côtés $[BC]$, $[CA]$ et $[AB]$ respectivement en
$A'$, $B'$ et $C'$.

Combien vaut l'angle $\widehat{B'C'A'}$ ?

## Hints

1. Fais d'abord une figure avec un triangle bien choisi, mesure l'angle, et devine la réponse.
2. Que peux-tu dire de l'angle $\widehat{ACB}$ ? Le segment $[AB]$ est un diamètre.
3. Note $I$ le centre du cercle inscrit. Quelle est la nature du quadrilatère $CA'IB'$ ? Compte ses
   angles droits.
4. L'angle $\widehat{B'C'A'}$ est un angle **inscrit** dans le cercle inscrit. Quel est l'angle au
   centre qui lui correspond ?

## Solution

**L'angle en $C$ est droit.**

Le segment $[AB]$ est un diamètre de $\Gamma$ et $C$ est sur $\Gamma$. D'après le théorème de
l'angle inscrit dans un demi-cercle,
$$\widehat{ACB} = 90^\circ .$$

**Un carré caché.**

Notons $I$ le centre du cercle inscrit et $r$ son rayon.

Le cercle inscrit touche $[CA]$ en $B'$ et $[CB]$ en $A'$. Un rayon mené au point de contact est
perpendiculaire à la tangente, donc
$$(IB') \perp (CA) \qquad \text{et} \qquad (IA') \perp (CB) .$$

Regardons le quadrilatère $CA'IB'$. Ses angles en $A'$ et en $B'$ sont droits, et son angle en $C$
vaut $\widehat{B'CA'} = \widehat{ACB} = 90^\circ$. Comme la somme des angles d'un quadrilatère vaut
$360^\circ$, le quatrième angle est droit lui aussi :
$$\widehat{A'IB'} = 360^\circ - 90^\circ - 90^\circ - 90^\circ = 90^\circ .$$

*(Au passage, $IA' = IB' = r$, donc $CA'IB'$ est même un carré de côté $r$.)*

**De l'angle au centre à l'angle inscrit.**

Les trois points $A'$, $B'$ et $C'$ sont sur le cercle inscrit, de centre $I$.

L'angle $\widehat{A'IB'}$ est l'angle **au centre** qui intercepte l'arc $A'B'$ situé du côté de
$C$. L'angle $\widehat{A'C'B'}$ est l'angle **inscrit** qui intercepte ce même arc, vu depuis $C'$
qui est sur l'autre arc (en effet $C'$ est sur le côté $[AB]$, alors que l'arc en question est du
côté du sommet $C$).

D'après le théorème de l'angle inscrit, l'angle inscrit vaut la moitié de l'angle au centre :
$$\widehat{B'C'A'} = \frac{\widehat{A'IB'}}{2} = \frac{90^\circ}{2} = 45^\circ .$$

**Conclusion.**

$$\boxed{\widehat{B'C'A'} = 45^\circ}$$

Cette valeur ne dépend pas du choix de $C$ sur le cercle.

## Going further

Voici une seconde démonstration, qui utilise l'angle tangentiel.

Les droites $(CB')$ et $(CA')$ sont toutes deux tangentes au cercle inscrit, donc $CB' = CA'$ : le
triangle $CB'A'$ est isocèle en $C$. Son angle au sommet vaut $90^\circ$, donc ses deux angles à la
base valent
$$\frac{180^\circ - 90^\circ}{2} = 45^\circ .$$

En particulier $\widehat{CA'B'} = 45^\circ$. Or la droite $(CA')$ est tangente au cercle inscrit en
$A'$, et $[A'B']$ en est une corde. D'après le théorème de l'angle tangentiel, l'angle entre cette
tangente et cette corde est égal à l'angle inscrit qui intercepte la corde de l'autre côté, à
savoir $\widehat{B'C'A'}$. On retrouve $45^\circ$.

Plus généralement, sans supposer $[AB]$ diamètre, le même calcul donne
$$\widehat{B'C'A'} = 90^\circ - \frac{\widehat{ACB}}{2} .$$
