---
id: "10439"
title: "Un unique n coincé entre aₙ et aₙ₊₁"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suites, inegalite, entiers, existence-et-unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe B, exercice 3 (c'est le problème 1 des OIM 2014) ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Soit $a_0 < a_1 < a_2 < \cdots$ une suite infinie d'entiers strictement positifs. Montrer qu'il existe un unique entier $n \geqslant 1$ tel que

$$a_n < \frac{a_0 + a_1 + a_2 + \cdots + a_n}{n} \leqslant a_{n+1} .$$

## Hints

1. Multiplie par $n$, et pose $d_n = a_0 + a_1 + \cdots + a_n - n\,a_n$ pour $n \geqslant 1$. Que devient l'inégalité de gauche ?
2. Montre que l'inégalité de droite s'écrit $d_{n+1} \leqslant 0$.
3. Calcule $d_1$, puis $d_{n+1} - d_n$. Quel est le sens de variation de la suite $(d_n)$ ?
4. Une suite d'entiers strictement décroissante finit par devenir négative ou nulle. Combien de fois peut-elle passer d'une valeur strictement positive à une valeur négative ou nulle ?

## Solution

**Étape 1 : traduire les deux inégalités.** Pour tout entier $n \geqslant 1$, posons

$$d_n = a_0 + a_1 + \cdots + a_n - n\,a_n .$$

Comme $n > 0$, on peut multiplier par $n$ sans changer le sens des inégalités.

- L'inégalité de gauche, $a_n < \frac{a_0 + \cdots + a_n}{n}$, équivaut à $n\,a_n < a_0 + \cdots + a_n$, c'est-à-dire à $d_n > 0$.
- L'inégalité de droite, $\frac{a_0 + \cdots + a_n}{n} \leqslant a_{n+1}$, équivaut à $a_0 + \cdots + a_n \leqslant n\,a_{n+1}$. En ajoutant $a_{n+1}$ des deux côtés, cela s'écrit $a_0 + \cdots + a_{n+1} \leqslant (n + 1)\,a_{n+1}$, c'est-à-dire $d_{n+1} \leqslant 0$.

Il s'agit donc de montrer qu'il existe un unique entier $n \geqslant 1$ tel que

$$d_{n+1} \leqslant 0 < d_n . \qquad (1)$$

**Étape 2 : la suite $(d_n)$.** On a $d_1 = a_0 + a_1 - a_1 = a_0 > 0$. De plus, pour tout $n \geqslant 1$,

$$d_{n+1} - d_n = a_{n+1} - (n + 1)\,a_{n+1} + n\,a_n = n\,(a_n - a_{n+1}) .$$

Comme $a_n < a_{n+1}$, ce nombre est strictement négatif. C'est aussi un entier, donc il vaut au plus $-1$. Ainsi $(d_n)$ est une suite d'entiers strictement décroissante, et $d_{n+1} \leqslant d_n - 1$. Par récurrence, $d_n \leqslant d_1 - (n - 1) = a_0 - n + 1$ pour tout $n \geqslant 1$.

**Étape 3 : existence.** L'ensemble des entiers $n \geqslant 1$ tels que $d_n > 0$ contient $1$. Il est fini, car $d_n \leqslant 0$ dès que $n \geqslant a_0 + 1$. Notons $N$ son plus grand élément. Alors $d_N > 0$, et $d_{N+1} \leqslant 0$ puisque $N + 1$ n'est pas dans l'ensemble. Donc $N$ vérifie $(1)$.

**Étape 4 : unicité.** Soit $n \geqslant 1$ un entier qui vérifie $(1)$. Comme la suite $(d_k)$ est décroissante, $d_k \leqslant d_{n+1} \leqslant 0$ pour tout $k \geqslant n + 1$. Donc $n$ est le plus grand entier tel que $d_n > 0$, c'est-à-dire $n = N$.

**Conclusion.** Il existe un unique entier $n \geqslant 1$ tel que $a_n < \frac{a_0 + a_1 + \cdots + a_n}{n} \leqslant a_{n+1}$ : c'est le plus grand entier $n$ tel que $d_n > 0$.

## Going further

1. Trouver cet entier $n$ pour la suite $a_k = k + 10$. On pourra calculer $d_n$ en fonction de $n$.
2. Le résultat devient faux si l'on suppose seulement que les $a_k$ sont des réels strictement positifs. Le vérifier avec la suite $a_k = 2 - \frac{1}{2^k}$, en calculant $d_n$. À quel endroit la démonstration utilise-t-elle que les $a_k$ sont entiers ?
