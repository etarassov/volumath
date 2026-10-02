---
id: "1813"
title: "Un nombre premier dans le triangle de Pascal"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [coefficients-binomiaux, nombres-premiers, divisibilite, identite-de-vandermonde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Combinations and Pascal's Triangle"
  reference: "Handout-1765-1624.pdf, exercice 4. La question 1 figure aussi seule dans Handout-2698-2323.pdf, problème 14."
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1765-1624.pdf"
---

## Statement

Soit $p$ un nombre premier.

1. Démontrer que, pour tout entier $k$ tel que $1 \le k \le p-1$, le coefficient binomial $\binom{p}{k}$ est divisible par $p$.
2. En déduire que $\binom{2p}{p} - 2$ est divisible par $p$.

## Hints

1. Regarde la ligne $p = 5$ du triangle de Pascal : $1,\ 5,\ 10,\ 10,\ 5,\ 1$. Puis la ligne $p = 7$. Que constates-tu au milieu ?
2. Pour la question 1, pars de $\binom{p}{k} = \dfrac{p!}{k!\,(p-k)!}$ et récris-la **sans fraction** : $k!\,(p-k)! \times \binom{p}{k} = p!$.
3. Le nombre $p$ divise le membre de droite. Peut-il diviser $k!$ ? Et $(p-k)!$ ? Tous les facteurs de ces factorielles sont strictement compris entre $0$ et $p$, et $p$ est premier.
4. Pour la question 2, essaie d'écrire $\binom{2p}{p}$ comme une somme de produits de coefficients binomiaux de la ligne $p$. Sépare les $2p$ objets en deux paquets de $p$.
5. Dans la somme obtenue, repère les deux termes qui valent $1$. Que dire de tous les autres, d'après la question 1 ?

## Solution

### 1. $p$ divise $\binom{p}{k}$ pour $1 \le k \le p-1$

Partons de la formule

$$\binom{p}{k} = \frac{p!}{k!\,(p-k)!},$$

et récrivons-la sans dénominateur :

$$k!\,(p-k)! \times \binom{p}{k} = p!.$$

Les trois facteurs sont des entiers.

Le membre de droite, $p! = 1 \times 2 \times \cdots \times p$, est divisible par $p$. Donc $p$ divise le produit $k!\,(p-k)! \times \binom{p}{k}$.

Or $p$ est premier, et :

- $k!$ est le produit des entiers de $1$ à $k$, tous strictement inférieurs à $p$ puisque $k \le p-1$. Un nombre premier $p$ qui diviserait $k!$ devrait diviser l'un de ses facteurs (lemme d'Euclide), ce qui est impossible car aucun de ces facteurs n'est un multiple de $p$. Donc $p$ ne divise pas $k!$.
- Le même raisonnement s'applique à $(p-k)!$, puisque $1 \le p-k \le p-1$.

Donc $p$ ne divise pas le produit $k!\,(p-k)!$. Comme $p$ est premier et qu'il divise $k!\,(p-k)! \times \binom{p}{k}$, il divise nécessairement le facteur restant :

$$p \ \text{divise} \ \binom{p}{k}.$$

*Vérification.* Ligne $p = 5$ : $1,\ \mathbf{5},\ \mathbf{10},\ \mathbf{10},\ \mathbf{5},\ 1$. Les quatre coefficients du milieu sont bien multiples de $5$. Ligne $p = 7$ : $1,\ 7,\ 21,\ 35,\ 35,\ 21,\ 7,\ 1$, tous multiples de $7$ sauf les deux $1$ des bords.

### 2. $p$ divise $\binom{2p}{p} - 2$

**Une identité de comptage.** Prenons $2p$ objets et séparons-les en deux paquets $A$ et $B$ de $p$ objets chacun. Choisissons-en $p$ en tout. Si l'on en prend $k$ dans $A$, il faut en prendre $p-k$ dans $B$. En classant les choix selon la valeur de $k$ :

$$\binom{2p}{p} = \sum_{k=0}^{p} \binom{p}{k}\binom{p}{p-k}.$$

Comme $\binom{p}{p-k} = \binom{p}{k}$, cela donne

$$\binom{2p}{p} = \sum_{k=0}^{p} \binom{p}{k}^2 = \binom{p}{0}^2 + \binom{p}{1}^2 + \ldots + \binom{p}{p-1}^2 + \binom{p}{p}^2.$$

**Les deux termes extrêmes.** $\binom{p}{0} = \binom{p}{p} = 1$, donc ces deux termes valent $1$ chacun, soit $2$ en tout.

**Tous les autres termes.** Pour $1 \le k \le p-1$, la question 1 dit que $p$ divise $\binom{p}{k}$, donc $p$ divise aussi $\binom{p}{k}^2$ (et même $p^2$ le divise).

Par conséquent

$$\binom{2p}{p} - 2 = \sum_{k=1}^{p-1} \binom{p}{k}^2$$

est une somme de multiples de $p$, donc un multiple de $p$.

**Vérifications.**

| $p$ | $\binom{2p}{p}$ | $\binom{2p}{p} - 2$ | divisé par $p$ |
|---|---|---|---|
| $3$ | $20$ | $18$ | $6$ |
| $5$ | $252$ | $250$ | $50$ |
| $7$ | $3432$ | $3430$ | $490$ |

## Going further

1. Le calcul ci-dessus montre en fait davantage : $\binom{2p}{p} - 2$ est divisible par $p^2$. Pourquoi ?
2. Déduis de la question 1 le « rêve du débutant » : pour tous entiers $a$ et $b$, $(a+b)^p$ et $a^p + b^p$ ont le même reste dans la division par $p$. (Développe avec la formule du binôme.)
3. En déduire le petit théorème de Fermat : pour tout entier $a$, $a^p - a$ est divisible par $p$. (Récurrence sur $a$.)
