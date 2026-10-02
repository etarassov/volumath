---
id: "10653"
title: "(x² + x + 1)(y² + y + 1) ⩾ 9xy"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, carre, produit, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 1 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soient $x$ et $y$ deux réels positifs ou nuls. Montrer que

$$(x^2 + x + 1)(y^2 + y + 1) \geqslant 9xy$$

Dans quels cas a-t-on l'égalité ?

## Hints

1. Le nombre $9xy$ s'écrit $3x \times 3y$. Compare d'abord $x^2 + x + 1$ et $3x$.
2. Calcule $x^2 + x + 1 - 3x$ et reconnais une identité remarquable.
3. Pour multiplier deux inégalités membre à membre, vérifie que tous les nombres qui interviennent sont positifs.
4. Pour l'égalité, chacune des étapes doit être une égalité.

## Solution

**Étape 1. Une inégalité pour un seul nombre.**

Pour tout réel $x$,

$$x^2 + x + 1 - 3x = x^2 - 2x + 1 = (x - 1)^2 \geqslant 0$$

donc $x^2 + x + 1 \geqslant 3x$, avec égalité seulement si $x = 1$. De même, $y^2 + y + 1 \geqslant 3y$.

**Étape 2. Multiplier.**

On a $y^2 + y + 1 > 0$ et $3x \geqslant 0$. En multipliant la première inégalité par $y^2 + y + 1$, puis la seconde par $3x$, on obtient

$$(x^2 + x + 1)(y^2 + y + 1) \geqslant 3x\,(y^2 + y + 1) \geqslant 3x \times 3y = 9xy$$

C'est l'inégalité demandée.

**Étape 3. Les cas d'égalité.**

Il y a égalité seulement si les deux inégalités de l'étape 2 sont des égalités.

- La première s'écrit $(x - 1)^2\,(y^2 + y + 1) \geqslant 0$. Comme $y^2 + y + 1 > 0$, c'est une égalité seulement si $x = 1$.
- La seconde s'écrit $3x\,(y - 1)^2 \geqslant 0$. Avec $x = 1$, c'est une égalité seulement si $y = 1$.

Inversement, pour $x = y = 1$, les deux membres valent $3 \times 3 = 9$.

**Conclusion : l'inégalité est vraie pour tous réels $x, y \geqslant 0$, et il y a égalité seulement pour $x = y = 1$.**
