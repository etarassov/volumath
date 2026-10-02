---
id: "12629"
title: "Deux équations avec des racines carrées"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, racine-carree, expression-conjuguee, identites-remarquables, equation-bicarree]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 mai 2021"
  reference: "2021-12_Sujet-test-5-2021.pdf, exercice 4 (junior) ; corrigé 2021-05_Corrige-Web-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-test-5-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Sujet-test-5-2021.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ de nombres réels tels que
$$\left(x - \sqrt{x^2 + 1}\right)\left(y - \sqrt{y^2 + 1}\right) = 1 \qquad \text{et} \qquad (x^2 + y + 2)(y^2 + x + 2) = 8.$$

## Hints

1. Calcule le produit $\left(x - \sqrt{x^2 + 1}\right)\left(x + \sqrt{x^2 + 1}\right)$.
2. Pose $u = x + \sqrt{x^2 + 1}$ et $v = y + \sqrt{y^2 + 1}$. Écris la première équation à l'aide de $u$ et de $v$.
3. La première équation donne $uv = 1$. Écris alors $\sqrt{x^2 + 1} - x$ et $\sqrt{y^2 + 1} - y$ à l'aide de $u$ et de $v$, puis compare. Tu dois trouver une relation très simple entre $x$ et $y$.
4. Avec cette relation, la seconde équation ne contient plus que $x$. Reconnais une identité remarquable.

## Solution

**Le produit avec l'expression conjuguée.** Pour tout réel $t$, l'identité $(a - b)(a + b) = a^2 - b^2$ donne
$$\left(t - \sqrt{t^2 + 1}\right)\left(t + \sqrt{t^2 + 1}\right) = t^2 - (t^2 + 1) = -1.$$
De plus, $\sqrt{t^2 + 1} > \sqrt{t^2} = |t| \geqslant -t$, donc $t + \sqrt{t^2 + 1} > 0$.

Soit $(x, y)$ une solution. On pose
$$u = x + \sqrt{x^2 + 1} > 0 \qquad \text{et} \qquad v = y + \sqrt{y^2 + 1} > 0.$$
D'après le calcul précédent,
$$x - \sqrt{x^2 + 1} = -\frac{1}{u} \qquad \text{et} \qquad y - \sqrt{y^2 + 1} = -\frac{1}{v}.$$

**La première équation donne $y = -x$.** Elle s'écrit $\frac{1}{u} \times \frac{1}{v} = 1$, c'est-à-dire $uv = 1$. Donc $\frac{1}{u} = v$ et $\frac{1}{v} = u$, ce qui s'écrit
$$\sqrt{x^2 + 1} - x = y + \sqrt{y^2 + 1} \qquad \text{et} \qquad \sqrt{y^2 + 1} - y = x + \sqrt{x^2 + 1}.$$
On additionne ces deux égalités. Les deux racines carrées apparaissent de chaque côté et se simplifient. Il reste
$$-x - y = x + y,$$
donc $2(x + y) = 0$, c'est-à-dire
$$y = -x.$$

**La seconde équation.** Avec $y = -x$, elle devient
$$(x^2 - x + 2)(x^2 + x + 2) = 8.$$
Le membre de gauche est de la forme $(A - x)(A + x) = A^2 - x^2$ avec $A = x^2 + 2$. L'équation s'écrit donc
$$(x^2 + 2)^2 - x^2 = 8, \qquad \text{soit} \qquad x^4 + 3x^2 - 4 = 0.$$
On pose $z = x^2$, qui est positif ou nul. Alors $z^2 + 3z - 4 = (z - 1)(z + 4) = 0$. Comme $z + 4 > 0$, il reste $z = 1$, donc $x = 1$ ou $x = -1$, et $y = -x$.

**Vérification.** Pour $(x, y) = (1, -1)$ :
$$\left(1 - \sqrt{2}\right)\left(-1 - \sqrt{2}\right) = -\left(1 - \sqrt{2}\right)\left(1 + \sqrt{2}\right) = -(1 - 2) = 1,$$
et $(1 - 1 + 2)(1 + 1 + 2) = 2 \times 4 = 8$. Les deux équations ne changent pas quand on échange $x$ et $y$, donc $(-1, 1)$ convient aussi.

**Conclusion.** Les solutions sont $(x, y) = (1, -1)$ et $(x, y) = (-1, 1)$.

## Going further

- La première équation équivaut exactement à $y = -x$. On vient de voir qu'elle l'entraîne. Réciproquement, si $y = -x$, alors
$$\left(x - \sqrt{x^2 + 1}\right)\left(-x - \sqrt{x^2 + 1}\right) = -\left(x - \sqrt{x^2 + 1}\right)\left(x + \sqrt{x^2 + 1}\right) = 1.$$
- Multiplier une différence $a - b$ par la somme $a + b$, son « expression conjuguée », fait disparaître les racines carrées quand $a^2$ et $b^2$ sont simples. C'est l'idée clé de l'exercice, et elle sert souvent.
- Chercher des solutions particulières aide aussi. Beaucoup d'élèves ont essayé $x = y$, mais pas $y = -x$, qui donne pourtant la réponse.
