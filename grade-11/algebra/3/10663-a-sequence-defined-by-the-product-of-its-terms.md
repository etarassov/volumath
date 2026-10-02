---
id: "10663"
title: "Une suite définie par le produit de ses termes"
grade: 11
theme: algebra
difficulty: 3
duration_min: 35
tags: [suite, recurrence, produit, inegalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 12 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf (première solution alternative)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

La suite $(a_n)_{n \geqslant 1}$ est définie par $a_1 = 1$ et, pour tout entier $n \geqslant 2$,

$$a_n = \frac{1}{n} + \frac{1}{a_1 \cdot a_2 \cdots a_{n-1}}$$

Montrer que $a_m \leqslant 1$ pour tout entier $m \geqslant 3$.

## Hints

1. Calcule $a_2$, $a_3$ et $a_4$.
2. Pose $P_n = a_1 a_2 \cdots a_n$. Exprime $P_n$ en fonction de $P_{n-1}$.
3. Montre que $a_n \leqslant 1$ équivaut à $P_{n-1} \geqslant \frac{n}{n-1}$.
4. Montre cette dernière inégalité de proche en proche, en partant de $P_2$.

## Solution

**Étape 1. Les premiers termes.**

$a_2 = \frac{1}{2} + \frac{1}{1} = \frac{3}{2}$, puis $a_3 = \frac{1}{3} + \frac{1}{1 \times \frac{3}{2}} = \frac{1}{3} + \frac{2}{3} = 1$, puis $a_4 = \frac{1}{4} + \frac{1}{\frac{3}{2}} = \frac{1}{4} + \frac{2}{3} = \frac{11}{12}$.

**Étape 2. Une relation pour le produit.**

Posons $P_n = a_1 a_2 \cdots a_n$. Tous les $a_n$ sont strictement positifs (de proche en proche, $a_n$ est une somme de deux nombres strictement positifs), donc tous les $P_n$ aussi. Pour $n \geqslant 2$, on a $P_n = P_{n-1} \cdot a_n$, donc

$$P_n = P_{n-1}\left(\frac{1}{n} + \frac{1}{P_{n-1}}\right) = \frac{P_{n-1}}{n} + 1$$

**Étape 3. Reformuler ce qu'il faut montrer.**

Soit $n \geqslant 3$. Comme $P_{n-1} > 0$,

$$a_n \leqslant 1 \iff P_n \leqslant P_{n-1} \iff \frac{P_{n-1}}{n} + 1 \leqslant P_{n-1} \iff 1 \leqslant P_{n-1} \cdot \frac{n - 1}{n} \iff P_{n-1} \geqslant \frac{n}{n - 1}$$

Il suffit donc de montrer que $P_m \geqslant \frac{m + 1}{m}$ pour tout entier $m \geqslant 2$ (on applique ensuite cela à $m = n - 1$).

**Étape 4. Montrer $P_m \geqslant \frac{m + 1}{m}$ de proche en proche.**

- Pour $m = 2$ : $P_2 = 1 \times \frac{3}{2} = \frac{3}{2}$. C'est vrai, avec égalité.
- Supposons que $P_m \geqslant \frac{m + 1}{m}$ pour un certain $m \geqslant 2$. Par l'étape 2,

$$P_{m+1} = \frac{P_m}{m + 1} + 1 \geqslant \frac{1}{m} + 1 = \frac{m + 1}{m}$$

Or $\frac{m + 1}{m} \geqslant \frac{m + 2}{m + 1}$, car en multipliant par $m(m + 1) > 0$, cela revient à $(m + 1)^2 \geqslant m(m + 2)$, soit $m^2 + 2m + 1 \geqslant m^2 + 2m$, ce qui est vrai. Donc $P_{m+1} \geqslant \frac{m + 2}{m + 1}$.

L'inégalité est vraie pour $m = 2$, et chaque fois qu'elle est vraie pour un $m$, elle l'est pour $m + 1$. Elle est donc vraie pour tout $m \geqslant 2$. C'est un raisonnement par récurrence.

**Conclusion : pour tout $m \geqslant 3$, on a $P_{m-1} \geqslant \frac{m}{m - 1}$, et donc $a_m \leqslant 1$.**
