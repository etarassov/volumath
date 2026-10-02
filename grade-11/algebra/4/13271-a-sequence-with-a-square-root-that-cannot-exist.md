---
id: "13271"
title: "Une suite avec une racine carrée qui ne peut pas exister"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suites, entiers, carres, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices lycéens, exercice 17 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Existe-t-il une suite $a_0, a_1, a_2, \ldots$ d'entiers strictement positifs telle que, pour tout entier $n \geqslant 0$,

$$a_{n+2} = a_{n+1} + \sqrt{a_n + a_{n+1}}\ ?$$

## Hints

1. Pose $b_n = \sqrt{a_n + a_{n+1}}$. Pourquoi $b_n$ est-il un entier strictement positif ?
2. La relation dit que $a_{n+2} - a_{n+1} = b_n$. Calcule $a_{n+3} - a_{n+1}$ de deux façons.
3. Tu dois obtenir $b_{n+1} + b_n = b_{n+2}^2 - b_{n+1}^2$. Factorise le membre de droite.

## Solution

**La réponse est non.** Supposons qu'une telle suite existe et cherchons une contradiction.

**Les nombres $b_n$.** Pour $n \geqslant 0$, posons $b_n = \sqrt{a_n + a_{n+1}}$, de sorte que $b_n^2 = a_n + a_{n+1}$. La relation de l'énoncé s'écrit $b_n = a_{n+2} - a_{n+1}$. C'est une différence d'entiers, donc $b_n$ est un entier, et $b_n > 0$ car $a_n + a_{n+1} \geqslant 2$.

**Une relation entre les $b_n$.** Calculons $a_{n+3} - a_{n+1}$ de deux façons.

- D'une part, $a_{n+3} - a_{n+1} = (a_{n+3} - a_{n+2}) + (a_{n+2} - a_{n+1}) = b_{n+1} + b_n$.
- D'autre part, $a_{n+3} - a_{n+1} = (a_{n+2} + a_{n+3}) - (a_{n+1} + a_{n+2}) = b_{n+2}^2 - b_{n+1}^2$.

Donc, pour tout $n \geqslant 0$,

$$b_{n+1} + b_n = (b_{n+2} - b_{n+1})(b_{n+2} + b_{n+1}). \qquad (\star)$$

**Les $b_n$ augmentent.** Dans $(\star)$, le membre de gauche et le facteur $b_{n+2} + b_{n+1}$ sont strictement positifs. Donc $b_{n+2} - b_{n+1}$ est strictement positif : c'est un entier, donc $b_{n+2} - b_{n+1} \geqslant 1$. Ainsi $b_1 < b_2 < b_3 < \cdots$.

**La contradiction.** Comme $b_{n+2} - b_{n+1} \geqslant 1$, la relation $(\star)$ donne

$$b_{n+1} + b_n \geqslant b_{n+2} + b_{n+1}, \qquad \text{donc} \qquad b_n \geqslant b_{n+2}.$$

Pour $n = 1$, on obtient $b_1 \geqslant b_3$. Mais on vient de voir que $b_3 > b_2 > b_1$. C'est impossible.

**Conclusion.** Il n'existe pas de telle suite.
