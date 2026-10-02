---
id: "13255"
title: "Le nombre 30x070y03 divisible par 37"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, chiffres, restes, numeration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés collège, exercice 3 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

On considère un nombre $N$ à neuf chiffres qui s'écrit $\overline{30x070y03}$, où $x$ et $y$ sont des chiffres entre $0$ et $9$.

Pour quelles valeurs de $x$ et $y$ le nombre $N$ est-il divisible par $37$ ?

## Hints

1. Écris $N$ comme $300\,070\,003$ plus un multiple de $x$ plus un multiple de $y$.
2. Calcule $37 \times 27$ et $37 \times 3$.
3. Montre que $1\,000\,000 - 1$ est un multiple de $37$, et que $100 = 111 - 11$.
4. Tu dois arriver à : $N$ est divisible par $37$ exactement quand $3 + x - 11y$ l'est.

## Solution

**On sépare les chiffres inconnus.** Le chiffre $x$ est celui des millions et le chiffre $y$ celui des centaines, donc

$$N = 300\,070\,003 + 1\,000\,000\,x + 100\,y.$$

**Deux multiples de $37$ bien utiles.** On a $37 \times 27 = 999$ et $37 \times 3 = 111$.

- $1\,000\,000 - 1 = 999\,999 = 999 \times 1001$ est un multiple de $37$. Donc $1\,000\,000\,x = 999\,999\,x + x$, où $999\,999\,x$ est un multiple de $37$.
- $100\,y = 111\,y - 11\,y$, où $111\,y$ est un multiple de $37$.
- La division de $300\,070\,003$ par $37$ donne $300\,070\,003 = 37 \times 8\,110\,000 + 3$.

En regroupant tous les multiples de $37$, on obtient

$$N = (\text{un multiple de } 37) + 3 + x - 11y.$$

Donc $N$ est divisible par $37$ exactement quand $3 + x - 11y$ l'est.

**Les valeurs possibles.** Comme $0 \leqslant x \leqslant 9$ et $0 \leqslant y \leqslant 9$, le nombre $3 + x - 11y$ est compris entre $3 + 0 - 99 = -96$ et $3 + 9 - 0 = 12$. Les multiples de $37$ dans cet intervalle sont $0$, $-37$ et $-74$.

- $3 + x - 11y = 0$, soit $x = 11y - 3$. Seul $y = 1$ donne un chiffre : $x = 8$.
- $3 + x - 11y = -37$, soit $x = 11y - 40$. Seul $y = 4$ donne un chiffre : $x = 4$.
- $3 + x - 11y = -74$, soit $x = 11y - 77$. Seul $y = 7$ donne un chiffre : $x = 0$.

**Conclusion.** $N$ est divisible par $37$ exactement pour $(x, y) = (8, 1)$, $(4, 4)$ ou $(0, 7)$, c'est-à-dire pour les nombres $308\,070\,103$, $304\,070\,403$ et $300\,070\,703$.
