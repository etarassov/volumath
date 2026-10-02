---
id: "13613"
title: "De 5 à 2011 en changeant une somme en produit"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [jeu, somme, produit, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2011 (test de sélection du stage olympique de Grésillon, 7 juin 2011)"
  reference: "2017-09_coupe_printemps_2011_3.pdf, épreuve collège, exercice 2 (aussi exercice 2 de l'épreuve des secondes, 2017-09_coupe_printemps_2011_2.pdf) ; corrigé 2017-09_coupe_printemps_2011_corrige.pdf, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2011_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2011_3.pdf"
---

## Statement

On joue avec un nombre entier strictement positif $n$, écrit au tableau. Un coup consiste à écrire $n$ comme une somme de deux entiers strictement positifs, $n = a + b$, puis à remplacer $n$ par le produit $a \times b$.

Par exemple, à partir de $7$, on peut écrire $7 = 3 + 4$ et remplacer $7$ par $12$.

En partant de $n = 5$, peut-on obtenir le nombre $2011$ ?

## Hints

1. Essaie quelques coups à partir de $5$. Les nombres obtenus peuvent-ils devenir aussi grands que l'on veut ?
2. Quel coup permet de faire **baisser** le nombre ? De combien au minimum peut-on le faire baisser ?
3. Écris $n = (n - 1) + 1$. Que devient $n$ ?

## Solution

La réponse est **oui**.

**Descendre de $1$.** En écrivant $n = (n - 1) + 1$, on remplace $n$ par $(n - 1) \times 1 = n - 1$. On peut donc toujours faire baisser le nombre de $1$, autant de fois qu'on veut, tant qu'il reste au moins $2$.

**Monter.** Il suffit donc d'atteindre un nombre plus grand que $2011$, puis de redescendre de $1$ en $1$. Pour monter, on peut par exemple écrire $n = (n - 2) + 2$, ce qui remplace $n$ par $2 \times (n - 2) = 2n - 4$. Ce nombre est plus grand que $n$ dès que $n \geqslant 5$. En partant de $5$ :

$$5 \to 6 \to 8 \to 12 \to 20 \to 36 \to 68 \to 132 \to 260 \to 516 \to 1028 \to 2052 .$$

Ensuite, on redescend de $1$ en $1$ : $2052 \to 2051 \to 2050 \to \cdots \to 2011$, en $41$ coups.

**Un chemin plus court.** On peut aussi viser $2012$ directement :

- $5 = 3 + 2$ donne $6$ ;
- $6 = 4 + 2$ donne $8$ ;
- $8 = 4 + 4$ donne $16$ ;
- $16 = 8 + 8$ donne $64$ ;
- $64 = 36 + 28$ donne $36 \times 28 = 1008$ ;
- $1008 = 1006 + 2$ donne $2012$ ;
- $2012 = 2011 + 1$ donne $2011$.

**Conclusion.** Oui, on peut obtenir $2011$ en partant de $5$, par exemple en sept coups comme ci-dessus.

## Going further

En partant de $4$, peut-on obtenir $2011$ ? Et en partant de $3$ ou de $2$ ? Quels nombres peut-on obtenir à partir de chaque point de départ ?
