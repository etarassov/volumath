---
id: "1421"
title: "Un nombre de trois chiffres et trois divisions"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [divisibilite, ppcm, multiples, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 1 « Numbers », problème 2 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Un nombre $Q$ s'écrit avec trois chiffres. On sait que :

- $Q - 7$ est divisible par $7$ ;
- $Q - 8$ est divisible par $8$ ;
- $Q - 9$ est divisible par $9$.

Trouver $Q$, et montrer qu'il n'y a pas d'autre réponse possible.

## Hints

1. Si $Q - 7$ est un multiple de $7$, que peut-on dire de $Q$ lui-même ? ($Q = (Q-7) + 7$.)
2. Traduire les trois conditions : $Q$ est un multiple de $7$, de $8$ et de $9$.
3. Un nombre qui est à la fois multiple de $7$, de $8$ et de $9$ est un multiple de leur PPCM. Combien vaut ce PPCM ?
4. Il ne reste plus qu'à chercher les multiples de ce nombre qui s'écrivent avec trois chiffres.

## Solution

**Traduire les trois conditions.**

Si $Q - 7$ est divisible par $7$, alors $Q = (Q - 7) + 7$ est une somme de deux multiples de $7$, donc $Q$ est lui-même un multiple de $7$.

Le même raisonnement s'applique aux deux autres conditions. Donc :

$$Q \text{ est un multiple de } 7, \text{ de } 8 \text{ et de } 9 .$$

(La réciproque est vraie aussi : si $Q$ est multiple de $7$, alors $Q - 7$ l'est également. Les trois conditions de l'énoncé disent donc exactement cela, ni plus ni moins.)

**Le plus petit multiple commun.**

Les nombres $7$, $8 = 2^3$ et $9 = 3^2$ n'ont aucun facteur premier en commun deux à deux. Leur PPCM est donc leur produit :

$$\mathrm{PPCM}(7, 8, 9) = 7 \times 8 \times 9 = 504 .$$

Un nombre multiple de $7$, de $8$ et de $9$ est donc un multiple de $504$.

**Chercher les multiples de 504 à trois chiffres.**

Les multiples de $504$ sont $0$, $504$, $1008$, $1512$, ...

Parmi eux, un seul s'écrit avec trois chiffres : $504$. Le suivant, $1008$, en a déjà quatre.

**Conclusion.** Le seul nombre possible est $\boxed{Q = 504}$.

**Vérification.** $504 - 7 = 497 = 7 \times 71$. $504 - 8 = 496 = 8 \times 62$. $504 - 9 = 495 = 9 \times 55$. Les trois divisions tombent juste.

## Going further

1. Pourquoi a-t-on le droit d'écrire $\mathrm{PPCM}(7, 8, 9) = 7 \times 8 \times 9$, alors que $\mathrm{PPCM}(4, 6) \neq 4 \times 6$ ?
2. Existe-t-il un nombre de trois chiffres $Q$ tel que $Q - 6$, $Q - 7$, $Q - 8$ et $Q - 9$ soient divisibles respectivement par $6$, $7$, $8$ et $9$ ?
3. Combien y a-t-il de nombres de **quatre** chiffres vérifiant les trois conditions de l'énoncé ?
