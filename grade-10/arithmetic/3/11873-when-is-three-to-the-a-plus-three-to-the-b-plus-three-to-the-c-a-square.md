---
id: "11873"
title: "Quand 3ᵃ + 3ᵇ + 3ᶜ est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carre-parfait, puissances-de-3, modulo-8, restes, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 2 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ d'entiers naturels tels que $3^a + 3^b + 3^c$ soit un carré parfait.

## Hints

1. Le nombre $3^a + 3^b + 3^c$ est impair. Que vaut le reste de la division par $8$ du carré d'un nombre impair ?
2. Quels sont les restes possibles de $3^n$ dans la division par $8$ ? En déduire que $a$, $b$ et $c$ sont impairs.
3. On suppose $a \leqslant b \leqslant c$ et on met $3^a$ en facteur. Le facteur qui reste doit être un multiple de $3$. Pourquoi ? Quand est-ce le cas ?

## Solution

On note $N = 3^a + 3^b + 3^c$ et on suppose que $N$ est un carré parfait, $N = k^2$.

**Étape 1 : modulo 8.** Chaque puissance de $3$ est impaire, et une somme de trois nombres impairs est impaire, donc $N$ est impair, et $k$ aussi. On écrit $k = 2m + 1$ :
$$k^2 = 4m^2 + 4m + 1 = 4m(m + 1) + 1.$$
L'un des deux nombres consécutifs $m$ et $m + 1$ est pair, donc $4m(m + 1)$ est un multiple de $8$ : **le carré d'un nombre impair a pour reste $1$ dans la division par $8$.**

D'autre part $3^0 = 1$, $3^1 = 3$, $3^2 = 9 = 8 + 1$. Multiplier par $9$ ne change pas le reste modulo $8$, donc $3^n$ a pour reste $1$ si $n$ est pair, et $3$ si $n$ est impair.

Les restes de $N$ possibles sont donc :

| impairs parmi $a, b, c$ | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| reste de $N$ modulo 8 | 3 | 5 | 7 | $9 = 8 + 1$, soit 1 |

Comme $N$ a pour reste $1$, **les trois exposants $a$, $b$, $c$ sont impairs.**

**Étape 2 : modulo 3.** L'énoncé est symétrique en $a$, $b$, $c$, on peut supposer $a \leqslant b \leqslant c$. Alors
$$N = 3^a \left(1 + 3^{b - a} + 3^{c - a}\right) = 3^a \times M.$$
Dans la décomposition en facteurs premiers d'un carré $k^2$, chaque nombre premier apparaît avec un exposant pair (le double de son exposant dans $k$). Si $M$ n'était pas un multiple de $3$, l'exposant de $3$ dans $N$ serait exactement $a$, qui est impair : impossible. Donc $3$ divise $M$.

Or :

- si $a < b$, alors $3^{b - a}$ et $3^{c - a}$ sont des multiples de $3$, et $M$ a pour reste $1$ modulo $3$ ;
- si $a = b < c$, alors $M = 2 + 3^{c - a}$ a pour reste $2$ modulo $3$ ;
- si $a = b = c$, alors $M = 3$.

Seul le dernier cas convient : **$a = b = c$.**

**Étape 3 : la réciproque.** Si $a = b = c = 2j + 1$ avec $j$ entier naturel, alors
$$N = 3 \times 3^{2j + 1} = 3^{2j + 2} = \left(3^{j + 1}\right)^2,$$
qui est bien un carré parfait.

**Conclusion.** Les triplets cherchés sont exactement les triplets $(a, a, a)$ avec $a$ impair : $(1, 1, 1)$, $(3, 3, 3)$, $(5, 5, 5)$, etc.

## Going further

Le réflexe « regarder modulo 4 » ne suffit pas ici : une puissance de $3$ a pour reste $1$ ou $3$ modulo $4$, et la somme de trois telles puissances peut avoir le reste $1$ de plusieurs façons. Modulo $8$, les carrés impairs sont beaucoup plus rares, et c'est ce qui donne l'information.
