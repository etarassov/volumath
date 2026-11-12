---
id: "22063"
title: "1/a + 1/b + 1/c = 1"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, fractions, encadrement, symetrie, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ d'entiers strictement positifs tels que
$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} = 1.$$

## Hints

1. L'équation ne change pas si l'on échange $a$, $b$ et $c$. Cherchez d'abord les solutions avec $a \leq b \leq c$.
2. Si $a \leq b \leq c$, lequel des trois nombres $\frac{1}{a}$, $\frac{1}{b}$, $\frac{1}{c}$ est le plus grand ? En déduire que $1 \leq \frac{3}{a}$.
3. Une fois $a$ connu, recommencez avec $\frac{1}{b} + \frac{1}{c}$.

## Solution

**On range les nombres.** L'équation ne change pas quand on échange $a$, $b$ et $c$. On cherche donc d'abord les solutions avec $a \leq b \leq c$, et on obtiendra les autres en changeant l'ordre.

Si $a \leq b \leq c$, alors $\frac{1}{a} \geq \frac{1}{b} \geq \frac{1}{c}$.

**Étape 1 : les valeurs possibles de $a$.**

- On a $1 = \frac{1}{a} + \frac{1}{b} + \frac{1}{c} \leq \frac{1}{a} + \frac{1}{a} + \frac{1}{a} = \frac{3}{a}$, donc $a \leq 3$.
- Si $a = 1$, on aurait $\frac{1}{b} + \frac{1}{c} = 0$, ce qui est impossible car ces deux fractions sont strictement positives. Donc $a \geq 2$.

Ainsi $a = 2$ ou $a = 3$.

**Étape 2 : le cas $a = 2$.** Il reste $\frac{1}{b} + \frac{1}{c} = \frac{1}{2}$, avec $2 \leq b \leq c$.

- Comme $\frac{1}{c} > 0$, on a $\frac{1}{b} < \frac{1}{2}$, donc $b > 2$.
- Comme $\frac{1}{c} \leq \frac{1}{b}$, on a $\frac{1}{2} \leq \frac{2}{b}$, donc $b \leq 4$.

Si $b = 3$ : $\frac{1}{c} = \frac{1}{2} - \frac{1}{3} = \frac{1}{6}$, donc $c = 6$. Si $b = 4$ : $\frac{1}{c} = \frac{1}{2} - \frac{1}{4} = \frac{1}{4}$, donc $c = 4$.

**Étape 3 : le cas $a = 3$.** Il reste $\frac{1}{b} + \frac{1}{c} = \frac{2}{3}$, avec $3 \leq b \leq c$. Comme $\frac{2}{3} \leq \frac{2}{b}$, on a $b \leq 3$, donc $b = 3$, puis $\frac{1}{c} = \frac{2}{3} - \frac{1}{3} = \frac{1}{3}$ et $c = 3$.

**Vérification.** $\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = \frac{3 + 2 + 1}{6} = 1$, $\frac{1}{2} + \frac{1}{4} + \frac{1}{4} = 1$ et $\frac{1}{3} + \frac{1}{3} + \frac{1}{3} = 1$.

**Conclusion.** Les solutions avec $a \leq b \leq c$ sont $(2, 3, 6)$, $(2, 4, 4)$ et $(3, 3, 3)$. Toutes les solutions s'obtiennent en changeant l'ordre de ces trois triplets : les $6$ ordres de $(2, 3, 6)$, les $3$ ordres de $(2, 4, 4)$ (selon la place du $2$) et $(3, 3, 3)$, soit $10$ triplets en tout.

## Going further

1. Trouver tous les couples d'entiers strictement positifs $(a, b)$ tels que $\frac{1}{a} + \frac{1}{b} = \frac{1}{2}$.
2. Un triangle a pour angles $\frac{180°}{a}$, $\frac{180°}{b}$ et $\frac{180°}{c}$. Expliquer pourquoi $(a, b, c)$ est alors une solution de l'équation. Quels sont les trois triangles qui correspondent aux trois solutions ?
3. Trouver toutes les solutions de $\frac{1}{a} + \frac{1}{b} + \frac{1}{c} + \frac{1}{d} = 1$ avec $a \leq b \leq c \leq d$.
