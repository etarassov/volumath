---
id: "11846"
title: "xy + y + 2z ≥ 4√(xyz) quand x ≤ 1"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, inegalite-arithmetico-geometrique, racine-carree, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 3 ; corrigé 2023-07_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois nombres réels positifs ou nuls, avec $x \leqslant 1$. Montrer que

$$xy + y + 2z \geqslant 4\sqrt{xyz}.$$

## Hints

1. Montrer d'abord que, pour deux réels $a, b \geqslant 0$, on a $a + b \geqslant 2\sqrt{ab}$. On peut développer $\left(\sqrt{a} - \sqrt{b}\right)^2$.
2. Le membre de droite contient $xy$ et $z$, mais pas $y$ seul. Comment se débarrasser du terme $y$ en utilisant $x \leqslant 1$ ?
3. Comme $y \geqslant xy$, le membre de gauche est au moins $2xy + 2z = 2(xy + z)$.

## Solution

**Un outil.** Pour deux réels $a, b \geqslant 0$,

$$a + b - 2\sqrt{ab} = \left(\sqrt{a}\right)^2 - 2\sqrt{a}\sqrt{b} + \left(\sqrt{b}\right)^2 = \left(\sqrt{a} - \sqrt{b}\right)^2 \geqslant 0,$$

donc $a + b \geqslant 2\sqrt{ab}$, avec égalité seulement si $\sqrt{a} = \sqrt{b}$, c'est-à-dire $a = b$.

**Étape 1 : se débarrasser de $y$.** Comme $0 \leqslant x \leqslant 1$ et $y \geqslant 0$, on a $xy \leqslant y$. Donc

$$xy + y + 2z \geqslant xy + xy + 2z = 2(xy + z).$$

**Étape 2 : l'outil.** On l'applique avec $a = xy \geqslant 0$ et $b = z \geqslant 0$ :

$$xy + z \geqslant 2\sqrt{xy \cdot z} = 2\sqrt{xyz}.$$

**Conclusion.** En mettant bout à bout les deux étapes,

$$xy + y + 2z \geqslant 2(xy + z) \geqslant 2 \times 2\sqrt{xyz} = 4\sqrt{xyz}.$$

C'est l'inégalité demandée.

## Going further

Quand a-t-on l'égalité ? Il faut l'égalité dans les deux étapes : $xy = y$, c'est-à-dire $x = 1$ ou $y = 0$, et $xy = z$. On trouve donc les cas $x = 1$ et $y = z$ (par exemple $1 \cdot 4 + 4 + 2 \cdot 4 = 16 = 4\sqrt{16}$), et les cas $y = z = 0$ avec $x$ quelconque.
