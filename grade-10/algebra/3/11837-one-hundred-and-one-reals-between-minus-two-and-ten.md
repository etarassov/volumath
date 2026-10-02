---
id: "11837"
title: "Cent un réels entre −2 et 10 de somme nulle"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, somme de carres, encadrement, produit de facteurs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 9 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_{101}$ des réels appartenant à l'intervalle $[-2 ; 10]$ et tels que

$$a_1 + a_2 + \cdots + a_{101} = 0.$$

Montrer que

$$a_1^2 + a_2^2 + \cdots + a_{101}^2 \leqslant 2020.$$

## Hints

1. Pour un seul réel $a$ de l'intervalle $[-2 ; 10]$, quel est le signe des nombres $a + 2$ et $a - 10$ ? Et de leur produit ?
2. Développer $(a + 2)(a - 10)$ et en déduire une majoration de $a^2$ par une expression du premier degré en $a$.
3. Écrire cette majoration pour chacun des $101$ nombres, puis additionner.

## Solution

**Étape 1 : un seul nombre.** Soit $a$ un réel de l'intervalle $[-2 ; 10]$. Alors $a + 2 \geqslant 0$ et $a - 10 \leqslant 0$, donc le produit de ces deux nombres est négatif ou nul :

$$(a + 2)(a - 10) \leqslant 0.$$

En développant, $(a + 2)(a - 10) = a^2 - 8a - 20$. On obtient donc

$$a^2 \leqslant 8a + 20.$$

**Étape 2 : additionner.** On écrit cette inégalité pour chacun des nombres $a_1, \ldots, a_{101}$, puis on additionne les $101$ inégalités :

$$a_1^2 + \cdots + a_{101}^2 \leqslant 8\,(a_1 + \cdots + a_{101}) + 101 \times 20.$$

La somme $a_1 + \cdots + a_{101}$ est nulle, donc

$$a_1^2 + \cdots + a_{101}^2 \leqslant 2020.$$

**Conclusion.** La somme des carrés est au plus égale à $2020$, ce qu'il fallait démontrer.

**D'où vient l'idée ?** On cherche à majorer $a^2$ par une expression qu'on sait additionner, c'est-à-dire de la forme $\alpha a + \beta$, puisque la somme des $a_i$ est connue. Sur l'intervalle $[-2 ; 10]$, la courbe de $a \mapsto a^2$ est sous la corde qui joint ses points d'abscisses $-2$ et $10$. Cette corde est la droite d'équation $y = 8a + 20$, et l'écart entre les deux est justement $(a + 2)(a - 10)$.

## Going further

1. Montrer que la somme des carrés ne peut pas être égale à $2020$. On pourra regarder quand chaque inégalité de l'étape 1 est une égalité, puis compter combien de nombres valent $10$.
2. Trouver $101$ nombres de l'intervalle $[-2 ; 10]$, de somme nulle, dont la somme des carrés vaut exactement $2000$.
