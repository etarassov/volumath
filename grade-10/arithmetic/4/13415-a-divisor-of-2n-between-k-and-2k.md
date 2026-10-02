---
id: "13415"
title: "Un diviseur de 2n entre k et 2k"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, parite, appariement, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 5 (repris tel quel en exercice 12 de l'épreuve lycée) ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $n$ un entier positif impair, et soit $k$ un entier strictement positif.

On suppose que le nombre de diviseurs positifs de $2n$ qui sont inférieurs ou égaux à $k$ est impair.

Montrer qu'il existe un diviseur $d$ de $2n$ tel que $k < d \leqslant 2k$.

## Hints

1. Essaie avec $n = 15$ : écris tous les diviseurs de $30$, puis, pour $k = 4$ et pour $k = 7$, compte ceux qui sont inférieurs ou égaux à $k$. Quel diviseur convient ?
2. Comme $n$ est impair, les diviseurs de $2n$ se rangent en deux familles : les diviseurs impairs, et les diviseurs pairs. Montre que les premiers sont les diviseurs de $n$, et les seconds leurs doubles.
3. Associe chaque diviseur impair $e$ à son double $2e$.
4. Raisonne par l'absurde. Si, pour chaque diviseur impair $e \leqslant k$, le double $2e$ était encore inférieur ou égal à $k$, combien y aurait-il de diviseurs de $2n$ inférieurs ou égaux à $k$ ? Pair ou impair ?

## Solution

**Étape 1 : les diviseurs de $2n$.**

Comme $n$ est impair, tous ses diviseurs sont impairs. Montrons que les diviseurs de $2n$ sont exactement les diviseurs de $n$ et leurs doubles.

- Un diviseur $e$ de $n$ divise $2n$, et son double $2e$ divise aussi $2n$ : si $n = e \times q$, alors $2n = 2e \times q$.
- Soit $d$ un diviseur impair de $2n$. Dans la décomposition en facteurs premiers de $d$, le facteur $2$ n'apparaît pas, et tous ses facteurs premiers figurent dans la décomposition de $2n = 2 \times n$. Ils figurent donc dans celle de $n$, avec au moins le même exposant : $d$ divise $n$.
- Soit $d$ un diviseur pair de $2n$. On écrit $d = 2e$. Si $2n = 2e \times q$, alors $n = e \times q$ : $e$ divise $n$, et $d$ est le double d'un diviseur de $n$.

En résumé : **les diviseurs impairs de $2n$ sont les diviseurs de $n$, et les diviseurs pairs de $2n$ sont les doubles des diviseurs de $n$.**

**Étape 2 : on raisonne par l'absurde.**

Notons $e_1, e_2, \ldots, e_r$ les diviseurs de $n$ qui sont inférieurs ou égaux à $k$. Supposons que, pour chacun d'eux, on ait aussi $2e_i \leqslant k$.

Cherchons alors tous les diviseurs de $2n$ inférieurs ou égaux à $k$.

- Les diviseurs impairs inférieurs ou égaux à $k$ sont, d'après l'étape 1, les diviseurs de $n$ inférieurs ou égaux à $k$ : ce sont $e_1, \ldots, e_r$.
- Un diviseur pair inférieur ou égal à $k$ s'écrit $2e$ avec $e$ diviseur de $n$, et $e < 2e \leqslant k$, donc $e$ est l'un des $e_i$. Inversement, chaque $2e_i$ est un diviseur pair de $2n$, et il est inférieur ou égal à $k$ d'après notre hypothèse. Les diviseurs pairs inférieurs ou égaux à $k$ sont donc exactement $2e_1, \ldots, 2e_r$.

Les $2r$ nombres $e_1, \ldots, e_r, 2e_1, \ldots, 2e_r$ sont tous différents : les $e_i$ sont impairs et les $2e_i$ pairs, et les $e_i$ sont différents entre eux, donc leurs doubles aussi. Le nombre de diviseurs de $2n$ inférieurs ou égaux à $k$ serait donc $2r$, un nombre pair. C'est contraire à l'énoncé.

**Étape 3 : conclusion.**

L'hypothèse de l'étape 2 est donc fausse : il existe un diviseur $e$ de $n$ tel que $e \leqslant k$ et $2e > k$. Posons $d = 2e$. C'est un diviseur de $2n$, et

$$k < 2e = d \qquad \text{et} \qquad d = 2e \leqslant 2k.$$

Le nombre $d$ convient : c'est un diviseur de $2n$ tel que $k < d \leqslant 2k$.

*Exemple.* Pour $n = 15$, les diviseurs de $30$ sont $1, 2, 3, 5, 6, 10, 15, 30$. Pour $k = 7$, il y en a cinq inférieurs ou égaux à $7$, à savoir $1, 2, 3, 5, 6$. Le plus grand diviseur impair inférieur ou égal à $7$ est $e = 5$, et $d = 10$ vérifie bien $7 < 10 \leqslant 14$.

## Going further

Montrer que le résultat peut être faux quand $n$ est pair. On pourra essayer $n = 2$ et $k = 4$.
