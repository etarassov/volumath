---
id: "12651"
title: "Une somme double de parties entières"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [partie-entiere, sommes, nombres-premiers, appariement, inegalites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 9 (EGMO) ; corrigé 2022-03_Corrige-Web-Test-3.pdf. L'énoncé dit « les entiers n » : on a précisé n ⩾ 1, car n = 0 vérifie aussi l'égalité (deux membres nuls). Dans la première solution du corrigé, la borne « (k+1)t − 1 » doit se lire « k(t+1) − 1 », et les deux sommes « Σ_{j=0}^{n−1} » doivent aller jusqu'à n. Dans la solution alternative, « j décrit l'ensemble {1, 2, …, n − 1} » doit se lire « {1, 2, …, n} »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Pour un nombre réel $x$, on note $\lfloor x \rfloor$ la partie entière de $x$, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

Trouver les entiers $n \geqslant 1$ pour lesquels on a l'égalité
$$\sum_{i=1}^{n} \sum_{j=1}^{n} \left\lfloor \frac{i \times j}{n+1} \right\rfloor = \frac{n^2(n-1)}{4}.$$

## Hints

1. Calcule la somme de gauche pour $n = 1$, $2$, $3$ et $4$. Pour lesquelles de ces valeurs l'égalité est-elle vraie ? Fais une conjecture.
2. Fixe $i$ et regarde la ligne des $n$ nombres $\lfloor ij/(n+1) \rfloor$, pour $j$ allant de $1$ à $n$. Associe le terme numéro $j$ au terme numéro $n + 1 - j$. Que vaut la somme $ij/(n+1) + i(n+1-j)/(n+1)$ ?
3. Si $x + y$ est un entier $m$, que peut valoir $\lfloor x \rfloor + \lfloor y \rfloor$ ? Distingue le cas où $x$ est entier et le cas où il ne l'est pas.
4. Tu dois obtenir une inégalité pour chaque ligne, puis pour la somme entière. Quand a-t-on égalité ? Fais le lien avec les produits $ij$ qui sont divisibles par $n + 1$.

## Solution

On note $S$ la somme de gauche. On va montrer que **l'égalité est vraie exactement quand $n + 1$ est un nombre premier.**

**Les petits cas.** Pour $n = 3$, la somme vaut
$$\left(0 + 0 + 0\right) + \left(0 + 1 + 1\right) + \left(0 + 1 + 2\right) = 5,$$
alors que $n^2(n-1)/4 = 18/4$, qui n'est même pas entier. Pour $n = 4$, on trouve $0 + 2 + 4 + 6 = 12 = 16 \times 3/4$ : l'égalité est vraie. On trouve aussi qu'elle est vraie pour $n = 1$ et $n = 2$.

**Étape 1 : une propriété de la partie entière.** Soient $x$ et $y$ deux réels dont la somme est un entier $m$. Alors

- $\lfloor x \rfloor + \lfloor y \rfloor = m$ si $x$ est un entier ;
- $\lfloor x \rfloor + \lfloor y \rfloor = m - 1$ si $x$ n'est pas un entier.

En effet, écrivons $x = k + f$, avec $k = \lfloor x \rfloor$ entier et $0 \leqslant f < 1$. Si $f = 0$, alors $x = k$ et $y = m - k$ sont entiers, et la somme des parties entières vaut $m$. Si $0 < f < 1$, alors
$$y = m - k - f = (m - k - 1) + (1 - f), \qquad \text{avec } 0 < 1 - f < 1,$$
donc $\lfloor y \rfloor = m - k - 1$, et $\lfloor x \rfloor + \lfloor y \rfloor = m - 1$.

Dans tous les cas, $\lfloor x \rfloor + \lfloor y \rfloor \geqslant m - 1$, avec égalité si et seulement si $x$ n'est pas entier.

**Étape 2 : une ligne du tableau.** On fixe $i$ entre $1$ et $n$, et l'on note
$$L_i = \sum_{j=1}^{n} \left\lfloor \frac{ij}{n+1} \right\rfloor.$$
Quand $j$ va de $1$ à $n$, le nombre $n + 1 - j$ va de $n$ à $1$ : il parcourt les mêmes valeurs, dans l'ordre inverse. On peut donc écrire la même somme à l'envers, puis ajouter les deux écritures, terme à terme :
$$2L_i = \sum_{j=1}^{n} \left( \left\lfloor \frac{ij}{n+1} \right\rfloor + \left\lfloor \frac{i(n+1-j)}{n+1} \right\rfloor \right).$$
Pour chaque $j$, les deux nombres dans les crochets ont pour somme
$$\frac{ij}{n+1} + \frac{i(n+1-j)}{n+1} = \frac{i(n+1)}{n+1} = i,$$
qui est un entier. D'après l'étape 1, chaque parenthèse vaut au moins $i - 1$, et vaut exactement $i - 1$ si et seulement si $ij/(n+1)$ n'est pas entier, c'est-à-dire si $n + 1$ ne divise pas $ij$. En ajoutant les $n$ parenthèses,
$$2L_i \geqslant n(i - 1),$$
avec égalité si et seulement si $n + 1$ ne divise aucun des produits $i \times 1$, $i \times 2$, …, $i \times n$.

**Étape 3 : la somme entière.** On ajoute les inégalités de l'étape 2 pour $i$ allant de $1$ à $n$ :
$$2S = \sum_{i=1}^{n} 2L_i \geqslant n \sum_{i=1}^{n} (i - 1) = n \times \frac{(n-1)n}{2}, \qquad \text{donc} \qquad S \geqslant \frac{n^2(n-1)}{4}.$$
Une somme d'inégalités est une égalité seulement si chacune des inégalités en est une. On a donc :

> l'égalité de l'énoncé est vraie si et seulement si $n + 1$ ne divise aucun produit $ij$, avec $1 \leqslant i \leqslant n$ et $1 \leqslant j \leqslant n$.

**Étape 4 : le lien avec les nombres premiers.**

- *Si $n + 1$ est un nombre premier $p$*, il ne divise aucun produit $ij$ avec $1 \leqslant i, j \leqslant n$. En effet, un nombre premier qui divise un produit divise l'un des facteurs, car il apparaît dans la décomposition en facteurs premiers de ce produit, qui s'obtient en mettant bout à bout celles des deux facteurs. Or $i$ et $j$ sont entre $1$ et $p - 1$, donc $p$ ne divise ni $i$ ni $j$.
- *Si $n + 1$ n'est pas premier*, comme $n + 1 \geqslant 2$, on peut écrire $n + 1 = ab$ avec $a \geqslant 2$ et $b \geqslant 2$. Alors $a = (n+1)/b \leqslant (n+1)/2 \leqslant n$, et de même $b \leqslant n$. Le produit $a \times b = n + 1$ est divisible par $n + 1$, avec $i = a$ et $j = b$ entre $1$ et $n$ : l'égalité est fausse.

**Conclusion.** **L'égalité est vraie si et seulement si $n + 1$ est un nombre premier**, c'est-à-dire pour $n = 1, 2, 4, 6, 10, 12, 16, 18, 22, \ldots$ Dans tous les autres cas, la somme est strictement plus grande que $n^2(n-1)/4$.

## Going further

- Pour $n = 0$, les deux membres sont nuls : l'égalité est vraie aussi, alors que $n + 1 = 1$ n'est pas premier. C'est pourquoi l'énoncé a été restreint à $n \geqslant 1$.
- La même méthode donne la valeur exacte de la somme pour tout $n$. Pour $i$ fixé, le nombre de $j$ entre $1$ et $n$ tels que $n + 1$ divise $ij$ est $\mathrm{PGCD}(i, n+1) - 1$. On obtient $2L_i = n(i - 1) + \mathrm{PGCD}(i, n+1) - 1$. Vérifie-le pour $n = 3$.
- Le corrigé donne une autre solution. On écrit $\lfloor ij/(n+1) \rfloor = (ij - r)/(n+1)$, où $r$ est le reste de la division de $ij$ par $n + 1$. Le problème revient alors à calculer la somme de tous ces restes.
- Le commentaire des correcteurs note que beaucoup d'élèves ont cherché à montrer, avec des inégalités, que l'égalité devient fausse pour $n$ grand. Cette stratégie était vouée à l'échec, puisqu'il y a une infinité de nombres premiers, donc une infinité de solutions.
