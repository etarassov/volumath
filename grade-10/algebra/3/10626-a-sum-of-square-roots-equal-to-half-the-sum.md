---
id: "10626"
title: "Une somme de racines égale à la demi-somme"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, racine-carree, cas-d-egalite, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 5, repris en Exercices Seniors, exercice 12 ; corrigé 2022-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Déterminer tous les $n$-uplets de réels $(x_1, x_2, \ldots, x_n)$ tels que

$$\sqrt{x_1 - 1^2} + 2\sqrt{x_2 - 2^2} + 3\sqrt{x_3 - 3^2} + \cdots + n\sqrt{x_n - n^2} = \frac{1}{2}\,(x_1 + x_2 + \cdots + x_n)$$

## Hints

1. Commence par $n = 1$ : résous $\sqrt{x - 1} = \frac{x}{2}$.
2. Pour que l'égalité ait un sens, il faut $x_i \geqslant i^2$. Pose $y_i = \sqrt{x_i - i^2}$, de sorte que $x_i = i^2 + y_i^2$.
3. Compare chaque terme $i\,y_i$ du membre de gauche avec $\frac{x_i}{2} = \frac{i^2 + y_i^2}{2}$. Une identité remarquable fait le travail.

## Solution

Pour que les racines carrées existent, il faut $x_i \geqslant i^2$ pour chaque $i$. Posons alors $y_i = \sqrt{x_i - i^2}$. C'est un réel positif ou nul, et $x_i = i^2 + y_i^2$.

**Étape 1. Chaque terme est au plus égal à $\frac{x_i}{2}$.**

Pour chaque $i$,

$$\frac{x_i}{2} - i\,y_i = \frac{i^2 + y_i^2 - 2i\,y_i}{2} = \frac{(i - y_i)^2}{2} \geqslant 0$$

avec égalité si et seulement si $y_i = i$.

**Étape 2. On additionne.**

En additionnant ces $n$ inégalités, on obtient

$$\frac{1}{2}\,(x_1 + \cdots + x_n) - \left(1 \cdot y_1 + 2\,y_2 + \cdots + n\,y_n\right) = \frac{(1 - y_1)^2 + (2 - y_2)^2 + \cdots + (n - y_n)^2}{2}$$

Le membre de gauche est la différence des deux membres de l'équation. L'équation est donc vraie si et seulement si cette somme de carrés est nulle, c'est-à-dire si et seulement si $y_i = i$ pour chaque $i$.

**Étape 3. Retour aux $x_i$.**

$y_i = i$ signifie $\sqrt{x_i - i^2} = i$, soit $x_i - i^2 = i^2$, soit $x_i = 2i^2$.

**Conclusion : il y a une seule solution, $x_i = 2i^2$ pour tout $i$, c'est-à-dire $(x_1, x_2, \ldots, x_n) = (2, 8, 18, \ldots, 2n^2)$.**
