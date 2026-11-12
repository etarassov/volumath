---
id: "22009"
title: "(1 + a/b)ⁿ + (1 + b/a)ⁿ ≥ 2ⁿ⁺¹"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, puissances, identites-remarquables, cas-d-egalite]
adapted_from: null
see_also: ["8136"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Inégalités » (Gaspard D.), exercice 9 (le corrigé utilise l'inégalité arithmético-géométrique avec des racines carrées ; la solution ci-dessous l'évite et n'utilise que des carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs et $n \geq 1$ un entier. Montrer que

$$\left(1 + \frac{a}{b}\right)^n + \left(1 + \frac{b}{a}\right)^n \geq 2^{n+1}.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Posez $t = \frac{a}{b}$. Alors $\frac{b}{a} = \frac{1}{t}$.
2. Montrez que $t + \frac{1}{t} \geq 2$ pour tout $t > 0$, puis calculez le produit $(1 + t)\left(1 + \frac{1}{t}\right)$.
3. Pour deux nombres $X$ et $Y$, comparez $(X + Y)^2$ et $4XY$.

## Solution

Posons $t = \frac{a}{b}$, qui est strictement positif. Alors $\frac{b}{a} = \frac{1}{t}$. Notons
$$X = (1 + t)^n \qquad \text{et} \qquad Y = \left(1 + \frac{1}{t}\right)^n.$$
Ce sont deux nombres strictement positifs, et on veut montrer que $X + Y \geq 2^{n+1}$.

**Étape 1 : $t + \frac{1}{t} \geq 2$.** On a $(t - 1)^2 \geq 0$, c'est-à-dire $t^2 + 1 \geq 2t$. En divisant par $t > 0$ : $t + \frac{1}{t} \geq 2$, avec égalité seulement si $t = 1$.

**Étape 2 : le produit $XY$.** On a
$$(1 + t)\left(1 + \frac{1}{t}\right) = 1 + \frac{1}{t} + t + 1 = 2 + t + \frac{1}{t} \geq 4.$$
Si deux nombres positifs vérifient $u \geq v \geq 0$, alors $u^n \geq v^n$ : il suffit de multiplier membre à membre $n$ fois l'inégalité $u \geq v$, ce qui est permis car tout est positif. Donc
$$XY = \left((1 + t)\left(1 + \frac{1}{t}\right)\right)^n \geq 4^n.$$

**Étape 3 : de $XY$ à $X + Y$.** D'après les identités remarquables,
$$(X + Y)^2 = (X - Y)^2 + 4XY \geq 4XY \geq 4 \times 4^n = 4^{n+1} = \left(2^{n+1}\right)^2.$$
Les nombres $X + Y$ et $2^{n+1}$ sont positifs, et le carré du premier est au moins le carré du second. Donc $X + Y \geq 2^{n+1}$ (si l'on avait $X + Y < 2^{n+1}$, on aurait aussi $(X + Y)^2 < \left(2^{n+1}\right)^2$).

**Cas d'égalité.** Pour avoir $X + Y = 2^{n+1}$, il faut l'égalité dans $t + \frac{1}{t} \geq 2$, donc $t = 1$, c'est-à-dire $a = b$. Réciproquement, si $a = b$, alors $X = Y = 2^n$ et $X + Y = 2^{n+1}$.

**Conclusion.** Pour tous $a, b > 0$ et tout entier $n \geq 1$, on a $\left(1 + \frac{a}{b}\right)^n + \left(1 + \frac{b}{a}\right)^n \geq 2^{n+1}$, avec égalité seulement pour $a = b$.

## Going further

1. Pour $n = 2$, retrouvez le résultat en développant les deux carrés.
2. Que se passe-t-il pour $n = 0$ ?
