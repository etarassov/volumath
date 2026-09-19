---
id: "3223"
title: "Les nombres qui ont l'air premiers"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [nombres premiers, crible, inclusion exclusion, denombrement, multiples]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Combinatorics review"
  reference: "Handout-4819-5025.pdf, section 5, exercice 4, d'après AMC 12A 2005, problème 18"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4819-5025.pdf"
---

## Statement

On dit qu'un entier **a l'air premier** s'il est composé (ni $1$, ni premier) mais n'est divisible ni par $2$, ni par $3$, ni par $5$.

Les trois plus petits sont $49$, $77$ et $91$.

Combien y a-t-il d'entiers qui ont l'air premiers et qui sont inférieurs à $1000$ ?

On donne : il y a $168$ nombres premiers inférieurs à $1000$.

## Hints

1. Commence par compter les entiers de $1$ à $999$ qui ne sont divisibles ni par $2$, ni par $3$, ni par $5$.
2. Pour cela, compte plutôt ceux qui **sont** divisibles par au moins l'un des trois, puis retranche. Attention aux doubles comptages.
3. La formule du crible pour trois ensembles :
   $$|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C| .$$
   Un entier est à la fois multiple de $2$ et de $3$ exactement quand il est multiple de $6$.
4. Le nombre de multiples de $d$ entre $1$ et $999$ est la partie entière de $\frac{999}{d}$.
5. Parmi les entiers restants, il y a $1$, les nombres premiers autres que $2$, $3$ et $5$, et enfin ceux que l'on cherche.

## Solution

**Étape 1 : compter les entiers non divisibles par $2$, $3$ ni $5$.**

On travaille sur les entiers de $1$ à $999$, soit $999$ entiers.

Notons $A$, $B$, $C$ les ensembles des multiples de $2$, de $3$ et de $5$ dans cet intervalle. Le nombre de multiples de $d$ entre $1$ et $999$ vaut $\left\lfloor \frac{999}{d} \right\rfloor$ :

$$|A| = 499, \qquad |B| = 333, \qquad |C| = 199 .$$

Un entier est multiple de $2$ et de $3$ exactement quand il est multiple de $6$, et de même pour les autres paires :

$$|A \cap B| = \left\lfloor \frac{999}{6} \right\rfloor = 166, \qquad |A \cap C| = \left\lfloor \frac{999}{10} \right\rfloor = 99, \qquad |B \cap C| = \left\lfloor \frac{999}{15} \right\rfloor = 66 ,$$

$$|A \cap B \cap C| = \left\lfloor \frac{999}{30} \right\rfloor = 33 .$$

La formule du crible donne

$$|A \cup B \cup C| = 499 + 333 + 199 - 166 - 99 - 66 + 33 = 733 .$$

Il reste donc

$$999 - 733 = 266$$

entiers de $1$ à $999$ qui ne sont divisibles ni par $2$, ni par $3$, ni par $5$.

**Étape 2 : trier ces 266 entiers.**

Chacun de ces $266$ entiers est dans exactement l'un des trois cas suivants :

- c'est $1$ : **un** entier ;
- c'est un nombre premier. Les $168$ premiers inférieurs à $1000$ comprennent $2$, $3$ et $5$, qui eux sont éliminés par le crible. Il en reste donc $168 - 3 = 165$ ;
- c'est un nombre composé non divisible par $2$, $3$ ni $5$ : c'est exactement la définition d'un nombre qui **a l'air premier**.

**Étape 3 : conclure.**

$$266 - 1 - 165 = 100 .$$

**Conclusion.** Il y a exactement **100** entiers inférieurs à $1000$ qui ont l'air premiers.

**Contrôle.** Le plus petit est $49 = 7 \times 7$, car tout composé non divisible par $2$, $3$ ni $5$ a tous ses facteurs premiers $\ge 7$, donc vaut au moins $7 \times 7$. Viennent ensuite $7 \times 11 = 77$ et $7 \times 13 = 91$, ce qui correspond bien à l'énoncé.

## Going further

1. Quel est le plus grand entier qui a l'air premier et qui est inférieur à $1000$ ?
2. Parmi ces $100$ entiers, combien ont exactement deux facteurs premiers (comptés avec multiplicité) ?
3. Combien y aurait-il de tels entiers inférieurs à $100$ ? (Il y a $25$ nombres premiers inférieurs à $100$.)
