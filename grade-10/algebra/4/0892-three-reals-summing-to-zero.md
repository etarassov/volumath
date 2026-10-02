---
id: "0892"
title: "Trois réels de somme nulle"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [fractions, calcul-litteral, identite, somme-nulle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 18, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$x$, $y$ et $z$ sont des réels non nuls tels que $x + y + z = 0$. On suppose de plus que

$$\frac{x}{y} + \frac{y}{z} + \frac{z}{x} = \frac{x}{z} + \frac{z}{y} + \frac{y}{x} + 1.$$

Déterminer la valeur de $\dfrac{x}{y} + \dfrac{y}{z} + \dfrac{z}{x}$.

## Hints

1. Pose $A = \dfrac{x}{y} + \dfrac{y}{z} + \dfrac{z}{x}$ et $B = \dfrac{x}{z} + \dfrac{z}{y} + \dfrac{y}{x}$. L'énoncé dit $A = B + 1$ : une seule équation pour deux inconnues, il en manque une.
2. La seconde équation ne peut venir que de l'hypothèse $x+y+z = 0$. Calcule $A + B$ en mettant tout au même dénominateur $xyz$.
3. Au numérateur, regroupe les six termes sous la forme $x^2(y+z) + y^2(x+z) + z^2(x+y)$. Que vaut chaque parenthèse ?
4. Il reste à calculer $x^3+y^3+z^3$ lorsque $x+y+z = 0$ : remplace $z$ par $-x-y$ et développe.

## Solution

**L'idée : la quantité cherchée et sa « jumelle » ont une somme qui ne dépend de rien.**

Posons

$$A = \frac{x}{y} + \frac{y}{z} + \frac{z}{x}, \qquad B = \frac{x}{z} + \frac{z}{y} + \frac{y}{x}.$$

L'hypothèse s'écrit $A = B + 1$. Cherchons une seconde relation entre $A$ et $B$.

**Étape 1. On calcule $A + B$.** Réduisons au dénominateur commun $xyz$ :

$$A = \frac{x^2 z + x y^2 + y z^2}{xyz}, \qquad B = \frac{x^2 y + x z^2 + y^2 z}{xyz}.$$

(Par exemple $\dfrac{x}{y} = \dfrac{x \times xz}{y \times xz} = \dfrac{x^2z}{xyz}$, et ainsi de suite.)

En additionnant et en regroupant les six termes du numérateur selon le carré qu'ils contiennent :

$$A + B = \frac{x^2 y + x^2 z + x y^2 + y^2 z + y z^2 + x z^2}{xyz} = \frac{x^2(y+z) + y^2(x+z) + z^2(x+y)}{xyz}.$$

**Étape 2. On utilise $x+y+z = 0$.** Cette hypothèse donne

$$y + z = -x, \qquad x + z = -y, \qquad x + y = -z,$$

donc

$$A + B = \frac{x^2(-x) + y^2(-y) + z^2(-z)}{xyz} = \frac{-(x^3+y^3+z^3)}{xyz}.$$

**Étape 3. On calcule $x^3+y^3+z^3$.** Toujours grâce à $x+y+z=0$, remplaçons $z$ par $-x-y$ :

$$x^3 + y^3 + z^3 = x^3 + y^3 - (x+y)^3 = x^3 + y^3 - \left(x^3 + 3x^2y + 3xy^2 + y^3\right) = -3xy(x+y).$$

Or $x + y = -z$, donc

$$x^3+y^3+z^3 = -3xy \times (-z) = 3xyz.$$

**Étape 4. On conclut.** Les trois nombres étant non nuls, $xyz \neq 0$ et

$$A + B = \frac{-3xyz}{xyz} = -3.$$

Avec l'hypothèse $A = B + 1$, c'est-à-dire $B = A - 1$, on obtient

$$A + (A - 1) = -3, \qquad \text{donc} \qquad 2A = -2, \qquad \text{donc} \qquad A = -1.$$

**Conclusion : $\dfrac{x}{y} + \dfrac{y}{z} + \dfrac{z}{x} = -1$** (et au passage $B = -2$).

## Going further

L'étape 4 mérite d'être isolée : **dès que $x+y+z = 0$ avec $x$, $y$, $z$ non nuls, on a $A + B = -3$**, sans aucune autre hypothèse. Essayez avec $x = 1$, $y = 2$, $z = -3$ : on trouve $A = \dfrac{1}{2} - \dfrac{2}{3} - 3 = -\dfrac{19}{6}$ et $B = -\dfrac{1}{3} - \dfrac{3}{2} + 2 = \dfrac{1}{6}$, dont la somme vaut bien $-3$.

L'hypothèse supplémentaire de l'énoncé sert seulement à séparer $A$ de $B$. Elle n'est pas vide : on trouve par exemple, à peu près, $x \approx -\text{4,97}$, $y \approx \text{2,76}$, $z \approx \text{2,21}$, qui vérifient $x+y+z = 0$ et $A = B+1$, avec $A = -1$.

On démontre aussi, en développant, que $A - B = \dfrac{(x-y)(y-z)(z-x)}{xyz}$ : la condition de l'énoncé s'écrit donc simplement $(x-y)(y-z)(z-x) = xyz$.
