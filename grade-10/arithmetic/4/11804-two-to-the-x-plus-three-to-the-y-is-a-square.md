---
id: "11804"
title: "2ˣ + 3ʸ = z²"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [equation-diophantienne, puissances, restes, factorisation, carres]
adapted_from: null
see_also: []
same_as: ["8927"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 6 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Déterminer tous les triplets $(x, y, z)$ d'entiers naturels (positifs ou nuls) tels que

$$2^x + 3^y = z^2 .$$

## Hints

1. Cherche d'abord des solutions à la main. Tu dois en trouver trois.
2. Traite à part les cas $x = 0$ et $x = 1$. Pour $x = 1$, regarde le reste de la division par $3$ des deux membres.
3. Pour $x \geqslant 2$, regarde les restes dans la division par $4$. Quels restes un carré peut-il avoir ? Et une puissance de $3$ ? Déduis-en que $y$ est pair.
4. Si $y = 2k$, factorise $z^2 - 3^{2k}$. Les deux facteurs divisent une puissance de $2$ : ce sont donc des puissances de $2$.
5. Tu arriveras à $3^k + 1 = 2^m$. Regarde les restes dans la division par $8$.

## Solution

**Deux outils.**

- *Restes des carrés.* Un entier pair s'écrit $2n$ et son carré $4n^2$ est un multiple de $4$. Un entier impair s'écrit $2n + 1$ et son carré $4n^2 + 4n + 1$ a pour reste $1$ dans la division par $4$. De même, en divisant par $3$ : un entier s'écrit $3n$, $3n + 1$ ou $3n + 2$, et son carré a pour reste $0$, $1$ ou $1$. **Un carré n'a jamais pour reste $2$ dans la division par $3$.**
- *Restes des puissances de $3$.* On a $3^2 = 9 = 8 + 1$. Donc $3^{2j} = 9^j$ a pour reste $1$ dans la division par $8$ (et par $4$), et $3^{2j+1} = 3 \times 9^j$ a pour reste $3$ dans la division par $8$ (et par $4$). Les restes se répètent : $1, 3, 1, 3, \ldots$

**Premier cas : $x = 0$.** L'équation devient $3^y = z^2 - 1 = (z - 1)(z + 1)$. Le produit est strictement positif et $z + 1 > 0$, donc $z - 1 > 0$. Les deux facteurs divisent $3^y$, ce sont donc des puissances de $3$. S'ils étaient tous les deux au moins égaux à $3$, ils seraient tous les deux multiples de $3$, et leur différence $(z + 1) - (z - 1) = 2$ aussi : c'est faux. Donc le plus petit vaut $1$ : $z - 1 = 1$, $z = 2$, puis $3^y = 3$ et $y = 1$. On trouve la solution $(0, 1, 2)$, et en effet $1 + 3 = 4 = 2^2$.

**Deuxième cas : $x = 1$.** L'équation devient $z^2 = 2 + 3^y$. Si $y = 0$, $z^2 = 3$, impossible. Si $y \geqslant 1$, $3^y$ est un multiple de $3$, donc $z^2$ a pour reste $2$ dans la division par $3$ : impossible d'après le premier outil. Pas de solution.

**Troisième cas : $x \geqslant 2$.** Alors $2^x$ est un multiple de $4$. Comme $3^y$ est impair, $z^2$ est impair, donc a pour reste $1$ dans la division par $4$. Donc $3^y = z^2 - 2^x$ a aussi pour reste $1$ dans la division par $4$. D'après le second outil, $y$ est pair. Écrivons $y = 2k$.

L'équation devient
$$2^x = z^2 - (3^k)^2 = (z - 3^k)(z + 3^k) .$$
Comme plus haut, les deux facteurs sont strictement positifs, et ils divisent $2^x$ : ce sont des puissances de $2$. Écrivons $z - 3^k = 2^b$ et $z + 3^k = 2^a$ avec $a > b$ et $a + b = x$. En soustrayant :
$$2^a - 2^b = 2 \times 3^k .$$

- Si $b = 0$, le membre de gauche $2^a - 1$ est impair (car $a \geqslant 1$), alors que celui de droite est pair : impossible.
- Si $b \geqslant 2$, le membre de gauche est un multiple de $4$, mais $2 \times 3^k$ ne l'est pas, car $3^k$ est impair : impossible.

Donc $b = 1$, et en divisant par $2$ : $2^{a-1} - 1 = 3^k$. Posons $m = a - 1$ :
$$3^k + 1 = 2^m .$$

D'après le second outil, $3^k + 1$ a pour reste $2$ ou $4$ dans la division par $8$ : ce n'est jamais un multiple de $8$. Donc $2^m$ n'est pas un multiple de $8$, c'est-à-dire $m \leqslant 2$.

- $m = 0$ : $3^k = 0$, impossible.
- $m = 1$ : $3^k = 1$, donc $k = 0$. Alors $y = 0$, $a = 2$, $b = 1$, $x = a + b = 3$ et $z = 2^b + 3^k = 3$. On vérifie : $8 + 1 = 9 = 3^2$.
- $m = 2$ : $3^k = 3$, donc $k = 1$. Alors $y = 2$, $a = 3$, $b = 1$, $x = 4$ et $z = 2 + 3 = 5$. On vérifie : $16 + 9 = 25 = 5^2$.

**Conclusion.** Les solutions sont exactement les trois triplets
$$(x, y, z) = (0, 1, 2), \qquad (3, 0, 3), \qquad (4, 2, 5) .$$

## Going further

Résous de la même façon $2^x + 5^y = z^2$ en entiers naturels. (Indication : regarde d'abord les restes dans la division par $3$ et par $4$.)
