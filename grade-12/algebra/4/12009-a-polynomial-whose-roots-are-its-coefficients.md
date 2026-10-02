---
id: "12009"
title: "Un polynôme dont les racines sont ses coefficients"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [polynomes, racines, coefficients, identification, somme des carres, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-2.pdf, exercice 5 ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf (coquille dans le corrigé : il écrit deux fois X³ + X² − X − X au lieu de X³ + X² − X − 1 ; solution réécrite avec la somme des carrés des racines, plus courte que le calcul du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-2.pdf"
---

## Statement

Déterminer tous les polynômes non constants à coefficients entiers

$$P(X) = X^n + a_1 X^{n-1} + a_2 X^{n-2} + \cdots + a_{n-1} X + a_n$$

dont les racines, comptées avec leur multiplicité, sont exactement les nombres $a_1, a_2, \ldots, a_n$. Autrement dit, on cherche les entiers $n \ge 1$ et $a_1, \ldots, a_n$ tels que, pour tout $x$,

$$x^n + a_1 x^{n-1} + \cdots + a_{n-1} x + a_n = (x - a_1)(x - a_2) \cdots (x - a_n).$$

## Hints

1. Développez le produit $(X - a_1) \cdots (X - a_n)$ et identifiez le coefficient de $X^{n-1}$, celui de $X^{n-2}$ et le terme constant.
2. Que se passe-t-il si $a_n = 0$ ? Montrez qu'on peut alors mettre $X$ en facteur et se ramener à un polynôme de degré plus petit.
3. Si $a_n \ne 0$, le terme constant donne une relation qui force $a_1, \ldots, a_{n-1}$ à valoir $1$ ou $-1$.
4. Calculez $a_1^2 + a_2^2 + \cdots + a_n^2$ de deux façons : avec les valeurs $\pm 1$, et à l'aide de $(a_1 + \cdots + a_n)^2$.

## Solution

**Réponse.** Les polynômes cherchés sont

$$X^n \ (n \ge 1), \qquad X^m (X^2 + X - 2) \qquad \text{et} \qquad X^m (X^3 + X^2 - X - 1) \qquad (m \ge 0).$$

**Étape 0 : trois coefficients du produit.** Développons $(X - a_1)(X - a_2) \cdots (X - a_n)$. Chaque terme du développement s'obtient en choisissant, dans chacune des $n$ parenthèses, soit $X$, soit $-a_i$, puis en multipliant.

- On obtient $X^{n-1}$ en choisissant $-a_i$ dans une seule parenthèse : le coefficient de $X^{n-1}$ est $-(a_1 + a_2 + \cdots + a_n)$.
- On obtient $X^{n-2}$ en choisissant $-a_i$ et $-a_j$ dans deux parenthèses ($i < j$) : le coefficient de $X^{n-2}$ est la somme de tous les produits $a_i a_j$ avec $i < j$.
- On obtient le terme constant en choisissant $-a_i$ partout : il vaut $(-1)^n a_1 a_2 \cdots a_n$.

Deux polynômes égaux ont les mêmes coefficients. Si $P$ est solution, on a donc

$$a_1 = -(a_1 + \cdots + a_n) \qquad (1)$$

$$a_2 = \sum_{i < j} a_i a_j \quad \text{(si } n \ge 2\text{)} \qquad (2)$$

$$a_n = (-1)^n a_1 a_2 \cdots a_n \qquad (3)$$

**Étape 1 : on peut enlever les zéros à la fin.** Supposons $n \ge 2$ et $a_n = 0$. Alors

$$P(X) = X \left(X^{n-1} + a_1 X^{n-2} + \cdots + a_{n-1}\right) \qquad \text{et} \qquad \prod_{i=1}^{n} (X - a_i) = X \prod_{i=1}^{n-1} (X - a_i).$$

En simplifiant par $X$ (si $X A(X) = X B(X)$, les polynômes $A$ et $B$ ont les mêmes coefficients), on voit que $Q(X) = X^{n-1} + a_1 X^{n-2} + \cdots + a_{n-1}$ est égal à $(X - a_1) \cdots (X - a_{n-1})$ : c'est une solution de degré $n - 1$. Réciproquement, si $Q$ est une solution, alors $X\,Q(X)$ en est une aussi : ses coefficients sont ceux de $Q$ suivis d'un $0$, et il vaut bien le produit des $(X - a_i)$, multiplié par $X - 0$.

Enfin, pour $n = 1$ : $X + a_1 = X - a_1$ donne $a_1 = 0$, c'est le polynôme $X$.

En répétant l'étape 1, on voit que toute solution s'écrit $X^m R(X)$, où $m \ge 0$ et où $R$ vaut $1$ ou est une solution **dont le dernier coefficient n'est pas nul**. Il reste à trouver ces dernières.

**Étape 2 : si $a_n \ne 0$, les autres coefficients valent $\pm 1$.** Soit $P$ une solution de degré $n$ avec $a_n \ne 0$. D'après l'étape 1, $n \ge 2$. En divisant $(3)$ par $a_n$ :

$$(-1)^n\, a_1 a_2 \cdots a_{n-1} = 1 .$$

Le produit des entiers $a_1, \ldots, a_{n-1}$ vaut $\pm 1$, donc chacun d'eux vaut $1$ ou $-1$.

**Étape 3 : le cas $n = 2$.** La relation de l'étape 2 donne $a_1 = 1$. Puis $(1)$ s'écrit $1 = -(1 + a_2)$, donc $a_2 = -2$. On obtient $P(X) = X^2 + X - 2$, et en effet $(X - 1)(X + 2) = X^2 + X - 2$.

**Étape 4 : le cas $n \ge 3$.** Calculons la somme des carrés $S = a_1^2 + a_2^2 + \cdots + a_n^2$ de deux façons.

D'une part, $a_1, \ldots, a_{n-1}$ valent $\pm 1$, donc leurs carrés valent $1$ et $S = (n - 1) + a_n^2$.

D'autre part, en développant le carré d'une somme, $(a_1 + \cdots + a_n)^2 = S + 2\sum_{i<j} a_i a_j$. D'après $(1)$ et $(2)$, cela donne $a_1^2 = S + 2a_2$, donc

$$S = a_1^2 - 2a_2 = 1 - 2a_2 .$$

Comme $n \ge 3$, le coefficient $a_2$ vaut $\pm 1$, donc $S \le 3$. Ainsi $(n - 1) + a_n^2 \le 3$. Comme $a_n \ne 0$, on a $a_n^2 \ge 1$, donc $n - 1 \le 2$ : **$n = 3$**, et alors $2 + a_3^2 \le 3$ donne $a_3^2 = 1$. On a donc $S = 3$, c'est-à-dire $1 - 2a_2 = 3$, d'où $a_2 = -1$.

Reste $(1)$ avec $n = 3$ : $a_1 = -(a_1 + a_2 + a_3)$, soit $2a_1 = 1 - a_3$.

- Si $a_3 = 1$, on trouve $a_1 = 0$, ce qui est impossible car $a_1 = \pm 1$.
- Si $a_3 = -1$, on trouve $a_1 = 1$.

On obtient $P(X) = X^3 + X^2 - X - 1$, et en effet $(X - 1)(X + 1)(X + 1) = (X^2 - 1)(X + 1) = X^3 + X^2 - X - 1$.

**Conclusion.** Les solutions dont le dernier coefficient n'est pas nul sont $X^2 + X - 2$ (racines $1$ et $-2$) et $X^3 + X^2 - X - 1$ (racines $1$, $-1$, $-1$). D'après l'étape 1, toutes les solutions sont :

- $X^n$, pour $n \ge 1$ (tous les coefficients et toutes les racines sont nuls) ;
- $X^m (X^2 + X - 2)$ et $X^m (X^3 + X^2 - X - 1)$, pour $m \ge 0$.
