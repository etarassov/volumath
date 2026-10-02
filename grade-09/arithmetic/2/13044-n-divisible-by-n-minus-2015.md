---
id: "13044"
title: "n divisible par n − 2015"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [diviseurs, divisibilite, nombres-premiers, decomposition]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 8 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Combien y a-t-il d'entiers naturels $n > 2015$ tels que $n$ soit divisible par $n - 2015$ ?

## Hints

1. Pose $k = n - 2015$. Ce nombre est un entier strictement positif, et $n = k + 2015$.
2. Si $k$ divise $k + 2015$, que peux-tu dire de $k$ et de $2015$ ? Et inversement ?
3. Il reste à compter les diviseurs de $2015$. Décompose $2015$ en produit de nombres premiers.

## Solution

**On change d'inconnue.** Posons $k = n - 2015$. Dire que $n > 2015$, c'est dire que $k \geqslant 1$, et alors $n = k + 2015$. On cherche donc le nombre d'entiers $k \geqslant 1$ tels que $k$ divise $k + 2015$.

**Une condition plus simple.** Si $k$ divise $k + 2015$, alors $k + 2015 = k \times m$ pour un entier $m$, donc
$$2015 = k \times m - k = k \times (m - 1),$$
et $k$ divise $2015$. Inversement, si $2015 = k \times q$ pour un entier $q$, alors $k + 2015 = k \times (1 + q)$, et $k$ divise $k + 2015$.

Les entiers $n$ cherchés correspondent donc exactement aux diviseurs $k \geqslant 1$ de $2015$, par $n = k + 2015$.

**Les diviseurs de $2015$.** On a
$$2015 = 5 \times 403 = 5 \times 13 \times 31,$$
et $5$, $13$, $31$ sont premiers. Un diviseur de $2015$ s'obtient en prenant ou non chacun de ces trois facteurs : $2 \times 2 \times 2 = 8$ possibilités. Ce sont
$$1,\quad 5,\quad 13,\quad 31,\quad 65,\quad 155,\quad 403,\quad 2015 .$$

**Conclusion.** Il y a $8$ entiers qui conviennent :
$$n = 2016,\ 2020,\ 2028,\ 2046,\ 2080,\ 2170,\ 2418,\ 4030 .$$

## Going further

1. Combien y a-t-il d'entiers $n > 2016$ tels que $n$ soit divisible par $n - 2016$ ?
2. Pour quels entiers $n > 2015$ le nombre $n$ est-il divisible par $n - 2015$ **et** par $n - 2016$ ?
