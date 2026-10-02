---
id: "1615"
title: "La plus petite valeur de (81 + 16x⁴)/x²"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [minimum, changement-de-variable, identites-remarquables, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1A, Mean Inequalities"
  reference: "Handout-2330-2069.pdf, problème 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2330-2069.pdf"
---

## Statement

Quelle est la plus petite valeur prise par
$$\frac{81 + 16x^4}{x^2}$$
quand $x$ décrit l'ensemble des réels non nuls ? Pour quelles valeurs de $x$ est-elle
atteinte ?

## Hints

1. Coupe la fraction en deux : $\dfrac{81 + 16x^4}{x^2} = \dfrac{81}{x^2} + 16x^2$. L'expression ne dépend plus que de $x^2$.
2. Pose $u = x^2$. Attention : quelles valeurs $u$ peut-il prendre ?
3. Essaie quelques valeurs de $u$ à la calculatrice pour deviner le minimum. Tu devrais tomber sur un nombre rond.
4. Pour démontrer que ce nombre $M$ est bien le minimum, montre que $\dfrac{81}{u} + 16u - M \ge 0$ pour tout $u > 0$. Réduis au même dénominateur : le numérateur est un carré.

## Solution

**L'idée : l'expression ne dépend que de $x^2$. Une fois posé $u = x^2$, la différence avec le
minimum se factorise en un carré.**

**Étape 1. Simplifier.**

Pour tout $x \ne 0$,
$$\frac{81 + 16x^4}{x^2} = \frac{81}{x^2} + \frac{16x^4}{x^2} = \frac{81}{x^2} + 16x^2 .$$

Posons $u = x^2$. Comme $x \ne 0$, on a $u > 0$, et réciproquement tout $u > 0$ s'écrit
$u = x^2$ avec $x = \pm\sqrt{u}$. Il s'agit donc de trouver le minimum de
$$g(u) = \frac{81}{u} + 16u \qquad\text{pour } u > 0 .$$

**Étape 2. Deviner la réponse.**

$g(1) = 97$, $g(2) = \text{40,5} + 32 = \text{72,5}$, $g(\text{2,5}) = \text{32,4} + 40 = \text{72,4}$,
$g(\text{2,25}) = 36 + 36 = 72$. La valeur $72$ semble être le minimum, atteinte en
$u = \frac94$.

**Étape 3. Le démontrer.**

Pour tout $u > 0$ :
$$g(u) - 72 = \frac{81}{u} + 16u - 72 = \frac{81 + 16u^2 - 72u}{u} = \frac{16u^2 - 72u + 81}{u} .$$

Or le numérateur est un carré parfait :
$$16u^2 - 72u + 81 = (4u)^2 - 2 \times (4u) \times 9 + 9^2 = (4u - 9)^2 .$$

Donc, pour tout $u > 0$,
$$g(u) - 72 = \frac{(4u-9)^2}{u} \;\ge\; 0 ,$$
puisque le numérateur est un carré et le dénominateur strictement positif.

L'égalité a lieu si et seulement si $4u - 9 = 0$, c'est-à-dire $u = \dfrac94$.

**Étape 4. Revenir à $x$.**

$u = x^2 = \dfrac94$ donne $x = \dfrac32$ ou $x = -\dfrac32$.

**Conclusion : la plus petite valeur est $72$, atteinte pour $x = \dfrac32$ et pour
$x = -\dfrac32$.**

**Vérification.** Pour $x = \frac32$ : $x^4 = \frac{81}{16}$, donc
$16x^4 = 81$ et $\dfrac{81 + 81}{9/4} = \dfrac{162 \times 4}{9} = 72$. ✔

## Going further

On peut retrouver le résultat avec la dérivée : $g'(u) = -\dfrac{81}{u^2} + 16$ s'annule pour
$u^2 = \dfrac{81}{16}$, donc $u = \dfrac94$ (la valeur négative est exclue), et $g'$ change de
signe du moins au plus en ce point.

On peut aussi invoquer l'inégalité entre moyennes arithmétique et géométrique : pour
$a, b > 0$, $a + b \ge 2\sqrt{ab}$. Avec $a = \frac{81}{u}$ et $b = 16u$, le produit $ab = 1296$
ne dépend pas de $u$, donc $g(u) \ge 2\sqrt{1296} = 2 \times 36 = 72$, avec égalité lorsque
$a = b$. C'est le même calcul, écrit autrement : l'inégalité $a + b \ge 2\sqrt{ab}$ n'est rien
d'autre que $(\sqrt a - \sqrt b)^2 \ge 0$.
