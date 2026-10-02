---
id: "7654"
title: "Des signes qui s'annulent"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [parite, invariant, produit, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice sur les sommes cycliques de signes"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soient $n$ un entier strictement positif et $a_1, a_2, \ldots, a_n$ des nombres valant chacun $+1$ ou $-1$. On suppose que

$$a_1 a_2 + a_2 a_3 + a_3 a_4 + \cdots + a_{n-1} a_n + a_n a_1 = 0 .$$

*(La somme est « cyclique » : après $a_n a_1$, on recommence.)*

Démontrer que $n$ est un multiple de $4$.

## Hints

1. Chacun des $n$ termes de la somme vaut $+1$ ou $-1$. Que faut-il pour qu'une somme de $n$ termes valant $\pm 1$ soit nulle ?
2. Cela donne déjà que $n$ est pair, et cela donne le nombre exact de termes valant $-1$.
3. Maintenant, multipliez tous les termes entre eux au lieu de les additionner. Que vaut ce produit ?
4. Chaque $a_i$ apparaît exactement deux fois dans le produit. Que vaut alors $a_i^2$ ?
5. Comparez les deux renseignements obtenus sur le nombre de $-1$.

## Solution

Posons, pour chaque indice $i$,

$$b_i = a_i a_{i+1} \quad (\text{avec la convention } a_{n+1} = a_1).$$

Chaque $b_i$ est un produit de deux nombres valant $\pm 1$, donc $b_i = +1$ ou $b_i = -1$. L'hypothèse s'écrit

$$b_1 + b_2 + \cdots + b_n = 0 .$$

**Première information : en additionnant.**

Notons $p$ le nombre d'indices tels que $b_i = +1$ et $m$ le nombre d'indices tels que $b_i = -1$. Alors

$$p + m = n \qquad \text{et} \qquad p - m = 0 .$$

La seconde égalité est exactement l'hypothèse. On en tire $p = m$, puis

$$n = 2m .$$

En particulier $n$ est pair, et **il y a exactement $m = \dfrac{n}{2}$ termes valant $-1$**.

**Deuxième information : en multipliant.**

Calculons le produit de tous les $b_i$ :

$$b_1 b_2 \cdots b_n = (a_1 a_2)(a_2 a_3)(a_3 a_4)\cdots(a_n a_1) .$$

Dans ce produit, chaque $a_i$ apparaît exactement deux fois : une fois dans $b_{i-1} = a_{i-1}a_i$ et une fois dans $b_i = a_i a_{i+1}$. En regroupant,

$$b_1 b_2 \cdots b_n = a_1^2 a_2^2 \cdots a_n^2 .$$

Or $a_i = \pm 1$, donc $a_i^2 = 1$ pour tout $i$. Par conséquent

$$b_1 b_2 \cdots b_n = 1 .$$

D'autre part, ce produit vaut $(-1)^m$, puisqu'il comporte exactement $m$ facteurs égaux à $-1$ et que les autres valent $1$. Donc

$$(-1)^m = 1, \qquad \text{c'est-à-dire } m \text{ est pair.}$$

**Conclusion.**

Nous avons $n = 2m$ avec $m$ pair, disons $m = 2k$. Alors

$$n = 2m = 4k ,$$

donc **$n$ est un multiple de $4$**. $\blacksquare$

## Going further

Cette démonstration illustre une technique qui revient sans cesse : **regarder la même quantité de deux façons**. La somme donne le nombre de signes $-$ ; le produit donne la parité de ce nombre. Ni l'une ni l'autre ne suffit, les deux ensemble concluent.

**La réciproque est vraie.** Dès que $n$ est un multiple de $4$, on peut trouver des $a_i$ qui conviennent : prenez le motif $+1, +1, -1, -1$ répété $n/4$ fois. Les produits successifs $a_i a_{i+1}$ donnent alors le motif $+1, -1, +1, -1$, dont la somme sur un bloc de quatre vaut $0$, donc la somme totale aussi.

**Une variante.** Que se passe-t-il si la somme n'est pas cyclique, c'est-à-dire si l'on ne met pas le terme $a_n a_1$ ? Alors le produit des $n-1$ termes vaut $a_1 a_n$ et non plus $1$, et la conclusion tombe : par exemple $a_1 = +1$, $a_2 = +1$, $a_3 = -1$ donne $a_1a_2 + a_2a_3 = 1 - 1 = 0$ avec $n = 3$.
