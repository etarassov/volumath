---
id: "10826"
title: "Un nombre fini de nombres premiers de la forme n³ + 2n + 3"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, divisibilite, restes, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Prouver qu'il n'existe qu'un nombre fini de nombres premiers qui s'écrivent sous la forme

$$n^3 + 2n + 3,$$

où $n$ est un entier naturel ($n = 0, 1, 2, \ldots$).

## Hints

1. Calcule ce nombre pour $n = 0, 1, 2, 3, 4$. Que remarques-tu ?
2. Développe le produit $(n - 1) \times n \times (n + 1)$.
3. Parmi trois entiers qui se suivent, l'un est toujours un multiple de $3$. Écris $n^3 + 2n + 3$ à l'aide de $n^3 - n$.

## Solution

**Réponse : un seul nombre premier s'écrit sous cette forme, c'est $3$, obtenu pour $n = 0$.**

Notons $A = n^3 + 2n + 3$. Pour $n = 0, 1, 2, 3, 4$, on trouve $A = 3$, $6$, $15$, $36$, $75$ : ce sont tous des multiples de $3$. Montrons que c'est toujours le cas.

### Étape 1 : $n^3 - n$ est un multiple de $3$

En développant, $(n - 1)(n + 1) = n^2 + n - n - 1 = n^2 - 1$, donc
$$(n - 1) \times n \times (n + 1) = n \times \left(n^2 - 1\right) = n^3 - n .$$
Les trois nombres $n - 1$, $n$ et $n + 1$ se suivent. Or, parmi trois entiers qui se suivent, l'un est un multiple de $3$ : leurs restes dans la division par $3$ se suivent aussi, donc l'un des trois restes vaut $0$. Le produit $n^3 - n$ est donc un multiple de $3$. (Pour $n = 0$, le produit vaut $0$, qui est aussi un multiple de $3$.)

### Étape 2 : $A$ est un multiple de $3$

On écrit
$$A = n^3 + 2n + 3 = \left(n^3 - n\right) + 3n + 3 .$$
Les trois termes $n^3 - n$, $3n$ et $3$ sont des multiples de $3$, donc **$A$ est un multiple de $3$ pour tout $n$.**

### Étape 3 : conclusion

Un nombre premier qui est un multiple de $3$ est forcément égal à $3$. Si $A$ est premier, alors $A = 3$, donc $n^3 + 2n = 0$. Comme $n \geqslant 0$, cela donne $n = 0$.

**Le seul nombre premier de la forme $n^3 + 2n + 3$ est $3$**, obtenu pour $n = 0$. Il n'y en a donc qu'un nombre fini.

## Going further

1. Vérifie que $n^3 + 2n + 3 = (n + 1)\left(n^2 - n + 3\right)$. Retrouve ainsi que ce nombre n'est jamais premier quand $n \geqslant 1$.
2. Montre que $n^3 + 5n$ est un multiple de $6$ pour tout entier naturel $n$.
