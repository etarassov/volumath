---
id: "5106"
title: "Les chiffres de 2²⁰⁰⁸ suivis de ceux de 5²⁰⁰⁸"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [puissances, nombre-de-chiffres, encadrement, puissances-de-dix]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 30"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On écrit de gauche à droite tous les chiffres de $2^{2008}$, puis, à la suite et sans rien séparer, tous les chiffres de $5^{2008}$.

Combien de chiffres a-t-on écrits en tout ?

*Par exemple, si l'exposant était $4$, on écrirait les chiffres de $2^4 = 16$ puis ceux de $5^4 = 625$, ce qui donnerait $16\,625$, soit $5$ chiffres.*

## Hints

1. Appelle $a$ le nombre de chiffres de $2^{2008}$ et $b$ celui de $5^{2008}$. La réponse cherchée est $a + b$, et il n'est pas question de calculer les deux nombres.
2. Un entier $N$ a exactement $a$ chiffres si et seulement si $10^{a-1} \leqslant N < 10^{a}$. Écris cet encadrement pour $2^{2008}$, puis pour $5^{2008}$.
3. Multiplie les deux encadrements membre à membre. Que vaut $2^{2008} \times 5^{2008}$ ?
4. Tu obtiens $a + b = 2009$ ou $a + b = 2010$. Pour éliminer le second cas, demande-toi si l'inégalité de gauche peut être une égalité : $2^{2008}$ peut-il être une puissance de $10$ ?

## Solution

**Étape 1. Poser le problème.**

Notons $a$ le nombre de chiffres de $2^{2008}$ et $b$ celui de $5^{2008}$. On cherche $a + b$.

Le point de départ est la caractérisation du nombre de chiffres : un entier $N \geqslant 1$ s'écrit avec exactement $a$ chiffres si et seulement si

$$10^{a-1} \leqslant N < 10^{a}$$

**Étape 2. Les deux encadrements.**

$$10^{a-1} \leqslant 2^{2008} < 10^{a} \qquad \text{et} \qquad 10^{b-1} \leqslant 5^{2008} < 10^{b}$$

Tous les nombres en jeu sont strictement positifs, on peut donc multiplier les deux encadrements membre à membre. Comme

$$2^{2008} \times 5^{2008} = (2 \times 5)^{2008} = 10^{2008}$$

on obtient

$$10^{a+b-2} \leqslant 10^{2008} < 10^{a+b}$$

**Étape 3. Ce que cela donne.**

L'inégalité de droite donne $2008 < a + b$, donc $a + b \geqslant 2009$.

L'inégalité de gauche donne $a + b - 2 \leqslant 2008$, donc $a + b \leqslant 2010$.

Il reste deux possibilités : $2009$ ou $2010$.

**Étape 4. On élimine 2010.**

Le cas $a + b = 2010$ correspond à l'égalité $10^{a+b-2} = 10^{2008}$ dans l'inégalité de gauche. Cette inégalité vient du produit de $10^{a-1} \leqslant 2^{2008}$ et de $10^{b-1} \leqslant 5^{2008}$ ; pour qu'elle soit une égalité, il faudrait que ces deux-là soient des égalités, en particulier

$$2^{2008} = 10^{a-1}$$

Or $10^{a-1} = 2^{a-1} \times 5^{a-1}$. Comme $a - 1 \geqslant 1$ (le nombre $2^{2008}$ a évidemment plus d'un chiffre), cette puissance de $10$ est un multiple de $5$, alors que $2^{2008}$ ne l'est pas : le seul diviseur premier de $2^{2008}$ est $2$.

C'est impossible. L'inégalité de gauche est donc stricte : $10^{a+b-2} < 10^{2008}$, ce qui donne $a + b - 2 < 2008$, soit $a + b < 2010$.

**Conclusion. On a écrit $a + b = 2009$ chiffres.**

*Vérification sur le petit exemple de l'énoncé :* pour l'exposant $4$, on trouve $16$ et $625$, soit $2 + 3 = 5 = 4 + 1$ chiffres. Cela colle.

## Going further

Le raisonnement n'utilise nulle part la valeur $2008$. Il montre en fait que, pour tout entier $n \geqslant 1$, le nombre de chiffres de $2^{n}$ plus le nombre de chiffres de $5^{n}$ vaut toujours

$$n + 1$$

Il y a une façon imagée de le voir. Écrire $2^n$ puis $5^n$ côte à côte, c'est presque écrire leur produit $10^n$, qui a $n+1$ chiffres : un $1$ suivi de $n$ zéros. La « presque » cache exactement le décalage d'une unité que l'étape 4 rend rigoureux.

Pour ceux qui connaissent le logarithme décimal : le nombre de chiffres de $N$ vaut $\lfloor \log N \rfloor + 1$, et l'égalité ci-dessus revient à dire que $\log(2^n)$ et $\log(5^n)$ ont des parties fractionnaires qui s'ajoutent exactement à $1$, puisque leur somme vaut l'entier $n$.
