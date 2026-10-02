---
id: "10421"
title: "Si x⁵ − x³ + x ≥ 3, alors x⁶ ≥ 5"
grade: 9
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, puissances, developpement, carres]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (qui cite l'inégalité arithmético-géométrique ; ici x + 1/x ⩾ 2 est démontrée avec un carré)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Soit $x$ un réel strictement positif tel que $x^5 - x^3 + x \geqslant 3$. Montrer que $x^6 \geqslant 5$.

## Hints

1. Il revient au même de montrer que $x^6 + 1 \geqslant 6$.
2. Développe le produit $\left( x + \dfrac{1}{x} \right)(x^5 - x^3 + x)$.
3. Montre que $x + \dfrac{1}{x} \geqslant 2$ pour tout $x > 0$. Tu peux partir de $(x - 1)^2 \geqslant 0$.

## Solution

**Étape 1 : un développement.** Pour tout réel $x > 0$,

$$\left( x + \frac{1}{x} \right)(x^5 - x^3 + x) = x^6 - x^4 + x^2 + x^4 - x^2 + 1 = x^6 + 1 .$$

**Étape 2 : $x + \frac{1}{x} \geqslant 2$.** Pour tout réel $x$, on a $(x - 1)^2 \geqslant 0$, c'est-à-dire $x^2 - 2x + 1 \geqslant 0$, soit $x^2 + 1 \geqslant 2x$. Comme $x > 0$, on peut diviser par $x$ sans changer le sens de l'inégalité :

$$x + \frac{1}{x} \geqslant 2 .$$

**Étape 3 : conclusion.** Soit $x > 0$ tel que $x^5 - x^3 + x \geqslant 3$. Les deux facteurs $x + \frac{1}{x}$ et $x^5 - x^3 + x$ sont positifs, et le premier est au moins $2$, le second au moins $3$. Donc, d'après l'étape 1,

$$x^6 + 1 = \left( x + \frac{1}{x} \right)(x^5 - x^3 + x) \geqslant 2 \times 3 = 6 .$$

Ainsi $x^6 \geqslant 5$.

## Going further

1. Peut-on avoir égalité, c'est-à-dire $x^6 = 5$ avec $x^5 - x^3 + x \geqslant 3$ ?
2. D'où vient le facteur $x + \frac{1}{x}$ ? Vérifier que $x^6 + 1 = (x^2 + 1)(x^4 - x^2 + 1)$, et comparer avec $x(x^4 - x^2 + 1)$.
