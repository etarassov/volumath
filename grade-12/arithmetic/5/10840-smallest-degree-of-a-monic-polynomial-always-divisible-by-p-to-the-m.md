---
id: "10840"
title: "Le plus petit degré d'un polynôme toujours divisible par pᵐ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [polynome, divisibilite, factorielle, coefficients-binomiaux, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf (la décomposition du corrigé sur les polynômes X(X + 1)⋯(X + i − 1) est remplacée ici par les différences Q(x + 1) − Q(x))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Soient $p$ un nombre premier et $m \geqslant 0$ un entier. Un polynôme est dit *unitaire* si le coefficient de son terme de plus haut degré vaut $1$.

Trouver le plus petit entier $d$ tel qu'il existe un polynôme unitaire $Q$ de degré $d$, à coefficients entiers, tel que $p^m$ divise $Q(n)$ pour tout entier $n$.

## Hints

1. Essaie $p = 2$ et $m = 1$. Le polynôme $X^2 + X$ convient-il ? Un polynôme $X + c$ peut-il convenir ?
2. Le produit de $k$ entiers consécutifs est toujours divisible par $k!$. Quel polynôme de degré $k$ cela suggère-t-il ?
3. Pour montrer qu'on ne peut pas faire mieux, pose $\Delta Q(x) = Q(x + 1) - Q(x)$. Si $p^m$ divise toutes les valeurs de $Q$, que peux-tu dire des valeurs de $\Delta Q$ ? Quel est le degré de $\Delta Q$ ?
4. Recommence $\ell$ fois à partir d'un polynôme unitaire de degré $\ell$. Tu dois obtenir un polynôme constant, égal à $\ell!$.

## Solution

**Réponse : $d$ est le plus petit entier $k \geqslant 0$ tel que $p^m$ divise $k!$.**

Par exemple, pour $p = 2$ et $m = 3$, on a $3! = 6$ et $4! = 24$, donc $d = 4$.

Notons $k$ le plus petit entier positif ou nul tel que $p^m$ divise $k!$. Il existe, car $p^m$ divise $(pm)!$, qui contient les $m$ facteurs $p, 2p, \ldots, mp$. On montre que $k$ convient, puis qu'aucun degré plus petit ne convient.

### Étape 1 : le degré $k$ est possible

Posons
$$Q(X) = X\,(X + 1)\,(X + 2) \cdots (X + k - 1),$$
avec la convention $Q = 1$ si $k = 0$. C'est un polynôme unitaire de degré $k$ à coefficients entiers. Montrons que $k!$ divise $Q(n)$ pour tout entier $n$.

- Si $n \geqslant 1$, alors $Q(n) = n(n + 1) \cdots (n + k - 1)$ est le quotient de $(n + k - 1)!$ par $(n - 1)!$, donc
$$Q(n) = k! \times \binom{n + k - 1}{k} ,$$
et le coefficient binomial est un entier (c'est un nombre de façons de choisir $k$ objets parmi $n + k - 1$).
- Si $-(k - 1) \leqslant n \leqslant 0$, l'un des facteurs $n, n + 1, \ldots, n + k - 1$ est nul, donc $Q(n) = 0$.
- Si $n \leqslant -k$, posons $N = -n \geqslant k$. Alors $Q(n) = (-1)^k \times N(N - 1) \cdots (N - k + 1) = (-1)^k \times k! \times \binom{N}{k}$.

Dans tous les cas, $k!$ divise $Q(n)$, donc **$p^m$ divise $Q(n)$ pour tout entier $n$.**

### Étape 2 : l'opération $\Delta$

Pour un polynôme $f$, on note $\Delta f$ le polynôme défini par
$$\Delta f(x) = f(x + 1) - f(x) .$$

**Lemme.** Si $f$ est de degré $j \geqslant 1$ et de coefficient dominant $a$, alors $\Delta f$ est de degré $j - 1$ et de coefficient dominant $j\,a$. Si $f$ est constant, $\Delta f = 0$. Si $f$ est à coefficients entiers, $\Delta f$ aussi.

*Preuve.* Pour une puissance $x^i$ avec $i \geqslant 1$, la formule du binôme donne
$$(x + 1)^i - x^i = i\,x^{i-1} + \binom{i}{2}\,x^{i-2} + \cdots + 1,$$
un polynôme à coefficients entiers de degré $i - 1$ et de coefficient dominant $i$. Pour une constante, la différence est nulle. En appliquant cela à chaque terme de $f$, le terme $a\,x^j$ donne $j\,a\,x^{j-1}$ plus des termes de degré plus petit, et les autres termes de $f$ ne donnent que des termes de degré au plus $j - 2$.

### Étape 3 : aucun degré plus petit ne convient

Soit $Q$ un polynôme unitaire de degré $\ell$, à coefficients entiers, tel que $p^m$ divise $Q(n)$ pour tout entier $n$. Montrons que $p^m$ divise $\ell!$.

*Les valeurs restent divisibles par $p^m$.* Si $p^m$ divise $f(n)$ pour tout entier $n$, alors $p^m$ divise $\Delta f(n) = f(n + 1) - f(n)$ pour tout entier $n$. En appliquant $\Delta$ plusieurs fois à $Q$, on obtient des polynômes $\Delta Q$, $\Delta(\Delta Q)$, … dont toutes les valeurs entières sont encore divisibles par $p^m$.

*Après $\ell$ étapes, on obtient $\ell!$.* D'après le lemme, chaque application de $\Delta$ fait baisser le degré de $1$ et multiplie le coefficient dominant par le degré qu'avait le polynôme. En partant de $Q$, de degré $\ell$ et de coefficient dominant $1$, après $\ell$ applications on obtient un polynôme de degré $0$, c'est-à-dire une constante, égale à
$$\ell \times (\ell - 1) \times \cdots \times 2 \times 1 = \ell! .$$

Ainsi la constante $\ell!$ est divisible par $p^m$. Par définition de $k$, on a donc $\ell \geqslant k$.

### Conclusion

Le degré $k$ est atteint (étape 1), et tout polynôme qui convient est de degré au moins $k$ (étape 3). **Le plus petit degré possible est le plus petit entier $k$ tel que $p^m$ divise $k!$.**

*Exemple.* Pour $p = 2$ et $m = 3$, le polynôme $X(X + 1)(X + 2)(X + 3)$ convient, et aucun polynôme unitaire de degré $3$ ne convient, car $8$ ne divise pas $3! = 6$.

## Going further

1. Montre que, pour $m \geqslant 1$, le nombre $d$ est toujours un multiple de $p$. *Indication : si $p$ ne divise pas $k$, compare $k!$ et $(k - 1)!$.*
2. Calcule $d$ pour $p = 5$ et $m = 6$.
