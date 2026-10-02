---
id: "13251"
title: "x + 2y = z et x² − 4y² + z² = 310"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, equations-en-entiers, diviseurs, substitution]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés lycée, exercice 6 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf. Le corrigé écrit « zx = 15 = 5 × 31 » au lieu de zx = 155 ; la suite du calcul utilise bien 155."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

Les entiers strictement positifs $x$, $y$ et $z$ vérifient les deux équations

$$x + 2y = z \qquad \text{et} \qquad x^2 - 4y^2 + z^2 = 310.$$

Trouver toutes les valeurs que peut prendre le produit $xyz$.

## Hints

1. Que vaut $2y$ en fonction de $x$ et de $z$ ? Et $4y^2$ ?
2. Remplace $4y^2$ dans la seconde équation et développe : beaucoup de termes disparaissent.
3. Décompose $155$ en produit de facteurs premiers. N'oublie pas que $z$ est plus grand que $x$.

## Solution

**On élimine $y$.** La première équation donne $2y = z - x$, donc $4y^2 = (2y)^2 = (z - x)^2 = z^2 - 2xz + x^2$. La seconde équation devient

$$x^2 - (z^2 - 2xz + x^2) + z^2 = 310, \qquad \text{soit} \qquad 2xz = 310, \qquad xz = 155.$$

**Les possibilités.** On a $155 = 5 \times 31$, avec $5$ et $31$ premiers, donc les diviseurs de $155$ sont $1$, $5$, $31$, $155$. Comme $y > 0$, on a $z = x + 2y > x$. Les seules possibilités sont donc

- $x = 1$, $z = 155$, et $y = \frac{z - x}{2} = 77$ ;
- $x = 5$, $z = 31$, et $y = \frac{z - x}{2} = 13$.

Dans les deux cas, $y$ est bien un entier strictement positif.

**Vérification.** Pour $(1, 77, 155)$ : $1 + 154 = 155$ et $1 - 4 \times 5929 + 24\,025 = 1 - 23\,716 + 24\,025 = 310$. Pour $(5, 13, 31)$ : $5 + 26 = 31$ et $25 - 676 + 961 = 310$.

**Conclusion.** Le produit $xyz$ peut valoir $1 \times 77 \times 155 = 11\,935$ ou $5 \times 13 \times 31 = 2015$, et rien d'autre.
