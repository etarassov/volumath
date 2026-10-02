---
id: "3011"
title: "Le maximum de a²(12 − 2a) sur [0 ; 6]"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [derivee, maximum, tableau-de-variations, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Inequalities I: AM-GM"
  reference: "Handout-3199-2749.pdf, exercice 5 (réponse dans Handout-3200-2749.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3199-2749.pdf"
---

## Statement

Pour $a$ compris entre $0$ et $6$, quelle est la plus grande valeur que peut prendre

$$a^2(12 - 2a) \; ?$$

Pour quelle valeur de $a$ ce maximum est-il atteint ?

## Hints

1. Développe : tu obtiens un polynôme de degré $3$. Tu peux alors le dériver.
2. La dérivée se factorise très simplement. Cherche ses racines.
3. Dresse le tableau de signes de la dérivée sur $[0 \, ; 6]$, puis le tableau de variations.
4. N'oublie pas de comparer avec les valeurs aux bornes $a = 0$ et $a = 6$.

## Solution

**La fonction.**

Posons, pour $a \in [0 \, ; 6]$,

$$f(a) = a^2(12 - 2a) = 12a^2 - 2a^3.$$

**La dérivée.**

$$f'(a) = 24a - 6a^2 = 6a(4 - a).$$

Sur $[0 \, ; 6]$, le facteur $6a$ est positif, et $4 - a$ est positif pour $a < 4$, négatif
pour $a > 4$. Donc :

| $a$ | $0$ | | $4$ | | $6$ |
|---|---|---|---|---|---|
| signe de $f'(a)$ | $0$ | $+$ | $0$ | $-$ | |
| variations de $f$ | $0$ | croissante | $64$ | décroissante | $0$ |

**Les valeurs.**

$$f(4) = 4^2 \times (12 - 8) = 16 \times 4 = 64,$$
$$f(0) = 0, \qquad f(6) = 36 \times 0 = 0.$$

La fonction croît de $0$ à $64$ puis redescend à $0$.

**Conclusion.**

Le maximum de $a^2(12 - 2a)$ sur $[0 \, ; 6]$ vaut $64$, atteint pour $a = 4$.

## Going further

On peut éviter la dérivée. Écrivons le produit avec trois facteurs :

$$a^2(12 - 2a) = a \times a \times (12 - 2a).$$

La somme de ces trois facteurs vaut $a + a + 12 - 2a = 12$, qui ne dépend pas de $a$ !
L'inégalité entre moyenne arithmétique et moyenne géométrique pour trois nombres positifs
donne alors

$$a \times a \times (12 - 2a) \leq \left(\frac{12}{3}\right)^3 = 64,$$

avec égalité quand les trois facteurs sont égaux, c'est-à-dire $a = 12 - 2a$, donc $a = 4$.

Ce genre de découpage — arranger les facteurs pour que leur somme soit constante — est
l'astuce centrale des problèmes de maximum d'olympiade.
