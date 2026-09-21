---
id: "8425"
title: "À la fois un carré et un cube"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [decomposition-en-facteurs-premiers, carre-parfait, cube, puissance]
adapted_from: null
see_also: ["8716"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Nombres premiers » (Vladimir Ivanov), exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Un entier naturel $n$ est à la fois un carré parfait et un cube parfait : il existe des entiers $a$ et $b$ tels que $n = a^2$ et $n = b^3$.

Est-il forcément une puissance sixième, c'est-à-dire de la forme $c^6$ pour un certain entier $c$ ?

## Hints

1. Cherche d'abord des exemples. Quel est le plus petit entier supérieur à $1$ qui soit à la fois un carré et un cube ?
2. L'outil adapté est la décomposition en facteurs premiers. Si $n = p_1^{\alpha_1} \cdots p_k^{\alpha_k}$, que dit « $n$ est un carré » sur les exposants $\alpha_i$ ?
3. Tu obtiens que chaque exposant est divisible par $2$ et aussi par $3$. Pourquoi est-il alors divisible par $6$ ?

## Solution

La réponse est **oui**.

**Le cas $n = 0$** est immédiat : $0 = 0^6$. Supposons donc $n \geqslant 1$.

**Étape 1. La décomposition en facteurs premiers.**

Écrivons la décomposition de $n$ en facteurs premiers :

$$n = p_1^{\alpha_1} \, p_2^{\alpha_2} \cdots p_k^{\alpha_k},$$

où $p_1, \ldots, p_k$ sont des nombres premiers deux à deux distincts et $\alpha_1, \ldots, \alpha_k$ des entiers strictement positifs. (Si $n = 1$, il n'y a aucun facteur, et $1 = 1^6$ convient.)

**Étape 2. Ce que dit « $n$ est un carré parfait ».**

Écrivons $n = a^2$ et décomposons $a$ en facteurs premiers. En élevant au carré, chaque exposant de la décomposition de $a$ est doublé. Comme la décomposition en facteurs premiers est unique, celle de $n$ est exactement celle de $a$ avec les exposants doublés : **chaque $\alpha_i$ est pair**.

**Étape 3. Ce que dit « $n$ est un cube parfait ».**

Le même raisonnement avec $n = b^3$ montre que chaque exposant de $n$ est le triple d'un exposant de $b$ : **chaque $\alpha_i$ est un multiple de $3$**.

**Étape 4. Divisible par $2$ et par $3$, donc par $6$.**

Fixons $i$ et posons $\alpha = \alpha_i$. On sait que $\alpha$ est un multiple de $3$ : écrivons $\alpha = 3\beta$. On sait aussi que $\alpha$ est pair, donc $3\beta$ est pair. Comme $3$ est impair, c'est $\beta$ qui doit être pair : $\beta = 2\gamma$. Alors

$$\alpha = 3 \times 2\gamma = 6\gamma.$$

Chaque exposant $\alpha_i$ est donc un multiple de $6$ : écrivons $\alpha_i = 6\gamma_i$.

**Étape 5. Conclure.**

$$n = p_1^{6\gamma_1} \cdots p_k^{6\gamma_k} = \left( p_1^{\gamma_1} \cdots p_k^{\gamma_k} \right)^6.$$

L'entier $c = p_1^{\gamma_1} \cdots p_k^{\gamma_k}$ convient : $n$ est bien une puissance sixième.

## Going further

Le plus petit exemple non trivial est $64 = 8^2 = 4^3 = 2^6$. Le suivant est $729 = 27^2 = 9^3 = 3^6$.

Le même argument montre plus généralement : si $n$ est à la fois une puissance $k$-ième et une puissance $\ell$-ième, et si $k$ et $\ell$ sont premiers entre eux, alors $n$ est une puissance $k\ell$-ième.

Attention à l'hypothèse « premiers entre eux » : un nombre qui est à la fois un carré et une puissance quatrième n'est pas pour autant une puissance huitième. Par exemple $16 = 4^2 = 2^4$ n'est pas une puissance huitième.
