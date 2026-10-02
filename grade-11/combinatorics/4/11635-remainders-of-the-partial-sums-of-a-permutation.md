---
id: "11635"
title: "Les restes des sommes partielles d'une permutation"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [restes, division euclidienne, principe des tiroirs, permutation, raisonnement par l'absurde, partie entiere]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe A, exercice 5 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (le corrigé écrit que aₙ n'est pas de la forme bᵢ₊₁ − bᵢ, il faut lire a₁)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Soit $n \geqslant 5$ un entier, et soient $a_1, a_2, \ldots, a_n$ les entiers $1, 2, \ldots, n$ écrits dans un certain ordre.

Prouver que les $n$ nombres

$$a_1, \quad a_1 + a_2, \quad a_1 + a_2 + a_3, \quad \ldots, \quad a_1 + a_2 + \cdots + a_n$$

donnent au moins $\lfloor \sqrt{n} \rfloor + 1$ restes différents dans la division par $n$. (On note $\lfloor u \rfloor$ la partie entière d'un réel $u$.)

## Hints

1. Pose $b_i = a_1 + \cdots + a_i$. Alors $a_i = b_i - b_{i-1}$ pour $i \geqslant 2$. Le reste de $a_i$ dans la division par $n$ ne dépend que des restes de $b_{i-1}$ et de $b_i$.
2. Les nombres $a_2, \ldots, a_n$ ont des restes tous différents. Pourquoi ?
3. Suppose qu'il n'y a que $k$ restes différents parmi les $b_i$, avec $k \leqslant \sqrt{n}$. Combien de couples $(r, r')$ de deux restes différents peut-on former avec eux ?
4. Compare le nombre d'indices $i \geqslant 2$ tels que $a_i \neq n$ avec ce nombre de couples.

## Solution

Pour $i = 1, \ldots, n$, on pose $b_i = a_1 + a_2 + \cdots + a_i$. Ainsi, pour $2 \leqslant i \leqslant n$, on a $a_i = b_i - b_{i-1}$.

**Un rappel sur les restes.** Si $b = qn + r$ et $b' = q'n + r'$, alors $b - b' = (q - q')n + (r - r')$. Le reste de $b - b'$ dans la division par $n$ ne dépend donc que des restes $r$ et $r'$. De plus, il vaut $0$ exactement quand $r = r'$.

**On raisonne par l'absurde.** Supposons que les $b_i$ ne donnent que $k$ restes différents, avec $k \leqslant \lfloor \sqrt{n} \rfloor$. En particulier $k \leqslant \sqrt{n}$. Appelons $R$ l'ensemble de ces $k$ restes.

**Étape 1 : les restes des $a_i$ sont tous différents.** Les nombres $a_1, \ldots, a_n$ sont les entiers $1, 2, \ldots, n$. Leurs restes dans la division par $n$ sont $1, 2, \ldots, n-1$ et $0$ : ils sont tous différents. De plus, un seul $a_i$ a pour reste $0$, celui qui vaut $n$.

**Étape 2 : à chaque $a_i$, un couple de restes.** Regardons les indices $i$ entre $2$ et $n$ tels que $a_i \neq n$. Il y en a au moins $n - 2$ : il y a $n - 1$ indices entre $2$ et $n$, et au plus un d'entre eux correspond à $a_i = n$.

À un tel indice $i$, on associe le couple $(r_{i-1}, r_i)$, où $r_{i-1}$ et $r_i$ sont les restes de $b_{i-1}$ et de $b_i$. Ce sont deux éléments de $R$. Ils sont **différents**, car sinon le reste de $a_i = b_i - b_{i-1}$ serait $0$, et l'on aurait $a_i = n$.

Deux indices différents donnent deux couples différents. En effet, le couple $(r_{i-1}, r_i)$ détermine le reste de $a_i$, et deux $a_i$ différents ont des restes différents d'après l'étape 1.

**Étape 3 : on compte.** Avec $k$ restes, on peut former $k(k - 1)$ couples $(r, r')$ tels que $r \neq r'$ : $k$ choix pour $r$, puis $k - 1$ pour $r'$. D'après l'étape 2, on obtient au moins $n - 2$ couples différents de ce type, donc

$$n - 2 \leqslant k(k - 1).$$

Comme $1 \leqslant k \leqslant \sqrt{n}$, et que $k - 1 \leqslant \sqrt{n} - 1$ avec $k - 1 \geqslant 0$, on a $k(k-1) \leqslant \sqrt{n}\,(\sqrt{n} - 1) = n - \sqrt{n}$. Donc

$$n - 2 \leqslant n - \sqrt{n}, \qquad \text{c'est-à-dire} \qquad \sqrt{n} \leqslant 2, \qquad n \leqslant 4.$$

C'est impossible, puisque $n \geqslant 5$.

**Conclusion : les sommes $a_1$, $a_1 + a_2$, $\ldots$, $a_1 + \cdots + a_n$ donnent au moins $\lfloor \sqrt{n} \rfloor + 1$ restes différents dans la division par $n$.**

## Going further

Pour de petites valeurs de $n$, la borne est atteinte. Avec l'ordre naturel $1, 2, \ldots, n$, les sommes valent $i(i+1)/2$. Pour $n = 5$, on trouve $1, 3, 6, 10, 15$, de restes $1, 3, 1, 0, 0$ : trois restes seulement, et $\lfloor \sqrt{5} \rfloor + 1 = 3$. Pour $n = 9$, les restes sont $1, 3, 6, 1, 6, 3, 1, 0, 0$ : quatre restes, et $\lfloor \sqrt{9} \rfloor + 1 = 4$. Un ordinateur confirme que, pour $5 \leqslant n \leqslant 9$, on ne peut jamais faire mieux que $\lfloor \sqrt{n} \rfloor + 1$.
