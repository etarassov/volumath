---
id: "10647"
title: "La plus petite solution positive, à chaque étape"
grade: 12
theme: algebra
difficulty: 3
duration_min: 35
tags: [suites, recurrence, racine-carree, second-degre, conjecture]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 12 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

On définit une suite de réels $(a_n)$ de la façon suivante : $a_0 = 1$ et, pour tout $n \geqslant 1$, $a_n$ est la plus petite solution strictement positive de l'équation d'inconnue $a_n$

$$(a_n - a_{n-1})(a_n + a_{n-1} - 2\sqrt{n}) = 2$$

Trouver le plus petit entier $n$ tel que $a_n \geqslant 2022$.

## Hints

1. Calcule $a_1$, puis $a_2$. Écris-les avec des racines carrées et devine une formule pour $a_n$.
2. Développe le membre de gauche de l'équation. Fais apparaître $(a_n - \sqrt{n})^2$ et $(a_{n-1} - \sqrt{n})^2$.
3. Démontre ta formule par récurrence. Ensuite, utilise le fait que la suite est croissante, et pense au nombre $1011^2$.

## Solution

**Étape 1. Les premiers termes.**

Pour $n = 1$, l'équation s'écrit $(a_1 - 1)(a_1 + 1 - 2) = 2$, soit $(a_1 - 1)^2 = 2$. Donc $a_1 = 1 + \sqrt{2}$ ou $a_1 = 1 - \sqrt{2}$, et seul le premier est positif : $a_1 = 1 + \sqrt{2}$.

On peut faire de même pour $n = 2$ et trouver $a_2 = \sqrt{2} + \sqrt{3}$. Comme $a_0 = \sqrt{0} + \sqrt{1}$, on devine que $a_n = \sqrt{n} + \sqrt{n + 1}$.

**Étape 2. Une autre forme de l'équation.**

Le membre de gauche est de la forme $(u - v)(u + v - 2w)$ avec $u = a_n$, $v = a_{n-1}$, $w = \sqrt{n}$. En développant,

$$(u - v)(u + v - 2w) = u^2 - v^2 - 2wu + 2wv = (u - w)^2 - (v - w)^2$$

L'équation s'écrit donc

$$(a_n - \sqrt{n})^2 = (a_{n-1} - \sqrt{n})^2 + 2$$

**Étape 3. La formule, par récurrence.**

Montrons que $a_n = \sqrt{n} + \sqrt{n + 1}$ pour tout $n \geqslant 0$. C'est vrai pour $n = 0$.

Supposons que c'est vrai au rang $n - 1$, c'est-à-dire $a_{n-1} = \sqrt{n - 1} + \sqrt{n}$. Alors $a_{n-1} - \sqrt{n} = \sqrt{n - 1}$, et l'équation de l'étape 2 devient

$$(a_n - \sqrt{n})^2 = (n - 1) + 2 = n + 1$$

Donc $a_n - \sqrt{n} = \sqrt{n + 1}$ ou $a_n - \sqrt{n} = -\sqrt{n + 1}$. La seconde possibilité donne $a_n = \sqrt{n} - \sqrt{n + 1} < 0$. L'équation a donc une seule solution strictement positive, $a_n = \sqrt{n} + \sqrt{n + 1}$, et la formule est vraie au rang $n$.

**Étape 4. Le plus petit $n$.**

La suite $a_n = \sqrt{n} + \sqrt{n + 1}$ est strictement croissante, car la fonction racine carrée l'est. Il suffit donc de trouver $n$ tel que $a_{n-1} < 2022 \leqslant a_n$ : alors tous les termes d'indice plus petit que $n$ sont inférieurs à $2022$.

Comme $2022 = 2 \times 1011$, essayons $n = 1011^2$ :

- $a_{1011^2 - 1} = \sqrt{1011^2 - 1} + 1011 < 1011 + 1011 = 2022$ ;
- $a_{1011^2} = 1011 + \sqrt{1011^2 + 1} > 1011 + 1011 = 2022$.

**Conclusion : le plus petit entier $n$ tel que $a_n \geqslant 2022$ est $n = 1011^2 = 1\,022\,121$.**
