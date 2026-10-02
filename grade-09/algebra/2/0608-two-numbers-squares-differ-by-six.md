---
id: "0608"
title: "Deux nombres dont les carrés diffèrent de 6"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [identites-remarquables, difference-de-carres, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 45, Coupe Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels vérifiant $y - x = 1$ et $y^2 = x^2 + 6$.
Déterminer la valeur de $x + y$.

## Hints

1. Réécris la deuxième condition sous la forme $y^2 - x^2 = 6$.
2. Quelle identité remarquable fait apparaître à la fois $y - x$ et $y + x$ ?
3. Tu n'as pas besoin de trouver $x$ ni $y$ pour répondre.

## Solution

La deuxième condition s'écrit

$$y^2 - x^2 = 6.$$

Or on connaît l'identité remarquable

$$y^2 - x^2 = (y - x)(y + x).$$

Comme $y - x = 1$, cela donne

$$1 \times (y + x) = 6, \qquad \text{donc} \qquad x + y = 6.$$

**Réponse : $x + y = 6$.**

**Vérification.** De $y - x = 1$ et $x + y = 6$ on tire $y = \frac{7}{2}$ et
$x = \frac{5}{2}$. On a bien $y - x = 1$, et
$y^2 - x^2 = \frac{49}{4} - \frac{25}{4} = \frac{24}{4} = 6$.
