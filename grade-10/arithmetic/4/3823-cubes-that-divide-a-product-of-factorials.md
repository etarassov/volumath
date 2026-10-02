---
id: "3823"
title: "Les cubes qui divisent un produit de factorielles"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [factorielle, decomposition-en-facteurs-premiers, diviseurs, cubes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 11, d'après AMC 10A 2005, problème 15 (corrigé dans Handout-4071-3775.pdf). Le même exercice figure aussi dans Handout-3131-2694.pdf (Intermediate 2A, Week 1 Competition), problème 9, réponse 6."
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

On rappelle que $n!$ désigne le produit $1 \times 2 \times \cdots \times n$.

Combien y a-t-il d'entiers strictement positifs qui sont des cubes parfaits et qui divisent

$$3! \times 5! \times 7! \; ?$$

(Un cube parfait est un entier de la forme $k^3$ avec $k$ entier.)

## Hints

1. Commence par décomposer $3!$, $5!$ et $7!$ en produits de facteurs premiers, puis multiplie.
2. Un diviseur de $N = 2^{\alpha} 3^{\beta} 5^{\gamma} 7^{\delta}$ s'écrit $2^{a} 3^{b} 5^{c} 7^{d}$ avec $0 \leqslant a \leqslant \alpha$, et de même pour les autres.
3. À quelle condition sur les exposants un entier est-il un cube parfait ?
4. Il ne reste plus qu'à compter, pour chaque nombre premier, les exposants possibles, puis à multiplier ces comptes.

## Solution

**L'idée : tout se lit sur les exposants de la décomposition en facteurs premiers.**

**Étape 1. On décompose.**

$$3! = 6 = 2 \times 3,$$

$$5! = 120 = 2^3 \times 3 \times 5,$$

$$7! = 5040 = 2^4 \times 3^2 \times 5 \times 7.$$

(Pour $7!$ : $7! = 7 \times 6 \times 5 \times 4 \times 3 \times 2 = 7 \times (2 \times 3) \times 5 \times 2^2 \times 3 \times 2$, d'où $2^4 \times 3^2 \times 5 \times 7$.)

En multipliant, on additionne les exposants :

$$N = 3! \times 5! \times 7! = 2^{1+3+4} \times 3^{1+1+2} \times 5^{0+1+1} \times 7^{0+0+1} = 2^{8} \times 3^{4} \times 5^{2} \times 7.$$

**Étape 2. Les diviseurs de $N$.**

Un entier strictement positif divise $N$ si et seulement s'il s'écrit

$$d = 2^{a} \times 3^{b} \times 5^{c} \times 7^{e}$$

avec

$$0 \leqslant a \leqslant 8, \quad 0 \leqslant b \leqslant 4, \quad 0 \leqslant c \leqslant 2, \quad 0 \leqslant e \leqslant 1.$$

**Étape 3. Les cubes parfaits.**

Un entier est un cube parfait si et seulement si, dans sa décomposition en facteurs premiers, **tous les exposants sont des multiples de $3$**. En effet, $(2^{x} 3^{y} 5^{z} 7^{t})^3 = 2^{3x} 3^{3y} 5^{3z} 7^{3t}$, et réciproquement si tous les exposants sont multiples de $3$ on peut les diviser par $3$ pour retrouver la racine cubique.

**Étape 4. On compte, premier par premier.**

| Premier | Exposants autorisés | Multiples de $3$ possibles | Nombre de choix |
| --- | --- | --- | --- |
| $2$ | $0$ à $8$ | $0$, $3$, $6$ | $3$ |
| $3$ | $0$ à $4$ | $0$, $3$ | $2$ |
| $5$ | $0$ à $2$ | $0$ | $1$ |
| $7$ | $0$ à $1$ | $0$ | $1$ |

Les choix se font indépendamment, donc le nombre de cubes parfaits qui divisent $N$ vaut

$$3 \times 2 \times 1 \times 1 = 6.$$

**Étape 5. La liste.**

$$1, \quad 2^3 = 8, \quad 2^6 = 64, \quad 3^3 = 27, \quad 2^3 \times 3^3 = 216, \quad 2^6 \times 3^3 = 1728.$$

**Conclusion.** Il y a exactement $6$ cubes parfaits strictement positifs qui divisent $3! \times 5! \times 7!$.

## Going further

1. Combien $N = 3! \times 5! \times 7!$ a-t-il de diviseurs en tout ?
2. Combien de ses diviseurs sont des carrés parfaits ?
3. Quel est le plus grand cube parfait qui divise $N$ ?
4. Calcule $N$ et compare-le à $10!$. La coïncidence n'en est pas tout à fait une : retrouve-la sur les décompositions en facteurs premiers.
