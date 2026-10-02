---
id: "11042"
title: "Si 2n + 1 et 3n + 1 sont des carrés, 5n + 3 n'est pas premier"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, factorisation, identites-remarquables, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 5 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Montrer que si $2n + 1$ et $3n + 1$ sont tous les deux des carrés
parfaits, alors $5n + 3$ n'est pas un nombre premier.

## Hints

1. Écris $2n + 1 = a^2$ et $3n + 1 = b^2$, avec $a$ et $b$ entiers positifs. Peux-tu écrire $5n + 3$ à l'aide de $2n + 1$ et de $3n + 1$ ?
2. Essaie $5n + 3 = 4(2n + 1) - (3n + 1)$. Que reconnais-tu dans $4a^2 - b^2$ ?
3. Tu obtiens $5n + 3 = (2a - b)(2a + b)$. Si $5n + 3$ était premier, que vaudrait le plus petit facteur ? Montre que cela force $n = 0$.

## Solution

Écrivons $2n + 1 = a^2$ et $3n + 1 = b^2$, avec $a$ et $b$ des entiers positifs.

**Une factorisation.** On remarque que $4(2n + 1) - (3n + 1) = 8n + 4 - 3n - 1 = 5n + 3$. Donc

$$5n + 3 = 4a^2 - b^2 = (2a - b)(2a + b) .$$

Le facteur $2a + b$ est strictement positif, et le produit aussi, donc $2a - b$ est strictement positif. De
plus $2a - b < 2a + b$, puisque $b \geqslant 1$.

**Supposons que $5n + 3$ soit premier.** Ses seuls diviseurs positifs sont $1$ et lui-même. Le facteur
$2a - b$ est un diviseur positif, strictement plus petit que $2a + b$, donc différent de $5n + 3$ : c'est
forcément $2a - b = 1$. Alors $b = 2a - 1$ et $5n + 3 = 2a + b = 4a - 1$.

Comme $a^2 = 2n + 1$, on a $n = \dfrac{a^2 - 1}{2}$, et l'égalité $5n + 3 = 4a - 1$ devient

$$\frac{5(a^2 - 1)}{2} + 3 = 4a - 1 ,$$

soit, en multipliant par $2$, $5a^2 - 5 + 6 = 8a - 2$, c'est-à-dire

$$5a^2 - 8a + 3 = 0, \quad \text{ou encore} \quad (5a - 3)(a - 1) = 0 .$$

Comme $a$ est entier, $5a - 3 \neq 0$, donc $a = 1$. Mais alors $2n + 1 = 1$, donc $n = 0$, alors que $n$ est
strictement positif. C'est impossible.

**Conclusion.** Si $2n + 1$ et $3n + 1$ sont des carrés parfaits, avec $n \geqslant 1$, alors $5n + 3$ n'est
pas premier.

Par exemple, $n = 40$ donne $2n + 1 = 81 = 9^2$ et $3n + 1 = 121 = 11^2$, et en effet
$5n + 3 = 203 = 7 \times 29$, avec $7 = 2 \times 9 - 11$ et $29 = 2 \times 9 + 11$.

## Going further

Trouver le plus petit entier $n \geqslant 1$ tel que $2n + 1$ et $3n + 1$ soient tous les deux des carrés
parfaits. (Pense aux carrés impairs pour $2n + 1$.)
