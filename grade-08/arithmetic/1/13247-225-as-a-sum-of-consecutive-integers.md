---
id: "13247"
title: "225 comme somme d'entiers consécutifs"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [parite, entiers-consecutifs, calcul-litteral]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés collège, exercice 1 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

On peut écrire $225$ comme la somme de $3$ nombres entiers consécutifs :

$$225 = 74 + 75 + 76.$$

a) Peut-on écrire $225$ comme la somme de $5$ nombres entiers consécutifs ?

b) Peut-on l'écrire comme la somme de $4$ nombres entiers consécutifs ?

## Hints

1. Pour a) : cinq nombres consécutifs se répartissent autour de celui du milieu. Combien vaut-il ?
2. Pour b) : appelle $n$ le plus petit des quatre nombres et écris leur somme en fonction de $n$.
3. Cette somme est-elle paire ou impaire ?

## Solution

**a) Oui.** Cinq nombres consécutifs s'écrivent $m - 2$, $m - 1$, $m$, $m + 1$, $m + 2$, et leur somme vaut $5m$. Il faut donc $5m = 225$, soit $m = 45$ :

$$225 = 43 + 44 + 45 + 46 + 47.$$

**b) Non.** Quatre nombres entiers consécutifs s'écrivent $n$, $n + 1$, $n + 2$, $n + 3$, et leur somme vaut

$$4n + 6 = 2\,(2n + 3).$$

C'est un nombre pair, quel que soit l'entier $n$. Or $225$ est impair, donc il n'est pas la somme de quatre entiers consécutifs.

On peut aussi le voir sans lettre : parmi quatre entiers consécutifs, deux sont pairs et deux sont impairs, et la somme de deux impairs est paire, donc le total est pair.

**Conclusion.** $225$ est la somme de cinq entiers consécutifs ($43$ à $47$), mais pas de quatre.

## Going further

Peut-on écrire $225$ comme la somme de $2$ entiers consécutifs ? de $6$ ? de $10$ ?
