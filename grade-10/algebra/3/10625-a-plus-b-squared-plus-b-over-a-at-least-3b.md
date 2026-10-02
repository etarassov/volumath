---
id: "10625"
title: "a + b² + b/a ⩾ 3b"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, racine-carree, factorisation, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 1 ; corrigé 2022-01_corrige-envoi-2.pdf. Le corrigé utilise l'inégalité entre moyennes pour trois nombres ; la solution ci-dessous n'utilise qu'un carré."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Montrer que pour tous réels $a$ et $b$ strictement positifs,

$$a + b^2 + \frac{b}{a} \geqslant 3b$$

Dans quels cas a-t-on égalité ?

## Hints

1. Essaie $a = b = 1$. Puis regarde d'abord les deux termes qui contiennent $a$ : quelle est la plus petite valeur de $a + \frac{b}{a}$ quand $b$ est fixé ?
2. Montre que $a + \frac{b}{a} \geqslant 2\sqrt{b}$ en écrivant la différence comme un carré.
3. Il reste à montrer que $b^2 + 2\sqrt{b} \geqslant 3b$. Pose $t = \sqrt{b}$ et factorise $t^3 - 3t + 2$ : le nombre $1$ en est une racine double.

## Solution

**Étape 1. Les deux termes qui contiennent $a$.**

Comme $a > 0$ et $b > 0$, on peut écrire

$$a + \frac{b}{a} - 2\sqrt{b} = \left(\sqrt{a} - \frac{\sqrt{b}}{\sqrt{a}}\right)^2 \geqslant 0$$

En effet, en développant le carré on trouve $a - 2\sqrt{b} + \frac{b}{a}$. Donc $a + \frac{b}{a} \geqslant 2\sqrt{b}$, avec égalité si et seulement si $\sqrt{a} = \frac{\sqrt{b}}{\sqrt{a}}$, c'est-à-dire $a = \sqrt{b}$.

**Étape 2. Ce qui reste.**

Posons $t = \sqrt{b} > 0$, de sorte que $b = t^2$ et $b^2 = t^4$. Alors

$$b^2 - 3b + 2\sqrt{b} = t^4 - 3t^2 + 2t = t\,(t^3 - 3t + 2)$$

Or $(t - 1)^2(t + 2) = (t^2 - 2t + 1)(t + 2) = t^3 - 3t + 2$, comme on le vérifie en développant. Donc

$$b^2 - 3b + 2\sqrt{b} = t\,(t - 1)^2\,(t + 2) \geqslant 0$$

car $t > 0$ et $t + 2 > 0$. L'égalité a lieu si et seulement si $t = 1$, c'est-à-dire $b = 1$.

**Étape 3. On additionne.**

$$a + b^2 + \frac{b}{a} - 3b = \left(a + \frac{b}{a} - 2\sqrt{b}\right) + \left(b^2 - 3b + 2\sqrt{b}\right) \geqslant 0$$

car les deux parenthèses sont positives ou nulles. C'est l'inégalité demandée.

**Étape 4. Cas d'égalité.**

Une somme de deux nombres positifs ou nuls est nulle seulement si les deux sont nuls. Il faut donc $b = 1$ (étape 2) et $a = \sqrt{b} = 1$ (étape 1). Réciproquement, pour $a = b = 1$, le membre de gauche vaut $1 + 1 + 1 = 3$ et le membre de droite vaut $3$.

**Conclusion : l'inégalité est vraie pour tous $a, b > 0$, avec égalité si et seulement si $a = b = 1$.**

## Going further

L'inégalité entre la moyenne arithmétique et la moyenne géométrique de trois nombres positifs dit que $x + y + z \geqslant 3\sqrt[3]{xyz}$. Avec $x = a$, $y = b^2$ et $z = \frac{b}{a}$, le produit vaut $b^3$, et l'exercice tient en une ligne. Essaie de démontrer cette inégalité pour trois nombres.
