---
id: "8518"
title: "a² = 2ⁿ + 15"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre-parfait, puissances-de-deux, congruences, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Entraînement de mi-parcours » du Groupe A, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les couples $(a, n)$ d'entiers naturels tels que

$$a^2 = 2^n + 15 .$$

## Hints

1. Commence par essayer les petites valeurs de $n$ : $n = 0$, $1$, $2$, $3$, $4$… Tu devrais trouver une solution très vite, puis plus rien.
2. Pour éliminer toutes les autres valeurs, regarde les restes dans la division par $4$. Quels sont les restes possibles du carré d'un entier quand on divise par $4$ ?
3. Et quel est le reste de $2^n + 15$ dans la division par $4$, lorsque $n \geqslant 2$ ?
4. Il ne restera plus qu'à traiter à la main les deux cas $n = 0$ et $n = 1$.

## Solution

**Les restes des carrés modulo 4.** Soit $a$ un entier. Si $a$ est pair, $a = 2k$ et
$a^2 = 4k^2$ : le reste est $0$. Si $a$ est impair, $a = 2k+1$ et
$a^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1$ : le reste est $1$.

Donc **un carré parfait a toujours pour reste $0$ ou $1$ dans la division par $4$.**

**Le cas $n \geqslant 2$.** Alors $2^n$ est un multiple de $4$. Et $15 = 4 \times 3 + 3$, donc
$2^n + 15$ a pour reste $3$ dans la division par $4$.

Un carré ne peut pas avoir le reste $3$ : il n'y a donc **aucune solution avec
$n \geqslant 2$**.

**Les deux derniers cas.**

- $n = 1$ : on aurait $a^2 = 2 + 15 = 17$. Or $4^2 = 16$ et $5^2 = 25$, donc $17$ n'est pas un
  carré parfait. Pas de solution.
- $n = 0$ : on aurait $a^2 = 1 + 15 = 16 = 4^2$. Donc $a = 4$ convient.

**Conclusion.** Le seul couple solution est

$$(a, n) = (4, 0) .$$

**Vérification.** $2^0 + 15 = 1 + 15 = 16 = 4^2$. C'est bon.
