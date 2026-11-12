---
id: "22060"
title: "Quand 5ⁿ + 4 est-il un carré ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carres, puissances, factorisation, difference-de-carres, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les entiers $n \geq 0$ tels que $5^n + 4$ soit le carré d'un entier.

## Hints

1. Essayez $n = 0, 1, 2, 3$.
2. Écrivez $5^n + 4 = a^2$ avec $a$ entier positif, puis passez le $4$ de l'autre côté. Que reconnaissez-vous ?
3. Si un produit de deux entiers positifs vaut $5^n$, que peut-on dire de chacun des deux facteurs ?

## Solution

Pour $n = 0$, on obtient $5^0 + 4 = 5$, qui n'est pas un carré. Pour $n = 1$, on obtient $9 = 3^2$ : cela convient.

Supposons maintenant $n \geq 1$ et $5^n + 4 = a^2$ avec $a$ entier positif. Alors $a^2 \geq 9$, donc $a \geq 3$, et
$$5^n = a^2 - 4 = (a - 2)(a + 2).$$

**Les deux facteurs sont des puissances de $5$.** Les nombres $a - 2$ et $a + 2$ sont des entiers positifs dont le produit vaut $5^n$. Par l'unicité de la décomposition en facteurs premiers, le seul nombre premier qui peut les diviser est $5$. Chacun est donc une puissance de $5$ :
$$a - 2 = 5^i \qquad \text{et} \qquad a + 2 = 5^j \qquad \text{avec } i + j = n \text{ et } i < j.$$

**Le petit facteur vaut $1$.** Si l'on avait $i \geq 1$, les deux nombres $5^i$ et $5^j$ seraient des multiples de $5$, donc leur différence aussi. Or cette différence vaut $(a + 2) - (a - 2) = 4$, qui n'est pas un multiple de $5$. Donc $i = 0$, c'est-à-dire $a - 2 = 1$ et $a = 3$.

Alors $5^n = a^2 - 4 = 9 - 4 = 5$, donc $n = 1$.

**Conclusion.** Le nombre $5^n + 4$ est un carré pour $n = 1$ seulement, et alors $5^1 + 4 = 9 = 3^2$.

## Going further

1. Pour quels entiers $n \geq 0$ le nombre $3^n + 4$ est-il un carré ? Et $7^n + 9$ ?
2. Pour quels entiers $n \geq 0$ le nombre $2^n + 1$ est-il un carré ?
