---
id: "13840"
title: "Trois entiers rangés dont le produit vaut 100"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [diviseurs, decomposition en facteurs premiers, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 9 ; réponse 4 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Combien y a-t-il de triplets $(a, b, c)$ d'entiers strictement positifs tels que

$$a < b < c \qquad \text{et} \qquad abc = 100 \ ?$$

## Hints

1. Les trois nombres sont des diviseurs de $100$. Écris la liste de ces diviseurs.
2. Comme $a$ est le plus petit, on a $a \times a \times a < abc = 100$. Quelles valeurs $a$
   peut-il prendre ?
3. Pour chaque valeur de $a$, cherche $b$ et $c$ avec $a < b < c$ et $bc = \dfrac{100}{a}$.

## Solution

Les nombres $a$, $b$ et $c$ divisent $100$. Les diviseurs de $100$ sont
$1, 2, 4, 5, 10, 20, 25, 50, 100$.

**Les valeurs possibles de $a$.** Comme $a < b$ et $a < c$, on a $a^3 < abc = 100$. Or
$5^3 = 125$, donc $a \leqslant 4$, et $a$ divise $100$ : $a$ vaut $1$, $2$ ou $4$.

**Pour chaque $a$, on cherche $b$.** On a $bc = \dfrac{100}{a}$ et $b < c$, donc
$b^2 < bc = \dfrac{100}{a}$.

- Si $a = 1$ : $bc = 100$ et $b^2 < 100$, donc $b < 10$, avec $b > 1$ et $b$ diviseur de $100$.
  Cela donne $b = 2$, $4$ ou $5$, d'où les triplets $(1, 2, 50)$, $(1, 4, 25)$ et $(1, 5, 20)$.
- Si $a = 2$ : $bc = 50$ et $b^2 < 50$, donc $b \leqslant 7$, avec $b > 2$ et $b$ diviseur de
  $50$. Seul $b = 5$ convient, d'où le triplet $(2, 5, 10)$.
- Si $a = 4$ : $bc = 25$ et $b^2 < 25$, donc $b < 5$, alors qu'il faut $b > 4$. Aucun triplet.

**Il y a $4$ triplets :** $(1, 2, 50)$, $(1, 4, 25)$, $(1, 5, 20)$ et $(2, 5, 10)$.
