---
id: "10631"
title: "Des produits voisins de somme négative"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, identites-remarquables, factorisation, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 11 ; corrigé 2022-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 3$ pour lesquels la propriété suivante est vraie :

> Si $a_1, a_2, \ldots, a_n$ sont des réels de somme nulle, alors $a_1a_2 + a_2a_3 + \cdots + a_{n-1}a_n + a_na_1 \leqslant 0$.

Dans la somme, chaque nombre est multiplié par ses deux voisins, comme si les $a_i$ étaient placés autour d'un cercle.

## Hints

1. Pour $n = 3$, développe $(a_1 + a_2 + a_3)^2$.
2. Pour $n = 4$, factorise $a_1a_2 + a_2a_3 + a_3a_4 + a_4a_1$.
3. Pour $n \geqslant 5$, cherche un contre-exemple avec beaucoup de zéros : peux-tu faire en sorte qu'un seul produit soit non nul, et positif ?

## Solution

Notons $V = a_1a_2 + a_2a_3 + \cdots + a_na_1$.

**Cas $n = 3$.** On a $(a_1 + a_2 + a_3)^2 = a_1^2 + a_2^2 + a_3^2 + 2(a_1a_2 + a_2a_3 + a_3a_1)$. Si la somme est nulle, le membre de gauche vaut $0$, donc

$$V = -\frac{a_1^2 + a_2^2 + a_3^2}{2} \leqslant 0$$

La propriété est vraie.

**Cas $n = 4$.** On factorise :

$$V = a_1a_2 + a_2a_3 + a_3a_4 + a_4a_1 = a_2(a_1 + a_3) + a_4(a_3 + a_1) = (a_1 + a_3)(a_2 + a_4)$$

Si la somme est nulle, $a_2 + a_4 = -(a_1 + a_3)$, donc $V = -(a_1 + a_3)^2 \leqslant 0$. La propriété est vraie.

**Cas $n \geqslant 5$.** Prenons $a_1 = a_2 = 1$, $a_4 = -2$, et tous les autres $a_i$ égaux à $0$. La somme est bien nulle. Dans $V$, les voisins de $a_4$ sont $a_3$ et $a_5$, qui sont nuls (c'est ici qu'on utilise $n \geqslant 5$). Les seuls voisins non nuls sont donc $a_1$ et $a_2$, et

$$V = a_1a_2 = 1 > 0$$

La propriété est fausse.

**Conclusion : la propriété est vraie exactement pour $n = 3$ et $n = 4$.**
