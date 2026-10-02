---
id: "7916"
title: "Ce qui divise toujours a(a+2)(a+4)"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, multiples-de-3, restes, pgcd]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 8 (énoncé p. 23, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Quel est le plus grand entier qui divise tous les nombres de la forme

$$a(a+2)(a+4) ,$$

où $a$ parcourt les entiers strictement positifs ?

## Hints

1. Calcule le produit pour $a = 1$, puis pour $a = 2$. Quel est le PGCD de ces deux nombres ? Cela te donne une borne : la réponse ne peut pas être plus grande.
2. Il reste à montrer que ce nombre divise vraiment **tous** les produits.
3. Les trois facteurs avancent de deux en deux. Regarde leurs restes dans la division par $3$ : sépare les cas $a = 3k$, $a = 3k+1$, $a = 3k+2$.

## Solution

**La réponse : $3$.**

**Étape 1 : la réponse ne peut pas dépasser $3$.**

Calculons deux valeurs :

- pour $a = 1$ : $1 \times 3 \times 5 = 15$ ;
- pour $a = 2$ : $2 \times 4 \times 6 = 48$.

Un entier qui divise tous les produits divise en particulier $15$ et $48$. Or

$$\mathrm{PGCD}(15, 48) = 3 ,$$

car $15 = 3 \times 5$ et $48 = 3 \times 16$, et $5$ et $16$ n'ont pas de facteur commun.

Le nombre cherché est donc un diviseur de $3$ : c'est $1$ ou $3$.

**Étape 2 : $3$ divise toujours $a(a+2)(a+4)$.**

Tout entier $a$ s'écrit $3k$, $3k+1$ ou $3k+2$.

- Si $a = 3k$ : le premier facteur $a$ est un multiple de $3$.
- Si $a = 3k+1$ : alors $a + 2 = 3k + 3 = 3(k+1)$ est un multiple de $3$.
- Si $a = 3k+2$ : alors $a + 4 = 3k + 6 = 3(k+2)$ est un multiple de $3$.

Dans les trois cas, l'un des facteurs est un multiple de $3$, donc le produit aussi.

**Conclusion.** Le plus grand entier qui divise tous les nombres $a(a+2)(a+4)$ est $\boxed{3}$.

## Going further

Pourquoi n'a-t-on pas mieux, alors que le produit de trois entiers **consécutifs** est toujours divisible par $6$ ? Parce qu'ici les trois facteurs $a$, $a+2$, $a+4$ ont tous la même parité : quand $a$ est impair, les trois sont impairs et le produit est impair. Aucune puissance de $2$ ne peut donc figurer dans la réponse.
