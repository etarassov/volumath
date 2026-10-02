---
id: "11026"
title: "Des produits successifs aux restes tous différents"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, restes, division-euclidienne, construction, permutations]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 6 ; corrigé 2022-02_corrige-envoi-3.pdf. Le corrigé utilise les inverses modulo p ; la solution ici n'utilise que les restes et le lemme d'Euclide."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soit $p$ un nombre premier. Montrer qu'on peut ranger les entiers $1, 2, \ldots, p$ dans un certain ordre
$a_1, a_2, \ldots, a_p$ (chacun apparaît exactement une fois) de sorte que les $p$ nombres

$$a_1, \quad a_1 a_2, \quad a_1 a_2 a_3, \quad \ldots, \quad a_1 a_2 \cdots a_p$$

aient des restes deux à deux distincts dans la division euclidienne par $p$.

## Hints

1. Essaie à la main avec $p = 5$ ou $p = 7$. Peux-tu faire en sorte que les produits successifs aient pour restes $1, 2, 3, \ldots$ dans cet ordre ?
2. Où faut-il placer le nombre $p$ ? Dès qu'il apparaît, tous les produits suivants sont des multiples de $p$.
3. Si le produit $a_1 \cdots a_{k-1}$ a pour reste $k - 1$, il te faut un $a_k$ tel que $(k-1) \times a_k$ ait pour reste $k$. Pour montrer qu'il existe, regarde les restes de $(k-1) \times 1$, $(k-1) \times 2$, ..., $(k-1) \times (p-1)$.
4. Il reste à vérifier que les $a_k$ ainsi obtenus sont tous différents.

## Solution

On utilise le **lemme d'Euclide** : si un nombre premier $p$ divise un produit $uv$, alors $p$ divise
$u$ ou $p$ divise $v$. (C'est une conséquence de l'unicité de la décomposition en facteurs premiers.)

Notons $P_k = a_1 a_2 \cdots a_k$. L'idée est de choisir les $a_k$ pour que $P_k$ ait pour reste $k$
quand $1 \leqslant k \leqslant p - 1$, et de mettre $p$ à la fin. Les restes seront alors
$1, 2, \ldots, p - 1$, puis $0$.

**Un outil.** Soit $u$ un entier non divisible par $p$. Alors les $p - 1$ nombres
$u \times 1, \; u \times 2, \; \ldots, \; u \times (p-1)$ ont pour restes, dans un certain ordre,
exactement $1, 2, \ldots, p - 1$.

En effet, aucun n'est divisible par $p$, d'après le lemme d'Euclide. Et deux d'entre eux, $u \times i$ et
$u \times j$ avec $1 \leqslant i < j \leqslant p - 1$, n'ont jamais le même reste : sinon $p$ diviserait
leur différence $u(j - i)$, donc diviserait $j - i$, ce qui est impossible car $0 < j - i < p$. On a donc
$p - 1$ restes différents, tous pris parmi les $p - 1$ valeurs $1, \ldots, p - 1$ : on les obtient toutes,
chacune une fois.

**La construction.** On pose $a_1 = 1$ et $a_p = p$. Pour $2 \leqslant k \leqslant p - 1$, on applique
l'outil avec $u = k - 1$, qui est compris entre $1$ et $p - 2$ et n'est donc pas divisible par $p$ :
il existe un unique $a_k \in \{1, \ldots, p - 1\}$ tel que

$$(k - 1) \times a_k \text{ ait pour reste } k \text{ dans la division par } p . \qquad (\star)$$

**Les $a_k$ sont tous différents.**

- Si $k \geqslant 2$, alors $a_k \neq 1$. Sinon $(k-1) \times 1 = k - 1$ aurait pour reste $k$ ; mais
  $k - 1 < p$ est son propre reste, et $k - 1 \neq k$.
- Supposons $a_i = a_j = a$ avec $2 \leqslant i < j \leqslant p - 1$. D'après $(\star)$, $p$ divise
  $(i-1)a - i$ et $(j-1)a - j$, donc aussi leur différence
  $$[(j-1)a - j] - [(i-1)a - i] = (j - i)a - (j - i) = (j - i)(a - 1) .$$
  Comme $0 < j - i < p$, le nombre premier $p$ ne divise pas $j - i$, donc il divise $a - 1$. Or
  $0 \leqslant a - 1 \leqslant p - 2$, donc $a = 1$, ce qu'on vient d'exclure.

Ainsi $a_1, \ldots, a_{p-1}$ sont $p - 1$ nombres différents de $\{1, \ldots, p-1\}$ : ce sont tous ces
nombres, chacun une fois. Avec $a_p = p$, on a bien rangé $1, 2, \ldots, p$ dans un certain ordre.

**Les restes des produits.** Montrons que $P_k$ a pour reste $k$ pour $1 \leqslant k \leqslant p-1$.
C'est vrai pour $k = 1$ car $P_1 = 1$. Supposons-le pour $k - 1$, avec $k \geqslant 2$ : on écrit
$P_{k-1} = (k - 1) + pt$ avec $t$ entier. Alors

$$P_k = P_{k-1} \times a_k = (k-1) a_k + p \, t \, a_k ,$$

qui a le même reste que $(k-1) a_k$, c'est-à-dire $k$ d'après $(\star)$. On avance ainsi de proche en
proche jusqu'à $k = p - 1$.

Enfin $P_p = P_{p-1} \times p$ est un multiple de $p$ et a pour reste $0$.

Les restes de $P_1, P_2, \ldots, P_p$ sont donc $1, 2, \ldots, p - 1, 0$ : ils sont deux à deux
distincts.

**Un exemple.** Pour $p = 7$, la construction donne l'ordre $1, 2, 5, 6, 3, 4, 7$. Les produits
successifs sont $1, 2, 10, 60, 180, 720, 5040$, de restes $1, 2, 3, 4, 5, 6, 0$.

## Going further

Et si $p$ n'est pas premier ? Pour $n = 4$, l'ordre $1, 3, 2, 4$ donne les produits $1, 3, 6, 24$, de
restes $1, 3, 2, 0$ : ça marche. Mais pour tout $n > 4$ qui n'est pas premier, c'est impossible.

En effet, le nombre $n$ doit être placé en dernier : sinon le produit qui le contient et le suivant
seraient tous les deux multiples de $n$. Le produit des $n - 1$ premiers vaut alors
$1 \times 2 \times \cdots \times (n-1)$, et ce nombre est un multiple de $n$. Si $n = ab$ avec
$1 < a < b < n$, il contient les facteurs $a$ et $b$. Si $n = q^2$ avec $q > 2$, il contient $q$ et $2q$.
On aurait donc deux produits de reste $0$.
