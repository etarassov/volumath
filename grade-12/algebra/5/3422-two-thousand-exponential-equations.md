---
id: "3422"
title: "Deux mille équations exponentielles d'un coup"
grade: 12
theme: algebra
difficulty: 5
duration_min: 45
tags: [exponentielle, logarithme, changement-de-variable, telescopage]
adapted_from: null
see_also: ["1802"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 7, d'après SMT 2023 Algebra 4 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Pour chaque entier $k$ compris entre $2$ et $2023$, on considère l'équation d'inconnue réelle $x$ :

$$2^{\,2x} - 2^{\,x+1} + 1 - \frac{1}{k^2} = 0.$$

Soit $N$ la somme de **toutes** les solutions réelles de ces $2022$ équations.

Combien vaut $2^{\,N}$ ?

## Hints

1. Pose $u = 2^x$. Que devient l'équation ? Attention : $2^{2x} = (2^x)^2$ et $2^{x+1} = 2 \times 2^x$.
2. Tu obtiens $u^2 - 2u + 1 - \dfrac{1}{k^2} = 0$. Les trois premiers termes forment une identité remarquable.
3. $(u-1)^2 = \dfrac{1}{k^2}$, donc $u = 1 + \dfrac1k$ ou $u = 1 - \dfrac1k$. Ces deux valeurs sont-elles acceptables, sachant que $u$ doit être strictement positif ?
4. On te demande $2^N$, pas $N$. Or $2^{a+b} = 2^a \times 2^b$ : la **somme** des solutions devient un **produit** des valeurs de $u$.
5. Il reste à calculer $\displaystyle\prod_{k=2}^{2023}\left(1+\frac1k\right)$ et $\displaystyle\prod_{k=2}^{2023}\left(1-\frac1k\right)$. Les deux se télescopent.

## Solution

**L'idée : on ne calcule jamais $N$. On calcule directement $2^N$, car une somme d'exposants devient un produit.**

**Étape 1. Changement de variable.**

Posons $u = 2^x$, avec $u > 0$. Comme $2^{2x} = u^2$ et $2^{x+1} = 2u$, l'équation devient

$$u^2 - 2u + 1 - \frac{1}{k^2} = 0, \qquad \text{c'est-à-dire} \qquad (u-1)^2 = \frac{1}{k^2}.$$

Donc $u - 1 = \dfrac1k$ ou $u - 1 = -\dfrac1k$ :

$$u = 1 + \frac1k \qquad \text{ou} \qquad u = 1 - \frac1k.$$

**Étape 2. Les deux valeurs conviennent.**

Comme $k \geqslant 2$, on a $0 < \dfrac1k \leqslant \dfrac12$, donc

$$1 - \frac1k \geqslant \frac12 > 0 \qquad \text{et} \qquad 1 + \frac1k > 0.$$

Les deux valeurs de $u$ sont strictement positives, et chacune donne bien une solution réelle en $x$, à savoir $x = \log_2 u$. Chaque équation a donc exactement **deux** solutions réelles, et elles sont différentes.

**Étape 3. Somme des solutions, produit des $u$.**

Pour chaque $k$, les deux solutions sont $x = \log_2\!\left(1+\frac1k\right)$ et $x = \log_2\!\left(1-\frac1k\right)$. La somme $N$ de toutes les solutions vaut donc

$$N = \sum_{k=2}^{2023} \left[\log_2\!\left(1+\frac1k\right) + \log_2\!\left(1-\frac1k\right)\right].$$

Et comme $2^{a+b} = 2^a \times 2^b$ et $2^{\log_2 u} = u$ :

$$2^{\,N} = \prod_{k=2}^{2023}\left(1+\frac1k\right) \times \prod_{k=2}^{2023}\left(1-\frac1k\right).$$

**Étape 4. Les deux produits se télescopent.**

Le premier :

$$\prod_{k=2}^{2023}\left(1+\frac1k\right) = \prod_{k=2}^{2023}\frac{k+1}{k} = \frac{3}{2} \times \frac{4}{3} \times \frac{5}{4} \times \cdots \times \frac{2024}{2023} = \frac{2024}{2}= 1012.$$

Le second :

$$\prod_{k=2}^{2023}\left(1-\frac1k\right) = \prod_{k=2}^{2023}\frac{k-1}{k} = \frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \cdots \times \frac{2022}{2023} = \frac{1}{2023}.$$

**Étape 5. On conclut.**

$$2^{\,N} = 1012 \times \frac{1}{2023} = \frac{1012}{2023}.$$

**Conclusion : $2^{\,N} = \dfrac{1012}{2023}$.**

Ce nombre est un peu plus petit que $\dfrac12$, donc $N$ est un peu plus petit que $-1$ : la somme des $4044$ solutions vaut environ $-\text{1,0007}$.

## Going further

On peut remarquer que $\left(1+\frac1k\right)\left(1-\frac1k\right) = 1 - \frac{1}{k^2}$, ce qui donne une autre route : le produit cherché est

$$\prod_{k=2}^{2023}\left(1 - \frac{1}{k^2}\right) = \prod_{k=2}^{2023}\frac{(k-1)(k+1)}{k^2},$$

et on retrouve $\dfrac{1}{2} \times \dfrac{2024}{2023} = \dfrac{1012}{2023}$. En remplaçant $2023$ par un entier $N$, le produit vaut $\dfrac12 \times \dfrac{N+1}{N}$, qui tend vers $\dfrac12$ quand $N$ tend vers l'infini.
