---
id: "10605"
title: "Une somme cyclique de quatre fractions"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, factorisation, somme-cyclique, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Juniors, exercice 9 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Soient $a$, $b$, $c$ et $d$ quatre réels strictement positifs tels que $a + b + c + d = 1$. On pose

$$S = \frac{a^4}{a^3 + a^2 b + a b^2 + b^3} + \frac{b^4}{b^3 + b^2 c + b c^2 + c^3} + \frac{c^4}{c^3 + c^2 d + c d^2 + d^3} + \frac{d^4}{d^3 + d^2 a + d a^2 + a^3}$$

Montrer que $S \geqslant \frac{1}{4}$, et trouver tous les cas d'égalité.

## Hints

1. Factorise le dénominateur $a^3 + a^2 b + a b^2 + b^3$ : regroupe les deux premiers termes, puis les deux derniers.
2. Le dénominateur de la première fraction ne change pas si on échange $a$ et $b$. Considère la somme $T$ obtenue en mettant $b^4$ au numérateur de la première fraction, $c^4$ dans la deuxième, et ainsi de suite. Calcule $S - T$.
3. Tu dois trouver $S = T$. Alors $2S = S + T$, et chaque fraction de $S + T$ a pour numérateur $a^4 + b^4$.
4. Utilise deux fois l'inégalité $2(x^2 + y^2) \geqslant (x + y)^2$.

## Solution

**Étape 1. Factoriser les dénominateurs.**

En regroupant les termes deux par deux,

$$a^3 + a^2 b + a b^2 + b^3 = a^2(a + b) + b^2(a + b) = (a^2 + b^2)(a + b)$$

et de même pour les trois autres dénominateurs. On a donc

$$S = \frac{a^4}{(a^2 + b^2)(a + b)} + \frac{b^4}{(b^2 + c^2)(b + c)} + \frac{c^4}{(c^2 + d^2)(c + d)} + \frac{d^4}{(d^2 + a^2)(d + a)}$$

**Étape 2. Une deuxième somme qui vaut la même chose.**

Considérons la somme obtenue en remplaçant chaque numérateur par celui de la fraction suivante :

$$T = \frac{b^4}{(a^2 + b^2)(a + b)} + \frac{c^4}{(b^2 + c^2)(b + c)} + \frac{d^4}{(c^2 + d^2)(c + d)} + \frac{a^4}{(d^2 + a^2)(d + a)}$$

Calculons $S - T$ fraction par fraction. Comme $a^4 - b^4 = (a^2 - b^2)(a^2 + b^2) = (a - b)(a + b)(a^2 + b^2)$,

$$\frac{a^4 - b^4}{(a^2 + b^2)(a + b)} = a - b$$

De même pour les autres. Donc

$$S - T = (a - b) + (b - c) + (c - d) + (d - a) = 0$$

et $S = T$.

**Étape 3. Une inégalité utile.**

Pour tous réels $x$ et $y$,

$$2(x^2 + y^2) - (x + y)^2 = x^2 - 2xy + y^2 = (x - y)^2 \geqslant 0$$

donc $2(x^2 + y^2) \geqslant (x + y)^2$, avec égalité seulement si $x = y$.

**Étape 4. Minorer $2S$.**

Comme $S = T$, on a $2S = S + T$, et

$$2S = \frac{a^4 + b^4}{(a^2 + b^2)(a + b)} + \frac{b^4 + c^4}{(b^2 + c^2)(b + c)} + \frac{c^4 + d^4}{(c^2 + d^2)(c + d)} + \frac{d^4 + a^4}{(d^2 + a^2)(d + a)}$$

Appliquons l'étape 3 avec $x = a^2$ et $y = b^2$ : $a^4 + b^4 \geqslant \frac{(a^2 + b^2)^2}{2}$. Donc

$$\frac{a^4 + b^4}{(a^2 + b^2)(a + b)} \geqslant \frac{(a^2 + b^2)^2}{2(a^2 + b^2)(a + b)} = \frac{a^2 + b^2}{2(a + b)}$$

Appliquons encore l'étape 3 avec $x = a$ et $y = b$ : $a^2 + b^2 \geqslant \frac{(a + b)^2}{2}$. Donc

$$\frac{a^2 + b^2}{2(a + b)} \geqslant \frac{(a + b)^2}{4(a + b)} = \frac{a + b}{4}$$

En faisant de même pour les quatre fractions et en additionnant :

$$2S \geqslant \frac{(a + b) + (b + c) + (c + d) + (d + a)}{4} = \frac{2(a + b + c + d)}{4} = \frac{1}{2}$$

Donc $S \geqslant \frac{1}{4}$.

**Étape 5. Les cas d'égalité.**

Pour avoir égalité, il faut égalité dans chaque utilisation de l'étape 3, en particulier $a = b$, $b = c$, $c = d$. Avec $a + b + c + d = 1$, cela donne $a = b = c = d = \frac{1}{4}$.

Réciproquement, si les quatre nombres valent $\frac{1}{4}$, chaque fraction vaut $\frac{a^4}{4a^3} = \frac{a}{4} = \frac{1}{16}$, et $S = 4 \times \frac{1}{16} = \frac{1}{4}$.

**Conclusion : $S \geqslant \frac{1}{4}$, avec égalité si et seulement si $a = b = c = d = \frac{1}{4}$.**
