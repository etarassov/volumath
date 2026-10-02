---
id: "3413"
title: "De x + y et x³ + y³ jusqu'à x⁵ + y⁵"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [somme-et-produit, identites-remarquables, expressions-symetriques]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 8 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Deux nombres réels $x$ et $y$ vérifient

$$x + y = 1 \qquad \text{et} \qquad x^3 + y^3 = 2.$$

Combien vaut $x^5 + y^5$ ?

## Hints

1. On ne cherchera pas $x$ et $y$ séparément. Tout va se jouer avec deux quantités seulement : la somme $s = x+y$ et le produit $p = xy$.
2. Développe $(x+y)^3$. Tu y trouveras $x^3 + y^3$ et un terme contenant $xy$. Cela te donne $p$.
3. Une fois $p$ connu, calcule $x^2 + y^2$ à l'aide de $(x+y)^2$.
4. Multiplie $x^2+y^2$ par $x^3+y^3$ et regarde ce que donne le développement : il y a $x^5+y^5$, et un reste qui se factorise joliment.

## Solution

**L'idée : tout exprimer à l'aide de la somme $s = x+y$ et du produit $p = xy$.**

**Étape 1. On trouve le produit $xy$.**

Développons $(x+y)^3$ :

$$(x+y)^3 = x^3 + 3x^2y + 3xy^2 + y^3 = x^3 + y^3 + 3xy\,(x+y).$$

Avec $x+y = 1$ et $x^3+y^3 = 2$ :

$$1 = 2 + 3xy \times 1, \qquad \text{donc} \qquad xy = -\frac{1}{3}.$$

**Étape 2. On calcule $x^2 + y^2$.**

$$x^2 + y^2 = (x+y)^2 - 2xy = 1 - 2 \times \left(-\frac13\right) = 1 + \frac23 = \frac53.$$

**Étape 3. On fabrique $x^5 + y^5$.**

Multiplions $x^2+y^2$ par $x^3+y^3$ :

$$(x^2+y^2)(x^3+y^3) = x^5 + x^2y^3 + x^3y^2 + y^5 = x^5 + y^5 + x^2y^2\,(x+y).$$

Le dernier terme vaut $x^2y^2(x+y) = (xy)^2 \times (x+y) = \left(-\frac13\right)^2 \times 1 = \frac19$.

Le membre de gauche vaut $\dfrac53 \times 2 = \dfrac{10}{3}$. Donc

$$\frac{10}{3} = x^5 + y^5 + \frac19,$$

$$x^5 + y^5 = \frac{10}{3} - \frac19 = \frac{30}{9} - \frac19 = \frac{29}{9}.$$

**Conclusion : $x^5 + y^5 = \dfrac{29}{9}$.**

**De tels réels existent-ils vraiment ?** Oui. Si $x + y = 1$ et $xy = -\dfrac13$, alors $x$ et $y$ sont les deux racines de
$$t^2 - t - \frac13 = 0,$$
dont le discriminant vaut $1 + \dfrac43 = \dfrac73 > 0$ : il y a bien deux racines réelles.

## Going further

Le même mécanisme permet de calculer $x^n + y^n$ de proche en proche. En notant $P_n = x^n + y^n$, $s = x+y$ et $p = xy$, on a la relation

$$P_n = s\,P_{n-1} - p\,P_{n-2}.$$

Ici $s = 1$ et $p = -\dfrac13$, donc $P_n = P_{n-1} + \dfrac13 P_{n-2}$. En partant de $P_0 = 2$ et $P_1 = 1$ on retrouve
$$P_2 = \frac53, \quad P_3 = 2, \quad P_4 = \frac{23}{9}, \quad P_5 = \frac{29}{9}.$$
