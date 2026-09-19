---
id: "0891"
title: "Deux d'entre eux ont une somme au plus 2"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, raisonnement par l absurde, ordonner, somme de carres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 15, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$a$, $b$, $c$ et $d$ sont des réels positifs tels que

$$a^2 + b^2 + c^2 + d^2 = 4.$$

Montrer qu'il existe deux réels parmi $a$, $b$, $c$, $d$ dont la somme vaut au plus $2$.

## Hints

1. L'énoncé ne change pas si l'on renomme les quatre nombres. On peut donc supposer $a \leqslant b \leqslant c \leqslant d$. Quelle paire a le plus de chances d'avoir une petite somme ?
2. Raisonne par l'absurde : suppose que $a + b > 2$ et cherche à contredire $a^2+b^2+c^2+d^2 = 4$.
3. Si $a + b > 2$ et $a \leqslant b$, que peux-tu dire de $b$ ? et donc de $c$ et de $d$, qui sont encore plus grands ?
4. Il reste à minorer $a^2 + b^2$ en connaissant seulement $a+b$. Développe $(a-b)^2 \geqslant 0$ et compare $a^2+b^2$ à $(a+b)^2$.

## Solution

**L'idée : ranger les quatre nombres et montrer que les deux plus petits conviennent.**

Les quatre nombres jouent le même rôle dans l'énoncé, donc on peut les renommer de façon que

$$a \leqslant b \leqslant c \leqslant d.$$

Montrons que la paire $(a, b)$ convient, c'est-à-dire que $a + b \leqslant 2$.

**Raisonnons par l'absurde** et supposons au contraire

$$a + b > 2.$$

**Première conséquence : $c$ et $d$ sont grands.** Comme $a \leqslant b$, on a $2b \geqslant a + b > 2$, donc $b > 1$. Et comme $b \leqslant c \leqslant d$, il vient $c > 1$ et $d > 1$, donc

$$c^2 + d^2 > 1 + 1 = 2.$$

**Deuxième conséquence : $a^2 + b^2$ est grand aussi.** Pour tous réels $a$ et $b$,

$$(a-b)^2 \geqslant 0 \quad \Longleftrightarrow \quad a^2 - 2ab + b^2 \geqslant 0 \quad \Longleftrightarrow \quad 2(a^2+b^2) \geqslant a^2 + 2ab + b^2 = (a+b)^2,$$

c'est-à-dire

$$a^2 + b^2 \geqslant \frac{(a+b)^2}{2}.$$

Comme $a+b > 2$ et que ces nombres sont positifs, $(a+b)^2 > 4$, donc

$$a^2 + b^2 > \frac{4}{2} = 2.$$

**La contradiction.** En additionnant les deux minorations,

$$a^2 + b^2 + c^2 + d^2 > 2 + 2 = 4,$$

ce qui contredit l'hypothèse $a^2+b^2+c^2+d^2 = 4$.

Notre supposition était donc fausse : on a bien $a + b \leqslant 2$.

**Conclusion : parmi $a$, $b$, $c$, $d$, les deux plus petits ont une somme inférieure ou égale à $2$.**

*Le cas limite.* Pour $a = b = c = d = 1$, on a bien $a^2+b^2+c^2+d^2 = 4$ et toutes les sommes deux à deux valent exactement $2$ : on ne peut donc pas remplacer $2$ par un nombre plus petit dans l'énoncé.

## Going further

Le seul outil vraiment utilisé est l'inégalité $a^2 + b^2 \geqslant \dfrac{(a+b)^2}{2}$, qui vaut la peine d'être retenue : elle dit qu'à somme fixée, la somme des carrés est la plus petite possible quand les deux nombres sont égaux. C'est la version à deux termes de l'inégalité de Cauchy-Schwarz.
