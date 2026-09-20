---
id: "5702"
title: "On revient toujours à zéro"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [fractions, irreductible, denominateur, descente, demonstration, noeuds]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Conway's Rational Tangles (Kelley Barnes)"
  reference: "Rational-Tangles.pdf, extension 3 « Is There a Knot That Can't Be Untangled? »"
  url: "https://mathcircles.org/activity/rational-tangles/"
  original_language: "en"
  local_copy: "sources/originals/namc/Rational-Tangles.pdf"
---

## Statement

Quatre enfants tiennent deux cordes, chacun un bout, aux quatre coins d'un carré imaginaire. Au départ les deux cordes sont parallèles : cet enchevêtrement **vaut 0**. Deux coups sont autorisés.

- **Torsion**, notée $T$ : les deux enfants de droite échangent leurs places, l'un passant par-dessus la corde de l'autre.
- **Rotation**, notée $R$ : les quatre enfants font ensemble un quart de tour, dans le même sens.

John Conway a découvert qu'on peut attribuer un **nombre** à chaque enchevêtrement, de telle façon qu'une torsion **ajoute $1$** au nombre, et qu'une rotation remplace le nombre $x$ par $-\dfrac{1}{x}$. Il n'existe pas de coup « détorsion ».

Comme on part de $0$ et qu'on n'ajoute que des $1$ et qu'on ne prend que des opposés d'inverses, le nombre obtenu est toujours une **fraction** (positive ou négative).

**Montrer que, quelle que soit la fraction atteinte, une suite finie de coups ramène toujours à $0$.**

Autrement dit : aussi emmêlé que soit le nœud, on peut toujours le défaire, et les calculs disent comment.

## Hints

1. Essaie d'abord sur un exemple : pars de $\dfrac{7}{11}$ et cherche à la main une suite de coups qui ramène à $0$. Note tous les nombres obtenus au passage.
2. Dans ta liste, entoure les nombres qui sont compris entre $0$ (inclus) et $1$ (exclu). Que font leurs dénominateurs ?
3. Montre d'abord qu'on peut toujours se ramener à un nombre de l'intervalle $[0, 1[$ : deux cas seulement, selon que le nombre de départ est $\geqslant 1$ ou $< 0$.
4. Soit $\dfrac{p}{q}$ une fraction irréductible avec $0 < p < q$. Joue $R$, puis autant de $T$ que nécessaire pour revenir dans $[0, 1[$. Quel est le dénominateur du nombre obtenu ?
5. Un entier positif ne peut pas décroître strictement une infinité de fois.

## Solution

Notons $x$ le nombre du moment. On va donner une **méthode** qui ramène $x$ à $0$, et prouver qu'elle s'arrête.

**Étape A : se ramener dans l'intervalle $[0, 1[$.**

Trois cas.

- Si $0 \leqslant x < 1$, il n'y a rien à faire.
- Si $x \geqslant 1$, on joue $R$ puis $T$. En effet $0 < \dfrac{1}{x} \leqslant 1$, donc $-1 \leqslant -\dfrac{1}{x} < 0$, donc après la torsion
$$0 \leqslant 1 - \frac{1}{x} < 1 .$$
- Si $x < 0$, on joue $T$ autant de fois qu'il faut. Chaque torsion ajoute $1$, donc on finit par dépasser $0$ ; et la **première** fois qu'on atteint un nombre $\geqslant 0$, ce nombre est $< 1$, puisque le précédent était $< 0$.

Dans tous les cas, un nombre fini de coups suffit.

**Étape B : faire baisser le dénominateur.**

Supposons donc $0 \leqslant x < 1$. Si $x = 0$, c'est gagné. Sinon écrivons

$$x = \frac{p}{q}, \qquad \text{fraction irréductible}, \qquad 0 < p < q .$$

Jouons $R$ :

$$\frac{p}{q} \ \xrightarrow{\ R\ } \ -\frac{q}{p} .$$

Ce nombre est strictement négatif, donc l'étape A s'applique : on joue des torsions jusqu'à revenir dans $[0, 1[$. Le nombre obtenu s'écrit

$$-\frac{q}{p} + k = \frac{kp - q}{p}$$

pour un certain entier $k \geqslant 1$. **Cette fraction est irréductible** : tout diviseur commun de $kp - q$ et de $p$ divise aussi $kp - (kp - q) = q$, donc divise $p$ et $q$ à la fois, donc vaut $1$.

Le nouveau nombre est donc une fraction irréductible de dénominateur exactement $p$.

**Étape C : conclure.**

Récapitulons. Partant d'un nombre de $[0, 1[$ de dénominateur $q$, l'étape B nous rend un nombre de $[0, 1[$ de dénominateur $p$, avec

$$p < q .$$

Le dénominateur a strictement diminué. On recommence, et il diminue encore.

Or les dénominateurs sont des entiers $\geqslant 1$ : une suite d'entiers positifs qui décroît strictement ne peut pas être infinie. Le procédé s'arrête donc au bout d'un nombre fini d'étapes.

Quand s'arrête-t-il ? Uniquement quand on ne peut plus appliquer l'étape B, c'est-à-dire quand le nombre vaut $0$. (Et de fait, le seul nombre de $[0, 1[$ de dénominateur $1$ est $0$.)

**Conclusion.** Quelle que soit la fraction de départ, la méthode ramène à $0$ en un nombre fini de coups. **Tout enchevêtrement obtenu par des torsions et des rotations peut être défait**, et le calcul indique la marche à suivre.

## Going further

Déroulons la méthode sur $\dfrac{7}{11}$ :

$$\frac{7}{11} \ \xrightarrow{\ R\ } \ -\frac{11}{7} \ \xrightarrow{\ TT\ } \ \frac{3}{7} \ \xrightarrow{\ R\ } \ -\frac{7}{3} \ \xrightarrow{\ TTT\ } \ \frac{2}{3} \ \xrightarrow{\ R\ } \ -\frac{3}{2} \ \xrightarrow{\ TT\ } \ \frac{1}{2} \ \xrightarrow{\ R\ } \ -2 \ \xrightarrow{\ TT\ } \ 0 .$$

Treize coups. Les dénominateurs rencontrés dans $[0, 1[$ sont

$$11, \quad 7, \quad 3, \quad 2, \quad 1 ,$$

et c'est exactement cette décroissance qui garantit qu'on arrive au bout. On retrouve le mécanisme de l'algorithme d'Euclide : à chaque tour, le grand nombre est remplacé par le petit.

C'est aussi ce qui explique le nom de l'activité, **enchevêtrements rationnels**. Les nœuds de ce type sont classés par les nombres rationnels, et deux enchevêtrements sont les mêmes exactement quand ils portent la même fraction.
