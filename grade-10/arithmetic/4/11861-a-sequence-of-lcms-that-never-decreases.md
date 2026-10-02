---
id: "11861"
title: "Pour quels n la suite des PPCM est-elle croissante ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [ppcm, nombres-premiers, factorielle, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 5 (repris tel quel en exercice 13 des Seniors) ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Pour tout entier $k \geqslant 1$, on pose
$$a_k = \mathrm{PPCM}(k, k+1, \ldots, k+n-1),$$
le plus petit commun multiple des $n$ entiers consécutifs qui commencent à $k$.

Déterminer tous les entiers $n \geqslant 1$ pour lesquels la suite $(a_k)$ est croissante, c'est-à-dire $a_k \leqslant a_{k+1}$ pour tout $k \geqslant 1$.

## Hints

1. Traiter $n = 1$ et $n = 2$. Pour $n = 3$, calculer les premiers termes de la suite.
2. Pour $n \geqslant 4$, on cherche un $k$ tel que $a_{k+1} < a_k$. Notons $D$ le PPCM des $n - 1$ entiers communs à $a_k$ et $a_{k+1}$, c'est-à-dire $k+1, \ldots, k+n-1$. Que vaut $a_k$ si $k$ n'a aucun facteur premier commun avec ces entiers ?
3. Pour que $a_{k+1}$ soit petit, on veut que $k + n$ ait un grand diviseur commun avec $D$. Essayer $k = (n-1)! - 1$.

## Solution

**Rappels.**

- Si un nombre premier $p$ divise un produit d'entiers, il divise l'un des facteurs. Si $p$ divise un PPCM d'entiers, il divise donc l'un de ces entiers.
- Un multiple commun de plusieurs entiers est toujours un multiple de leur PPCM, donc au moins égal à leur PPCM.

**Les cas $n = 1$ et $n = 2$.** Pour $n = 1$, on a $a_k = k$, et la suite est croissante. Pour $n = 2$, deux entiers consécutifs n'ont pas de diviseur commun autre que $1$ (un diviseur commun divise leur différence, qui vaut $1$), donc $a_k = k(k+1)$, qui croît avec $k$. Ces deux valeurs conviennent.

**Le cas $n = 3$.** On a
$$a_5 = \mathrm{PPCM}(5, 6, 7) = 210, \qquad a_6 = \mathrm{PPCM}(6, 7, 8) = 168.$$
Comme $a_6 < a_5$, la suite n'est pas croissante.

**Le cas $n \geqslant 4$.** Posons $k = (n-1)! - 1$, qui est un entier au moins égal à $5$, et notons
$$D = \mathrm{PPCM}(k+1, k+2, \ldots, k+n-1),$$
de sorte que $a_k = \mathrm{PPCM}(k, D)$ et $a_{k+1} = \mathrm{PPCM}(D, k+n)$.

*Étape 1 : $a_k = kD$.* Soit $p$ un nombre premier qui divise à la fois $k$ et $D$. Par le premier rappel, $p$ divise l'un des entiers $k + i$ avec $1 \leqslant i \leqslant n-1$. Il divise alors la différence $(k+i) - k = i$, donc $p \leqslant n - 1$. Mais alors $p$ divise $(n-1)! = 1 \times 2 \times \cdots \times (n-1)$, et donc aussi $(n-1)! - k = 1$, ce qui est impossible. Ainsi $k$ et $D$ n'ont aucun facteur premier commun, et leur PPCM est leur produit : $a_k = kD$.

*Étape 2 : une majoration de $a_{k+1}$.* Le premier des entiers qui définissent $D$ est $k + 1 = (n-1)!$, qui est un multiple de $n - 1$. Donc $n - 1$ divise $D$. D'autre part,
$$k + n = (n-1)! + (n-1) = (n-1)((n-2)! + 1),$$
qui est aussi un multiple de $n - 1$. Le nombre
$$M = D \times ((n-2)! + 1) = \frac{D}{n-1} \times (k+n)$$
est donc à la fois un multiple de $D$ (première écriture) et un multiple de $k + n$ (seconde écriture, car $\frac{D}{n-1}$ est un entier). Par le second rappel,
$$a_{k+1} = \mathrm{PPCM}(D, k+n) \leqslant M = D \times ((n-2)! + 1).$$

*Étape 3 : comparaison.* On a
$$((n-1)! - 1) - ((n-2)! + 1) = (n-2)! \times (n-1) - (n-2)! - 2 = (n-2)! \times (n-2) - 2,$$
et pour $n \geqslant 4$ ce nombre vaut au moins $2! \times 2 - 2 = 2 > 0$. Donc $(n-2)! + 1 < (n-1)! - 1 = k$, et
$$a_{k+1} \leqslant D \times ((n-2)! + 1) < D \times k = a_k.$$
La suite n'est pas croissante.

Par exemple, pour $n = 4$, on trouve $k = 5$ : $a_5 = \mathrm{PPCM}(5, 6, 7, 8) = 840$ et $a_6 = \mathrm{PPCM}(6, 7, 8, 9) = 504$.

**Conclusion.** **La suite $(a_k)$ est croissante exactement pour $n = 1$ et $n = 2$.**
