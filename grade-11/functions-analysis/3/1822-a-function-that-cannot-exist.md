---
id: "1822"
title: "Une fonction qui ne peut pas exister"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [fonctions, parite, demonstration-par-labsurde, contre-exemple]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Functions and Quadratic Equations"
  reference: "Handout-1599-1504.pdf, devoirs, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1599-1504.pdf"
---

## Statement

Existe-t-il une fonction $f$, définie sur $\mathbb{R}$ et à valeurs réelles, telle que

$$f(x^2) = 4x^2 + 4x + 1 \qquad \text{pour tout réel } x\,?$$

Justifier la réponse.

## Hints

1. Ne te lance pas tout de suite dans un changement de variable. Demande-toi d'abord si la relation est seulement **possible**.
2. Pour un même nombre $t \ge 0$, combien y a-t-il de réels $x$ tels que $x^2 = t$ ?
3. Applique la relation deux fois de suite, avec $x = 1$ puis avec $x = -1$. Dans les deux cas, le membre de gauche est $f(1)$. Et le membre de droite ?
4. Plus généralement : la fonction $x \mapsto f(x^2)$ est forcément paire, puisque $(-x)^2 = x^2$. Le membre de droite l'est-il ?

## Solution

**La réponse est non : aucune fonction ne convient.**

**Le contre-exemple en deux lignes.**

Supposons qu'une telle fonction $f$ existe. Appliquons la relation en $x = 1$ :

$$f(1^2) = 4 \times 1^2 + 4 \times 1 + 1 = 9, \qquad \text{donc} \qquad f(1) = 9.$$

Appliquons-la maintenant en $x = -1$. Comme $(-1)^2 = 1$, le membre de gauche est encore $f(1)$ :

$$f\big((-1)^2\big) = 4 \times (-1)^2 + 4 \times (-1) + 1 = 4 - 4 + 1 = 1, \qquad \text{donc} \qquad f(1) = 1.$$

On obtient $f(1) = 9$ et $f(1) = 1$, ce qui est impossible.

Il n'existe donc **aucune** fonction $f$ vérifiant $f(x^2) = 4x^2+4x+1$ pour tout réel $x$.

**L'explication de fond : une question de parité.**

Quelle que soit la fonction $f$, la fonction

$$g : x \longmapsto f(x^2)$$

est **paire**, puisque $g(-x) = f\big((-x)^2\big) = f(x^2) = g(x)$.

Or le membre de droite, $4x^2+4x+1 = (2x+1)^2$, n'est pas une fonction paire : en $x = 1$ elle vaut $9$ et en $x = -1$ elle vaut $1$.

Une fonction paire ne peut pas être égale à une fonction qui ne l'est pas. D'où l'impossibilité.

**Ce qui aurait marché.** Si le membre de droite avait été $4x^2 + 1$, qui est pair, on aurait pu poser $t = x^2$ et obtenir $f(t) = 4t+1$ pour tout $t \ge 0$. Attention d'ailleurs : $f$ n'aurait alors été imposée que sur $[0\,;+\infty[$, car $x^2$ ne prend jamais de valeur négative. Sur les réels négatifs, $f$ pourrait valoir n'importe quoi, et il y aurait donc une infinité de solutions.

## Going further

1. Détermine toutes les fonctions $f$ définies sur $\mathbb{R}$ telles que $f(x^2) = x^4 + 3x^2 + 2$ pour tout réel $x$. Combien y en a-t-il ?
2. À quelle condition sur le polynôme $P$ existe-t-il une fonction $f$ telle que $f(x^2) = P(x)$ pour tout réel $x$ ?
