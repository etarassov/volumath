---
id: "2407"
title: "Cinq personnes sur la photo"
grade: 12
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, permutations, bloc, complementaire, disposition-circulaire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 5 (réponses dans Handout-468-565.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

Cinq personnes posent pour une photographie.

1. De combien de façons peuvent-elles se placer sur une rangée ?
2. Même question si deux d'entre elles forment un couple et veulent être l'une à côté de l'autre.
3. Même question si, au contraire, deux d'entre elles sont fâchées et refusent d'être voisines.
4. Même question si elles se placent en cercle, la photo étant prise du dessus. (Deux dispositions qui se déduisent l'une de l'autre par une rotation donnent la même photo.)

## Hints

1. Aligner cinq personnes différentes, c'est choisir un ordre.
2. Pour la question 2, considère le couple comme une seule personne un peu large. Combien d'objets restent à ranger ? N'oublie pas que les deux membres du couple peuvent échanger leur place.
3. La question 3 est le contraire de la question 2 : toute disposition est soit « les deux fâchés voisins », soit « les deux fâchés séparés ».
4. Pour le cercle, fixe la place d'une personne : cela supprime exactement les rotations. Combien de personnes reste-t-il à placer ?

## Solution

**1. En rangée.**

Les cinq personnes sont différentes, une photo est donc un ordre des cinq personnes :

$$5! = 120 .$$

**2. Le couple reste ensemble.**

Attachons les deux membres du couple. On range alors $4$ objets : le bloc formé par le couple et les trois autres personnes. Cela fait $4!$ façons.

À l'intérieur du bloc, les deux personnes peuvent se placer dans $2!$ ordres. Les deux décisions sont indépendantes, donc

$$4! \times 2! = 24 \times 2 = 48 .$$

**3. Les deux fâchés ne sont pas voisins.**

Toute disposition en rangée tombe dans exactement un des deux cas : les deux fâchés sont voisins, ou ils ne le sont pas. Le premier cas se compte comme à la question 2 et donne $4! \times 2! = 48$. D'où

$$5! - 4!\times 2! = 120 - 48 = 72 .$$

**4. En cercle.**

Si l'on numérotait les places du cercle, il y aurait $5!$ dispositions. Mais une même photo correspond à $5$ de ces dispositions, obtenues en faisant tourner tout le monde d'un cran, de deux crans, etc. Il faut donc diviser par $5$ :

$$\frac{5!}{5} = 4! = 24 .$$

*Autre façon de le dire :* on fixe une personne, par exemple Alice, à une place de référence ; la photo est alors entièrement décrite par l'ordre des quatre autres autour d'elle, soit $4! = 24$.

**Réponses.** $120$ ; $48$ ; $72$ ; $24$.

## Going further

1. Reprendre la question 3 avec $n$ personnes au lieu de $5$.
2. En cercle, combien y a-t-il de dispositions où les deux fâchés ne sont pas voisins ? (Attention : en cercle, chaque personne a deux voisins.)
3. Et si la photo est prise du dessus mais qu'on peut aussi la retourner, deux photos symétriques l'une de l'autre étant alors considérées comme identiques ?
