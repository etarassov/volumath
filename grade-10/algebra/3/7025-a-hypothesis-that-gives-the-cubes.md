---
id: "7025"
title: "Une hypothèse qui donne les cubes"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [identite remarquable, calcul algebrique, fractions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, vendredi 29 octobre, test d'algèbre, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres, différents de $-1$, vérifiant
$$\frac{a}{1+b} + \frac{b}{1+a} = 1 .$$

Montrer que
$$a^3 + b^3 = a + b .$$

## Hints

1. Que vaut la factorisation de $a^3 + b^3$ ? Compare-la au résultat voulu.
2. Il suffit donc de démontrer une égalité beaucoup plus simple. Laquelle ?
3. Reviens à l'hypothèse et réduis-la au même dénominateur. Que devient-elle ?

## Solution

**Ce qu'il suffit de montrer.**

L'identité classique donne
$$a^3 + b^3 = (a+b)\left(a^2 - ab + b^2\right) .$$
Pour obtenir $a^3 + b^3 = a + b$, il suffit donc de démontrer que
$$a^2 - ab + b^2 = 1 .$$

**Exploitons l'hypothèse.**

Réduisons l'hypothèse au même dénominateur $(1+a)(1+b)$, qui est non nul :
$$\frac{a(1+a)}{(1+a)(1+b)} + \frac{b(1+b)}{(1+a)(1+b)} = 1 ,$$
c'est-à-dire
$$a(1+a) + b(1+b) = (1+a)(1+b) .$$

Développons les deux membres :
$$a + a^2 + b + b^2 = 1 + a + b + ab .$$

Simplifions : les $a$ et les $b$ se retrouvent des deux côtés et disparaissent, et il reste
$$a^2 + b^2 = 1 + ab ,$$
c'est-à-dire exactement
$$a^2 - ab + b^2 = 1 . \checkmark$$

**Conclusion.**
$$a^3 + b^3 = (a+b)\left(a^2 - ab + b^2\right) = (a+b) \times 1 = a + b . \qquad \blacksquare$$

## Going further

Un exemple concret : $a = b$. L'hypothèse devient $\dfrac{2a}{1+a} = 1$, donc $a = 1$. Et en
effet $1^3 + 1^3 = 1 + 1$. ✓

Il existe bien d'autres couples. Prenons $a = 0$ : l'hypothèse donne $\dfrac{b}{1} = 1$, donc
$b = 1$, et $0^3 + 1^3 = 0 + 1$. ✓

Plus généralement, la condition $a^2 - ab + b^2 = 1$ décrit une ellipse du plan : l'ensemble
des couples qui conviennent est une courbe entière.
