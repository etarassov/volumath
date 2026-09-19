---
id: "0740"
title: "Des pièces, des boîtes et des maisons"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [comptage double, encadrement, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 27, d'après Coupe Animath d'Automne 2018, P1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

On répartit $2018$ pièces dans $b$ boîtes, puis on répartit ces $b$ boîtes dans $m$ maisons, de telle sorte que le nombre de pièces dans chaque maison soit strictement inférieur à $b$.

Est-il possible que chaque boîte contienne au moins $m$ pièces ?

## Hints

1. Suppose que c'est possible, et compte le nombre total de pièces de deux façons différentes.
2. Première façon, boîte par boîte : il y a $b$ boîtes et chacune contient au moins $m$ pièces. Que peux-tu dire du total ?
3. Deuxième façon, maison par maison : il y a $m$ maisons et chacune contient moins de $b$ pièces, donc au plus $b - 1$. Que peux-tu dire du total ?
4. Compare les deux résultats. Que se passe-t-il ?

## Solution

**On suppose que c'est possible, et on compte les pièces deux fois.**

Chaque pièce est dans exactement une boîte, et chaque boîte est dans exactement une maison : chaque pièce est donc aussi dans exactement une maison. On peut donc compter le total, qui vaut $2018$, aussi bien boîte par boîte que maison par maison.

**Premier comptage, par boîtes.**

Il y a $b$ boîtes, et chacune contiendrait au moins $m$ pièces. Le total est donc au moins $b \times m$ :

$$2018 \geqslant b \times m .$$

**Deuxième comptage, par maisons.**

Il y a $m$ maisons, et chacune contient strictement moins de $b$ pièces, donc au plus $b - 1$ pièces. Le total est donc au plus $m \times (b-1)$ :

$$2018 \leqslant m \times (b - 1) = m \times b - m .$$

Comme $m$ est au moins $1$, cela donne

$$2018 < m \times b .$$

**On conclut.**

Les deux comptages donnent $2018 \geqslant b \times m$ et $2018 < b \times m$ : c'est impossible.

Donc **non**, il n'est pas possible que chaque boîte contienne au moins $m$ pièces.

## Going further

Le nombre $2018$ n'a joué aucun rôle : le raisonnement marche avec n'importe quel nombre de pièces. On a en fait démontré qu'on ne peut jamais avoir à la fois « chaque boîte contient au moins $m$ pièces » et « chaque maison contient moins de $b$ pièces », quel que soit le nombre de pièces réparties.
