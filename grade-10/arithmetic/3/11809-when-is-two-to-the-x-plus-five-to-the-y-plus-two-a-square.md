---
id: "11809"
title: "Quand 2ˣ + 5ʸ + 2 est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-diophantienne, puissances, restes, carres, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 12 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ d'entiers naturels (positifs ou nuls) tels que le nombre

$$2^x + 5^y + 2$$

soit un carré parfait.

## Hints

1. Essaie les petites valeurs : tu dois trouver deux couples.
2. Si $x \geqslant 2$, regarde le reste de la division par $4$. Quels restes un carré peut-il avoir ?
3. Pour $x = 1$, le nombre vaut $5^y + 4$. Si c'est $k^2$, factorise $k^2 - 4$.
4. Pour $x = 0$, le nombre vaut $5^y + 3$. Regarde les restes dans la division par $5$.

## Solution

**Les restes des carrés.** Un entier pair a un carré multiple de $4$ ; un entier impair $2n + 1$ a pour carré $4n^2 + 4n + 1$, de reste $1$ dans la division par $4$. Dans la division par $5$, un entier a pour reste $0$, $1$, $2$, $3$ ou $4$, et son carré a pour reste $0$, $1$, $4$, $4$ ou $1$ (car $9 = 5 + 4$ et $16 = 15 + 1$). **Un carré n'a jamais pour reste $3$ dans la division par $4$, ni $3$ dans la division par $5$.**

**Cas $x \geqslant 2$.** Alors $2^x$ est un multiple de $4$. Une puissance de $5$ a pour reste $1$ dans la division par $4$, puisque $5 = 4 + 1$ (le produit de nombres de reste $1$ a encore pour reste $1$). Donc $2^x + 5^y + 2$ a pour reste $0 + 1 + 2 = 3$ dans la division par $4$ : ce n'est pas un carré. Pas de solution.

**Cas $x = 1$.** Le nombre vaut $5^y + 4$. Supposons que $5^y + 4 = k^2$ avec $k \geqslant 0$. Alors
$$5^y = k^2 - 4 = (k - 2)(k + 2) .$$
Le produit est strictement positif et $k + 2 > 0$, donc $k - 2 > 0$. Les deux facteurs divisent $5^y$ : ce sont des puissances de $5$. Si les deux étaient au moins égaux à $5$, ils seraient multiples de $5$ et leur différence $(k + 2) - (k - 2) = 4$ aussi, ce qui est faux. Donc $k - 2 = 1$, $k = 3$, et $5^y = 9 - 4 = 5$, soit $y = 1$. Le couple $(1, 1)$ convient : $2 + 5 + 2 = 9 = 3^2$.

**Cas $x = 0$.** Le nombre vaut $5^y + 3$.

- Si $y \geqslant 1$, $5^y$ est un multiple de $5$, et $5^y + 3$ a pour reste $3$ dans la division par $5$ : ce n'est pas un carré.
- Si $y = 0$, le nombre vaut $1 + 1 + 2 = 4 = 2^2$ : le couple $(0, 0)$ convient.

**Conclusion.** Les couples cherchés sont exactement $(0, 0)$ et $(1, 1)$.

## Going further

Pour quels entiers naturels $x$ et $y$ le nombre $2^x + 5^y$ est-il un carré parfait ?
