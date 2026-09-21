---
id: "7804"
title: "Combien de 2 dans ce produit ?"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [puissances, divisibilite, decomposition]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires collégiens, exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On pose
$$N = 2^5 \times 3^8 \times 4^9 \times 5^{10} \times 6^{11}.$$

Soit $n$ l'entier tel que $N$ soit divisible par $2^n$, mais pas par $2^{n+1}$.

Déterminer $n$.

## Hints

1. $n$ est simplement le nombre de facteurs $2$ que l'on trouve dans $N$ quand on décompose
   tout en nombres premiers.
2. $3^8$ et $5^{10}$ n'apportent aucun facteur $2$. Reste à s'occuper de $2^5$, de $4^9$ et de
   $6^{11}$.
3. Écris $4 = 2^2$ et $6 = 2 \times 3$, puis compte.

## Solution

L'entier $n$ demandé est exactement le nombre de facteurs $2$ contenus dans $N$ : c'est
l'exposant de $2$ dans la décomposition de $N$ en produit de nombres premiers.

**On traite chaque facteur séparément.**

- $2^5$ apporte $5$ facteurs $2$.
- $3^8$ n'apporte aucun facteur $2$, puisque $3$ est impair.
- $4^9 = (2^2)^9 = 2^{18}$ apporte $18$ facteurs $2$.
- $5^{10}$ n'apporte aucun facteur $2$.
- $6^{11} = (2 \times 3)^{11} = 2^{11} \times 3^{11}$ apporte $11$ facteurs $2$.

**On additionne.**

$$N = 2^{5} \times 2^{18} \times 2^{11} \times 3^{8} \times 3^{11} \times 5^{10}
    = 2^{34} \times 3^{19} \times 5^{10}.$$

Le nombre $3^{19} \times 5^{10}$ est impair, donc $N$ est divisible par $2^{34}$ et pas par
$2^{35}$.

$$n = \boxed{34}.$$
