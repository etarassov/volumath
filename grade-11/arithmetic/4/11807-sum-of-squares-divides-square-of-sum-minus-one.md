---
id: "11807"
title: "La somme des carrés divise le carré de la somme moins un"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, parite, carres, restes, inegalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 9 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Déterminer le plus petit entier $n \geqslant 2$ pour lequel il existe des entiers strictement positifs $a_1, a_2, \ldots, a_n$ tels que

$$a_1^2 + a_2^2 + \cdots + a_n^2 \quad \text{divise} \quad (a_1 + a_2 + \cdots + a_n)^2 - 1 .$$

## Hints

1. Note $S = a_1 + \cdots + a_n$ et $Q = a_1^2 + \cdots + a_n^2$. Un nombre et son carré ont la même parité : compare la parité de $S$ et celle de $Q$.
2. Montre que $S$ est impair, puis que $S^2 - 1$ est un multiple de $8$.
3. Déduis-en que $8Q$ divise $S^2 - 1$, donc que $8Q \leqslant S^2 - 1$.
4. Montre que $S^2 \leqslant nQ$. (Développe la somme des carrés $(a_i - a_j)^2$ pour tous les couples $i < j$.)
5. Il reste à trouver un exemple pour la valeur de $n$ obtenue, avec des $a_i$ égaux à $1$ ou $2$.

## Solution

Notons $S = a_1 + a_2 + \cdots + a_n$ et $Q = a_1^2 + a_2^2 + \cdots + a_n^2$. On suppose que $Q$ divise $S^2 - 1$.

**$S$ est impair.** Un entier et son carré ont la même parité, donc $Q$ et $S$ ont la même parité. Si $S$ était pair, $Q$ serait pair, et $S^2 - 1$ serait impair. Un nombre pair ne divise pas un nombre impair : contradiction. Donc $S$ est impair, et $Q$ aussi.

**$S^2 - 1$ est un multiple de $8$.** Écrivons $S = 2m + 1$. Alors
$$S^2 - 1 = 4m^2 + 4m = 4m(m + 1) .$$
L'un des deux entiers consécutifs $m$ et $m + 1$ est pair, donc $m(m+1)$ est pair et $S^2 - 1$ est un multiple de $8$.

**$8Q$ divise $S^2 - 1$.** Écrivons $S^2 - 1 = Q \times k$ avec $k$ entier. Comme $S^2 - 1$ est un multiple de $8$ et que $Q$ est impair, c'est $k$ qui contient tous les facteurs $2$ : $k$ est un multiple de $8$. Donc $S^2 - 1$ est un multiple de $8Q$. Enfin $S \geqslant n \geqslant 2$, donc $S^2 - 1 > 0$, et un multiple strictement positif de $8Q$ vaut au moins $8Q$ :
$$8Q \leqslant S^2 - 1 .$$

**Une inégalité entre $S^2$ et $Q$.** Développons :
$$n Q - S^2 = (n-1)(a_1^2 + \cdots + a_n^2) - 2\sum_{i < j} a_i a_j = \sum_{i < j} (a_i - a_j)^2 \geqslant 0 .$$
En effet, dans la somme des $(a_i - a_j)^2$ sur tous les couples $i < j$, chaque carré $a_i^2$ apparaît $n - 1$ fois (une fois par autre indice $j$), et chaque double produit $-2a_ia_j$ apparaît une fois. Donc $S^2 \leqslant nQ$.

**La minoration de $n$.** En mettant tout ensemble,
$$8Q \leqslant S^2 - 1 < S^2 \leqslant nQ .$$
Comme $Q > 0$, on obtient $8 < n$, donc $n \geqslant 9$.

**Un exemple avec $n = 9$.** Prenons $a_1 = \cdots = a_7 = 1$ et $a_8 = a_9 = 2$. Alors
$$Q = 7 \times 1 + 2 \times 4 = 15, \qquad S = 7 + 4 = 11, \qquad S^2 - 1 = 120 = 15 \times 8 .$$
Donc $Q$ divise bien $S^2 - 1$.

**Conclusion.** Le plus petit entier cherché est $n = 9$.

## Going further

Pour $n = 9$, y a-t-il d'autres choix possibles des $a_i$ ? Et pour $n = 10$, trouve un exemple.
