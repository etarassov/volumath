---
id: "17817"
title: "1 + x + x² + ⋯ + xⁿ"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [somme-geometrique, puissances, factorisation, telescopage, recurrence]
adapted_from: null
see_also: ["8321"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 6, p.49 ; solution p.51. L'énoncé imprimé oublie la condition x ≠ 1, que la solution ajoute."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $n$ un entier naturel et $x$ un nombre réel différent de $1$.

1. Montrer que
$$1 + x + x^2 + \cdots + x^n = \frac{x^{n+1} - 1}{x - 1} .$$
2. En déduire la valeur de $1 + 2 + 4 + 8 + \cdots + 1024$.
3. Que vaut la somme $1 + x + x^2 + \cdots + x^n$ quand $x = 1$ ?

## Hints

1. Appelez $S$ la somme. Calculez $x \times S$ : que reste-t-il quand on fait $x \times S - S$ ?
2. Presque tous les termes disparaissent. Il reste à diviser par $x - 1$, qui n'est pas nul.
3. Pour la question 2, $1024 = 2^{10}$.

## Solution

**1.** Notons $S = 1 + x + x^2 + \cdots + x^n$. Multiplions par $x$ : chaque terme est multiplié par $x$, donc chaque puissance monte d'un cran.

$$x S = x + x^2 + x^3 + \cdots + x^{n+1} .$$

Les sommes $S$ et $xS$ ont en commun tous les termes de $x$ à $x^n$. Dans la différence $xS - S$, ils disparaissent, et il reste seulement le dernier terme de $xS$ et le premier terme de $S$ :

$$x S - S = x^{n+1} - 1 , \qquad \text{c'est-à-dire} \qquad (x - 1)\, S = x^{n+1} - 1 .$$

Comme $x \neq 1$, on peut diviser par $x - 1$ :

$$S = \frac{x^{n+1} - 1}{x - 1} .$$

**2.** La somme est $1 + 2 + 2^2 + \cdots + 2^{10}$, c'est le cas $x = 2$ et $n = 10$ :

$$1 + 2 + 4 + \cdots + 1024 = \frac{2^{11} - 1}{2 - 1} = 2048 - 1 = 2047 .$$

**3.** Quand $x = 1$, tous les termes valent $1$, et il y en a $n + 1$ (de $x^0$ à $x^n$). La somme vaut $n + 1$. La formule de la question 1 n'a pas de sens dans ce cas, car on diviserait par $0$.

## Going further

On peut aussi démontrer la formule de proche en proche (par récurrence). Pour $n = 0$, la somme vaut $1$ et $\frac{x - 1}{x - 1} = 1$. Si la formule est vraie pour un entier $n$, alors

$$1 + x + \cdots + x^n + x^{n+1} = \frac{x^{n+1} - 1}{x - 1} + x^{n+1} = \frac{x^{n+1} - 1 + x^{n+2} - x^{n+1}}{x - 1} = \frac{x^{n+2} - 1}{x - 1} ,$$

ce qui est la formule pour $n + 1$. Elle est donc vraie pour $n = 1$, puis $n = 2$, et ainsi de suite.
