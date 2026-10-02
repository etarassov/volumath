---
id: "13816"
title: "Numérateur plus dénominateur égale 100"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [fraction irreductible, pgcd, diviseurs, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_lycee-bis.pdf, questionnaire lycéens, exercice 12 ; réponse dans 2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_lycee-bis.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_lycee-bis.pdf"
---

## Statement

Combien y a-t-il de nombres rationnels $r$, avec $0 < r < 1$, tels que, lorsqu'on écrit $r$
sous forme de fraction irréductible, la somme du numérateur et du dénominateur vaut $100$ ?

## Hints

1. Écris $r = \dfrac{p}{q}$ sous forme irréductible. Que vaut $q$ en fonction de $p$ ? Entre
   quelles valeurs $p$ peut-il varier, sachant que $r < 1$ ?
2. Un diviseur commun à $p$ et à $100 - p$ divise aussi leur somme. Quelle somme ?
3. La fraction $\dfrac{p}{100 - p}$ est irréductible exactement quand $p$ n'a aucun diviseur
   premier commun avec $100 = 2^2 \times 5^2$.

## Solution

**On décrit les fractions.** Écrivons $r = \dfrac{p}{q}$ avec $p$ et $q$ entiers positifs et
la fraction irréductible. On veut $p + q = 100$, donc $q = 100 - p$. La condition $0 < r < 1$
s'écrit $0 < p < q$, c'est-à-dire $0 < p < 100 - p$, soit $1 \leqslant p \leqslant 49$.

Chaque $r$ correspond à un seul $p$ (le numérateur de sa forme irréductible), il faut donc
compter les entiers $p$ de $1$ à $49$ pour lesquels $\dfrac{p}{100 - p}$ est irréductible.

**Quand la fraction est-elle irréductible ?** Un nombre qui divise $p$ et $100 - p$ divise leur
somme, $100$. Réciproquement, un nombre qui divise $p$ et $100$ divise aussi $100 - p$. Les
diviseurs communs à $p$ et $100 - p$ sont donc les mêmes que les diviseurs communs à $p$ et
$100$. Ainsi la fraction est irréductible exactement quand $p$ et $100$ n'ont pas d'autre
diviseur commun que $1$.

Comme $100 = 2^2 \times 5^2$, cela veut dire que $p$ n'est divisible ni par $2$, ni par $5$.

**On compte.** De $1$ à $49$, il y a $25$ nombres impairs : $1, 3, 5, \ldots, 49$. Parmi eux,
ceux qui sont divisibles par $5$ sont $5, 15, 25, 35, 45$, soit $5$ nombres. Il reste
$25 - 5 = 20$ valeurs de $p$.

Par exemple $p = 1$ donne $\dfrac{1}{99}$, $p = 3$ donne $\dfrac{3}{97}$, et $p = 49$ donne
$\dfrac{49}{51}$. En revanche $p = 5$ donne $\dfrac{5}{95} = \dfrac{1}{19}$, dont la somme
numérateur plus dénominateur vaut $20$ et non $100$.

**Il y a $20$ tels rationnels.**
