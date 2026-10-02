---
id: "5102"
title: "Faire 1 avec des 0 et des 8"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [chiffres, decimaux, ecriture-decimale, minimum, retenues]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problèmes 7, 8 et 9 ; le cas des 7 est le problème 13 de l'AIME 1988"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Soit $c$ un chiffre non nul. On dit qu'un nombre est **spécial-$c$** si son écriture décimale ne contient aucun chiffre à part $0$ et $c$. Par exemple, pour $c = 8$, les nombres $\text{0,8808}$, $\text{0,08}$ et $\text{0,8888}\ldots$ (une infinité de $8$) sont spéciaux-8.

On additionne plusieurs nombres spéciaux-$c$, tous strictement positifs, et on veut que la somme soit exactement $1$.

1. Quel est le plus petit nombre de termes possible avec des nombres spéciaux-3 ?
2. Même question avec des nombres spéciaux-8.
3. Même question avec des nombres spéciaux-7.

## Hints

1. Commence par la question 1, qui se règle sans aucune astuce : quel est le plus grand nombre spécial-3 strictement inférieur à $1$ ?
2. Pour les questions 2 et 3 : un nombre spécial-8 est exactement $8$ fois un nombre dont tous les chiffres valent $0$ ou $1$. Que devient alors la question ?
3. Si tu additionnes $k$ nombres dont tous les chiffres valent $0$ ou $1$, et que $k \leqslant 9$, il ne se produit jamais de retenue. Quel est alors le chiffre de la somme à une position donnée ?
4. Conclusion de l'indication précédente : la somme possède une écriture décimale dont **tous les chiffres sont inférieurs ou égaux à $k$**. Regarde maintenant les chiffres de $\tfrac{1}{8}$, puis ceux de $\tfrac{1}{7}$.
5. Pour la construction, dans le cas $\tfrac{1}{7} = \text{0,142857142857}\ldots$ : fabrique le $i$-ième nombre en mettant un $1$ exactement aux positions où le chiffre de $\tfrac{1}{7}$ est supérieur ou égal à $i$.

## Solution

**Une remarque valable partout.** Un nombre spécial-$c$ qui est supérieur ou égal à $1$ vaut au moins $c$, donc au moins $3$ dans nos trois questions. Comme la somme cherchée vaut $1$ et que tous les termes sont positifs, **tous les termes sont strictement inférieurs à $1$** : ils s'écrivent $0,\ldots$

### Question 1 : les nombres spéciaux-3

Le plus grand nombre spécial-3 strictement inférieur à $1$ est $\text{0,3333}\ldots = \tfrac{1}{3}$.

Donc, avec $k$ termes, la somme vaut au plus $\tfrac{k}{3}$. Pour atteindre $1$, il faut $\tfrac{k}{3} \geqslant 1$, c'est-à-dire $k \geqslant 3$.

Et $k = 3$ convient :

$$\tfrac13 + \tfrac13 + \tfrac13 = \text{0,3333}\ldots + \text{0,3333}\ldots + \text{0,3333}\ldots = 1$$

**Il faut donc $3$ nombres, et $3$ suffisent.**

### Le lemme des retenues

Pour les deux autres questions, un nombre spécial-8 est $8$ fois un nombre dont tous les chiffres valent $0$ ou $1$ : par exemple $\text{0,8808} = 8 \times \text{0,1101}$. De même pour les nombres spéciaux-7.

Donc, si $k$ nombres spéciaux-8 ont pour somme $1$, alors $k$ nombres à chiffres $0$ et $1$ ont pour somme $\tfrac{1}{8}$. Et si $k$ nombres spéciaux-7 ont pour somme $1$, alors $k$ nombres à chiffres $0$ et $1$ ont pour somme $\tfrac{1}{7}$.

**Lemme.** *Si on additionne $k$ nombres dont tous les chiffres valent $0$ ou $1$, avec $k \leqslant 9$, alors la somme possède une écriture décimale dont tous les chiffres sont inférieurs ou égaux à $k$.*

