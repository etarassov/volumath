---
id: "2219"
title: "Des 1, des 0, et un multiple de 225"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, criteres-de-divisibilite, chiffres, recherche-du-minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 3)"
  reference: "Handout-822-889.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-822-889.pdf"
---

## Statement

Trouver le plus petit entier strictement positif qui s'écrit uniquement avec des chiffres $1$ et des chiffres $0$, et qui est divisible par $225$.

## Hints

1. Essayer les nombres un par un serait très long. Commence plutôt par décomposer $225$ en produit de facteurs plus commodes.
2. $225 = 9 \times 25$, et $9$ et $25$ n'ont aucun diviseur commun autre que $1$. Un nombre est donc divisible par $225$ exactement quand il est divisible **à la fois** par $9$ et par $25$.
3. Un nombre est divisible par $25$ lorsque ses deux derniers chiffres forment $00$, $25$, $50$ ou $75$. Avec seulement des $1$ et des $0$, laquelle de ces quatre terminaisons est possible ?
4. Un nombre est divisible par $9$ lorsque la somme de ses chiffres l'est. Ici, la somme des chiffres est simplement le nombre de $1$ écrits.
5. On cherche le **plus petit** : commence donc par avoir le moins de chiffres possible, et parmi ceux-là, place les $1$ le plus à droite possible.

## Solution

**On coupe $225$ en deux.**

$$225 = 9 \times 25 .$$

Les nombres $9$ et $25$ n'ont pas de facteur premier commun : $9 = 3^2$ et $25 = 5^2$. Un entier est donc divisible par $225$ si et seulement s'il est divisible par $9$ **et** par $25$. On traite les deux conditions séparément.

**La divisibilité par 25.**

Un entier est divisible par $25$ si et seulement si le nombre formé par ses deux derniers chiffres est $00$, $25$, $50$ ou $75$.

Notre nombre n'est écrit qu'avec des $1$ et des $0$. Les terminaisons $25$, $50$ et $75$ contiennent des chiffres interdits. Il ne reste donc qu'une possibilité :

**le nombre se termine par $00$.**

**La divisibilité par 9.**

Un entier est divisible par $9$ si et seulement si la somme de ses chiffres est divisible par $9$. Ici, chaque chiffre vaut $1$ ou $0$ : la somme des chiffres est exactement **le nombre de $1$** écrits.

Il faut donc que le nombre de $1$ soit un multiple de $9$. Comme le nombre est strictement positif, il contient au moins un $1$, donc au moins **neuf** $1$.

**On assemble, en cherchant le plus petit.**

Le nombre doit contenir au moins neuf $1$ et se terminer par deux $0$. Il a donc au moins $9 + 2 = 11$ chiffres.

Un nombre à $11$ chiffres est plus petit que tout nombre à $12$ chiffres ou plus : cherchons donc parmi les nombres à exactement $11$ chiffres. Ils sont alors forcés : neuf $1$ et deux $0$, les deux $0$ étant tout à la fin. Il n'y a qu'un seul nombre de ce type :

$$11\,111\,111\,100 .$$

**Vérification.**

- Ses deux derniers chiffres forment $00$, donc il est divisible par $25$. Précisément, $11\,111\,111\,100 = 25 \times 444\,444\,444$.
- La somme de ses chiffres vaut $9$, donc il est divisible par $9$.
- Enfin, $11\,111\,111\,100 = 225 \times 49\,382\,716$.

**Conclusion.** Le plus petit entier écrit uniquement avec des $1$ et des $0$ et divisible par $225$ est

$$11\,111\,111\,100 .$$

**Ce qu'il faut retenir.** Découper le diviseur en facteurs premiers entre eux transforme une seule condition difficile en deux conditions faciles, chacune lisible directement sur l'écriture décimale : les derniers chiffres pour $25$, la somme des chiffres pour $9$.

## Going further

1. Quel est le plus petit entier écrit uniquement avec des $1$ et des $0$ divisible par $45$ ? par $75$ ?
2. Quel est le plus petit entier écrit uniquement avec des chiffres $7$ et des chiffres $0$ divisible par $225$ ?
3. Montrer que, pour tout entier $n$, il existe un multiple de $n$ qui s'écrit uniquement avec des $1$ et des $0$. (Indication : considérer les $n+1$ nombres $1$, $11$, $111$, … et leurs restes modulo $n$.)
