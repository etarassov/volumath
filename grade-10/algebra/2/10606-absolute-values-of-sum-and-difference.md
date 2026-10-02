---
id: "10606"
title: "|x| + |y| face à |x − y| + |x + y|"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [valeur-absolue, inegalite-triangulaire, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 11 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Montrer que, pour tous nombres réels $x$ et $y$,

$$|x| + |y| \leqslant |x - y| + |x + y|$$

## Hints

1. Essaie quelques valeurs : $x = 3$ et $y = 5$, puis $x = 3$ et $y = -5$. Lequel des deux termes de droite est égal au membre de gauche ?
2. Si $x$ et $y$ ont le même signe, compare $|x| + |y|$ et $|x + y|$.
3. Si $x$ et $y$ sont de signes contraires, compare $|x| + |y|$ et $|x - y|$.

## Solution

**L'idée : un des deux termes de droite suffit déjà.**

**Cas 1 : $x$ et $y$ ont le même signe** (tous les deux positifs ou nuls, ou tous les deux négatifs ou nuls).

- S'ils sont positifs ou nuls, $|x| + |y| = x + y = |x + y|$.
- S'ils sont négatifs ou nuls, $|x| + |y| = -x - y = -(x + y) = |x + y|$, car $x + y \leqslant 0$.

Dans les deux cas $|x| + |y| = |x + y|$. Comme $|x - y| \geqslant 0$, on obtient

$$|x| + |y| = |x + y| \leqslant |x + y| + |x - y|$$

**Cas 2 : $x$ et $y$ sont de signes contraires.**

- Si $x \geqslant 0$ et $y \leqslant 0$, alors $x - y \geqslant 0$ et $|x| + |y| = x - y = |x - y|$.
- Si $x \leqslant 0$ et $y \geqslant 0$, alors $x - y \leqslant 0$ et $|x| + |y| = -x + y = |x - y|$.

Dans les deux cas $|x| + |y| = |x - y|$, et comme $|x + y| \geqslant 0$, on obtient encore l'inégalité.

**Conclusion : pour tous réels $x$ et $y$, $|x| + |y| \leqslant |x - y| + |x + y|$.**

## Going further

Une autre preuve, sans cas, avec l'inégalité triangulaire $|A + B| \leqslant |A| + |B|$. Avec $A = x + y$ et $B = x - y$, on a $A + B = 2x$ et $A - B = 2y$. Donc

$$2|x| = |A + B| \leqslant |A| + |B| \qquad \text{et} \qquad 2|y| = |A + (-B)| \leqslant |A| + |B|$$

En additionnant, $2|x| + 2|y| \leqslant 2(|x + y| + |x - y|)$, ce qu'on voulait.

On peut même montrer mieux : $|x - y| + |x + y| = 2 \max(|x|, |y|)$. Pourquoi est-ce plus fort que l'inégalité de l'énoncé ?
