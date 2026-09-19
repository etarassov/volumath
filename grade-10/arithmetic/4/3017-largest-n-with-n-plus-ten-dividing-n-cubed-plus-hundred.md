---
id: "3017"
title: "Le plus grand n tel que n + 10 divise n³ + 100"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [divisibilite, identites remarquables, diviseurs, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 4 (AIME 1986 ; réponse dans Handout-3328-2885.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Quel est le plus grand entier strictement positif $n$ tel que $n + 10$ divise $n^3 + 100$ ?

## Hints

1. Essaie $n = 1, 2, 3, \ldots$ pour voir à quoi ressemblent les solutions. Tu en trouveras plusieurs petites.
2. Cherche un multiple de $n+10$ qui ressemble à $n^3$. Que vaut $(n+10)\left(n^2 - 10n + 100\right)$ ?
3. Tu vas trouver $n^3 + 1000$. Compare avec $n^3 + 100$ : la différence est une constante.
4. Si $n+10$ divise $n^3 + 100$ et divise aussi $n^3 + 1000$, alors il divise leur différence.

## Solution

**L'identité qui débloque tout.**

Développons :

$$(n+10)\left(n^2 - 10n + 100\right) = n^3 - 10n^2 + 100n + 10n^2 - 100n + 1000 = n^3 + 1000.$$

(C'est l'identité $a^3 + b^3 = (a+b)\left(a^2 - ab + b^2\right)$ avec $a = n$ et $b = 10$.)

Donc

$$n^3 + 100 = (n+10)\left(n^2 - 10n + 100\right) - 900.$$

**La condition devient simple.**

Le produit $(n+10)\left(n^2 - 10n + 100\right)$ est toujours un multiple de $n+10$. Donc

$$n + 10 \text{ divise } n^3 + 100
\iff n + 10 \text{ divise } 900.$$

**On cherche le plus grand.**

Il faut que $n + 10$ soit un diviseur de $900$. Le plus grand diviseur de $900$ est $900$
lui-même, ce qui donne

$$n + 10 = 900, \qquad n = 890.$$

**Vérification.**

Avec $n = 890$ : $n^3 + 100 = 900 \times \left(890^2 - 8900 + 100\right) - 900$, qui est bien
un multiple de $900 = n + 10$.

**Conclusion.**

Le plus grand entier convenable est $n = 890$.

## Going further

Toutes les solutions s'obtiennent de la même façon : $n = d - 10$ où $d$ parcourt les
diviseurs de $900$ strictement plus grands que $10$. Comme
$900 = 2^2 \times 3^2 \times 5^2$, il a $3 \times 3 \times 3 = 27$ diviseurs, dont huit sont
inférieurs ou égaux à $10$ : $1, 2, 3, 4, 5, 6, 9, 10$. Il reste donc $19$ valeurs de $n$
strictement positives, la plus petite étant $n = 2$ (avec $d = 12$ : $8 + 100 = 108 = 12 \times 9$).
