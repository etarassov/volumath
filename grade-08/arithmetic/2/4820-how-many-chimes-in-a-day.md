---
id: "4820"
title: "Les sonneries de la pendule"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [somme, comptage, heures, organisation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 2 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Une pendule sonne les heures : à chaque heure pile, elle sonne autant de coups que l'heure indiquée sur son cadran, qui va de $1$ à $12$. Elle sonne en plus **un** coup à chaque demi-heure.

Par exemple, à $16$ h elle sonne $4$ coups, et à $16$ h $30$ elle sonne $1$ coup.

Combien de coups la pendule sonne-t-elle en $24$ heures, de minuit à minuit ?

## Hints

1. Sépare le problème en deux : les coups des heures pleines d'un côté, ceux des demi-heures de l'autre.
2. Sur le cadran, chaque heure de $1$ à $12$ revient deux fois par jour (une fois le matin, une fois l'après-midi).
3. Pour additionner $1 + 2 + 3 + \cdots + 12$, regroupe les termes deux par deux en partant des extrémités : $1 + 12$, $2 + 11$, et ainsi de suite.
4. Les demi-heures sont plus simples : combien y en a-t-il dans une journée ?

## Solution

**Les coups des heures pleines.**

Sur son cadran, la pendule affiche successivement $1, 2, 3, \ldots, 12$, puis recommence. En $24$ heures, chaque indication revient donc **deux fois**.

La somme des coups pour un tour de cadran vaut
$$1 + 2 + 3 + \cdots + 12 .$$
Regroupons les termes deux par deux en partant des bouts :
$$(1 + 12) + (2 + 11) + (3 + 10) + (4 + 9) + (5 + 8) + (6 + 7) = 13 \times 6 = 78 .$$

Comme le cadran fait deux tours dans la journée, cela fait
$$2 \times 78 = 156 \text{ coups.}$$

**Les coups des demi-heures.**

Il y a une demi-heure par heure, donc $24$ demi-heures dans une journée, et la pendule sonne un coup à chacune :
$$24 \text{ coups.}$$

**Le total.**
$$156 + 24 = 180 .$$

$$\boxed{\text{La pendule sonne } 180 \text{ coups en } 24 \text{ heures.}}$$

## Going further

1. Combien de coups la pendule sonne-t-elle entre midi et minuit seulement ?
2. Certaines pendules sonnent aussi un coup au quart et trois coups aux trois quarts. Combien de coups par jour dans ce cas ?
3. Si la pendule sonnait les heures sur $24$ heures au lieu de $12$ (c'est-à-dire $17$ coups à $17$ h), combien de coups sonnerait-elle en une journée ? Compare avec $180$.
