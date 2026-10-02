---
id: "5211"
title: "Trente entiers dont le produit vaut 1"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [parite, entiers, produit, somme, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « Parity problems », problème 1"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

Le produit de trente nombres entiers relatifs vaut $1$.

Leur somme peut-elle être nulle ?

## Hints

1. Commencez par une question plus simple : quels sont les entiers qui peuvent apparaître dans cette liste ? Que se passerait-il si l'un d'eux valait $7$, ou $-3$, ou $0$ ?
2. Pensez aux valeurs absolues. Le produit des valeurs absolues vaut $1$, et ce sont des entiers positifs.
3. Une fois que vous savez que chaque nombre vaut $1$ ou $-1$, appelez $k$ le nombre de $-1$ dans la liste. Que vaut le produit ? Que vaut la somme ?
4. Le produit impose une condition sur $k$, la somme en impose une autre. Sont-elles compatibles ?

## Solution

**Étape 1 : chacun des trente nombres vaut $1$ ou $-1$.**

Aucun des nombres n'est nul, sinon le produit serait nul, alors qu'il vaut $1$.

Prenons les valeurs absolues. Le produit des trente valeurs absolues est la valeur absolue du produit, c'est-à-dire $1$. Or ce sont trente entiers supérieurs ou égaux à $1$. Si l'un d'eux était supérieur ou égal à $2$, le produit de tous serait lui aussi supérieur ou égal à $2$, ce qui est faux.

Donc les trente valeurs absolues valent toutes $1$ : chacun des trente nombres vaut $1$ ou $-1$.

**Étape 2 : ce que dit le produit.**

Appelons $k$ le nombre de $-1$ dans la liste. Il y a donc $30 - k$ nombres égaux à $1$. Le produit vaut

$$(-1)^k .$$

Comme ce produit vaut $1$, l'entier $k$ est **pair**.

**Étape 3 : ce que dirait la somme.**

La somme vaut

$$(30 - k) \times 1 + k \times (-1) = 30 - 2k .$$

Si cette somme était nulle, on aurait $30 - 2k = 0$, donc $k = 15$. Or $15$ est **impair**, ce qui contredit l'étape 2.

**Conclusion.** La somme de ces trente nombres ne peut pas être nulle.

*(On peut ajouter que la somme vaut toujours $30 - 2k$ avec $k$ pair, donc elle est toujours un multiple de $4$ : les valeurs possibles sont $30, 26, 22, \ldots, -26, -30$. La valeur la plus proche de $0$ est $2$, obtenue pour $k = 14$.)*
