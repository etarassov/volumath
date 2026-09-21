---
id: "8217"
title: "Une somme de deux puissances qui ne descend pas sous 2ⁿ⁺¹"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalites, moyenne arithmetico-geometrique, puissances]
adapted_from: null
see_also: ["8583"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 13"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $a$ et $b$ deux réels strictement positifs, et $n$ un entier naturel.

Montrer que

$$\left(1 + \frac{a}{b}\right)^{n} + \left(1 + \frac{b}{a}\right)^{n} \ \ge\ 2^{\,n+1} .$$

## Hints

1. Donne un nom aux deux quantités : pose $u = 1 + \dfrac{a}{b}$ et $v = 1 + \dfrac{b}{a}$. Les deux sont strictement positifs. L'inégalité devient $u^n + v^n \ge 2^{n+1}$.
2. Une somme de deux nombres positifs se minore par leur moyenne géométrique : pour tous $X, Y \ge 0$, on a $X + Y \ge 2\sqrt{XY}$. Sais-tu pourquoi ? (Développe $(\sqrt X - \sqrt Y)^2$.)
3. Applique cela à $X = u^n$ et $Y = v^n$. Le produit $XY$ vaut $(uv)^n$ : il te suffit donc de minorer le **produit** $uv$.
4. Développe $uv = \left(1 + \dfrac{a}{b}\right)\left(1 + \dfrac{b}{a}\right)$. Que trouves-tu ? Il doit y avoir une somme « un nombre $+$ son inverse » à l'intérieur.
5. Utilise $t + \dfrac1t \ge 2$ pour $t > 0$, qui vient de $(t-1)^2 \ge 0$.

## Solution

**Mise en place.**

Posons

$$u = 1 + \frac{a}{b}, \qquad v = 1 + \frac{b}{a} .$$

Comme $a > 0$ et $b > 0$, les quotients $\tfrac ab$ et $\tfrac ba$ sont strictement positifs, donc $u > 1$ et $v > 1$. L'inégalité à démontrer s'écrit

$$u^n + v^n \ge 2^{\,n+1} .$$

**Outil 1 : une somme se minore par la moyenne géométrique.**

Pour tous réels $X, Y \ge 0$,

$$X + Y \ \ge\ 2\sqrt{XY} .$$

*Preuve.* $\left(\sqrt X - \sqrt Y\right)^2 \ge 0$, c'est-à-dire $X - 2\sqrt{XY} + Y \ge 0$. $\square$

**Outil 2 : un nombre plus son inverse.**

Pour tout $t > 0$,

$$t + \frac1t \ge 2 .$$

*Preuve.* Multiplier par $t > 0$ donne $t^2 + 1 \ge 2t$, soit $(t-1)^2 \ge 0$. $\square$

**Étape 1 : minorer le produit $uv$.**

Développons :

$$uv = \left(1 + \frac{a}{b}\right)\left(1 + \frac{b}{a}\right) = 1 + \frac{b}{a} + \frac{a}{b} + \frac{a}{b}\cdot\frac{b}{a} = 2 + \frac{a}{b} + \frac{b}{a} .$$

D'après l'outil 2 appliqué à $t = \dfrac ab > 0$, on a $\dfrac ab + \dfrac ba \ge 2$, donc

$$uv \ge 2 + 2 = 4 .$$

**Étape 2 : conclure.**

Appliquons l'outil 1 à $X = u^n$ et $Y = v^n$, qui sont positifs :

$$u^n + v^n \ \ge\ 2\sqrt{u^n v^n} = 2\sqrt{(uv)^n} .$$

Comme $uv \ge 4$ et que la fonction $x \mapsto x^n$ est croissante sur les positifs, on a $(uv)^n \ge 4^n$, puis, la racine carrée étant croissante,

$$\sqrt{(uv)^n} \ \ge\ \sqrt{4^n} = 2^{\,n} .$$

Finalement

$$u^n + v^n \ \ge\ 2 \times 2^{\,n} = 2^{\,n+1} ,$$

c'est-à-dire

$$\boxed{\left(1 + \frac{a}{b}\right)^{n} + \left(1 + \frac{b}{a}\right)^{n} \ \ge\ 2^{\,n+1} .}$$

**Le cas d'égalité.** Il faut l'égalité dans les deux outils à la fois. Dans l'outil 2, il faut $\tfrac ab = 1$, donc $a = b$ ; et alors $u = v = 2$, et l'outil 1 devient lui aussi une égalité. Réciproquement, si $a = b$ la somme vaut $2^n + 2^n = 2^{n+1}$. L'égalité a donc lieu exactement quand $a = b$.

## Going further

Montrer, avec la même méthode, que pour $a, b, c > 0$,
$$\left(1 + \frac{a}{b}\right)^{n} + \left(1 + \frac{b}{c}\right)^{n} + \left(1 + \frac{c}{a}\right)^{n} \ \ge\ 3 \times 2^{\,n} ,$$
en admettant la version à trois termes de l'inégalité arithmético-géométrique : $X + Y + Z \ge 3\sqrt[3]{XYZ}$.
