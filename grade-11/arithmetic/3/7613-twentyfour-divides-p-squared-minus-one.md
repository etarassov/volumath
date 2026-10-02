---
id: "7613"
title: "24 divise p² − 1 pour tout premier p ≥ 5"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, divisibilite, parite, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de fin de parcours"
  reference: "stage_ete_2013.pdf, chapitre VII « Test de fin de parcours », groupe A, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Démontrer que, pour tout nombre premier $p \geqslant 5$, le nombre $p^2 - 1$ est divisible par $24$.

## Hints

1. Vérifiez d'abord sur quelques valeurs : $p = 5$, $7$, $11$, $13$. Vous devriez trouver $24$, $48$, $120$, $168$.
2. Que vaut $24$ comme produit de facteurs premiers ? Il suffira de montrer séparément deux divisibilités.
3. Factorisez $p^2 - 1$. Que peut-on dire des deux facteurs obtenus, sachant que $p$ est impair ?
4. Pour le facteur $3$ : regardez les trois entiers consécutifs $p-1$, $p$, $p+1$. L'un d'eux est forcément un multiple de $3$. Lequel ne peut pas l'être ?

## Solution

Soit $p$ un nombre premier avec $p \geqslant 5$. Comme $p$ est premier et plus grand que $5$, il n'est divisible ni par $2$ ni par $3$ : il est donc **impair** et **non multiple de $3$**.

Écrivons

$$24 = 2^3 \times 3 .$$

Il suffit de montrer que $p^2 - 1$ contient au moins trois facteurs $2$ et au moins un facteur $3$ dans sa décomposition en facteurs premiers. Pour cela, factorisons :

$$p^2 - 1 = (p-1)(p+1) .$$

**Le facteur $8$.**

Comme $p$ est impair, $p - 1$ et $p + 1$ sont deux nombres **pairs consécutifs** (ils diffèrent de $2$). Parmi deux pairs consécutifs, l'un des deux est un multiple de $4$ : en effet, en écrivant $p - 1 = 2m$, on a $p + 1 = 2(m+1)$, et parmi $m$ et $m+1$ l'un est pair.

Donc l'un des deux facteurs apporte au moins deux facteurs $2$, et l'autre en apporte au moins un :

$$8 \ \text{divise} \ (p-1)(p+1) = p^2 - 1 .$$

**Le facteur $3$.**

Les trois nombres $p-1$, $p$, $p+1$ sont trois entiers consécutifs : l'un d'eux est donc un multiple de $3$. Ce n'est pas $p$, puisque $p$ est premier et différent de $3$. C'est donc $p-1$ ou $p+1$, et dans les deux cas

$$3 \ \text{divise} \ (p-1)(p+1) = p^2 - 1 .$$

**Conclusion.**

La décomposition en facteurs premiers de $p^2 - 1$ contient donc au moins $2^3$ et au moins $3^1$. Comme $2$ et $3$ sont des nombres premiers différents, ces facteurs s'ajoutent sans se recouvrir, et

$$2^3 \times 3 = 24 \quad \text{divise} \quad p^2 - 1 .$$

## Going further

L'hypothèse « $p$ premier » est bien plus forte que nécessaire. Relisez la démonstration : on ne s'est servi que de deux choses, à savoir que $p$ est impair et que $p$ n'est pas un multiple de $3$. Le résultat vaut donc pour tout entier $p$ **premier avec $6$** :

$$p = 25 : \quad 625 - 1 = 624 = 24 \times 26 . \qquad p = 35 : \quad 1225 - 1 = 1224 = 24 \times 51 .$$

En revanche $24$ est le mieux qu'on puisse faire : $5^2 - 1 = 24$ exactement, donc aucun nombre plus grand que $24$ ne divise tous les $p^2 - 1$.
