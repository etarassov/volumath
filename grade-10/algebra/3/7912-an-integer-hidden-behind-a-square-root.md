---
id: "7912"
title: "Un entier caché derrière une racine carrée"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [racine carree, irrationnel, identite remarquable, fraction irreductible]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 2 (énoncé p. 21, solution p. 23)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers naturels non nuls tels que la fraction $\dfrac{a}{b}$ soit irréductible. On suppose que

$$c = \frac{\left(1 + \sqrt{2}\right)^3}{\dfrac{a}{b} + \sqrt{2}}$$

est un entier naturel.

Déterminer $a$, $b$ et $c$.

*On admettra que $\sqrt{2}$ est irrationnel, c'est-à-dire qu'il ne s'écrit pas comme quotient de deux entiers.*

## Hints

1. Développe $\left(1+\sqrt{2}\right)^3$ à l'aide de l'identité $(1+x)^3 = 1 + 3x + 3x^2 + x^3$, puis simplifie avec $\left(\sqrt{2}\right)^2 = 2$.
2. Multiplie le numérateur et le dénominateur par $b$ pour faire disparaître la fraction étagée.
3. Écris l'égalité sans dénominateur : tu obtiens deux expressions de la forme $x + y\sqrt{2}$ avec $x$ et $y$ entiers.
4. Si $x + y\sqrt{2} = x' + y'\sqrt{2}$ avec $x, y, x', y'$ entiers, que peut-on dire ? Suppose $y \ne y'$ et exprime $\sqrt{2}$ comme un quotient d'entiers.

## Solution

**La réponse : $a = 7$, $b = 5$ et $c = 5$.**

**Étape 1 : on développe le numérateur.**

$$\left(1+\sqrt{2}\right)^3 = 1 + 3\sqrt{2} + 3 \times \left(\sqrt{2}\right)^2 + \left(\sqrt{2}\right)^3 = 1 + 3\sqrt{2} + 6 + 2\sqrt{2} = 7 + 5\sqrt{2} .$$

**Étape 2 : on nettoie le dénominateur.**

En multipliant en haut et en bas par $b$ :

$$c = \frac{b\left(7 + 5\sqrt{2}\right)}{a + b\sqrt{2}} , \qquad \text{donc} \qquad c\left(a + b\sqrt{2}\right) = 7b + 5b\sqrt{2} ,$$

c'est-à-dire

$$ca + cb\sqrt{2} = 7b + 5b\sqrt{2} .$$

**Étape 3 : on identifie les deux côtés.**

Montrons d'abord le petit lemme suivant.

> Si $x$, $y$, $x'$, $y'$ sont des entiers et si $x + y\sqrt{2} = x' + y'\sqrt{2}$, alors $x = x'$ et $y = y'$.

En effet, l'égalité se réécrit $(y - y')\sqrt{2} = x' - x$. Si on avait $y \ne y'$, on pourrait diviser et obtenir
$$\sqrt{2} = \frac{x' - x}{y - y'} ,$$
un quotient de deux entiers : cela contredirait l'irrationalité de $\sqrt{2}$. Donc $y = y'$, et l'égalité de départ donne alors $x = x'$.

En appliquant ce lemme à $ca + cb\sqrt{2} = 7b + 5b\sqrt{2}$, on obtient

$$ca = 7b \qquad \text{et} \qquad cb = 5b .$$

**Étape 4 : on conclut.**

Comme $b \ne 0$, la seconde égalité donne directement

$$c = 5 .$$

La première devient $5a = 7b$, soit

$$\frac{a}{b} = \frac{7}{5} .$$

Cette écriture est déjà irréductible ($7$ et $5$ sont premiers entre eux), et l'énoncé dit que $\frac{a}{b}$ est irréductible : l'écriture irréductible d'un quotient est unique, donc

$$a = 7 \qquad \text{et} \qquad b = 5 .$$

*Vérification :* $\dfrac{7 + 5\sqrt{2}}{\frac{7}{5} + \sqrt{2}} = \dfrac{5\left(7 + 5\sqrt{2}\right)}{7 + 5\sqrt{2}} = 5$. ✓

**Conclusion.** $a = 7$, $b = 5$, $c = 5$. (À la Coupe Animath, on demandait $a + b + c = \boxed{17}$.)
