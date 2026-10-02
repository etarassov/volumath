---
id: "11616"
title: "Des suites où chaque terme a un nombre prescrit de diviseurs dans la suite"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombre-de-diviseurs, suites, nombres-premiers, construction, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on note $d(n)$ le nombre de diviseurs strictement positifs de $n$. Par exemple $d(1) = 1$, $d(6) = 4$ et $d(7) = 2$.

a) Existe-t-il une suite $(a_i)_{i \geqslant 1}$ strictement croissante d'entiers strictement positifs telle que, pour tout $i$ assez grand, le nombre $a_i$ soit divisible par exactement $d(i) - 1$ termes de la suite (lui-même compris) ?

b) Même question en remplaçant $d(i) - 1$ par $d(i) + 1$.

## Hints

1. Pour savoir facilement quels termes divisent $a_i$, donne à chaque terme $a_i$ un nombre premier $p_i$ « à lui », plus grand que tous les termes précédents.
2. Essaie de définir $a_i$ comme le produit des premiers termes $a_1, a_2, \ldots, a_{k-1}$ et du nombre premier $p_i$. Quels termes de la suite divisent alors $a_i$ ?
3. Il faut $k = d(i) - 1$ dans a), et $k = d(i) + 1$ dans b). La construction demande que $k$ ne dépasse pas $i$. Est-ce le cas pour $i$ assez grand ?

## Solution

La réponse est **oui** dans les deux cas. On donne une construction qui marche pour les deux questions.

**La construction.** On se donne, pour chaque entier $i \geqslant 1$, un entier $f(i)$ tel que $1 \leqslant f(i) \leqslant i$. On construit les termes l'un après l'autre. Pour chaque $i$, on choisit un nombre premier $p_i$ plus grand que $a_{i-1}$ (pour $i = 1$, on prend $p_1 = 2$), puis on pose

$$a_i = a_1 \times a_2 \times \cdots \times a_{f(i)-1} \times p_i.$$

Quand $f(i) = 1$, il n'y a aucun terme avant $p_i$ dans ce produit, et $a_i = p_i$.

**Trois propriétés de cette suite.**

*Propriété 1 : la suite est strictement croissante, et les $p_i$ sont tous différents.* En effet $a_i \geqslant p_i > a_{i-1}$. De plus $p_i > a_{i-1} \geqslant p_{i-1}$, donc les nombres premiers $p_1 < p_2 < p_3 < \cdots$ sont tous différents.

*Propriété 2 : les facteurs premiers de $a_i$ sont parmi $p_1, p_2, \ldots, p_i$.* C'est vrai pour $a_1 = p_1$. Supposons-le vrai pour tous les termes avant $a_i$. Comme $f(i) - 1 < i$, les facteurs premiers de $a_1, \ldots, a_{f(i)-1}$ sont parmi $p_1, \ldots, p_{f(i)-1}$, et il s'y ajoute $p_i$. C'est donc vrai pour $a_i$, et de proche en proche pour tous les termes. Plus précisément :

$$\text{les facteurs premiers de } a_i \text{ sont parmi } p_1, \ldots, p_{f(i)-1} \text{ et } p_i.$$

*Propriété 3 : $a_i$ est divisible par exactement $f(i)$ termes de la suite.* Regardons chaque terme $a_j$.

- Si $j < f(i)$, alors $a_j$ est l'un des facteurs du produit qui définit $a_i$, donc $a_j$ divise $a_i$. Cela fait $f(i) - 1$ termes, tous d'indice plus petit que $i$ puisque $f(i) \leqslant i$.
- Si $j = i$, le terme $a_i$ se divise lui-même.
- Si $j > i$, alors $a_j > a_i$, donc $a_j$ ne divise pas $a_i$.
- Si $f(i) \leqslant j < i$, le nombre premier $p_j$ divise $a_j$. Mais $p_j$ n'est ni l'un des $p_1, \ldots, p_{f(i)-1}$ ni $p_i$, puisque les $p$ sont tous différents. D'après la propriété 2, $p_j$ ne divise pas $a_i$, donc $a_j$ ne divise pas $a_i$ non plus.

Au total, exactement $(f(i) - 1) + 1 = f(i)$ termes divisent $a_i$.

**a) Le choix de $f$.** On prend $f(1) = 1$ et $f(i) = d(i) - 1$ pour $i \geqslant 2$. Il faut vérifier que $1 \leqslant f(i) \leqslant i$.

- Pour $i \geqslant 2$, l'entier $i$ a au moins deux diviseurs, $1$ et $i$, donc $d(i) \geqslant 2$ et $f(i) \geqslant 1$.
- Les diviseurs de $i$ sont parmi $1, 2, \ldots, i$, donc $d(i) \leqslant i$ et $f(i) \leqslant i - 1$.

D'après la propriété 3, pour tout $i \geqslant 2$, le terme $a_i$ est divisible par exactement $d(i) - 1$ termes de la suite.

**b) Le choix de $f$.** On prend $f(1) = 1$, $f(2) = 2$ et $f(i) = d(i) + 1$ pour $i \geqslant 3$. Il faut vérifier que $f(i) \leqslant i$ pour $i \geqslant 3$, c'est-à-dire $d(i) \leqslant i - 1$. Or, pour $i \geqslant 3$, le nombre $i - 1$ est au moins $2$ et ne divise pas $i$, puisque $i = (i - 1) \times 1 + 1$ laisse un reste $1$. Les diviseurs de $i$ sont donc parmi $1, 2, \ldots, i - 2$ et $i$, ce qui en fait au plus $i - 1$.

D'après la propriété 3, pour tout $i \geqslant 3$, le terme $a_i$ est divisible par exactement $d(i) + 1$ termes de la suite.

**Conclusion : dans les deux cas, une telle suite existe.**

**Un exemple pour a).** En prenant à chaque fois le plus petit nombre premier possible, on trouve $a_1 = 2$, $a_2 = 3$, $a_3 = 5$, puis $a_4 = a_1 \times 7 = 14$, $a_5 = 17$ et $a_6 = a_1 \times a_2 \times 19 = 114$. Par exemple, parmi les six premiers termes, ceux qui divisent $114$ sont $2$, $3$ et $114$ : il y en a $3 = d(6) - 1$.

**Pourquoi « pour $i$ assez grand ».** Pour $i = 1$, il faudrait que $a_1$ soit divisible par $d(1) - 1 = 0$ terme, alors qu'il se divise lui-même. Pour $i = 2$ dans b), il faudrait $d(2) + 1 = 3$ termes, alors que seuls $a_1$ et $a_2$ peuvent diviser $a_2$. On ne peut donc pas demander la condition pour tous les $i$.

## Going further

Pour a), il existe une suite plus élégante : $a_1 = 2$ et $a_i = 2^i - 1$ pour $i \geqslant 2$, c'est-à-dire $2, 3, 7, 15, 31, 63, \ldots$ On peut montrer que $2^j - 1$ divise $2^i - 1$ exactement quand $j$ divise $i$. Comme $a_1 = 2$ ne divise aucun nombre impair, les termes qui divisent $a_i$ sont les $a_j$ avec $j$ diviseur de $i$ et $j \geqslant 2$ : il y en a $d(i) - 1$.
