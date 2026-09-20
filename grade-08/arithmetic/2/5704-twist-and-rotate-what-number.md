---
id: "5704"
title: "Torsion et rotation : quel nombre obtient-on ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [fractions, relatifs, inverse, suite de coups, noeuds]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Conway's Rational Tangles (Kelley Barnes)"
  reference: "Rational-Tangles.pdf, section « Where does the Math come in? »"
  url: "https://mathcircles.org/activity/rational-tangles/"
  original_language: "en"
  local_copy: "sources/originals/namc/Rational-Tangles.pdf"
---

## Statement

Quatre enfants tiennent deux cordes, chacun un bout, aux quatre coins d'un carré imaginaire. Au départ les deux cordes sont parallèles et ne se croisent pas : on dit que cet enchevêtrement **vaut 0**.

![La position de départ, et la même après une torsion](5704-figure-1.svg)

Deux coups sont autorisés.

- **Torsion**, notée $T$ : les deux enfants de droite échangent leurs places, l'un passant par-dessus la corde de l'autre. Les cordes se croisent une fois de plus.
- **Rotation**, notée $R$ : les quatre enfants font tous ensemble un quart de tour, dans le même sens.

Le mathématicien John Conway a découvert qu'on peut attribuer un **nombre** à chaque enchevêtrement, de telle façon que :

- une torsion **ajoute $1$** au nombre ;
- une rotation remplace le nombre $x$ par $-\dfrac{1}{x}$.

Il n'existe pas de coup « détorsion » : on ne peut qu'ajouter des torsions et tourner.

Dans tout l'exercice on oublie les cordes et on ne travaille plus que sur les nombres.

1. On part de $0$. Quel nombre obtient-on après les coups $T$, $T$, $T$ ?
2. On part de $0$. Quel nombre obtient-on après $T$, $T$, $R$, $T$ ?
3. On part de $0$. Quel nombre obtient-on après $T$, $T$, $R$, $T$, $T$, $R$, $T$ ?
4. On part cette fois du nombre $2$ et on joue $R$, $T$, $R$, $T$, $R$, $T$. Que remarque-t-on ? Recommencer en partant de $3$.

## Hints

1. Une rotation fait deux choses à la fois : elle prend l'inverse, puis elle change le signe.
2. Pour la question 2 : après deux torsions on est arrivé à $2$. L'inverse de $2$ est $\dfrac{1}{2}$, donc la rotation donne $-\dfrac{1}{2}$.
3. Pour ajouter $1$ à une fraction, écris $1$ avec le même dénominateur : par exemple $-\dfrac{3}{2} + 1 = -\dfrac{3}{2} + \dfrac{2}{2}$.
4. Pour la question 4, écris les six nombres les uns sous les autres, puis compare le dernier au premier.

## Solution

**1.** Chaque torsion ajoute $1$ :

$$0 \ \xrightarrow{\ T\ } \ 1 \ \xrightarrow{\ T\ } \ 2 \ \xrightarrow{\ T\ } \ 3 .$$

On obtient **$3$**. Plus généralement, $n$ torsions à partir de $0$ donnent le nombre $n$.

**2.** On repart de $0$ :

$$0 \ \xrightarrow{\ T\ } \ 1 \ \xrightarrow{\ T\ } \ 2 \ \xrightarrow{\ R\ } \ -\frac{1}{2} \ \xrightarrow{\ T\ } \ -\frac{1}{2} + \frac{2}{2} = \frac{1}{2} .$$

On obtient **$\dfrac{1}{2}$**.

**3.** On continue à partir du $\dfrac{1}{2}$ de la question précédente :

$$\frac{1}{2} \ \xrightarrow{\ T\ } \ \frac{1}{2} + \frac{2}{2} = \frac{3}{2} \ \xrightarrow{\ R\ } \ -\frac{2}{3} \ \xrightarrow{\ T\ } \ -\frac{2}{3} + \frac{3}{3} = \frac{1}{3} .$$

On obtient **$\dfrac{1}{3}$**.

**4.** En partant de $2$ :

$$2 \ \xrightarrow{\ R\ } \ -\frac{1}{2} \ \xrightarrow{\ T\ } \ \frac{1}{2} \ \xrightarrow{\ R\ } \ -2 \ \xrightarrow{\ T\ } \ -1 \ \xrightarrow{\ R\ } \ 1 \ \xrightarrow{\ T\ } \ 2 .$$

On est **revenu au nombre de départ**.

En partant de $3$ :

$$3 \ \xrightarrow{\ R\ } \ -\frac{1}{3} \ \xrightarrow{\ T\ } \ \frac{2}{3} \ \xrightarrow{\ R\ } \ -\frac{3}{2} \ \xrightarrow{\ T\ } \ -\frac{1}{2} \ \xrightarrow{\ R\ } \ 2 \ \xrightarrow{\ T\ } \ 3 .$$

Encore une fois on revient au nombre de départ.

**Conclusion.** Les six coups $R$, $T$, $R$, $T$, $R$, $T$ ramènent au point de départ. Pour les cordes, cela veut dire que cette suite de six gestes rend l'enchevêtrement exactement tel qu'il était.

## Going further

Ce n'est pas un hasard : c'est vrai pour **n'importe quel** nombre de départ $x$. Reprenons le calcul en gardant la lettre $x$ :

$$x \ \xrightarrow{\ R\ } \ -\frac{1}{x} \ \xrightarrow{\ T\ } \ \frac{x-1}{x} \ \xrightarrow{\ R\ } \ -\frac{x}{x-1} \ \xrightarrow{\ T\ } \ -\frac{1}{x-1} \ \xrightarrow{\ R\ } \ x - 1 \ \xrightarrow{\ T\ } \ x .$$

On retrouve bien $x$ à la fin.

Au passage, la cinquième étape est intéressante toute seule : les cinq coups $R$, $T$, $R$, $T$, $R$ transforment $x$ en $x - 1$. Autrement dit, même sans coup « détorsion », on sait **retrancher $1$**.
