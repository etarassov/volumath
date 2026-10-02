---
id: "11834"
title: "xy divise x² + 2y − 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, equation-diophantienne, encadrement, disjonction-de-cas, nombres-impairs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 6 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ d'entiers strictement positifs tels que $xy$ divise $x^2 + 2y - 1$.

## Hints

1. Si $xy$ divise un nombre, alors $x$ le divise aussi. En déduire que $x$ divise $2y - 1$, puis que $x$ est impair.
2. Écrire $2y - 1 = kx$ avec $k$ entier. Montrer que $k$ est impair et que $y$ divise $x + k$.
3. Un diviseur positif d'un entier strictement positif est plus petit que lui. Transformer la divisibilité obtenue en une inégalité entre $k$ et $x$, puis la mettre sous la forme $(k - 2)(x - 2) \leqslant 3$.

## Solution

**Étape 1 : $x$ divise $2y - 1$.** Comme $x$ divise $xy$, et $xy$ divise $x^2 + 2y - 1$, le nombre $x$ divise $x^2 + 2y - 1$. Il divise aussi $x^2$, donc il divise la différence $2y - 1$.

Écrivons $2y - 1 = kx$, avec $k$ entier. Comme $2y - 1 \geqslant 1$ et $x \geqslant 1$, on a $k \geqslant 1$. Le nombre $2y - 1$ est impair, donc $k$ et $x$ sont impairs tous les deux (le produit de deux entiers est impair seulement si les deux le sont).

**Étape 2 : une nouvelle divisibilité.** On a $x^2 + 2y - 1 = x^2 + kx = x(x + k)$. L'hypothèse dit que $xy$ divise $x(x + k)$ : il existe un entier $q$ tel que $x(x + k) = q\,xy$. En simplifiant par $x \neq 0$, on obtient $x + k = qy$, donc $y$ divise $x + k$. En multipliant par $2$, et comme $2y = kx + 1$, cela donne

$$kx + 1 \text{ divise } 2(x + k).$$

**Étape 3 : une inégalité.** Le nombre $2(x + k)$ est strictement positif, et $kx + 1$ en est un diviseur positif, donc $kx + 1 \leqslant 2x + 2k$. On réécrit :

$$kx - 2x - 2k + 4 \leqslant 3, \qquad \text{c'est-à-dire} \qquad (k - 2)(x - 2) \leqslant 3.$$

**Étape 4 : les cas.**

- *Si $x = 1$.* Alors $xy = y$ et $x^2 + 2y - 1 = 2y$, qui est bien divisible par $y$. Tous les couples $(1, y)$ conviennent.
- *Si $k = 1$.* Alors $x = 2y - 1$, et $x^2 + 2y - 1 = x^2 + x = x(x + 1) = x \times 2y$, qui est bien divisible par $xy$. Tous les couples $(2y - 1, y)$ conviennent.
- *Sinon*, $x$ et $k$ sont impairs et différents de $1$, donc $x \geqslant 3$ et $k \geqslant 3$. Les nombres $k - 2$ et $x - 2$ sont alors des entiers impairs au moins égaux à $1$, de produit au plus $3$. Les seules possibilités sont $(k - 2, x - 2) = (1, 1)$, $(1, 3)$ ou $(3, 1)$. On calcule $y = \frac{kx + 1}{2}$ et on vérifie la condition de départ :

| $k$ | $x$ | $y$ | $xy$ | $x^2 + 2y - 1$ | convient ? |
|---|---|---|---|---|---|
| $3$ | $3$ | $5$ | $15$ | $18$ | non |
| $3$ | $5$ | $8$ | $40$ | $40$ | oui |
| $5$ | $3$ | $8$ | $24$ | $24$ | oui |

**Conclusion.** Les couples cherchés sont :

- les couples $(1, y)$, pour tout entier $y \geqslant 1$ ;
- les couples $(2y - 1, y)$, pour tout entier $y \geqslant 1$ ;
- les deux couples $(3, 8)$ et $(5, 8)$.

## Going further

Trouver de même tous les couples $(x, y)$ d'entiers strictement positifs tels que $xy$ divise $x^2 + y$.
