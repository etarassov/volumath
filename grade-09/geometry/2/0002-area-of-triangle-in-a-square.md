---
id: "0002"
title: "Un triangle dans un carré"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [aire, carre, triangle, paralleles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Exercice classique, ajouté comme exemple de mise en forme"
  reference: ""
  url: ""
  original_language: "fr"
  local_copy: ""
---

## Statement

$ABCD$ est un carré de côté $10$ cm. Le point $M$ est un point du côté $[BC]$.

![Le carré ABCD et le triangle AMD](0002-figure-1.svg)

1. Calculer l'aire du triangle $AMD$ lorsque $M$ est le milieu de $[BC]$.
2. Calculer cette aire lorsque $M$ est confondu avec $B$.
3. Montrer que l'aire du triangle $AMD$ ne dépend pas de la position de $M$ sur $[BC]$.

## Hints

1. Pour calculer l'aire d'un triangle, il faut choisir une base. Ici, le côté $[AD]$ est un bon choix. Combien mesure-t-il ?
2. Une fois la base choisie, la hauteur est la distance du point $M$ à la droite $(AD)$.
3. Les droites $(AD)$ et $(BC)$ sont deux côtés opposés du carré. Comment sont-elles placées l'une par rapport à l'autre, et à quelle distance ?

## Solution

**Le bon choix de base.**

L'aire d'un triangle vaut

$$\mathcal{A} = \frac{\text{base} \times \text{hauteur}}{2}$$

Prenons le côté $[AD]$ comme base. C'est un côté du carré, donc $AD = 10$ cm.

**La hauteur.**

La hauteur associée à cette base est la distance du point $M$ à la droite $(AD)$.

Les droites $(AD)$ et $(BC)$ portent deux côtés opposés du carré : elles sont parallèles, et la distance entre elles est égale au côté du carré, soit $10$ cm.

Le point $M$ est sur $[BC]$. Sa distance à la droite $(AD)$ vaut donc $10$ cm, **et cela quel que soit l'endroit où se trouve $M$ sur $[BC]$**.

**Les trois réponses.**

1. Si $M$ est le milieu de $[BC]$ :
   $$\mathcal{A} = \frac{10 \times 10}{2} = 50 \text{ cm}^2$$
2. Si $M$ est confondu avec $B$, la base et la hauteur n'ont pas changé :
   $$\mathcal{A} = \frac{10 \times 10}{2} = 50 \text{ cm}^2$$
3. Dans le cas général, la base vaut toujours $10$ cm et la hauteur vaut toujours $10$ cm, car $M$ reste sur $[BC]$. L'aire vaut donc toujours
   $$\mathcal{A} = \frac{10 \times 10}{2} = 50 \text{ cm}^2$$

L'aire ne dépend pas de la position de $M$. Elle vaut la moitié de l'aire du carré, qui est de $100$ cm².

**Ce qu'il faut retenir.** Quand on déplace le sommet d'un triangle sur une droite parallèle à sa base, la hauteur ne change pas, donc l'aire ne change pas.

## Going further

1. Que se passe-t-il si $M$ est un point de la droite $(BC)$ situé en dehors du segment $[BC]$ ?
2. Le carré est remplacé par un rectangle $ABCD$ avec $AB = 12$ cm et $BC = 7$ cm, et $M$ reste sur $[BC]$. L'aire du triangle $AMD$ dépend-elle encore de la position de $M$ ? Que vaut-elle ?
