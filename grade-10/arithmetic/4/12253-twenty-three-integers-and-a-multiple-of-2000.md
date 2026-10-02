---
id: "12253"
title: "Vingt-trois entiers et un multiple de 2000"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, principe des tiroirs, restes, sommes consecutives, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de mai 2016"
  reference: "2017-10_ofm-2015-2016-test-mai.pdf, test du 11 mai 2016, exercice 1 (groupe B) ; pas de corrigé publié, solution rédigée pour cette base et construction vérifiée par ordinateur sur 20 000 listes tirées au hasard"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mai.pdf"
---

## Statement

Sur une même ligne, on a écrit $23$ entiers strictement positifs, dans un certain ordre.

Montrer qu'en ajoutant entre eux des signes $+$ et $\times$, et des parenthèses bien choisies, on peut toujours obtenir une expression dont la valeur est un multiple de $2000$. On n'a pas le droit de changer l'ordre des nombres.

## Hints

1. Décompose $2000$ en produit de facteurs premiers. Que vaut la somme $4 + 4 + 5 + 5 + 5$ ?
2. Commence par un problème plus petit : on a écrit $m$ entiers à la suite. Montre que l'on peut en choisir plusieurs, qui se suivent, dont la somme est un multiple de $m$.
3. Pour cela, regarde les nombres $S_0 = 0$, $S_1 = x_1$, $S_2 = x_1 + x_2$, …, $S_m = x_1 + \cdots + x_m$, et leurs restes dans la division par $m$.
4. Découpe la ligne en cinq groupes de nombres qui se suivent, de tailles $4$, $4$, $5$, $5$ et $5$. Avec chaque groupe, fabrique une expression multiple de la taille du groupe.

## Solution

**Étape 1. Un lemme : dans une liste de $m$ entiers, des nombres qui se suivent ont une somme multiple de $m$.**

Soient $x_1, x_2, \ldots, x_m$ des entiers écrits dans cet ordre, avec $m \geqslant 1$. On pose
$$S_0 = 0, \quad S_1 = x_1, \quad S_2 = x_1 + x_2, \quad \ldots, \quad S_m = x_1 + x_2 + \cdots + x_m.$$
Cela fait $m + 1$ nombres. Dans la division par $m$, il n'y a que $m$ restes possibles : $0, 1, \ldots, m - 1$. Donc deux de ces nombres ont le même reste, disons $S_i$ et $S_j$ avec $i < j$. Leur différence est alors un multiple de $m$, et
$$S_j - S_i = x_{i+1} + x_{i+2} + \cdots + x_j.$$
On a bien trouvé des nombres qui se suivent, de $x_{i+1}$ à $x_j$, dont la somme est un multiple de $m$.

**Étape 2. Une expression multiple de $m$ avec $m$ entiers.**

On reprend les mêmes $x_1, \ldots, x_m$ et les indices $i < j$ de l'étape 1. On écrit
$$x_1 \times \cdots \times x_i \times (x_{i+1} + \cdots + x_j) \times x_{j+1} \times \cdots \times x_m.$$
Les nombres avant la parenthèse et après elle sont reliés par des signes $\times$ (il se peut qu'il n'y en ait aucun d'un côté ou de l'autre). La valeur de cette expression est un multiple de la parenthèse, donc un multiple de $m$.

Par exemple, avec $m = 4$ et les nombres $3, 5, 2, 7$, les sommes sont $0, 3, 8, 10, 17$, de restes $0, 3, 0, 2, 1$ dans la division par $4$. Les sommes $S_0$ et $S_2$ ont le même reste, et l'on écrit $(3 + 5) \times 2 \times 7 = 112 = 4 \times 28$.

**Étape 3. On découpe la ligne.**

On a $2000 = 2^4 \times 5^3 = 4 \times 4 \times 5 \times 5 \times 5$, et
$$4 + 4 + 5 + 5 + 5 = 23.$$
On découpe donc la ligne des $23$ entiers en cinq groupes de nombres qui se suivent : les $4$ premiers, les $4$ suivants, puis trois groupes de $5$.

D'après l'étape 2, avec les nombres de chaque groupe, on fabrique une expression dont la valeur est un multiple de la taille du groupe. On obtient ainsi cinq valeurs $V_1, V_2, V_3, V_4, V_5$, avec $V_1$ et $V_2$ multiples de $4$, et $V_3$, $V_4$, $V_5$ multiples de $5$.

On met chacune de ces cinq expressions entre parenthèses, et l'on relie les cinq parenthèses par des signes $\times$. La valeur obtenue est
$$V_1 \times V_2 \times V_3 \times V_4 \times V_5,$$
qui est un multiple de $4 \times 4 \times 5 \times 5 \times 5 = 2000$.

**Conclusion.** Quels que soient les $23$ entiers, on peut toujours obtenir une expression multiple de $2000$.

## Going further

1. Fais la construction pour les $23$ nombres $1, 2, 3, \ldots, 23$ écrits dans cet ordre.
2. Avec la même méthode, combien de nombres suffisent pour obtenir un multiple de $1000$ ? Et pour un multiple de $2016$ ?
