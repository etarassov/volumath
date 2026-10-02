---
id: "7855"
title: "2x³ + xy = 7 en nombres entiers"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation-diophantienne, factorisation, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ d'entiers relatifs tels que
$$2x^3 + xy - 7 = 0 .$$

## Hints

1. Deux inconnues, une seule équation : il faut exploiter le fait qu'elles sont **entières**.
2. Les deux premiers termes ont un facteur commun évident. Mets-le en facteur.
3. Tu obtiens $x \times (\text{quelque chose d'entier}) = 7$. Que peut valoir $x$ ?
4. Pour chaque valeur de $x$, l'équation devient une équation du premier degré en $y$.

## Solution

**Étape 1 : on factorise.**

$$2x^3 + xy = 7 , \qquad \text{c'est-à-dire} \qquad x\left(2x^2 + y\right) = 7 .$$

Comme $x$ et $2x^2 + y$ sont des entiers, $x$ est un **diviseur de $7$**. (En particulier
$x \neq 0$, ce qui se voit aussi directement : pour $x = 0$ l'équation donnerait $-7 = 0$.)

Le nombre $7$ étant premier, ses diviseurs entiers sont
$$-7, \quad -1, \quad 1, \quad 7 .$$

**Étape 2 : on traite les quatre cas.**

Pour chaque valeur de $x$, on isole $y$ à partir de $2x^2 + y = \dfrac{7}{x}$, soit
$$y = \frac{7}{x} - 2x^2 .$$

| $x$ | $\dfrac7x$ | $2x^2$ | $y$ |
|---|---|---|---|
| $-7$ | $-1$ | $98$ | $-99$ |
| $-1$ | $-7$ | $2$ | $-9$ |
| $1$ | $7$ | $2$ | $5$ |
| $7$ | $1$ | $98$ | $-97$ |

**Étape 3 : on vérifie.**

- $(1, 5)$ : $2 + 5 - 7 = 0$. ✓
- $(-1, -9)$ : $-2 + 9 - 7 = 0$. ✓
- $(7, -97)$ : $2 \times 343 + 7 \times (-97) - 7 = 686 - 679 - 7 = 0$. ✓
- $(-7, -99)$ : $2 \times (-343) + (-7)(-99) - 7 = -686 + 693 - 7 = 0$. ✓

**Conclusion.** Les solutions sont exactement
$$\boxed{(-7, -99), \quad (-1, -9), \quad (1, 5), \quad (7, -97)} .$$
