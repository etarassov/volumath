---
id: "3209"
title: "Un diviseur de x²⁰²² + x¹⁰¹¹ + 1"
grade: 11
theme: algebra
difficulty: 5
duration_min: 40
tags: [polynome, divisibilite, factorisation, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 9, d'après AMC 12A 2022, problème 21 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

On pose

$$P(x) = x^{2022} + x^{1011} + 1 .$$

Montrer que le polynôme $x^6 + x^3 + 1$ divise $P(x)$.

*(Dire que $A$ divise $B$ signifie qu'il existe un polynôme $Q$ tel que $B = A \times Q$.)*

## Hints

1. Il est hors de question de poser la division : $P$ est de degré $2022$. Il faut une idée.
2. Le seul outil vraiment nécessaire est celui-ci : pour tout entier $m \ge 1$, le polynôme $t - 1$ divise $t^m - 1$, car
   $$t^m - 1 = (t-1)\left( t^{m-1} + t^{m-2} + \cdots + t + 1 \right).$$
3. Calcule la différence $P(x) - \left( x^6 + x^3 + 1 \right)$. Que remarques-tu sur les exposants ?
4. Il apparaît $x^{2016} - 1$ et $x^{1008} - 1$. Que valent $2016$ et $1008$ divisés par $9$ ?
5. Enfin, factorise $x^9 - 1$ en posant $t = x^3$.

## Solution

**L'idée : comparer $P$ à son diviseur supposé.**

Notons $D(x) = x^6 + x^3 + 1$. Pour montrer que $D$ divise $P$, il suffit de montrer que $D$ divise la différence

$$P(x) - D(x),$$

car alors $P = D + (P - D)$ sera une somme de deux multiples de $D$.

**On calcule la différence.**

$$P(x) - D(x) = \left( x^{2022} - x^{6} \right) + \left( x^{1011} - x^{3} \right).$$

On met en facteur la plus petite puissance dans chaque parenthèse :

$$P(x) - D(x) = x^{6}\left( x^{2016} - 1 \right) + x^{3}\left( x^{1008} - 1 \right).$$

**Les deux exposants sont des multiples de $9$.**

$$2016 = 9 \times 224, \qquad 1008 = 9 \times 112 .$$

Posons $t = x^9$. Alors

$$x^{2016} - 1 = t^{224} - 1 \qquad \text{et} \qquad x^{1008} - 1 = t^{112} - 1 .$$

Or pour tout entier $m \ge 1$,

$$t^{m} - 1 = (t - 1)\left( t^{m-1} + t^{m-2} + \cdots + t + 1 \right),$$

donc $t - 1 = x^9 - 1$ divise à la fois $x^{2016} - 1$ et $x^{1008} - 1$.

**Et $x^9 - 1$ est un multiple de $D$.**

En posant $u = x^3$ :

$$x^9 - 1 = u^3 - 1 = (u - 1)\left( u^2 + u + 1 \right) = \left( x^3 - 1 \right)\left( x^6 + x^3 + 1 \right) = \left( x^3 - 1 \right) D(x) .$$

Donc $D$ divise $x^9 - 1$.

**On rassemble.**

$D$ divise $x^9-1$, qui divise $x^{2016}-1$ et $x^{1008}-1$. Donc $D$ divise les deux morceaux

$$x^6\left( x^{2016} - 1 \right) \qquad \text{et} \qquad x^3\left( x^{1008} - 1 \right),$$

donc leur somme, c'est-à-dire $P(x) - D(x)$.

Enfin

$$P(x) = D(x) + \Big( P(x) - D(x) \Big)$$

est la somme de deux multiples de $D$, donc $P$ est un multiple de $D$.

**Conclusion.** Le polynôme $x^6 + x^3 + 1$ divise bien $x^{2022} + x^{1011} + 1$.

## Going further

1. Montrer que $x^2 + x + 1$, lui, **ne** divise **pas** $P$. (Indication : $x^2+x+1$ divise $x^3 - 1$, donc il divise aussi $x^{2022} - 1$ et $x^{1011} - 1$. Que reste-t-il de $P$ ?)
2. Le polynôme $x^6 + x^3 + 1$ divise-t-il $x^{12} + x^6 + 1$ ? Et $x^{8} + x^{4} + 1$ ? Reprendre la méthode de la solution dans chaque cas.
3. Généraliser : pour quels entiers $n \ge 1$ le polynôme $x^6 + x^3 + 1$ divise-t-il $x^{2n} + x^{n} + 1$ ? Tester d'abord $n = 1, 2, \ldots, 12$ et conjecturer une condition sur le reste de $n$ dans la division par $9$.
