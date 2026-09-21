---
id: "7747"
title: "Quand 3x² + 2x + 2 ne peut pas être un carré"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carre parfait, reste, parite, division par quatre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, test de fin de parcours du mardi 26 août"
  reference: "stage_ete_2014.pdf, « Test de fin de parcours », Groupe A, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Trouver tous les entiers $x$ et $y$ strictement positifs tels que

$$3x^2 + 2x + 2 = y^2 .$$

## Hints

1. Essaie les premières valeurs de $x$ : $7$, $18$, $35$, $58$… Aucune n'est un carré. Il faut donc montrer que ce n'est jamais le cas.
2. Quand on veut montrer qu'un nombre n'est pas un carré, il est souvent efficace de regarder son **reste** dans la division par un petit nombre. Essaie $4$.
3. Commence par établir que le carré d'un entier laisse toujours le reste $0$ ou $1$ dans la division par $4$. Sépare selon la parité.
4. Calcule maintenant le reste de $3x^2 + 2x + 2$ dans la division par $4$, en séparant les cas $x$ pair et $x$ impair.

## Solution

**Il n'y a aucune solution.**

**Étape 1 : un carré laisse le reste $0$ ou $1$ dans la division par $4$.**

Soit $y$ un entier.

- Si $y$ est pair, $y = 2k$, alors $y^2 = 4k^2$ : le reste est $0$.
- Si $y$ est impair, $y = 2k+1$, alors $y^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1$ : le reste est $1$.

Donc $y^2$ laisse toujours le reste $0$ ou $1$ dans la division par $4$.

**Étape 2 : le reste de $3x^2 + 2x + 2$ dans la division par $4$.**

Séparons selon la parité de $x$.

*Si $x$ est pair*, écrivons $x = 2k$ :

$$3x^2 + 2x + 2 = 3 \times 4k^2 + 4k + 2 = 4\,(3k^2 + k) + 2 .$$

Le reste est $2$.

*Si $x$ est impair*, écrivons $x = 2k+1$ :

$$3x^2 + 2x + 2 = 3(4k^2 + 4k + 1) + (4k + 2) + 2 = 12k^2 + 12k + 3 + 4k + 4 = 4\,(3k^2 + 4k + 1) + 3 .$$

Le reste est $3$.

**Étape 3 : on compare.**

Dans tous les cas, $3x^2 + 2x + 2$ laisse le reste $2$ ou $3$ dans la division par $4$. Or un carré laisse toujours le reste $0$ ou $1$.

L'égalité $3x^2 + 2x + 2 = y^2$ est donc impossible, quels que soient les entiers $x$ et $y$.

**Conclusion : l'équation n'a aucune solution en entiers strictement positifs. Elle n'en a d'ailleurs aucune en entiers tout court.**

## Going further

La méthode est très générale : pour montrer qu'une équation en nombres entiers n'a pas de solution, on cherche un petit nombre $m$ tel que les deux membres ne puissent jamais avoir le même reste dans la division par $m$. Les valeurs de $m$ qui marchent le plus souvent sont $3$, $4$, $8$ et $9$.

Attention toutefois : cette méthode peut échouer alors même que l'équation n'a pas de solution. Elle prouve qu'il n'y en a pas quand elle réussit, mais son échec ne prouve rien.
