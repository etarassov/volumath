---
id: "12474"
title: "Deux produits de somme minimale et maximale"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [produit, inegalite, identite-remarquable, carre-positif, optimisation, factorielle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 1er avril 2020"
  reference: "2020-11_Enonce-Test-Avril-2020.pdf, exercice 2 (groupe Junior) ; corrigé 2020-04_Corrige-Web.pdf (le corrigé utilise l'inégalité arithmético-géométrique ; solution réécrite avec l'identité (x + y)² = (x − y)² + 4xy)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Avril-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Avril-2020.pdf"
---

## Statement

On répartit les entiers $1, 2, \ldots, 8$ en deux ensembles $A$ et $B$ : chaque entier est dans
un et un seul des deux ensembles. On note $P_A$ le produit de tous les éléments de $A$, et $P_B$ le
produit de tous les éléments de $B$.

Quelles sont la plus petite et la plus grande valeur que peut prendre la somme $P_A + P_B$ ?

Si l'un des deux ensembles est vide, on considère que le produit de ses éléments est égal à $1$.

## Hints

1. Le produit $P_A \times P_B$ ne dépend pas de la répartition. Que vaut-il ?
2. Pour la plus grande valeur, on peut supposer $P_A \leqslant P_B$. Si $P_A \geqslant 2$, que
   peux-tu dire de $P_B$, puis de $P_A + P_B$ ?
3. Pour la plus petite valeur, exprime $(P_A + P_B)^2$ à l'aide de $(P_A - P_B)^2$ et du produit
   $P_A \times P_B$.
4. Tu dois trouver que $P_A + P_B$ vaut au moins $402$. Pour atteindre cette valeur, cherche deux
   produits proches de $200$, et décompose $8!$ en facteurs premiers.

## Solution

On note $N = 1 \times 2 \times \cdots \times 8 = 40\,320$ (c'est le nombre $8!$). Chaque entier de
$1$ à $8$ apparaît une fois et une seule dans $P_A$ ou dans $P_B$, donc
$$P_A \times P_B = N = 40\,320$$
quelle que soit la répartition. Les deux produits sont des entiers au moins égaux à $1$. Quitte à
échanger les noms de $A$ et $B$, on peut supposer $P_A \leqslant P_B$.

### La plus grande valeur : $40\,321$

Si $A$ est vide (ou si $A = \{1\}$), alors $P_A = 1$ et $P_B = N$, et la somme vaut
$1 + 40\,320 = 40\,321$.

Sinon, $A$ contient un entier au moins égal à $2$, donc $P_A \geqslant 2$. Alors
$P_B = \dfrac{N}{P_A} \leqslant \dfrac{N}{2} = 20\,160$, et comme $P_A \leqslant P_B$,
$$P_A + P_B \leqslant 2\,P_B \leqslant 40\,320 < 40\,321.$$

**La plus grande valeur de $P_A + P_B$ est $40\,321$.**

### La plus petite valeur : $402$

**Une minoration.** Pour tous nombres $x$ et $y$, en développant,
$$(x + y)^2 = x^2 + 2xy + y^2 = (x^2 - 2xy + y^2) + 4xy = (x - y)^2 + 4xy.$$
Avec $x = P_A$ et $y = P_B$, et comme un carré est positif ou nul :
$$(P_A + P_B)^2 = (P_A - P_B)^2 + 4N \geqslant 4N = 161\,280.$$
Or $401^2 = 160\,801 < 161\,280$. On a donc $(P_A + P_B)^2 > 401^2$, et comme les deux nombres
$P_A + P_B$ et $401$ sont positifs, $P_A + P_B > 401$. C'est un entier, donc
$$P_A + P_B \geqslant 402.$$

**Cette valeur est atteinte.** D'après le calcul ci-dessus, la somme est petite quand $P_A$ et
$P_B$ sont proches l'un de l'autre, donc tous les deux proches de $\sqrt{40\,320} \approx 201$. On
cherche donc deux produits proches de $200$. Comme $N = 2^7 \times 3^2 \times 5 \times 7$, on
essaie de séparer $5$ et $7$ des puissances de $2$ :
$$A = \{1, 4, 6, 8\}, \quad P_A = 4 \times 6 \times 8 = 192, \qquad B = \{2, 3, 5, 7\}, \quad P_B = 2 \times 3 \times 5 \times 7 = 210.$$
On a bien $P_A + P_B = 192 + 210 = 402$.

**La plus petite valeur de $P_A + P_B$ est $402$.**

### Conclusion

**La somme $P_A + P_B$ vaut au plus $40\,321$ et au moins $402$, et ces deux valeurs sont
atteintes.**

## Going further

1. Trouver toutes les répartitions pour lesquelles $P_A + P_B = 402$. (On ne compte pas comme
   différentes deux répartitions qui ne diffèrent que par la place du nombre $1$, ou par
   l'échange de $A$ et $B$.)
2. Même question que l'énoncé avec les entiers de $1$ à $10$. Vérifier que la minoration de la
   solution donne exactement la bonne réponse, $3810$.
3. Avec les entiers de $1$ à $9$, la même minoration donne $P_A + P_B \geqslant 1205$. Montrer que
   la valeur $1205$ n'est pas atteinte. (On pourra regarder quel produit contient le facteur $2$.)
