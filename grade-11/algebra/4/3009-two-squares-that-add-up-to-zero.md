---
id: "3009"
title: "(x² + 1)(y² + 1) + 9 = 6(x + y)"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [identites-remarquables, somme-et-produit, carres, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Inequalities II: AM-GM continued and Inequality Intervals"
  reference: "Handout-3201-2760.pdf, exercice 2 (Turquie 2014 ; réponse dans Handout-3202-2760.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3201-2760.pdf"
---

## Statement

Les réels $x$ et $y$ vérifient

$$\left(x^2 + 1\right)\left(y^2 + 1\right) + 9 = 6(x + y).$$

Combien vaut $x^2 + y^2$ ?

## Hints

1. Développe tout et regroupe d'un seul côté du signe égal.
2. Note $s = x + y$ et $p = xy$. Souviens-toi que $x^2 + y^2 = s^2 - 2p$ et que $x^2y^2 = p^2$. Réécris toute l'équation avec $s$ et $p$ seulement.
3. Tu obtiens une expression en $s$ et $p$ égale à $0$. Regroupe les termes en $s$ d'un côté, ceux en $p$ de l'autre : deux carrés apparaissent.
4. Une somme de deux carrés est nulle seulement si chacun des deux est nul.

## Solution

**Tout développer.**

$$\left(x^2+1\right)\left(y^2+1\right) = x^2y^2 + x^2 + y^2 + 1,$$

donc l'équation s'écrit

$$x^2y^2 + x^2 + y^2 + 10 - 6x - 6y = 0.$$

**Passer à la somme et au produit.**

Posons $s = x + y$ et $p = xy$. Alors $x^2 y^2 = p^2$ et $x^2 + y^2 = s^2 - 2p$.
L'équation devient

$$p^2 + s^2 - 2p + 10 - 6s = 0.$$

**Faire apparaître deux carrés.**

On regroupe :

$$\left(p^2 - 2p + 1\right) + \left(s^2 - 6s + 9\right) = 0,$$

c'est-à-dire

$$(p - 1)^2 + (s - 3)^2 = 0.$$

(On a bien utilisé $1 + 9 = 10$.)

**Conclure.**

Une somme de deux carrés de réels est nulle uniquement si les deux carrés sont nuls. Donc

$$p = xy = 1 \qquad \text{et} \qquad s = x + y = 3.$$

Par conséquent

$$x^2 + y^2 = s^2 - 2p = 9 - 2 = 7.$$

**De tels réels existent-ils ?**

Oui. Si $x + y = 3$ et $xy = 1$, alors $x$ et $y$ sont les deux racines de
$u^2 - 3u + 1 = 0$, dont le discriminant $9 - 4 = 5$ est strictement positif. Les solutions
sont

$$x = \frac{3 + \sqrt{5}}{2}, \qquad y = \frac{3 - \sqrt{5}}{2}$$

(ou l'inverse).

**Réponse : $x^2 + y^2 = 7$.**
