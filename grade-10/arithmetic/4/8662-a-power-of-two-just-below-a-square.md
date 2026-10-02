---
id: "8662"
title: "Une puissance de 2 juste en dessous d'un carré"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-diophantienne, factorisation, puissances-de-deux, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les couples $(m, n)$ d'entiers positifs tels que

$$2^m + 1 = n^2 .$$

## Hints

1. Fais passer le $1$ de l'autre côté. Le membre de droite devient une différence que tu sais factoriser.
2. Tu obtiens $2^m = (n-1)(n+1)$. Que peut-on dire de deux entiers dont le produit est une puissance de $2$ ?
3. Comme $2$ est premier, tout diviseur de $2^m$ est lui-même une puissance de $2$. Donc $n-1$ et $n+1$ sont deux puissances de $2$.
4. Deux puissances de $2$ qui diffèrent de exactement $2$ : lesquelles ?
5. Écris $n+1 = 2^{\alpha}$ et $n-1 = 2^{\beta}$, puis soustrais.

## Solution

**On factorise.** L'équation s'écrit

$$2^m = n^2 - 1 = (n-1)(n+1) .$$

Comme $2^m \geqslant 1 > 0$, le produit $(n-1)(n+1)$ est strictement positif ; et comme $n$ est positif, $n + 1 > 0$, donc $n - 1 > 0$ aussi. En particulier $n \geqslant 2$.

**Les deux facteurs sont des puissances de 2.** Le nombre $n-1$ divise $2^m$. Or $2$ est premier, donc les seuls diviseurs positifs de $2^m$ sont $1, 2, 4, \ldots, 2^m$ : ce sont toutes des puissances de $2$. Il en va de même pour $n+1$. Écrivons donc

$$n + 1 = 2^{\alpha}, \qquad n - 1 = 2^{\beta}, \qquad \text{avec } \alpha > \beta \geqslant 0 .$$

**On soustrait.** En retranchant les deux égalités :

$$2^{\alpha} - 2^{\beta} = (n+1) - (n-1) = 2 .$$

Mettons $2^{\beta}$ en facteur :

$$2^{\beta}\left(2^{\alpha - \beta} - 1\right) = 2 .$$

Le facteur $2^{\alpha-\beta} - 1$ est un entier impair (puisque $\alpha > \beta$, la puissance $2^{\alpha-\beta}$ est paire). Dans le produit, toute la puissance de $2$ est donc portée par $2^{\beta}$ : nécessairement $2^{\beta} = 2$, c'est-à-dire $\beta = 1$, et alors $2^{\alpha - 1} - 1 = 1$, donc $2^{\alpha-1} = 2$ et $\alpha = 2$.

**On conclut.** De $n - 1 = 2^{1} = 2$ on tire $n = 3$, et alors

$$2^m = n^2 - 1 = 9 - 1 = 8 = 2^3, \qquad \text{donc } m = 3 .$$

**Vérification.** $2^3 + 1 = 9 = 3^2$. 

$$\boxed{(m, n) = (3, 3) \text{ est l'unique solution.}}$$

## Going further

Le pas décisif est celui-ci : **si un produit d'entiers positifs vaut une puissance d'un nombre premier $p$, alors chaque facteur est une puissance de $p$.** C'est le réflexe à avoir dès qu'on voit une factorisation d'un côté et une puissance de l'autre.

Le même schéma résout beaucoup d'équations voisines. Essaie :

- $3^n = a^2 - 16$ (factorise en $(a-4)(a+4)$) ;
- $2^m + 1 = n^3$ (attention, la factorisation de $n^3 - 1$ n'est pas la même).

Et pour prendre la mesure de la difficulté du sujet : la **conjecture de Catalan**, devenue théorème seulement en 2002, affirme que $8 = 2^3$ et $9 = 3^2$ sont les deux seules puissances parfaites consécutives, quels que soient les exposants. Ton exercice en est un tout petit cas particulier.
