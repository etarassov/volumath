---
id: "22046"
title: "Une infinité de nombres premiers de la forme 4k + 3, puis 6k + 5"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres-premiers, restes, raisonnement-par-l-absurde, decomposition-en-facteurs-premiers, infini]
adapted_from: null
see_also: ["8717", "22052"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On s'inspire de la preuve d'Euclide qui montre qu'il existe une infinité de nombres premiers.

1. Montrer qu'il existe une infinité de nombres premiers dont le reste dans la division par $4$ vaut $3$, c'est-à-dire de la forme $4k + 3$.
2. Montrer qu'il existe une infinité de nombres premiers dont le reste dans la division par $6$ vaut $5$, c'est-à-dire de la forme $6k + 5$.

## Hints

1. Raisonnez par l'absurde : supposez qu'il n'y en a qu'un nombre fini, notés $p_1, p_2, \ldots, p_r$, et fabriquez un nouveau nombre $N$ à partir d'eux, comme dans la preuve d'Euclide.
2. Si l'on multiplie des nombres qui ont tous le reste $1$ dans la division par $4$, quel est le reste du produit ?
3. Pour la question 1, essayez $N = 4\,p_1 p_2 \cdots p_r - 1$ et regardez ses facteurs premiers.
4. Pour la question 2, quels restes peut avoir, dans la division par $6$, un nombre premier différent de $2$ et de $3$ ?

## Solution

**Rappel : la preuve d'Euclide.** Tout entier $N \geq 2$ s'écrit comme un produit de nombres premiers. Si un nombre premier $q$ divise à la fois $N$ et un produit $P$, alors il divise la différence $P - N$. On s'en servira avec $P - N = 1$ : aucun nombre premier ne divise $1$, d'où une contradiction.

**Question 1.**

*Un outil.* Si deux nombres ont pour reste $1$ dans la division par $4$, leur produit aussi :
$$(4a + 1)(4b + 1) = 16ab + 4a + 4b + 1 = 4\,(4ab + a + b) + 1.$$
En recommençant, un produit de plusieurs nombres de la forme $4k + 1$ est encore de la forme $4k + 1$.

*La preuve.* Supposons par l'absurde qu'il n'existe qu'un nombre fini de nombres premiers de la forme $4k + 3$. Notons-les $p_1, p_2, \ldots, p_r$. Il y en a au moins un, puisque $3$ en fait partie. Posons
$$N = 4\,p_1 p_2 \cdots p_r - 1.$$

- Le nombre $N$ est impair, et $N \geq 4 \times 3 - 1 = 11$. Tous ses facteurs premiers sont donc impairs : chacun a pour reste $1$ ou $3$ dans la division par $4$.
- On a $N = 4\,(p_1 \cdots p_r - 1) + 3$ : le reste de $N$ dans la division par $4$ est $3$.
- Si tous les facteurs premiers de $N$ avaient le reste $1$, alors $N$, qui est leur produit, aurait le reste $1$ d'après l'outil. Ce n'est pas le cas. Donc $N$ a au moins un facteur premier $q$ de la forme $4k + 3$.
- Ce nombre $q$ est l'un des $p_i$, puisque ce sont les seuls nombres premiers de cette forme. Il divise donc le produit $4\,p_1 \cdots p_r$. Comme il divise aussi $N$, il divise la différence $4\,p_1 \cdots p_r - N = 1$. C'est impossible.

Donc il existe une infinité de nombres premiers de la forme $4k + 3$.

**Question 2.**

*Les restes possibles.* Un nombre premier $q$ différent de $2$ et de $3$ ne peut pas avoir le reste $0$, $2$, $3$ ou $4$ dans la division par $6$. En effet, $6k$, $6k + 2 = 2\,(3k + 1)$ et $6k + 4 = 2\,(3k + 2)$ sont pairs, et $6k + 3 = 3\,(2k + 1)$ est un multiple de $3$. Son reste vaut donc $1$ ou $5$.

*Un outil.* Comme à la question 1, $(6a + 1)(6b + 1) = 6\,(6ab + a + b) + 1$ : un produit de nombres de la forme $6k + 1$ est encore de la forme $6k + 1$.

*La preuve.* Supposons par l'absurde qu'il n'existe qu'un nombre fini de nombres premiers de la forme $6k + 5$, notés $p_1, \ldots, p_r$. Il y en a au moins un, puisque $5$ en fait partie. Posons
$$N = 6\,p_1 p_2 \cdots p_r - 1 = 6\,(p_1 \cdots p_r - 1) + 5.$$

- Le reste de $N$ dans la division par $6$ est $5$. En particulier, $N$ n'est divisible ni par $2$ ni par $3$ (sinon le reste serait pair, ou un multiple de $3$). Ses facteurs premiers ont donc tous le reste $1$ ou $5$.
- Si tous avaient le reste $1$, leur produit $N$ aurait le reste $1$. Donc $N$ a un facteur premier $q$ de la forme $6k + 5$.
- Ce $q$ est l'un des $p_i$, donc il divise $6\,p_1 \cdots p_r$ et $N$, donc aussi leur différence, qui vaut $1$. C'est impossible.

**Conclusion.** Il existe une infinité de nombres premiers de la forme $4k + 3$, et une infinité de nombres premiers de la forme $6k + 5$.

## Going further

1. Pourquoi la même méthode ne marche-t-elle pas pour montrer qu'il y a une infinité de nombres premiers de la forme $4k + 1$ ? (Que vaut le reste de $3 \times 7$ dans la division par $4$ ?)
2. Un théorème difficile, dû à Dirichlet, affirme que si $a$ et $b$ n'ont pas de diviseur commun autre que $1$, il y a une infinité de nombres premiers de la forme $ak + b$. Vérifiez sur une liste de nombres premiers qu'il y en a beaucoup de chaque forme $10k + 1$, $10k + 3$, $10k + 7$ et $10k + 9$.
