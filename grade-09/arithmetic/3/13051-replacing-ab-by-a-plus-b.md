---
id: "13051"
title: "Remplacer ab par a + b"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [diviseurs, invariant, tableau, minimum, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices communs, exercice 4 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf (le corrigé écrit « f(5) = 5 » là où il faut lire f(n) = 5 pour tout n ⩾ 5)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

Un nombre entier strictement positif est écrit au tableau. On a le droit de faire l'opération suivante : si le nombre $k$ est écrit, on l'efface et on le remplace par $a + b$, où $a$ et $b$ sont des entiers strictement positifs tels que $a \times b = k$.

Par exemple, on peut remplacer $20$ par $12$, car $20 = 2 \times 10$ et $2 + 10 = 12$.

Au départ, on a écrit l'entier $n \geqslant 1$. Déterminer, selon la valeur de $n$, le plus petit nombre que l'on peut faire apparaître au tableau en faisant l'opération autant de fois qu'on veut (éventuellement aucune).

## Hints

1. Essaie avec de petites valeurs de $n$ : $1$, $2$, $3$, $4$, $5$, $6$, $7$. Quels nombres arrive-t-on à écrire ?
2. On peut toujours écrire $k = 1 \times k$. Que permet cette écriture ?
3. Si $a + b \leqslant 4$, combien peut valoir $a \times b$ au plus ? Qu'en déduis-tu pour un nombre $k \geqslant 5$ écrit au tableau ?
4. Pour un nombre pair $k = 2m$, compare $2 + m$ et $k$. Pour un nombre impair, commence par l'augmenter de $1$.

## Solution

**Premières remarques.** Pour tout $k$, on peut écrire $k = 1 \times k$ et remplacer $k$ par $k + 1$ : on peut toujours augmenter de $1$. Pour diminuer, il faut une décomposition $k = a \times b$ avec $a + b < k$.

**Les petits nombres ne diminuent jamais.** Écrivons toutes les décompositions des nombres de $1$ à $4$ :

- $1 = 1 \times 1$ donne $2$ ;
- $2 = 1 \times 2$ donne $3$ ;
- $3 = 1 \times 3$ donne $4$ ;
- $4 = 1 \times 4$ donne $5$, et $4 = 2 \times 2$ donne $4$.

Donc un nombre $k \leqslant 4$ est toujours remplacé par un nombre au moins égal à $k$.

**Un nombre au moins égal à $5$ reste au moins égal à $5$.** Les couples d'entiers strictement positifs tels que $a + b \leqslant 4$ sont, à l'ordre près, $(1, 1)$, $(1, 2)$, $(1, 3)$ et $(2, 2)$. Leurs produits valent $1$, $2$, $3$, $4$, tous inférieurs à $5$. Donc si $k \geqslant 5$ et $a \times b = k$, on a forcément $a + b \geqslant 5$.

**Ce qu'on ne peut pas faire.** Notons $s = n$ si $n \leqslant 4$ et $s = 5$ si $n \geqslant 5$. D'après les deux remarques précédentes, si le nombre écrit au tableau est au moins égal à $s$, le suivant l'est aussi. Au départ, $n \geqslant s$. Donc tous les nombres qui apparaissent au tableau sont au moins égaux à $s$.

Pour $n \leqslant 4$, le plus petit nombre possible est donc $n$, que l'on obtient sans rien faire.

**Pour $n \geqslant 5$, on peut atteindre $5$.** Montrons que pour tout $k \geqslant 6$, on peut remplacer $k$, en une ou deux opérations, par un nombre compris entre $5$ et $k - 1$.

- Si $k$ est pair, $k = 2m$ avec $m \geqslant 3$. On remplace $k = 2 \times m$ par $2 + m$. Comme $m \geqslant 3$, on a $2 + m < 2m = k$.
- Si $k$ est impair, $k = 2m + 1$ avec $m \geqslant 3$. On remplace d'abord $k$ par $k + 1 = 2\,(m + 1)$, puis $2 \times (m + 1)$ par $m + 3$. Comme $m \geqslant 3$, on a $m + 3 < 2m + 1 = k$.

Dans les deux cas, le nouveau nombre est au moins égal à $5$ d'après la remarque précédente. En partant de $n \geqslant 6$ et en recommençant, on obtient des nombres de plus en plus petits, tous au moins égaux à $5$. Cela ne peut pas durer indéfiniment, et on s'arrête seulement quand le nombre écrit vaut $5$. Par exemple :
$$7 \to 8 \to 6 \to 5, \qquad 20 \to 12 \to 8 \to 6 \to 5 .$$

**Conclusion.** Le plus petit nombre que l'on peut obtenir est $n$ lorsque $n \leqslant 4$, et $5$ lorsque $n \geqslant 5$.

## Going further

1. Partant de $n = 5$, quels sont tous les nombres que l'on peut faire apparaître au tableau ?
2. On change la règle : on remplace $k = a \times b$ par $a + b + 1$. Montrer que le plus petit nombre que l'on peut obtenir est $n$ si $n \leqslant 7$, et $7$ si $n \geqslant 7$.
