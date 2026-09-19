---
id: "4008"
title: "Trois racines emboîtées"
grade: 9
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [racine-carree, calcul, puissances]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 1 (réponse 8 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Calculer

$$\sqrt{16\sqrt{8\sqrt{4}}}.$$

## Hints

1. Commence par la racine la plus intérieure, celle de $4$.
2. Remplace-la par sa valeur, et recommence avec la racine suivante.
3. À chaque étape, le nombre sous la racine doit devenir un carré parfait.

## Solution

On part de l'intérieur.

**Première racine.** $\sqrt{4} = 2$. L'expression devient

$$\sqrt{16\sqrt{8 \times 2}} = \sqrt{16\sqrt{16}}.$$

**Deuxième racine.** $\sqrt{16} = 4$. L'expression devient

$$\sqrt{16 \times 4} = \sqrt{64}.$$

**Troisième racine.** $\sqrt{64} = 8$.

**Réponse : l'expression vaut $8$.**

## Going further

Les nombres $16$, $8$ et $4$ n'ont pas été choisis au hasard : ce sont $2^4$, $2^3$ et
$2^2$. En utilisant les puissances, on peut écrire l'expression comme une puissance de $2$
dont l'exposant se calcule en divisant par $2$ à chaque racine :
$$\sqrt{4} = 2^1, \qquad \sqrt{8 \times 2^1} = \sqrt{2^4} = 2^2, \qquad \sqrt{16 \times 2^2} = \sqrt{2^6} = 2^3 = 8.$$
