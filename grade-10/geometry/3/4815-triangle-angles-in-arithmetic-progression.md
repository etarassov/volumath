---
id: "4815"
title: "Des angles qui se suivent régulièrement"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle, somme-des-angles, suite-arithmetique, denombrement, similitude]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Essential Counting Strategies (Kevin Wang)"
  reference: "handoutId11-0.pdf, exercice 20"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId11-0.pdf"
---

## Statement

On cherche les triangles dont les trois angles, mesurés en degrés, sont des nombres **entiers**, **deux à deux différents**, et forment une **suite arithmétique** (c'est-à-dire que l'écart entre le plus petit et le moyen est le même que l'écart entre le moyen et le plus grand).

Par exemple $55°$, $60°$, $65°$ conviennent : les écarts valent $5$ à chaque fois, et la somme fait bien $180°$.

Combien y a-t-il de tels triangles, à forme près ? (Deux triangles semblables, c'est-à-dire ayant les mêmes angles, comptent pour un seul.)

## Hints

1. Nomme les trois angles de façon à exprimer directement la condition « suite arithmétique » : appelle $m$ l'angle du milieu et $d$ l'écart commun.
2. Écris les trois angles en fonction de $m$ et $d$, puis utilise la somme des angles d'un triangle.
3. La somme se simplifie de façon spectaculaire : les $d$ s'annulent. Que vaut $m$ ?
4. Il ne reste plus qu'à trouver les valeurs possibles de $d$. Quelles contraintes as-tu ? ($d$ entier, angles deux à deux différents, et tous strictement positifs.)

## Solution

**On pose les notations.** Notons $m$ l'angle du milieu et $d$ l'écart commun, avec $d > 0$ (les trois angles sont deux à deux différents, donc l'écart n'est pas nul ; quitte à échanger les noms, on le prend positif). Les trois angles sont alors
$$m - d, \qquad m, \qquad m + d .$$

**La somme des angles.** Dans tout triangle, la somme des angles vaut $180°$ :
$$(m - d) + m + (m + d) = 180 .$$
Les termes $-d$ et $+d$ se simplifient, il reste
$$3m = 180, \qquad \text{donc} \qquad m = 60 .$$

**L'angle du milieu vaut toujours $60°$.** C'est le point clé : quelle que soit la suite arithmétique choisie, l'angle du milieu est imposé. Les trois angles sont donc
$$60 - d, \qquad 60, \qquad 60 + d .$$

**Les valeurs possibles de $d$.**

- $d$ est un entier, car les trois angles sont entiers.
- $d \geqslant 1$, car les angles sont deux à deux différents.
- Le plus petit angle doit être strictement positif : $60 - d \geqslant 1$, donc $d \leqslant 59$.

(La condition sur le plus grand angle est automatique : $60 + d \leqslant 119 < 180$.)

Chaque valeur $d \in \{1, 2, 3, \ldots, 59\}$ donne bien un triangle valide, et deux valeurs différentes de $d$ donnent des triplets d'angles différents, donc des triangles non semblables.

$$\boxed{\text{Il y a } 59 \text{ tels triangles.}}$$

**Les cas extrêmes.** Pour $d = 1$ on obtient le triangle presque équilatéral $59°$, $60°$, $61°$ ; pour $d = 59$ on obtient $1°$, $60°$, $119°$, un triangle très aplati. Pour $d = 30$ on retrouve le fameux triangle $30°$, $60°$, $90°$, moitié d'un triangle équilatéral.

## Going further

1. Que devient le compte si on autorise les angles à être égaux, c'est-à-dire si on accepte $d = 0$ ? Quel triangle cela ajoute-t-il ?
2. Parmi ces $59$ triangles, combien sont rectangles ? Combien sont obtusangles (un angle strictement supérieur à $90°$) ?
3. Cherche maintenant les triangles dont les trois angles entiers forment une suite **géométrique** : $\dfrac{m}{q}$, $m$, $mq$. Y en a-t-il ? (Commence par regarder ce que devient la somme.)
