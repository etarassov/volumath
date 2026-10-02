---
id: "10614"
title: "Une suite périodique sous contrainte"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [suites, periodicite, inegalite, maximum, principe-extremal]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Juniors, exercice 6 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Déterminer toutes les suites $(a_n)_{n \geqslant 1}$ de nombres réels telles que $a_i = a_{i + 2020}$ pour tout entier $i \geqslant 1$, et telles que

$$a_j + 2a_{j+2} \geqslant a_{j+1}^2 + a_{j+1} + 1$$

pour tout entier $j \geqslant 1$.

## Hints

1. Le membre de droite contient un carré, gênant. Minore $a_{j+1}^2 + 1$ par une expression du premier degré en $a_{j+1}$.
2. Tu dois obtenir $a_j + 2a_{j+2} \geqslant 3a_{j+1}$. Comme la suite est périodique, elle ne prend qu'un nombre fini de valeurs. Regarde un terme $a_j$ qui est le plus grand de tous.
3. Que dit l'inégalité autour de ce plus grand terme ? Montre que ses deux voisins lui sont égaux.

## Solution

**Étape 1. Une inégalité plus simple.**

Pour tout réel $x$, $(x - 1)^2 \geqslant 0$, donc $x^2 + 1 \geqslant 2x$. Avec $x = a_{j+1}$, l'hypothèse donne

$$a_j + 2a_{j+2} \geqslant a_{j+1}^2 + 1 + a_{j+1} \geqslant 2a_{j+1} + a_{j+1} = 3a_{j+1}$$

pour tout $j \geqslant 1$.

**Étape 2. Le plus grand terme.**

Comme $a_i = a_{i+2020}$, la suite ne prend que les valeurs $a_1, a_2, \ldots, a_{2020}$. Soit $M$ la plus grande de ces valeurs. On peut choisir un indice $k \geqslant 2$ tel que $a_k = M$ : si le maximum est atteint en $1$, il l'est aussi en $2021$.

Appliquons l'étape 1 avec $j = k - 1$ :

$$a_{k-1} + 2a_{k+1} \geqslant 3a_k = 3M$$

Mais $a_{k-1} \leqslant M$ et $a_{k+1} \leqslant M$, donc $a_{k-1} + 2a_{k+1} \leqslant 3M$. On a donc égalité partout, ce qui force $a_{k-1} = M$ et $a_{k+1} = M$.

**Étape 3. La suite est constante.**

On vient de voir : si $a_k = M$ avec $k \geqslant 2$, alors $a_{k+1} = M$. En recommençant avec $k + 1$, puis $k + 2$, et ainsi de suite, tous les termes à partir de $a_k$ valent $M$. Pour un indice $i$ quelconque, $i + 2020m \geqslant k$ pour un entier $m$ assez grand, et $a_i = a_{i + 2020m} = M$ par périodicité. La suite est donc constante, égale à $M$.

**Étape 4. La valeur de la constante.**

L'hypothèse devient $M + 2M \geqslant M^2 + M + 1$, c'est-à-dire $M^2 - 2M + 1 \leqslant 0$, soit $(M - 1)^2 \leqslant 0$. Un carré n'est jamais négatif, donc $(M - 1)^2 = 0$ et $M = 1$.

**Étape 5. Vérification.**

Si $a_n = 1$ pour tout $n$, la suite est bien périodique, et pour tout $j$ : $a_j + 2a_{j+2} = 3$ et $a_{j+1}^2 + a_{j+1} + 1 = 3$. L'inégalité est vraie.

**Conclusion : une seule suite convient, la suite constante égale à $1$.**
