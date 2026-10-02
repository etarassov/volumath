---
id: "12027"
title: "k nombres jamais premiers entre eux, k + 1 toujours"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [premiers entre eux, nombres premiers, construction, principe des tiroirs, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du stage de mars 2013"
  reference: "2017-10_ofm-2012-2013-test-stage.pdf, exercice 1 ; corrigé 2017-10_ofm-2012-2013-test-stage-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-stage.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-stage.pdf"
---

## Statement

On dit que des entiers sont *premiers entre eux dans leur ensemble* lorsque le seul entier positif qui les divise tous est $1$. Par exemple, $6$, $10$ et $15$ sont premiers entre eux dans leur ensemble, alors que deux quelconques d'entre eux ne le sont pas.

Soit $k \geqslant 2$ un entier.

1. Soit $n > k$ un entier. Existe-t-il $n$ entiers strictement positifs tels que $k$ quelconques d'entre eux ne soient jamais premiers entre eux dans leur ensemble, mais que $k + 1$ quelconques d'entre eux soient toujours premiers entre eux dans leur ensemble ?
2. Existe-t-il une suite infinie d'entiers strictement positifs qui vérifie ces deux conditions ?

## Hints

1. Regardez comment l'exemple $6 = 2 \times 3$, $10 = 2 \times 5$, $15 = 3 \times 5$ est fabriqué : chaque paire de nombres a reçu son propre nombre premier.
2. Pour la question 1, donnez à chaque groupe de $k$ positions son propre nombre premier, et mettez ce nombre premier dans les nombres de ces $k$ positions seulement.
3. Pour la question 2, regardez le premier terme de la suite. Il n'a qu'un nombre fini de facteurs premiers. Montrez que chacun des autres termes est divisible par l'un d'eux.

## Solution

**Réponse.** 1. Oui. 2. Non.

On utilise un seul fait sur les nombres premiers : *si un nombre premier $q$ divise un produit de nombres premiers, alors $q$ est l'un d'eux.* C'est une conséquence de l'unicité de la décomposition en facteurs premiers.

**Question 1.** Numérotons les positions de $1$ à $n$. Appelons *groupe* un ensemble de $k$ positions, par exemple $\{1, 2, \ldots, k\}$. Il n'y a qu'un nombre fini de groupes. Comme il existe une infinité de nombres premiers, on peut donner à chaque groupe $G$ son propre nombre premier $p_G$, de sorte que deux groupes différents reçoivent deux nombres premiers différents.

Pour chaque position $i$, on note alors $a_i$ le produit des nombres premiers $p_G$, pour tous les groupes $G$ qui contiennent la position $i$.

Chaque position appartient à au moins un groupe (car $n \geqslant k$), donc $a_i \geqslant 2$. Voici la propriété clé : *le nombre premier $p_G$ divise $a_j$ si et seulement si la position $j$ appartient au groupe $G$.* En effet, si $j$ est dans $G$, alors $p_G$ est l'un des facteurs de $a_j$. Si $j$ n'est pas dans $G$, alors $a_j$ est un produit de nombres premiers tous différents de $p_G$, donc $p_G$ ne le divise pas, d'après le fait rappelé plus haut.

- *$k$ nombres quelconques ne sont jamais premiers entre eux dans leur ensemble.* Prenons $k$ nombres $a_{i_1}, \ldots, a_{i_k}$. Leurs positions $i_1, \ldots, i_k$ forment un groupe $G$, donc $p_G$ divise ces $k$ nombres. Comme $p_G \geqslant 2$, ils ne sont pas premiers entre eux dans leur ensemble.
- *$k + 1$ nombres quelconques sont toujours premiers entre eux dans leur ensemble.* Prenons $k + 1$ nombres, et supposons qu'un entier $d \geqslant 2$ les divise tous. Soit $q$ un facteur premier de $d$ : il divise lui aussi ces $k + 1$ nombres. Comme $q$ divise le premier d'entre eux, qui est un produit de nombres premiers $p_G$, le nombre $q$ est l'un d'eux : $q = p_G$ pour un certain groupe $G$. D'après la propriété clé, les $k + 1$ positions sont alors toutes dans $G$. C'est impossible, car $G$ ne contient que $k$ positions.

Ces $n$ nombres conviennent. Par exemple, pour $k = 2$ et $n = 3$, les groupes $\{1, 2\}$, $\{1, 3\}$, $\{2, 3\}$ reçoivent les nombres premiers $2$, $3$, $5$, et l'on retrouve $a_1 = 2 \times 3 = 6$, $a_2 = 2 \times 5 = 10$, $a_3 = 3 \times 5 = 15$.

**Question 2.** Supposons qu'une suite infinie $a_1, a_2, a_3, \ldots$ vérifie les deux conditions.

- Le terme $a_1$, pris avec $k - 1$ autres termes, forme $k$ nombres qui ne sont pas premiers entre eux dans leur ensemble. Donc $a_1 \geqslant 2$. Notons $q_1, \ldots, q_m$ ses facteurs premiers ; il y en a un nombre fini, et au moins un.
- Prenons un terme $a_j$ avec $j \geqslant 2$. Les nombres $a_1$, $a_j$ et $k - 2$ autres termes forment $k$ nombres (c'est possible car $k \geqslant 2$). Ils ont un diviseur commun $d \geqslant 2$, donc un facteur premier commun $q$. Ce nombre $q$ divise $a_1$, c'est donc l'un des $q_1, \ldots, q_m$. Ainsi **chaque terme $a_j$ est divisible par au moins l'un des nombres $q_1, \ldots, q_m$.**
- Rangeons chaque terme $a_j$ ($j \geqslant 2$) dans la case d'un nombre premier $q_i$ qui le divise. Il y a une infinité de termes et seulement $m$ cases, donc une case contient une infinité de termes. En particulier, un même nombre premier $q_i$ divise $k + 1$ termes de la suite. Ces $k + 1$ termes ne sont pas premiers entre eux dans leur ensemble, ce qui contredit la deuxième condition.

**Conclusion.** Pour tout $n > k$, on peut trouver $n$ entiers qui vérifient les deux conditions. Mais aucune suite infinie ne les vérifie.

## Going further

Dans la construction de la question 1, il y a autant de nombres premiers que de groupes de $k$ positions parmi $n$, c'est-à-dire $\binom{n}{k}$. Les nombres obtenus deviennent vite très grands : pour $k = 2$ et $n = 4$, on obtient déjà $30$, $154$, $273$ et $715$.
