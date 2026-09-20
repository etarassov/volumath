---
id: "5205"
title: "Sept jetons, un nombre à trois chiffres"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chiffres, cas-a-distinguer, repetitions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problème 4"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

On dispose de sept jetons, portant respectivement les chiffres

$$2, \quad 3, \quad 5, \quad 5, \quad 5, \quad 6, \quad 6 .$$

On en choisit trois et on les aligne de gauche à droite pour former un nombre à trois chiffres.

**Combien de nombres différents peut-on obtenir ?**

## Hints

1. Attention, on ne demande pas combien de façons il y a de prendre trois jetons : deux jetons portant tous les deux le chiffre $5$ donnent le même nombre. On compte les **nombres** obtenus.
2. Il n'y a que quatre chiffres disponibles, $2$, $3$, $5$ et $6$, mais on ne peut pas les répéter autant qu'on veut : le $2$ et le $3$ ne sont disponibles qu'une fois, le $6$ deux fois, le $5$ trois fois.
3. Distinguez trois cas : les trois chiffres du nombre sont tous différents, exactement deux sont égaux, ou les trois sont égaux.
4. Dans le cas « exactement deux égaux », quel chiffre peut être répété ? Et une fois le chiffre répété et le chiffre isolé choisis, de combien de façons peut-on les ranger ?

## Solution

Les chiffres disponibles sont $2$ (une fois), $3$ (une fois), $5$ (trois fois) et $6$ (deux fois). Un nombre est réalisable si chaque chiffre y apparaît au plus autant de fois qu'il y a de jetons portant ce chiffre.

Comme aucun chiffre n'est $0$, tout alignement de trois chiffres donne bien un nombre à trois chiffres.

**Cas 1 : les trois chiffres sont différents.**

Il faut choisir $3$ chiffres différents parmi $\{2, 3, 5, 6\}$ : il y a $4$ choix, car cela revient à choisir celui qu'on laisse de côté. Chaque choix se range de $3! = 6$ façons.

$$4 \times 6 = 24 \text{ nombres.}$$

**Cas 2 : exactement deux chiffres sont égaux.**

Le chiffre répété doit être disponible au moins deux fois : c'est $5$ ou $6$, soit $2$ choix. Le troisième chiffre est différent du premier : il reste $3$ choix parmi les quatre chiffres. Enfin, il y a $3$ places possibles pour le chiffre isolé (au début, au milieu, à la fin), ce qui fixe le rangement.

$$2 \times 3 \times 3 = 18 \text{ nombres.}$$

**Cas 3 : les trois chiffres sont égaux.**

Il faut un chiffre disponible trois fois : seul $5$ convient, et le nombre est $555$.

$$1 \text{ nombre.}$$

**Total.** Les trois cas sont incompatibles et couvrent toutes les possibilités :

$$24 + 18 + 1 = \boxed{43} .$$

On peut obtenir $43$ nombres différents.

## Going further

La difficulté vient uniquement des répétitions. Si les sept jetons portaient sept chiffres tous différents, la réponse serait simplement $7 \times 6 \times 5 = 210$. Si au contraire on disposait de chaque chiffre en quantité illimitée, elle serait $4^3 = 64$. Les jetons donnés imposent un régime intermédiaire, d'où le découpage en cas.
