---
id: "12422"
title: "m! + n! = mⁿ"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, puissances, divisibilite, disjonction-de-cas, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2018"
  reference: "2018-08_pofm-2017-2018-test-mai.pdf, exercices du groupe B, exercice 2 ; corrigé 2018-08_pofm-2017-2018-test-mai-corrige.pdf (pour m = 2, le corrigé écrit 2 + n! = 2^(n−1) au lieu de 2 + n! = 2^n)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/08/pofm-2017-2018-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-08_pofm-2017-2018-test-mai.pdf"
---

## Statement

Pour un entier $k \geqslant 1$, on note $k! = 1 \times 2 \times 3 \times \cdots \times k$ (on lit
« factorielle $k$ »).

Trouver tous les couples $(m, n)$ d'entiers strictement positifs tels que
$$m! + n! = m^n.$$

## Hints

1. Essaie les petites valeurs. Tu dois trouver deux solutions avec $m = 2$.
2. Traite à part les cas où $m$ ou $n$ vaut $1$ ou $2$. Pour $m = 2$, regarde les deux membres
   dans la division par $4$.
3. Si $2 < m \leqslant n$, alors $m!$ divise $n!$, donc $m!$ divise $m^n$. Pense à $m - 1$, qui
   divise $m!$ : a-t-il un diviseur premier commun avec $m$ ?
4. Si $2 < n < m$, mets $n!$ en facteur dans le membre de gauche.

## Solution

On vérifie que $(2, 2)$ et $(2, 3)$ sont solutions : $2! + 2! = 4 = 2^2$ et
$2! + 3! = 2 + 6 = 8 = 2^3$. Montrons que ce sont les seules.

Nous utiliserons plusieurs fois le fait suivant : **deux entiers consécutifs n'ont pas de diviseur
commun autre que $1$**. En effet, un diviseur commun de $k$ et de $k + 1$ divise leur différence,
qui vaut $1$.

### Le cas $m = 1$

Alors $m^n = 1$, alors que $m! + n! \geqslant 1 + 1 = 2$. Pas de solution.

### Le cas $m = 2$

L'équation devient $2 + n! = 2^n$.

- Si $n \geqslant 4$, alors $n!$ est un multiple de $4$ (il contient le facteur $4$), donc
  $2 + n!$ a pour reste $2$ dans la division par $4$, alors que $2^n$ est un multiple de $4$. Pas
  de solution.
- Si $n = 1$ : $2 + 1 = 3 \neq 2$. Si $n = 2$ : $2 + 2 = 4 = 2^2$. Si $n = 3$ : $2 + 6 = 8 = 2^3$.

On obtient les deux solutions $(2, 2)$ et $(2, 3)$.

### Le cas $m \geqslant 3$ et $n \leqslant 2$

- Si $n = 1$, l'équation s'écrit $m! + 1 = m$. Or $m$ divise $m!$ et $m$, donc $m$ divise
  $m - m! = 1$, ce qui est impossible pour $m \geqslant 3$.
- Si $n = 2$, l'équation s'écrit $m! + 2 = m^2$. Or $m$ divise $m!$ et $m^2$, donc $m$ divise
  $m^2 - m! = 2$, ce qui est impossible pour $m \geqslant 3$.

### Le cas $3 \leqslant m \leqslant n$

Comme $m \leqslant n$, le produit $m! = 1 \times \cdots \times m$ est un morceau du produit $n!$,
donc $m!$ divise $n!$. Il divise donc $m! + n! = m^n$.

Or $m - 1$ divise $m!$, donc $m - 1$ divise $m^n$. Comme $m \geqslant 3$, on a $m - 1 \geqslant 2$,
et $m - 1$ a un diviseur premier $p$. Ce nombre premier divise $m^n = m \times m \times \cdots \times m$,
donc il divise $m$. Il divise alors à la fois $m - 1$ et $m$, qui sont consécutifs : c'est
impossible. Pas de solution.

### Le cas $3 \leqslant n < m$

Cette fois $n!$ divise $m!$, et l'on peut écrire
$$m! + n! = n! \times (1 + K), \qquad\text{avec}\qquad K = \frac{m!}{n!} = (n + 1)(n + 2) \cdots m.$$
Donc $1 + K$ divise $m^n$. Le produit $K$ contient le facteur $m$, donc $K$ est un multiple de $m$.

Si $1 + K$ avait un diviseur premier $p$, ce nombre premier diviserait $m^n$, donc $m$, donc aussi
$K$. Il diviserait alors $K$ et $K + 1$, qui sont consécutifs : impossible. Donc $1 + K$ n'a aucun
diviseur premier, c'est-à-dire $1 + K = 1$, ce qui est faux puisque $K \geqslant 1$. Pas de
solution.

### Conclusion

Les couples cherchés sont **$(m, n) = (2, 2)$ et $(m, n) = (2, 3)$**.
