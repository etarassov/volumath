---
id: "5001"
title: "Des frisbees et des ballons pour 52 euros"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [entiers, multiples, parite, equation-a-deux-inconnues]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 2, problème 9"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

Tu disposes de $52$ euros et tu veux les dépenser **entièrement**, sans qu'il te reste
un centime.

Au magasin de sport, un frisbee coûte $8$ euros et un ballon de football coûte $12$ euros.

Quelles sont toutes les façons de dépenser exactement $52$ euros ?

## Hints

1. Appelle $f$ le nombre de frisbees et $b$ le nombre de ballons. Écris la dépense totale
   en fonction de $f$ et de $b$.
2. Les trois nombres $8$, $12$ et $52$ ont un diviseur commun bien visible. Divise toute
   l'égalité par ce diviseur : les nombres deviennent beaucoup plus petits.
3. Tu dois arriver à $2f + 3b = 13$. Le terme $2f$ est pair. Que peut-on alors dire de $3b$ ?
4. Si $3b$ est impair, alors $b$ est impair. Et comme $3b \leqslant 13$, il ne reste que
   très peu de valeurs à essayer.

## Solution

**Mise en équation.** Notons $f$ le nombre de frisbees et $b$ le nombre de ballons. Ce sont
deux entiers positifs ou nuls, et la dépense s'écrit

$$8f + 12b = 52 .$$

**On simplifie.** Les trois nombres $8$, $12$ et $52$ sont des multiples de $4$. En divisant
toute l'égalité par $4$ :

$$2f + 3b = 13 .$$

**On coince $b$.** Le nombre $2f$ est pair. Comme la somme $2f + 3b$ vaut $13$, qui est
impair, le nombre $3b$ est forcément impair. Un multiple de $3$ n'est impair que si $b$
lui-même est impair.

De plus $3b \leqslant 13$, donc $b \leqslant 4$. Les seules valeurs possibles sont donc
$b = 1$ et $b = 3$.

**On regarde les deux cas.**

- Si $b = 1$ : $2f = 13 - 3 = 10$, donc $f = 5$.
- Si $b = 3$ : $2f = 13 - 9 = 4$, donc $f = 2$.

**Vérification.**

- $5$ frisbees et $1$ ballon : $5 \times 8 + 1 \times 12 = 40 + 12 = 52$.
- $2$ frisbees et $3$ ballons : $2 \times 8 + 3 \times 12 = 16 + 36 = 52$.

**Conclusion.** Il y a exactement **deux** façons de dépenser les $52$ euros :
$5$ frisbees et $1$ ballon, ou bien $2$ frisbees et $3$ ballons.

## Going further

Pourquoi a-t-on pu simplifier par $4$ ? Parce que $4$ est le $\mathrm{PGCD}$ de $8$ et de $12$ :
toute dépense de la forme $8f + 12b$ est un multiple de $4$.

Cela donne un test immédiat. Avec un budget de $50$ euros, par exemple, il n'y aurait
**aucune** solution : $50$ n'est pas un multiple de $4$, alors que toute dépense possible en
est un. Avant de chercher, il vaut donc la peine de regarder si le budget est un multiple du
$\mathrm{PGCD}$ des deux prix.
