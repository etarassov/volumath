---
id: "6006"
title: "Un triangle isocèle d'une seule couleur"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [couleurs, tiroirs, pentagone regulier, cercle, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Problem Circle » de Joshua Zucker, d'après un exposé de Tatiana Shubin"
  reference: "MTCircularSummer2011.pdf, p. 4 : « Can you paint a circle (not a disk) with two colors so that no isosceles triangle has three vertices of the same color? » (aucune solution publiée)"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularSummer2011.pdf"
---

## Statement

On peint tous les points d'un cercle, chacun en rouge ou en bleu. On ne sait pas comment : le coloriage peut être aussi irrégulier qu'on veut, et rien n'oblige les deux couleurs à occuper des parts comparables.

Montrer qu'il existe toujours trois points du cercle, tous de la même couleur, qui forment un triangle isocèle.

## Hints

1. Le cercle a une infinité de points. Il n'est pas question de les examiner tous : il faut en choisir quelques-uns, bien placés, et ne regarder que ceux-là.
2. Si l'on choisit cinq points et deux couleurs, que peut-on dire à coup sûr ?
3. Choisir les cinq points de façon que **n'importe lesquels** des trois forment un triangle isocèle. Quelle figure régulière a cette propriété ?
4. Dans un pentagone régulier inscrit dans le cercle, les cinq sommets découpent le cercle en cinq arcs égaux. Deux cordes qui sous-tendent le même nombre d'arcs ont la même longueur.

## Solution

### Le choix des cinq points

Traçons dans le cercle un **pentagone régulier** : cinq points $A$, $B$, $C$, $D$, $E$ également espacés sur le cercle. Ils découpent le cercle en cinq arcs égaux ; appelons « pas » un de ces arcs.

Deux sommets du pentagone sont séparés soit par $1$ pas, soit par $2$ pas (en comptant du côté le plus court). Et voici le point essentiel :

> deux cordes qui sous-tendent le même nombre de pas ont la même longueur.

C'est immédiat : en faisant tourner la figure d'un pas autour du centre, le pentagone revient sur lui-même et une corde de $1$ pas se superpose à la suivante. Même chose pour les cordes de $2$ pas.

### Trois sommets du pentagone forment toujours un triangle isocèle

Prenons trois sommets quelconques du pentagone. Ils découpent le cercle en trois arcs, mesurés en pas, dont la somme vaut $5$. Chaque arc vaut au moins $1$ pas, donc les trois nombres sont pris parmi $1$, $2$ et $3$ et leur somme fait $5$. Les seules possibilités sont
$$1 + 1 + 3 \qquad \text{et} \qquad 1 + 2 + 2$$
(à l'ordre près).

Dans les deux cas, **deux des trois arcs sont égaux**. Les deux côtés correspondants du triangle ont donc la même longueur : le triangle est isocèle.

Autrement dit : parmi les cinq sommets d'un pentagone régulier, on ne peut pas trouver trois points qui forment un triangle non isocèle. C'est ce qui rend le pentagone si commode ici. (Et trois points d'un cercle ne sont jamais alignés, donc on a bien un vrai triangle.)

### Le principe des tiroirs

Les cinq sommets sont coloriés en rouge ou en bleu, c'est-à-dire répartis dans deux tiroirs. Si chaque couleur touchait au plus deux sommets, cela n'en ferait que quatre au total. Il y en a cinq : **une des deux couleurs est donc portée par au moins trois sommets.**

Choisissons trois sommets de cette couleur. D'après la partie précédente, ils forment un triangle isocèle, et ils sont tous les trois de la même couleur.

### Conclusion

Quel que soit le coloriage du cercle en deux couleurs, il existe toujours un triangle isocèle dont les trois sommets ont la même couleur. Il est donc **impossible** de colorier un cercle en deux couleurs en évitant tous les triangles isocèles monochromes.

Remarquons que la démonstration ne dépend pas du pentagone choisi : n'importe quel pentagone régulier inscrit dans le cercle fait l'affaire, et il y en a une infinité.

## Going further

1. Où la démonstration échoue-t-elle si l'on remplace le pentagone régulier par un carré ? Par un hexagone régulier ?
2. La même question avec **trois** couleurs est beaucoup plus difficile, et la revue la pose sans y répondre. Essaie au moins de voir pourquoi le pentagone ne suffit plus.
3. Et si l'on colorie les points d'une droite au lieu d'un cercle, en cherchant cette fois trois points de la même couleur dont l'un est le milieu des deux autres ?
