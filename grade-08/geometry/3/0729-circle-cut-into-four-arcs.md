---
id: "0729"
title: "Le cercle découpé en quatre arcs"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, cercle, quart-de-disque, pythagore, carre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 4, d'après AMC 2012"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

Un cercle de rayon $2$ est découpé en quatre arcs de même longueur. Les quatre arcs sont ensuite réassemblés pour former l'étoile dessinée à droite : les quatre points de découpe deviennent les quatre pointes de l'étoile, et chaque arc est tourné vers l'intérieur.

![À gauche, un cercle avec les quatre points de découpe ; à droite, l'étoile à quatre pointes formée par les quatre arcs](0729-figure-1.svg)

Quelle est l'aire de cette nouvelle figure ?

## Hints

1. Chacun des quatre arcs est un quart de cercle de rayon $2$. Dessine à part un quart de cercle avec les deux rayons qui vont à ses extrémités.
2. Le triangle formé par le centre et les deux extrémités d'un quart de cercle est rectangle, et ses deux côtés de l'angle droit mesurent $2$. Le théorème de Pythagore donne la distance entre les deux extrémités.
3. Sur l'étoile, les quatre pointes sont les sommets d'un carré, et le côté de ce carré est justement cette distance. Quelle est l'aire de ce carré ?
4. Chaque arc creuse le carré : il lui enlève le morceau compris entre la corde et l'arc. Ce morceau est un quart de disque auquel on retire un triangle rectangle.

## Solution

**La distance entre les deux bouts d'un arc.**

Le cercle est coupé en quatre arcs de même longueur : chacun est un quart de cercle de rayon $2$.

Traçons les deux rayons qui joignent le centre du cercle aux deux extrémités d'un tel arc. Comme l'arc est un quart de cercle, ces deux rayons forment un quart de tour, c'est-à-dire un angle droit. Le triangle obtenu est donc rectangle, avec deux côtés de l'angle droit de longueur $2$. Si $c$ est la distance entre les deux extrémités, le théorème de Pythagore donne

$$c^2 = 2^2 + 2^2 = 8 .$$

**Le carré des quatre pointes.**

Sur l'étoile, les quatre pointes sont les sommets d'un carré, et chaque côté de ce carré joint les deux extrémités d'un arc : ce côté mesure donc $c$. L'aire de ce carré vaut

$$c^2 = 8 .$$

**Ce que chaque arc enlève au carré.**

Chaque arc est tourné vers l'intérieur : il retire au carré le morceau compris entre le côté et l'arc. Ce morceau est ce qui reste d'un quart de disque quand on lui enlève le triangle rectangle précédent :

- le quart de disque de rayon $2$ a pour aire $\dfrac{\pi \times 2^2}{4} = \pi$ ;
- le triangle rectangle a pour aire $\dfrac{2 \times 2}{2} = 2$ ;
- le morceau enlevé a donc pour aire $\pi - 2$.

**On conclut.**

Il y a quatre morceaux enlevés, un par côté, et ils ne se chevauchent pas. L'aire de l'étoile vaut donc

$$8 - 4 \times (\pi - 2) = 8 - 4\pi + 8 = 16 - 4\pi \approx \text{3,4} .$$

Au passage, le disque de départ avait pour aire $\pi \times 2^2 = 4\pi \approx \text{12,6}$ : en repliant les arcs vers l'intérieur, on a perdu les trois quarts de la surface.
