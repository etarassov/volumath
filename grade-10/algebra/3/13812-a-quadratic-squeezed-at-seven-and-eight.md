---
id: "13812"
title: "Un trinôme encadré en 7 et en 8"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [polynome, second degre, factorisation, multiples]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_lycee-bis.pdf, questionnaire lycéens, exercice 5 ; réponse dans 2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_lycee-bis.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_lycee-bis.pdf"
---

## Statement

Soit $f(x) = ax^2 + bx + c$, où $a$, $b$ et $c$ sont des entiers et $a \neq 0$. On suppose que

$$f(1) = 0, \qquad 50 < f(7) < 60 \qquad \text{et} \qquad 70 < f(8) < 80.$$

Déterminer l'entier $k$ tel que $5000k < f(100) < 5000(k + 1)$.

## Hints

1. Comme $f(1) = 0$, on a $f(7) = f(7) - f(1)$. Calcule cette différence : dans
   l'expression obtenue, $c$ a disparu.
2. Tu dois trouver que $f(7)$ est un multiple de $6$. Combien de multiples de $6$ y a-t-il
   strictement entre $50$ et $60$ ?
3. Fais de même avec $f(8)$. Tu obtiens deux équations en $a$ et $b$.

## Solution

**On se débarrasse de $c$.** Comme $f(1) = a + b + c = 0$, on peut soustraire $f(1)$ sans rien
changer :

$$f(7) = f(7) - f(1) = (49a + 7b + c) - (a + b + c) = 48a + 6b = 6\,(8a + b),$$

$$f(8) = f(8) - f(1) = (64a + 8b + c) - (a + b + c) = 63a + 7b = 7\,(9a + b).$$

**On utilise les encadrements.** Les nombres $8a + b$ et $9a + b$ sont des entiers.

- $f(7)$ est donc un multiple de $6$ strictement compris entre $50$ et $60$. Les multiples de
  $6$ voisins sont $48$, $54$ et $60$ : seul $54$ convient. Donc $6\,(8a + b) = 54$, soit
  $8a + b = 9$.
- $f(8)$ est un multiple de $7$ strictement compris entre $70$ et $80$. Les multiples de $7$
  voisins sont $70$, $77$ et $84$ : seul $77$ convient. Donc $7\,(9a + b) = 77$, soit
  $9a + b = 11$.

**On trouve $a$, $b$ et $c$.** En soustrayant la première équation de la seconde, on obtient
$a = 2$. Puis $b = 9 - 8a = 9 - 16 = -7$, et $c = -a - b = -2 + 7 = 5$. Ainsi

$$f(x) = 2x^2 - 7x + 5.$$

On vérifie : $f(1) = 2 - 7 + 5 = 0$, $f(7) = 98 - 49 + 5 = 54$ et
$f(8) = 128 - 56 + 5 = 77$.

**On calcule $f(100)$.**

$$f(100) = 2 \times 10\,000 - 700 + 5 = 19\,305.$$

Comme $15\,000 < 19\,305 < 20\,000$, c'est-à-dire $5000 \times 3 < f(100) < 5000 \times 4$, on
a $k = 3$.

**La réponse est $k = 3$.**
