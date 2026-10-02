---
id: "3010"
title: "Le minimum de (x² + 2x + 5)/(x + 1)"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [minimum, forme-canonique, changement-de-variable, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Inequalities I: AM-GM"
  reference: "Handout-3199-2749.pdf, exercice 10"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3199-2749.pdf"
---

## Statement

Soit $x$ un réel strictement positif. Quelle est la plus petite valeur que peut prendre

$$\frac{x^2 + 2x + 5}{x + 1} \; ?$$

Pour quel $x$ ce minimum est-il atteint ?

## Hints

1. Le numérateur ressemble beaucoup à $(x+1)^2$. Écris-le sous forme canonique.
2. Pose $t = x + 1$. Comme $x > 0$, on a $t > 1$. Que devient la fraction ?
3. Tu obtiens $t + \dfrac{4}{t}$. Essaie quelques valeurs de $t$ pour deviner le minimum.
4. Pour prouver que $t + \dfrac{4}{t} \geq 4$, mets tout sur le même dénominateur et regarde si le numérateur est un carré.

## Solution

**Un changement de variable.**

La forme canonique du numérateur est

$$x^2 + 2x + 5 = (x+1)^2 + 4.$$

Posons $t = x + 1$. Comme $x > 0$, on a $t > 1$, et en particulier $t \neq 0$. L'expression
devient

$$f = \frac{t^2 + 4}{t} = t + \frac{4}{t}.$$

**Minorer.**

Pour $t > 0$,

$$t + \frac{4}{t} - 4 = \frac{t^2 - 4t + 4}{t} = \frac{(t-2)^2}{t} \geq 0,$$

car $(t-2)^2 \geq 0$ et $t > 0$. Donc

$$t + \frac{4}{t} \geq 4.$$

**Le cas d'égalité.**

L'inégalité est une égalité exactement quand $(t-2)^2 = 0$, c'est-à-dire $t = 2$. Cette
valeur est bien autorisée, puisque $t = 2 > 1$ ; elle correspond à $x = t - 1 = 1$.

Vérification :

$$\frac{1 + 2 + 5}{1 + 1} = \frac{8}{2} = 4.$$

**Conclusion.**

Le minimum vaut $4$, atteint pour $x = 1$.

## Going further

L'inégalité $t + \dfrac{4}{t} \geq 4$ est un cas particulier de l'inégalité entre moyenne
arithmétique et moyenne géométrique : pour $a, b > 0$,

$$\frac{a + b}{2} \geq \sqrt{ab},$$

appliquée à $a = t$ et $b = \dfrac{4}{t}$, dont le produit vaut $4$ quel que soit $t$. On
retrouve $t + \dfrac{4}{t} \geq 2\sqrt{4} = 4$, avec égalité quand $t = \dfrac{4}{t}$.
