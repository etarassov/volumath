---
id: "10624"
title: "Les ensembles magnifiques de polynômes"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [polynome, identification-des-coefficients, irrationnel, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 18 ; corrigé 2021-01_Corrige-envoi-2.pdf. L'exemple du corrigé, A = {1, somme de i X^(2019−i) pour i de 1 à 2019}, n'a que 2019 termes ; il faut aller jusqu'à 2020, comme ci-dessous."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

On dit qu'un ensemble $A$ de polynômes à coefficients réels est **magnifique** si, pour tous éléments distincts $P$ et $Q$ de $A$, il existe des entiers naturels $a_1 > a_2 > \cdots > a_{2020}$ tels que

$$PQ = \sum_{i=1}^{2020} i\,X^{a_i} = X^{a_1} + 2X^{a_2} + 3X^{a_3} + \cdots + 2020\,X^{a_{2020}}$$

Quel est le plus grand nombre d'éléments que peut avoir un ensemble magnifique ?

## Hints

1. Trouve d'abord un ensemble magnifique à deux éléments. Le polynôme constant $1$ peut aider.
2. Suppose que $A$ contient trois éléments distincts $P$, $Q$, $R$. Exprime $P^2$ à l'aide des trois produits $PQ$, $PR$ et $QR$.
3. Les trois produits ont des coefficients entiers et un coefficient dominant égal à $1$. Montre que $P^2$ a des coefficients rationnels, puis que $P$ lui-même a des coefficients rationnels. Dans les deux cas, détermine les coefficients un par un, en partant du plus haut degré.
4. Évalue en $X = 1$. Combien vaut $(PQ)(1)$ ? Montre que $P(1)^2$ est égal à ce nombre.
5. Le nombre $1 + 2 + \cdots + 2020$ peut-il être le carré d'un nombre rationnel ? Regarde combien de fois il est divisible par $2$.

## Solution

Notons $S = 1 + 2 + \cdots + 2020 = \frac{2020 \times 2021}{2} = 1010 \times 2021$.

**Étape 1. Un ensemble magnifique à deux éléments.**

Posons $P_0 = \sum_{i=1}^{2020} i\,X^{2020 - i} = X^{2019} + 2X^{2018} + \cdots + 2019\,X + 2020$. L'ensemble $A = \{1, P_0\}$ est magnifique : le seul produit à vérifier est $1 \times P_0 = P_0$, qui a la forme demandée avec $a_i = 2020 - i$, et ces exposants vont bien en décroissant de $2019$ à $0$.

**Étape 2. Hypothèse de départ.**

Supposons que $A$ soit magnifique et contienne trois éléments distincts $P$, $Q$, $R$. Les trois produits $PQ$, $PR$ et $QR$ ont la forme de l'énoncé : leurs coefficients sont des entiers, et leur coefficient dominant (celui du terme de plus haut degré $X^{a_1}$) vaut $1$. Aucun de $P$, $Q$, $R$ n'est nul, puisque leurs produits ne le sont pas. Et

$$P^2 \times QR = PQ \times PR$$

**Étape 3. Premier lemme : $P^2$ a des coefficients rationnels.**

*Lemme 1.* Soient $B$ et $C$ deux polynômes à coefficients réels. Si $B$ a des coefficients rationnels et un coefficient dominant égal à $1$, et si le produit $D = BC$ a des coefficients rationnels, alors $C$ a des coefficients rationnels.

*Preuve.* Écrivons $B = X^k + b_{k-1}X^{k-1} + \cdots + b_0$ et $C = c_m X^m + \cdots + c_0$. Pour $0 \leqslant j \leqslant m$, le coefficient de $X^{k+j}$ dans $BC$ est

$$d_{k+j} = c_j + (\text{une somme de produits } c_l\,b_r \text{ avec } l > j)$$

En effet, un produit $c_l X^l \times b_r X^r$ donne $X^{k+j}$ quand $l + r = k + j$ ; comme $r \leqslant k$, on a $l \geqslant j$, et $l = j$ ne se produit qu'avec $r = k$, c'est-à-dire avec le coefficient $1$. Ainsi $c_m = d_{k+m}$ est rationnel. Puis, si $c_m, c_{m-1}, \ldots, c_{j+1}$ sont rationnels, $c_j = d_{k+j} - (\ldots)$ est une différence de rationnels, donc rationnel. De proche en proche, tous les coefficients de $C$ sont rationnels.

On applique le lemme 1 avec $B = QR$, $C = P^2$ et $D = PQ \times PR$, qui a des coefficients entiers. Donc $P^2$ a des coefficients rationnels.

**Étape 4. Second lemme : $P$ a des coefficients rationnels.**

Écrivons $P = p_n X^n + \cdots + p_0$ avec $p_n \neq 0$. Notons $\alpha$, $\beta$, $\gamma$ les coefficients dominants de $P$, $Q$, $R$. Ceux de $PQ$, $PR$, $QR$ valent $1$, donc $\alpha\beta = \alpha\gamma = \beta\gamma = 1$, et

$$\alpha^2 = \frac{(\alpha\beta)(\alpha\gamma)}{\beta\gamma} = 1$$

Ainsi $p_n = \alpha$ vaut $1$ ou $-1$.

*Lemme 2.* Si $p_n = \pm 1$ et si $P^2$ a des coefficients rationnels, alors $P$ a des coefficients rationnels.

*Preuve.* Pour $0 \leqslant i \leqslant n - 1$, le coefficient de $X^{n+i}$ dans $P^2$ est la somme des produits $p_j\,p_{n+i-j}$ pour $j$ allant de $i$ à $n$. Les deux termes extrêmes, $j = i$ et $j = n$, donnent chacun $p_i\,p_n$. Les autres termes, pour $i + 1 \leqslant j \leqslant n - 1$, ne font intervenir que des coefficients $p_j$ et $p_{n+i-j}$ d'indices compris entre $i + 1$ et $n - 1$. Donc ce coefficient s'écrit

$$2\,p_i\,p_n + (\text{des produits de coefficients d'indices compris entre } i + 1 \text{ et } n - 1)$$

On raisonne de proche en proche en partant du haut. $p_n = \pm 1$ est rationnel. Si $p_n, \ldots, p_{i+1}$ sont rationnels, alors $2\,p_i\,p_n$ est la différence d'un coefficient de $P^2$ et d'une somme de rationnels, donc il est rationnel, et $p_i$ aussi puisque $p_n = \pm 1$. Tous les coefficients de $P$ sont donc rationnels.

**Étape 5. Évaluer en $1$.**

D'après l'étape 4, $P(1)$ est un nombre rationnel. Pour tout produit de deux éléments distincts de $A$, la valeur en $X = 1$ vaut $1 + 2 + \cdots + 2020 = S$. Donc $(PQ)(1) = (PR)(1) = (QR)(1) = S$, et l'égalité de l'étape 2 donne, en $X = 1$,

$$P(1)^2 \times S = S \times S$$

Comme $S \neq 0$, on obtient $P(1)^2 = S$. Le nombre $S$ est donc le carré d'un nombre rationnel.

**Étape 6. La contradiction.**

On a $S = 1010 \times 2021 = 2 \times 505 \times 2021 = 2m$, avec $m = 505 \times 2021$ impair. Écrivons $P(1) = \frac{p}{q}$ sous forme irréductible, avec $p$ entier et $q \geqslant 1$. Alors $p^2 = 2m\,q^2$.

- $p^2$ est pair, donc $p$ est pair (le carré d'un impair est impair). Écrivons $p = 2p'$.
- Alors $4p'^2 = 2m\,q^2$, soit $2p'^2 = m\,q^2$. Donc $m\,q^2$ est pair, et comme $m$ est impair, $q^2$ est pair, puis $q$ est pair.

Ainsi $p$ et $q$ sont tous les deux pairs, ce qui contredit le fait que la fraction est irréductible. L'hypothèse de l'étape 2 est donc fausse : un ensemble magnifique a au plus deux éléments.

**Conclusion : le plus grand nombre d'éléments d'un ensemble magnifique est $2$, atteint par exemple avec $A = \{1, P_0\}$.**

## Going further

Le nombre $2020$ ne sert qu'à l'étape 6. Remplace-le par $1$ : on demande alors seulement que chaque produit soit de la forme $X^{a}$. Montre que l'ensemble infini $\{1, X, X^2, X^3, \ldots\}$ est magnifique dans ce sens. Avec $8$ à la place de $2020$, l'étape 6 ne marche plus non plus, car $1 + 2 + \cdots + 8 = 36 = 6^2$ : il faudrait une autre idée.
