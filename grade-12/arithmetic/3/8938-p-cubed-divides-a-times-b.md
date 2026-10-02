---
id: "8938"
title: "p³ divise ab"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, valuation-p-adique, divisibilite, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soit $p$ un nombre premier et soient $a$ et $b$ deux entiers strictement positifs tels que $p^3$ divise $ab$.

Montrer que $p^2$ divise $a$ ou que $p^2$ divise $b$.

## Hints

1. Comptez les facteurs $p$. Pour un entier $n$ non nul, notons $v(n)$ le nombre de fois que $p$ apparaît dans sa décomposition en facteurs premiers : c'est le plus grand exposant $k$ tel que $p^k$ divise $n$.
2. Comment $v(ab)$ se calcule-t-il à partir de $v(a)$ et de $v(b)$ ?
3. Traduisez l'hypothèse « $p^3$ divise $ab$ » et la conclusion cherchée en termes de $v$.
4. Raisonnez par l'absurde : supposez que **ni** $p^2$ ne divise $a$, **ni** $p^2$ ne divise $b$, et regardez ce que cela impose à $v(a)$ et $v(b)$.

## Solution

### Compter les facteurs $p$

Pour un entier $n$ strictement positif, notons $v(n)$ le nombre de facteurs $p$ dans la décomposition de $n$ en produit de nombres premiers. Autrement dit, $v(n)$ est le plus grand entier $k \geqslant 0$ tel que $p^k$ divise $n$. On peut écrire $n = p^{v(n)} m$ avec $m$ non divisible par $p$.

Deux propriétés, toutes deux immédiates à partir de cette écriture :

- **$v$ transforme les produits en sommes :** si $a = p^{\alpha} a'$ et $b = p^{\beta} b'$ avec $a'$ et $b'$ non divisibles par $p$, alors $ab = p^{\alpha+\beta} a'b'$. Le produit $a'b'$ n'est pas divisible par $p$, car $p$ est premier et ne divise ni $a'$ ni $b'$. Donc $v(ab) = v(a) + v(b)$.
- **Divisibilité par une puissance de $p$ :** $p^k$ divise $n$ si et seulement si $v(n) \geqslant k$.

### La démonstration

Posons $\alpha = v(a)$ et $\beta = v(b)$.

L'hypothèse dit que $p^3$ divise $ab$, c'est-à-dire

$$v(ab) \geqslant 3, \qquad \text{c'est-à-dire} \qquad \alpha + \beta \geqslant 3.$$

Raisonnons par l'absurde et supposons que la conclusion est fausse : ni $p^2$ ne divise $a$, ni $p^2$ ne divise $b$. Cela signifie

$$\alpha \leqslant 1 \qquad \text{et} \qquad \beta \leqslant 1,$$

d'où

$$\alpha + \beta \leqslant 1 + 1 = 2 < 3.$$

Cela contredit $\alpha + \beta \geqslant 3$. L'hypothèse de l'absurde est donc fausse, et l'une au moins des deux conclusions est vraie :

$$\boxed{p^2 \text{ divise } a \quad \text{ou} \quad p^2 \text{ divise } b.}$$

*Remarque.* Le nombre $3$ compte vraiment. Avec $p^2$ au lieu de $p^3$, l'énoncé analogue « $p^2 \mid ab$ entraîne $p \mid a$ ou $p \mid b$ » est vrai aussi, mais « $p^2 \mid ab$ entraîne $p^2 \mid a$ ou $p^2 \mid b$ » est faux : prenez $a = b = p$.

## Going further

1. Énoncez et démontrez la version générale : si $p^{2k-1}$ divise $ab$, alors $p^k$ divise $a$ ou $p^k$ divise $b$. Pourquoi l'exposant $2k-1$ est-il le meilleur possible ?
2. Le même comptage résout beaucoup de problèmes. Par exemple : combien de fois le facteur $5$ apparaît-il dans $100!$, c'est-à-dire combien de zéros y a-t-il à la fin de $100!$ ?
