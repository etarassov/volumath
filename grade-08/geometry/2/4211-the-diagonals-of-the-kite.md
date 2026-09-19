---
id: "4211"
title: "Les diagonales du cerf-volant"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [quadrilatere, mediatrice, symetrie, perpendiculaire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Graphs and Geometry III"
  reference: "Handout-2071-1894.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2071-1894.pdf"
---

## Statement

Dans un quadrilatère $ABCD$, on sait que
$$AB = AD \qquad \text{et} \qquad CB = CD.$$

![Le quadrilatère ABCD, avec AB = AD et CB = CD ; les diagonales ne sont pas tracées](4211-figure-1.svg)

Démontrer que ses diagonales $[AC]$ et $[BD]$ sont perpendiculaires.

## Hints

1. Que peut-on dire d'un point situé à égale distance des deux extrémités d'un segment ?
2. Le point $A$ est à égale distance de $B$ et de $D$. Le point $C$ aussi. Où se trouvent donc
   ces deux points ?
3. Par deux points distincts, il ne passe qu'une seule droite.

## Solution

**Le point clé.** Rappelons une propriété du cours : *l'ensemble des points situés à égale
distance des deux extrémités d'un segment est la médiatrice de ce segment*, c'est-à-dire la
droite perpendiculaire à ce segment en son milieu.

**On applique cette propriété deux fois.**

- Comme $AB = AD$, le point $A$ est à égale distance de $B$ et de $D$ : il appartient donc à la
  médiatrice du segment $[BD]$.
- Comme $CB = CD$, le point $C$ est lui aussi à égale distance de $B$ et de $D$ : il appartient
  donc également à la médiatrice du segment $[BD]$.

**On conclut.** Les points $A$ et $C$ sont deux points distincts de la médiatrice de $[BD]$. Or
par deux points distincts il ne passe qu'une seule droite. La droite $(AC)$ est donc exactement
la médiatrice de $[BD]$.

Une médiatrice est perpendiculaire au segment dont elle est la médiatrice, donc
$$(AC) \perp (BD).$$

**Conclusion.** Les diagonales $[AC]$ et $[BD]$ du quadrilatère sont bien perpendiculaires.

On obtient même un peu plus au passage : la droite $(AC)$ coupe $[BD]$ en son **milieu**. Un tel
quadrilatère s'appelle un *cerf-volant*.

## Going further

Un losange vérifie $AB = AD$ et $CB = CD$ (et même bien plus). Retrouve ainsi la propriété
« les diagonales d'un losange sont perpendiculaires ».
