---
id: "8415"
title: "Une condition, deux cubes"
grade: 10
theme: algebra
difficulty: 4
duration_min: 20
tags: [identite-remarquable, fraction, calcul-litteral, cube]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités et manipulations algébriques » (Auguste De Lambilly), exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels, tous deux différents de $-1$, tels que

$$\frac{a}{1+b} + \frac{b}{1+a} = 1.$$

Montrer que $a^3 + b^3 = a + b$.

## Hints

1. Une égalité avec des fractions se nettoie toujours de la même façon : multiplie tout par le dénominateur commun.
2. Le dénominateur commun est $(1+a)(1+b)$. Développe des deux côtés et simplifie autant que possible.
3. Tu devrais arriver à une relation très courte entre $a$ et $b$. Écris-la sous la forme $a^2 - ab + b^2 = \ldots$
4. Souviens-toi que $a^3 + b^3$ se factorise : le facteur $a^2 - ab + b^2$ y apparaît.

## Solution

**Étape 1. On chasse les dénominateurs.**

Les nombres $1+a$ et $1+b$ ne sont pas nuls, on peut donc multiplier l'hypothèse par $(1+a)(1+b)$ :

$$a\,(1+a) + b\,(1+b) = (1+a)(1+b).$$

**Étape 2. On développe.**

À gauche : $a + a^2 + b + b^2$.

À droite : $1 + a + b + ab$.

L'égalité devient

$$a + a^2 + b + b^2 = 1 + a + b + ab.$$

**Étape 3. On simplifie.**

On retranche $a + b$ des deux côtés :

$$a^2 + b^2 = 1 + ab,$$

c'est-à-dire

$$a^2 - ab + b^2 = 1. \qquad (\star)$$

**Étape 4. On utilise l'identité du cube.**

Vérifions d'abord l'identité $a^3 + b^3 = (a+b)(a^2 - ab + b^2)$ en développant le membre de droite :

$$(a+b)(a^2 - ab + b^2) = a^3 - a^2 b + a b^2 + a^2 b - a b^2 + b^3 = a^3 + b^3.$$

Les quatre termes du milieu se détruisent deux à deux : l'identité est bien vraie.

**Étape 5. On conclut.**

En reportant $(\star)$ dans cette identité :

$$a^3 + b^3 = (a+b) \times 1 = a + b.$$

C'est exactement ce qu'il fallait démontrer.

## Going further

L'hypothèse est réalisable : par exemple $a = b$ donne $(\star)$ sous la forme $a^2 = 1$, donc $a = b = 1$ (la valeur $a = b = -1$ est exclue). On vérifie alors que $\frac{1}{2} + \frac{1}{2} = 1$, et que $1 + 1 = 1 + 1$.

Il existe bien d'autres couples : la relation $(\star)$ décrit une ellipse du plan, donc une infinité de solutions.
