---
id: "8519"
title: "3ⁿ = a² − 16"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [factorisation, puissances, diviseurs, equation-en-entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Entraînement de mi-parcours » du Groupe A, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les couples $(a, n)$ d'entiers naturels tels que

$$3^n = a^2 - 16 .$$

## Hints

1. Le membre de droite est une différence de deux carrés. Factorise-le.
2. Tu obtiens un produit de deux entiers qui vaut $3^n$. Que peux-tu dire de chacun des deux facteurs ?
3. Les deux facteurs sont donc deux puissances de $3$ dont la différence vaut $8$. Écris cette condition et mets la plus petite puissance en facteur.
4. Le nombre $3$ ne divise pas $8$ : qu'est-ce que cela impose à la plus petite des deux puissances ?

## Solution

**La factorisation.** L'égalité s'écrit

$$3^n = a^2 - 4^2 = (a - 4)(a + 4) .$$

**Les deux facteurs sont des puissances de 3.** D'abord, $a + 4 > 0$, et le produit
$3^n$ est strictement positif, donc $a - 4 > 0$ aussi.

Les deux entiers $a - 4$ et $a + 4$ sont donc des diviseurs positifs de $3^n$. Or les diviseurs
positifs de $3^n$ sont exactement $3^0, 3^1, \ldots, 3^n$. Il existe donc deux entiers naturels
$k$ et $\ell$ tels que

$$a - 4 = 3^k, \qquad a + 4 = 3^\ell, \qquad \text{avec } k \leqslant \ell \text{ et } k + \ell = n .$$

**La différence.** En soustrayant,

$$3^\ell - 3^k = (a+4) - (a-4) = 8 .$$

Mettons $3^k$ en facteur :

$$3^k \left(3^{\ell - k} - 1\right) = 8 .$$

Le nombre $3^k$ divise donc $8$. Mais $8 = 2^3$ n'a aucun diviseur multiple de $3$, donc
$3^k = 1$, c'est-à-dire $k = 0$.

Il reste $3^\ell - 1 = 8$, donc $3^\ell = 9$, donc $\ell = 2$.

**Conclusion.** On obtient $a - 4 = 3^0 = 1$, donc $a = 5$, et $n = k + \ell = 0 + 2 = 2$.

**Vérification.** $5^2 - 16 = 25 - 16 = 9 = 3^2$. C'est bon.

Le seul couple solution est $(a, n) = (5, 2)$.
