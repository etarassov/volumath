---
id: "0253"
title: "Somme des carrés de deux nombres impairs"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carres, restes, parite, divisibilite, impossibilite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, письменная работа, задача 8"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

La somme des carrés de deux nombres impairs peut-elle être le carré d'un entier ?

## Hints

1. Fais quelques essais : $3^2 + 5^2$, $1^2 + 7^2$, $5^2 + 9^2$, $7^2 + 11^2$. Tu n'obtiendras jamais un carré. Il faut donc trouver une raison, et non pas un exemple.
2. Regarde les restes dans la division par 4. Écris un nombre impair sous la forme $2a+1$ et développe $(2a+1)^2$.
3. Tu devrais trouver $(2a+1)^2 = 4(a^2+a) + 1$ : le carré d'un nombre impair laisse toujours le reste 1 dans la division par 4. Quel est alors le reste de la somme des deux carrés ?
4. Reste à savoir quels restes un carré d'entier peut laisser dans la division par 4. Traite séparément le cas d'un entier pair et celui d'un entier impair.

## Solution

**L'idée : on regarde les restes dans la division par 4.**

**Étape 1. Le carré d'un nombre impair laisse le reste 1 dans la division par 4.**

Un nombre impair s'écrit $2a+1$, où $a$ est un entier. Alors
$$(2a+1)^2 = 4a^2 + 4a + 1 = 4\,(a^2+a) + 1 .$$

Comme $a^2+a$ est un entier, ce nombre est de la forme $4k+1$ : son reste dans la division
par 4 vaut 1.

**Étape 2. La somme des deux carrés laisse le reste 2.**

Soient $2a+1$ et $2b+1$ nos deux nombres impairs. D'après l'étape 1,
$$(2a+1)^2 + (2b+1)^2 = 4(a^2+a) + 1 + 4(b^2+b) + 1 = 4\,\big(a^2+a+b^2+b\big) + 2 .$$

Cette somme est donc de la forme $4k+2$ : son reste dans la division par 4 vaut 2.

**Étape 3. Un carré d'entier ne laisse jamais le reste 2.**

Soit $n$ un entier. Il y a deux cas.

- Si $n$ est pair, $n = 2m$, alors $n^2 = 4m^2$ : le reste vaut 0.
- Si $n$ est impair, on a vu à l'étape 1 que le reste vaut 1.

Un carré d'entier laisse donc toujours le reste 0 ou le reste 1 dans la division par 4.
Jamais 2.

**Étape 4. Conclure.**

La somme des carrés de deux nombres impairs laisse le reste 2, alors qu'un carré laisse le
reste 0 ou 1. Ces deux choses sont incompatibles.

**Conclusion.** Non, la somme des carrés de deux nombres impairs n'est jamais le carré d'un
entier.

**Vérification sur un exemple.** $3^2 + 5^2 = 9 + 25 = 34$, et $34 = 4 \times 8 + 2$. Entre
$5^2 = 25$ et $6^2 = 36$, il n'y a en effet aucun carré.

## Going further

1. La somme des carrés de trois nombres impairs peut-elle être un carré ?
2. Un nombre de la forme $4k+3$ peut-il s'écrire comme la somme de deux carrés d'entiers ?
3. La somme des carrés de deux nombres impairs peut-elle être le double d'un carré ?
   (Essaie $1^2 + 7^2$.)
