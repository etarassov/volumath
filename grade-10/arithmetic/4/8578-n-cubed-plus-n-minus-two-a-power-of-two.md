---
id: "8578"
title: "n³ + n − 2, une puissance de 2"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorisation, puissances-de-deux, divisibilite, equation-en-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Divisibilité, PGCD et nombres premiers » (Matthieu Bo.), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ pour lesquels $n^3 + n - 2$ est une puissance de $2$.

*Une puissance de $2$ est un nombre de la forme $2^k$ avec $k$ entier naturel : $1, 2, 4, 8, 16, \ldots$*

## Hints

1. Essaie les petites valeurs de $n$ pour deviner les réponses.
2. Le polynôme $n^3 + n - 2$ s'annule pour $n = 1$. Il est donc divisible par $n - 1$ : effectue la factorisation.
3. Si un produit de deux entiers positifs est une puissance de $2$, que peut-on dire de chacun des deux facteurs ?
4. Le plus petit des deux facteurs divise donc le plus grand. Retranche au grand facteur un multiple bien choisi du petit pour faire disparaître les $n$.

## Solution

**Expérimentation.** $n = 1$ donne $0$, qui n'est pas une puissance de $2$. $n = 2$ donne
$8 + 2 - 2 = 8 = 2^3$ : ça marche. $n = 3$ donne $27 + 3 - 2 = 28$ : non. $n = 4$ donne
$64 + 4 - 2 = 66$ : non. $n = 5$ donne $125 + 5 - 2 = 128 = 2^7$ : ça marche.

**La factorisation.** Le nombre $1$ annule $n^3 + n - 2$, donc $n - 1$ est en facteur :

$$n^3 + n - 2 = (n - 1)\left(n^2 + n + 2\right) .$$

*(Vérification : $(n-1)(n^2+n+2) = n^3 + n^2 + 2n - n^2 - n - 2 = n^3 + n - 2$.)*

**Les deux facteurs sont des puissances de 2.** Pour $n = 1$, le produit vaut $0$, ce n'est
pas une puissance de $2$. Supposons donc $n \geqslant 2$ : les deux facteurs $n-1$ et
$n^2 + n + 2$ sont alors des entiers strictement positifs.

Si leur produit est une puissance de $2$, chacun des deux est un diviseur positif d'une
puissance de $2$, donc chacun est lui-même une puissance de $2$.

**Une divisibilité.** Deux puissances de $2$ sont toujours comparables pour la divisibilité :
la plus petite divise la plus grande. Comme $n - 1 < n^2 + n + 2$, on en déduit

$$n - 1 \text{ divise } n^2 + n + 2 .$$

Or $(n-1)(n+2) = n^2 + n - 2$, donc $n-1$ divise aussi la différence

$$\left(n^2 + n + 2\right) - \left(n^2 + n - 2\right) = 4 .$$

**Les candidats.** Les diviseurs positifs de $4$ sont $1$, $2$ et $4$, donc
$n - 1 \in \{1, 2, 4\}$, c'est-à-dire

$$n \in \{2, 3, 5\} .$$

**Vérification.**

- $n = 2$ : $n^3 + n - 2 = 8 = 2^3$. C'est bon.
- $n = 3$ : $n^3 + n - 2 = 28 = 4 \times 7$. Ce n'est pas une puissance de $2$.
- $n = 5$ : $n^3 + n - 2 = 128 = 2^7$. C'est bon.

**Conclusion.** Les seules valeurs qui conviennent sont $n = 2$ et $n = 5$.
