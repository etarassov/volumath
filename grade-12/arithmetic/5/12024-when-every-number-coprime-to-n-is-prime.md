---
id: "12024"
title: "Quand tout nombre premier avec n est premier"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [nombres premiers, premiers entre eux, decomposition en facteurs premiers, produit de nombres premiers, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 6 (sujet olympique) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf (le corrigé s'appuie sur l'inégalité de Bonse, puis la démontre en remarque ; cette démonstration est reprise ici dans la solution, avec la seule décomposition en facteurs premiers)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Trouver le plus grand entier $n \geqslant 3$ qui a la propriété suivante :

> pour tout entier $k$ compris entre $2$ et $n$, si $k$ et $n$ sont premiers entre eux, alors $k$ est un nombre premier.

## Hints

1. Vérifiez que $n = 30$ a la propriété. Pourquoi un nombre premier avec $30$ qui n'est pas premier est-il au moins égal à $49$ ?
2. Soit $n$ un entier qui a la propriété, et $p$ le plus petit nombre premier qui ne divise pas $n$. Montrez que $p^2 > n$, et que tous les nombres premiers plus petits que $p$ divisent $n$.
3. Le produit des nombres premiers plus petits que $p$ est donc inférieur à $p^2$. Vérifiez que c'est faux pour $p = 11$, $13$, $17$, $19$. Il reste à montrer que c'est faux pour tout nombre premier $p \geqslant 11$.
4. Pour ce dernier point, raisonnez par l'absurde. Notez $Q$ le produit des premiers nombres premiers, environ la moitié de ceux qui sont plus petits que $p$, et regardez les nombres $Q - 1$, $2Q - 1$, $3Q - 1$, … : leurs facteurs premiers sont tous différents, et il y en a trop.

## Solution

**Réponse.** $n = 30$.

Notons $p_1 = 2$, $p_2 = 3$, $p_3 = 5$, $p_4 = 7$, $p_5 = 11$, … la suite des nombres premiers, et $P_k = p_1 p_2 \cdots p_k$ le produit des $k$ premiers d'entre eux. On utilise la **décomposition en facteurs premiers** : tout entier $N \geqslant 2$ s'écrit comme un produit de nombres premiers, et cette écriture est unique (à l'ordre des facteurs près). Deux entiers sont premiers entre eux quand aucun nombre premier ne divise les deux.

**Étape 1 : $n = 30$ a la propriété.** Soit $k$ un entier entre $2$ et $30$, premier avec $30 = 2 \times 3 \times 5$, et supposons que $k$ ne soit pas premier. Soit $q$ le plus petit facteur premier de $k$ ; écrivons $k = q\,m$. Comme $k$ n'est pas premier, $m \geqslant 2$, et les facteurs premiers de $m$ sont aussi des facteurs premiers de $k$, donc au moins égaux à $q$ : ainsi $m \geqslant q$. Enfin $q$ ne vaut ni $2$, ni $3$, ni $5$, donc $q \geqslant 7$. On obtient $k = q\,m \geqslant 7 \times 7 = 49 > 30$, ce qui est impossible. Donc $k$ est premier.

**Étape 2 : ce que dit la propriété.** Soit $n \geqslant 3$ un entier qui a la propriété. Il n'a qu'un nombre fini de facteurs premiers, donc il existe un nombre premier qui ne divise pas $n$ ; soit $p$ le plus petit.

- Tous les nombres premiers plus petits que $p$ divisent $n$, donc leur produit divise $n$, et ce produit est au plus égal à $n$.
- Le nombre $p^2$ est premier avec $n$, car son seul facteur premier, $p$, ne divise pas $n$. Mais $p^2$ n'est pas premier. D'après la propriété, $p^2$ n'est donc pas entre $2$ et $n$ : on a $p^2 > n$.

En résumé, si l'on note $R$ le produit des nombres premiers plus petits que $p$ :

$$R \;\leqslant\; n \;<\; p^2 . \qquad (1)$$

**Étape 3 : un lemme.** *Pour tout $k \geqslant 4$, on a $P_k > p_{k+1}^2$.* Autrement dit, pour tout nombre premier $p \geqslant 11$, le produit des nombres premiers plus petits que $p$ dépasse $p^2$.

*Les petits cas.* Pour $k = 4, 5, 6, 7$, on calcule :

| $k$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|
| $P_k$ | $210$ | $2\,310$ | $30\,030$ | $510\,510$ |
| $p_{k+1}^2$ | $11^2 = 121$ | $13^2 = 169$ | $17^2 = 289$ | $19^2 = 361$ |

*Le cas $k \geqslant 8$, par l'absurde.* Supposons $k \geqslant 8$ et $P_k \leqslant p_{k+1}^2$. Soit $m$ la partie entière de $\dfrac{k}{2}$ : on a $2m \leqslant k \leqslant 2m + 1$ et $m \geqslant 4$.

(a) *On a $P_m < p_{k+1}$.* Pour chaque $i$, on a $p_i < p_{m+i}$. Donc

$$P_m^2 = (p_1 \cdots p_m) \times (p_1 \cdots p_m) < (p_1 \cdots p_m) \times (p_{m+1} \cdots p_{2m}) = P_{2m} \leqslant P_k \leqslant p_{k+1}^2 ,$$

d'où $P_m < p_{k+1}$.

(b) *Des nombres sans petits facteurs premiers.* Posons $Q = p_1 p_2 \cdots p_{m-1}$, qui vaut au moins $2 \times 3 \times 5 = 30$. Pour $j = 1, 2, \ldots, p_m$, posons

$$N_j = j\,Q - 1 .$$

On a $N_j \geqslant Q - 1 \geqslant 29$, et $N_j \leqslant p_m Q - 1 < P_m < p_{k+1}$. Pour chaque $i \leqslant m - 1$, le nombre $Q$ est un multiple de $p_i$, donc $N_j$ a pour reste $p_i - 1$ dans la division par $p_i$ : il n'est pas divisible par $p_i$.

Choisissons un facteur premier $q_j$ de $N_j$. Il n'est pas parmi $p_1, \ldots, p_{m-1}$, donc $q_j \geqslant p_m$. Et $q_j \leqslant N_j < p_{k+1}$, donc $q_j \leqslant p_k$. Ainsi $q_j$ est l'un des $k - m + 1$ nombres premiers $p_m, p_{m+1}, \ldots, p_k$.

(c) *Les $q_j$ sont tous différents.* Supposons $q_j = q_l = q$ avec $j < l$. Alors $q$ divise $N_l - N_j = (l - j)\,Q$. Or $1 \leqslant l - j \leqslant p_m - 1$, donc tous les facteurs premiers de $l - j$ sont plus petits que $p_m$ : ce sont des nombres parmi $p_1, \ldots, p_{m-1}$, comme ceux de $Q$. La décomposition en facteurs premiers de $(l - j)\,Q$ n'utilise donc que $p_1, \ldots, p_{m-1}$. Mais en écrivant $(l - j)\,Q = q\,t$ et en décomposant $t$, on obtient une décomposition de $(l - j)\,Q$ qui contient $q \geqslant p_m$. C'est impossible, puisque la décomposition est unique.

(d) *La contradiction.* Les $p_m$ nombres $q_1, \ldots, q_{p_m}$ sont différents et pris parmi $k - m + 1$ valeurs possibles, donc

$$p_m \leqslant k - m + 1 \leqslant (2m + 1) - m + 1 = m + 2 .$$

Or $p_m \geqslant 2m - 1$ : à partir de $p_2 = 3$, les nombres premiers sont impairs, donc chacun dépasse le précédent d'au moins $2$, et $p_m \geqslant 3 + 2(m - 2) = 2m - 1$. On obtiendrait $2m - 1 \leqslant m + 2$, soit $m \leqslant 3$, alors que $m \geqslant 4$. Le lemme est démontré.

**Étape 4 : conclusion.** Soit $n \geqslant 3$ un entier qui a la propriété, et $p$ comme à l'étape 2. D'après $(1)$ et le lemme, $p$ ne peut pas valoir $11$ ou plus. Donc $p \in \{2, 3, 5, 7\}$, et $(1)$ donne :

- si $p = 2$ : $n < 4$, donc $n = 3$ ;
- si $p = 3$ : $n$ est pair et $n < 9$ ;
- si $p = 5$ : $n$ est un multiple de $2 \times 3 = 6$ et $n < 25$ ;
- si $p = 7$ : $n$ est un multiple de $2 \times 3 \times 5 = 30$ et $n < 49$, donc $n = 30$.

Dans tous les cas $n \leqslant 30$. Comme $30$ a la propriété (étape 1), **le plus grand entier cherché est $n = 30$.**

## Going further

Les entiers $n \geqslant 3$ qui ont la propriété sont exactement $3$, $4$, $6$, $8$, $12$, $18$, $24$ et $30$. On peut le vérifier en reprenant les quatre cas de l'étape 4.

Le lemme de l'étape 3 s'appelle l'*inégalité de Bonse*. Elle se démontre plus vite avec le *postulat de Bertrand*, un théorème difficile qui dit qu'entre un entier $N \geqslant 2$ et son double $2N$ il y a toujours un nombre premier : on en déduit $p_{k+1} < 2p_k$, puis $p_{k+1}^2 < 4p_k^2 < 8\,p_{k-1}\,p_k \leqslant 2 \times 3 \times 5 \times p_{k-1}\, p_k$ dès que $k \geqslant 5$.
