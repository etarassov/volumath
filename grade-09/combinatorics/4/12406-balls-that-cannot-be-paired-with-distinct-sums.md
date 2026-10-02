---
id: "12406"
title: "Des boules qu'on ne peut pas appairer en sommes toutes différentes"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [ordre, paires, raisonnement-par-l-absurde, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercices du groupe B, exercice 3 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On dispose de $2n$ boules, et sur chacune on a écrit un nombre.
On suppose que, de quelque façon qu'on regroupe les boules en $n$ paires, il y a toujours deux
paires qui ont la même somme.

1. Montrer que quatre de ces boules portent le même nombre.
2. Montrer que les nombres écrits sur les boules prennent au plus $n - 1$ valeurs différentes.

## Hints

1. Pour la première question, range les boules de la plus grande valeur à la plus petite, et
   forme les paires de la façon la plus simple possible : les deux premières, les deux suivantes,
   et ainsi de suite.
2. Si deux de ces paires ont la même somme, compare les quatre nombres en jeu à l'aide de
   l'ordre.
3. Pour la deuxième question, raisonne par l'absurde : s'il y a au moins $n$ valeurs différentes,
   choisis $n$ boules qui portent $n$ valeurs différentes, et apparie-les intelligemment avec les
   $n$ autres boules pour que toutes les sommes soient différentes.

## Solution

### Question 1

Notons $a_1 \geqslant a_2 \geqslant \cdots \geqslant a_{2n}$ les nombres des boules, rangés du plus
grand au plus petit. Formons les $n$ paires
$$(a_1, a_2), \ (a_3, a_4), \ \ldots, \ (a_{2n-1}, a_{2n}).$$
D'après l'hypothèse, deux de ces paires ont la même somme : il existe deux indices impairs
$i < j$ tels que
$$a_i + a_{i+1} = a_j + a_{j+1}.$$
Comme $i < j$ et que $i$, $j$ sont impairs, on a $i + 1 < j$, donc, avec le rangement,
$$a_i \geqslant a_{i+1} \geqslant a_j \geqslant a_{j+1}.$$
On a donc $a_i \geqslant a_j$ et $a_{i+1} \geqslant a_{j+1}$. Si l'une de ces deux inégalités
était stricte, on aurait $a_i + a_{i+1} > a_j + a_{j+1}$, ce qui est faux. Donc $a_i = a_j$, et
alors toute la chaîne d'inégalités est faite d'égalités :
$$a_i = a_{i+1} = a_j = a_{j+1}.$$
**Les quatre boules $a_i$, $a_{i+1}$, $a_j$, $a_{j+1}$ portent le même nombre.**

### Question 2

Raisonnons par l'absurde et supposons qu'il y ait au moins $n$ valeurs différentes.

Choisissons $n$ boules qui portent $n$ valeurs différentes, et rangeons-les dans l'ordre
décroissant : $b_1 > b_2 > \cdots > b_n$. Rangeons aussi les $n$ boules restantes dans l'ordre
décroissant : $c_1 \geqslant c_2 \geqslant \cdots \geqslant c_n$.

Formons les $n$ paires $(b_1, c_1), (b_2, c_2), \ldots, (b_n, c_n)$. Si $i < j$, alors
$b_i > b_j$ et $c_i \geqslant c_j$, donc
$$b_i + c_i > b_j + c_j.$$
Les $n$ sommes sont donc rangées dans l'ordre strictement décroissant : elles sont toutes
différentes. Cela contredit l'hypothèse.

**Les nombres écrits prennent donc au plus $n - 1$ valeurs différentes.**

## Going further

Pour $n = 3$, trouver six nombres, prenant exactement $2$ valeurs différentes, qui vérifient
l'hypothèse de l'énoncé. Le résultat de la question 2 est-il le meilleur possible pour tout $n$ ?
