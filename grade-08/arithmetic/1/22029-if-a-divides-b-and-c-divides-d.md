---
id: "22029"
title: "Si a divise b et c divise d"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [divisibilite, diviseurs, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Divisibilité, PGCD » (Paul), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On dit qu'un entier $a$ **divise** un entier $b$, et on écrit $a \mid b$, s'il existe un entier $k$ tel que $b = k \times a$.

Soient $a$, $b$, $c$, $d$ des entiers. Montrer que si $a \mid b$ et $c \mid d$, alors $ac \mid bd$.

## Hints

1. Traduisez les deux hypothèses avec la définition : il existe deux entiers $k$ et $k'$ tels que...
2. Calculez le produit $bd$.

## Solution

Comme $a \mid b$, il existe un entier $k$ tel que $b = k \times a$.

Comme $c \mid d$, il existe un entier $k'$ tel que $d = k' \times c$.

Multiplions ces deux égalités :

$$bd = (k \times a) \times (k' \times c) = (k \times k') \times (ac).$$

Le nombre $k \times k'$ est un entier, car c'est un produit d'entiers.

**Conclusion.** Le produit $bd$ s'écrit (un entier) $\times\ ac$, donc $ac \mid bd$.

## Going further

1. La réciproque est-elle vraie ? Si $ac \mid bd$, a-t-on forcément $a \mid b$ et $c \mid d$ ? Cherchez un contre-exemple.
2. En déduire que si $a \mid b$, alors $a^2 \mid b^2$.
