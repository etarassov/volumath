---
id: "8109"
title: "D'une somme de fractions à une somme de cubes"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [identite-remarquable, fractions, calcul-litteral]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels, différents de $-1$, tels que

$$\frac{a}{1+b} + \frac{b}{1+a} = 1.$$

Montrer que

$$a^3 + b^3 = a + b.$$

## Hints

1. Commence par te débarrasser des dénominateurs : multiplie l'égalité par $(1+a)(1+b)$.
2. Développe, puis simplifie tout ce qui se simplifie. Tu devrais obtenir une égalité très courte.
3. Connais-tu une factorisation de $a^3 + b^3$ ? Elle fait apparaître exactement le facteur que tu viens de trouver.

## Solution

**Étape 1 : enlever les dénominateurs.**

Comme $a \neq -1$ et $b \neq -1$, les deux dénominateurs $1+a$ et $1+b$ ne sont pas nuls. Multiplions l'égalité de l'énoncé par le produit $(1+a)(1+b)$ :

$$a(1+a) + b(1+b) = (1+a)(1+b).$$

Développons les deux membres :

$$a + a^2 + b + b^2 = 1 + a + b + ab.$$

Retranchons $a + b$ de chaque côté :

$$a^2 + b^2 = 1 + ab,$$

c'est-à-dire

$$a^2 - ab + b^2 = 1. \qquad (\star)$$

**Étape 2 : la factorisation de la somme de deux cubes.**

Rappelons l'identité

$$a^3 + b^3 = (a+b)\left(a^2 - ab + b^2\right).$$

(On peut la vérifier en développant : $(a+b)(a^2-ab+b^2) = a^3 - a^2b + ab^2 + a^2 b - ab^2 + b^3 = a^3 + b^3$.)

Le second facteur est précisément celui de $(\star)$, et il vaut $1$. Donc

$$a^3 + b^3 = (a+b) \times 1 = a + b.$$

**C'est bien l'égalité demandée.**
