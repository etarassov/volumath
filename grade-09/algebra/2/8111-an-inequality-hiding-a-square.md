---
id: "8111"
title: "Une inégalité qui cache un carré"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, identite-remarquable, calcul-litteral]
adapted_from: null
see_also: ["7607"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Montrer que, pour tous nombres réels $a$ et $b$,

$$a^2 + b^2 + 2(a-1)(b-1) \geq 1.$$

Pour quels couples $(a, b)$ a-t-on l'égalité ?

## Hints

1. Fais passer le $1$ de l'autre côté : il s'agit de montrer qu'une certaine expression est positive ou nulle.
2. Développe tout, puis range les termes.
3. Tu verras apparaître $a^2 + b^2 + 2ab$, c'est-à-dire $(a+b)^2$. Pose $s = a+b$ et regarde ce que devient l'expression.

## Solution

**Tout mettre du même côté.**

L'inégalité à démontrer équivaut à

$$a^2 + b^2 + 2(a-1)(b-1) - 1 \geq 0.$$

Développons le produit :

$$2(a-1)(b-1) = 2(ab - a - b + 1) = 2ab - 2a - 2b + 2.$$

L'expression devient donc

$$a^2 + b^2 + 2ab - 2a - 2b + 2 - 1 = a^2 + b^2 + 2ab - 2a - 2b + 1.$$

**Reconnaître un carré.**

Regroupons les trois premiers termes : $a^2 + b^2 + 2ab = (a+b)^2$. Et les deux suivants : $-2a - 2b = -2(a+b)$. Posons $s = a + b$. L'expression s'écrit

$$s^2 - 2s + 1 = (s-1)^2.$$

Autrement dit,

$$a^2 + b^2 + 2(a-1)(b-1) - 1 = (a + b - 1)^2.$$

Un carré est toujours positif ou nul, donc

$$a^2 + b^2 + 2(a-1)(b-1) - 1 \geq 0,$$

ce qui est bien l'inégalité demandée.

**Le cas d'égalité.**

Il y a égalité exactement quand $(a+b-1)^2 = 0$, c'est-à-dire quand

$$a + b = 1.$$

Par exemple $(a, b) = (0, 1)$ ou $(a, b) = \left(\tfrac{1}{2}, \tfrac{1}{2}\right)$ conviennent.
