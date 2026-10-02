---
id: "2621"
title: "La parabole dont le sommet est le point (p ; p)"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [second-degre, forme-canonique, parabole, parametre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, AMC Preparation"
  reference: "Handout-632-751.pdf, 2006 AMC 12 B, problème 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-632-751.pdf"
---

## Statement

La parabole d'équation $y = ax^2 + bx + c$ a pour sommet le point $S(p\,;\,p)$ et coupe l'axe des ordonnées au point $(0\,;\,-p)$, où $p$ est un réel **non nul**.

Que vaut $b$ ?

## Hints

1. Le sommet est donné : utilise la forme canonique $y = a(x - \alpha)^2 + \beta$, où $(\alpha\,;\,\beta)$ sont les coordonnées du sommet.
2. Traduis « la courbe passe par $(0\,;\,-p)$ » en remplaçant $x$ par $0$ dans ton équation.
3. Tu obtiens une équation en $a$ et $p$. Simplifie par $p$, ce qui est permis puisque $p \neq 0$.
4. Il reste à développer la forme canonique pour retrouver le coefficient de $x$.

## Solution

**La forme canonique.**

Le sommet de la parabole est $S(p\,;\,p)$, donc son équation s'écrit sous forme canonique
$$y = a(x - p)^2 + p .$$

**Utiliser le point $(0\,;\,-p)$.**

La courbe passe par le point d'abscisse $0$ et d'ordonnée $-p$. En remplaçant $x$ par $0$ :
$$a(0 - p)^2 + p = -p, \qquad \text{c'est-à-dire} \qquad a p^2 = -2p .$$

Comme $p \neq 0$, on peut diviser les deux membres par $p$ :
$$a p = -2 .$$

*(On remarque au passage que $a \neq 0$, sinon on aurait $0 = -2$ : la courbe est bien une parabole.)*

**Retrouver $b$.**

Développons la forme canonique pour la comparer à $y = ax^2 + bx + c$ :
$$y = a(x-p)^2 + p = a\left(x^2 - 2px + p^2\right) + p = a x^2 \; \underbrace{-\,2ap}_{= \,b}\, x \; + \; \underbrace{ap^2 + p}_{= \,c} .$$

Le coefficient de $x$ est donc $b = -2ap$. Or on vient de trouver $ap = -2$, d'où
$$b = -2 \times (-2) = 4 .$$

$$\boxed{b = 4 .}$$

**Remarquable : $b$ ne dépend pas de $p$.** Toutes ces paraboles, quelle que soit la valeur de $p$, ont le même coefficient en $x$.

**Vérification sur un exemple.** Prenons $p = 1$. Alors $a = -2$, et la forme canonique donne
$$y = -2(x-1)^2 + 1 = -2x^2 + 4x - 1 .$$
Le sommet est bien $(1\,;\,1)$, l'ordonnée à l'origine vaut $-1 = -p$, et le coefficient de $x$ vaut bien $4$.

## Going further

Une autre route mène au même résultat sans forme canonique. L'abscisse du sommet d'une parabole $y = ax^2+bx+c$ vaut $-\dfrac{b}{2a}$, et l'ordonnée à l'origine vaut $c$. Les données se traduisent alors par $-\dfrac{b}{2a} = p$ et $c = -p$, ainsi que $ap^2 + bp + c = p$. En éliminant $a$ et $c$ entre ces trois relations, on retombe sur $b = 4$.