En effet, posons l'addition en colonnes. Dans une colonne, chacun des $k$ nombres apporte $0$ ou $1$ : le total de la colonne vaut au plus $k \leqslant 9$. Il n'y a donc jamais de retenue, et le chiffre de la somme à cette position est exactement le total de la colonne, qui est bien compris entre $0$ et $k$.

### Question 2 : les nombres spéciaux-8

*Combien de termes au minimum ?* Il faut écrire $\tfrac{1}{8}$ comme somme de $k$ nombres à chiffres $0$ et $1$.

Supposons $k \leqslant 9$. Par le lemme, $\tfrac{1}{8}$ a une écriture décimale dont tous les chiffres sont au plus $k$. Or $\tfrac18$ n'a que deux écritures décimales :

$$\tfrac18 = \text{0,125000}\ldots \qquad \text{et} \qquad \tfrac18 = \text{0,124999}\ldots$$

Dans la première, le plus grand chiffre est $5$ ; dans la seconde, c'est $9$. Dans les deux cas un chiffre vaut au moins $5$, donc $k \geqslant 5$. Et si $k \geqslant 10$, alors $k \geqslant 5$ aussi. Dans tous les cas, $k \geqslant 5$.

*Cinq termes suffisent.* En colonnes :

$$\text{0,111} + \text{0,011} + \text{0,001} + \text{0,001} + \text{0,001} = \text{0,125}$$

En multipliant tout par $8$ :

$$\text{0,888} + \text{0,088} + \text{0,008} + \text{0,008} + \text{0,008} = 1$$

**Il faut $5$ nombres spéciaux-8, et $5$ suffisent.**

### Question 3 : les nombres spéciaux-7

*Combien de termes au minimum ?* Il faut écrire $\tfrac{1}{7}$ comme somme de $k$ nombres à chiffres $0$ et $1$. Or

$$\tfrac17 = \text{0,142857142857}\ldots$$

et cette écriture est la seule possible (les deux écritures ne se produisent que pour les nombres décimaux, ce que $\tfrac17$ n'est pas). Le plus grand chiffre qui y apparaît est $8$. Par le lemme, si $k \leqslant 9$ alors tous les chiffres sont au plus $k$, donc $k \geqslant 8$. Et si $k \geqslant 10$, alors $k \geqslant 8$ aussi. Dans tous les cas, $k \geqslant 8$.

*Huit termes suffisent.* Voici comment les construire. Pour $i$ allant de $1$ à $8$, on fabrique le nombre $x_i$ en plaçant un $1$ exactement aux positions où le chiffre de $\tfrac17$ est supérieur ou égal à $i$, et un $0$ ailleurs. Alors, à chaque position, le total de la colonne est le nombre d'indices $i$ tels que le chiffre soit supérieur ou égal à $i$ : c'est le chiffre lui-même. Comme aucun chiffre ne dépasse $8$, il n'y a pas de retenue, et la somme des huit nombres est exactement $\tfrac17$.

Le motif de $\tfrac17$ est $142857$, répété indéfiniment. Les huit nombres ont donc eux aussi une période de six chiffres. Après multiplication par $7$, les huit nombres spéciaux-7 cherchés sont les décimaux illimités de périodes

$$777777, \quad 077777, \quad 070777, \quad 070777, \quad 000777, \quad 000707, \quad 000707, \quad 000700$$

c'est-à-dire $\text{0,777777}\,777777\ldots$, puis $\text{0,077777}\,077777\ldots$, et ainsi de suite.

**Il faut $8$ nombres spéciaux-7, et $8$ suffisent.**

## Going further

On voit maintenant d'où vient la réponse : elle ne dépend que du plus grand chiffre de $\tfrac{1}{c}$, dans la meilleure des écritures décimales de ce nombre. Pour $c = 3$ c'est $3$, pour $c = 8$ c'est $5$, pour $c = 7$ c'est $8$.

Essaie avec $c = 9$ : $\tfrac19 = \text{0,1111}\ldots$, dont le plus grand chiffre est $1$. Un seul nombre spécial-9 suffit donc, et c'est vrai : $\text{0,9999}\ldots = 1$.

La question avec les $7$ est le problème 13 de l'AIME 1988.
