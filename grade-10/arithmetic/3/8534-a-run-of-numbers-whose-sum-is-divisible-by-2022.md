---
id: "8534"
title: "Une somme de nombres qui se suivent, divisible par 2022"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [principe-des-tiroirs, divisibilite, sommes-partielles, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On écrit à la suite, dans un ordre quelconque, $2022$ nombres entiers
$a_1, a_2, \ldots, a_{2022}$. On ne sait rien de ces nombres.

Démontrer qu'on peut toujours trouver dans cette liste plusieurs nombres **qui se suivent**
(éventuellement un seul) dont la somme est divisible par $2022$.

*Autrement dit, il existe deux indices $i \leqslant j$ tels que $a_i + a_{i+1} + \cdots + a_j$
soit un multiple de $2022$.*

## Hints

1. Ne regarde pas les nombres un par un, mais les sommes depuis le début : $s_1 = a_1$, $s_2 = a_1 + a_2$, et ainsi de suite.
2. La somme d'un bloc de nombres qui se suivent s'écrit comme une différence de deux de ces sommes.
3. Combien y a-t-il de sommes $s_1, \ldots, s_{2022}$ ? Combien de restes possibles dans la division par $2022$ ?
4. Attention : il y a autant de sommes que de restes. Il faut traiter à part le cas où l'un des restes vaut $0$.

## Solution

**Les sommes depuis le début.** Pour $n$ allant de $1$ à $2022$, posons

$$s_n = a_1 + a_2 + \cdots + a_n .$$

On a donc $2022$ nombres $s_1, s_2, \ldots, s_{2022}$.

Remarquons que, pour $i \leqslant j$,

$$a_i + a_{i+1} + \cdots + a_j = s_j - s_{i-1} \qquad (\text{avec } s_0 = 0) .$$

**Premier cas : l'un des $s_n$ est divisible par 2022.** Alors le bloc
$a_1 + a_2 + \cdots + a_n$ convient directement, et c'est terminé.

**Second cas : aucun des $s_n$ n'est divisible par 2022.** Les restes de
$s_1, \ldots, s_{2022}$ dans la division par $2022$ sont alors tous différents de $0$ : ils
appartiennent à l'ensemble $\{1, 2, \ldots, 2021\}$, qui contient $2021$ valeurs.

Nous avons $2022$ sommes et seulement $2021$ restes possibles : d'après le principe des
tiroirs, deux de ces sommes ont le même reste. Notons-les $s_i$ et $s_j$ avec $i < j$.

Alors $s_j - s_i$ est divisible par $2022$, c'est-à-dire que

$$a_{i+1} + a_{i+2} + \cdots + a_j$$

est un multiple de $2022$. Ce bloc de nombres qui se suivent convient.

**Conclusion.** Dans les deux cas, on trouve un bloc de nombres consécutifs de la liste dont
la somme est divisible par $2022$.

## Going further

Rien n'est particulier à $2022$ : le même raisonnement montre que parmi $n$ entiers écrits à
la suite, on peut toujours extraire un bloc consécutif dont la somme est divisible par $n$.
