---
id: "10420"
title: "Un irrationnel x avec x² + x et x³ + 2x² entiers"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [irrationnels, equation-du-second-degre, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Déterminer tous les nombres irrationnels $x$ pour lesquels les deux nombres $x^2 + x$ et $x^3 + 2x^2$ sont des entiers.

## Hints

1. Pose $x^2 + x = a$ et $x^3 + 2x^2 = b$, avec $a$ et $b$ entiers. Calcule $b - a x$ en fonction de $x$.
2. Tu dois trouver $b - ax = x^2 = a - x$. Déduis-en une égalité de la forme $x \times (\text{un entier}) = \text{un entier}$.
3. Si cet entier par lequel on multiplie $x$ n'est pas nul, que peut-on dire de $x$ ?

## Solution

**Analyse.** Soit $x$ un irrationnel tel que $a = x^2 + x$ et $b = x^3 + 2x^2$ soient des entiers. Alors

$$b - a x = x^3 + 2x^2 - x^3 - x^2 = x^2 = a - x .$$

De $b - ax = a - x$, on tire $b - a = ax - x$, c'est-à-dire

$$x(a - 1) = b - a .$$

Si $a \neq 1$, on aurait $x = \dfrac{b - a}{a - 1}$, quotient de deux entiers, donc $x$ serait rationnel. C'est impossible. Donc $a = 1$, puis $b - a = 0$, donc $b = 1$.

En particulier $x^2 + x = 1$, c'est-à-dire $x^2 + x - 1 = 0$. Le discriminant de cette équation est $1 + 4 = 5$, donc

$$x = \frac{-1 - \sqrt{5}}{2} \qquad \text{ou} \qquad x = \frac{-1 + \sqrt{5}}{2} .$$

**Synthèse.** Soit $x$ l'un de ces deux nombres. Il vérifie $x^2 + x = 1$, qui est un entier. De plus $x^2 = 1 - x$, donc $x^3 = x \cdot x^2 = x - x^2$, et

$$x^3 + 2x^2 = x - x^2 + 2x^2 = x + x^2 = 1 ,$$

qui est aussi un entier. Il reste à vérifier que $x$ est irrationnel.

*$\sqrt{5}$ est irrationnel.* Supposons $\sqrt{5} = \frac{p}{q}$ avec $p$ et $q$ entiers strictement positifs, la fraction étant irréductible. Alors $p^2 = 5q^2$, donc $5$ divise $p^2$. Or si $p$ n'était pas un multiple de $5$, son reste dans la division par $5$ serait $1$, $2$, $3$ ou $4$, et celui de $p^2$ serait celui de $1$, $4$, $9$ ou $16$, c'est-à-dire $1$, $4$, $4$ ou $1$, jamais $0$. Donc $p = 5p'$ avec $p'$ entier. Alors $25p'^2 = 5q^2$, donc $q^2 = 5p'^2$, et de même $q$ est un multiple de $5$. La fraction $\frac{p}{q}$ se simplifie par $5$, ce qui contredit son irréductibilité.

*$x$ est irrationnel.* Si $x = \frac{-1 \pm \sqrt{5}}{2}$ était rationnel, alors $\sqrt{5} = \pm(2x + 1)$ le serait aussi. Ce n'est pas le cas.

**Conclusion.** Les nombres cherchés sont exactement

$$\frac{-1 - \sqrt{5}}{2} \qquad \text{et} \qquad \frac{-1 + \sqrt{5}}{2} ,$$

et pour chacun d'eux, $x^2 + x = x^3 + 2x^2 = 1$.

## Going further

1. Déterminer tous les irrationnels $x$ tels que $x^2 + 2x$ et $x^3 + 3x^2$ soient des entiers.
2. Même question avec $x^2 + x$ et $x^3 + x$. Montrer cette fois qu'aucun irrationnel ne convient.
