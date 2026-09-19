---
id: "3604"
title: "Trois points alignés, deux distances"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [alignement, distances, disjonction-de-cas, longueurs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 2 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Trois points $A$, $B$ et $C$ sont alignés, mais pas forcément dans cet ordre.

On sait que $AB = 5$ et $AC = 3$.

La longueur $BC$ n'est pas déterminée pour autant : elle peut prendre plusieurs valeurs. Trouve toutes ces valeurs possibles, puis donne leur somme.

## Hints

1. Place d'abord $A$ et $B$ sur une droite, à $5$ unités l'un de l'autre.
2. Le point $C$ est à $3$ unités de $A$, sur la même droite. De quel côté de $A$ peut-il se trouver ?
3. Traite séparément les deux positions possibles de $C$, et calcule $BC$ dans chaque cas.

## Solution

**Étape 1. Fixer un repère.**

Plaçons les trois points sur une droite graduée. On peut choisir $A$ à l'origine, donc $A$ a pour abscisse $0$, et $B$ à droite de $A$, donc $B$ a pour abscisse $5$ puisque $AB = 5$.

**Étape 2. Les deux positions de $C$.**

Le point $C$ est sur la même droite et vérifie $AC = 3$. Il y a donc exactement deux possibilités : $C$ a pour abscisse $3$ ou $C$ a pour abscisse $-3$.

*Premier cas : $C$ est entre $A$ et $B$.* Son abscisse est $3$, donc

$$BC = 5 - 3 = 2$$

*Second cas : $C$ est de l'autre côté de $A$.* Son abscisse est $-3$, donc

$$BC = 5 - (-3) = 8$$

**Étape 3. Conclure.**

Les valeurs possibles de $BC$ sont $2$ et $8$. Elles sont bien distinctes, et leur somme vaut

$$2 + 8 = 10$$

**Réponse.** $BC$ vaut $2$ ou $8$, et la somme des valeurs possibles est $10$.

## Going further

Le piège de ce genre d'énoncé est de ne dessiner qu'une figure et de croire que c'est la seule. Dès qu'une position n'est pas imposée par l'énoncé, il faut se demander combien de figures différentes conviennent.

On peut d'ailleurs remarquer que les deux réponses, $2$ et $8$, sont $5 - 3$ et $5 + 3$ : en général, si $AB = d_1$ et $AC = d_2$ avec les trois points alignés, alors $BC$ vaut $|d_1 - d_2|$ ou $d_1 + d_2$, et la somme de ces deux valeurs est $2 \times \max(d_1, d_2)$.
