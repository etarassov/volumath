---
id: "3406"
title: "Une équation avec une racine carrée"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [racine carree, second degre, changement de variable, equation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 3, d'après SMT 2023 Algebra 1 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Il existe un seul nombre réel $x$ tel que

$$\left(x + \sqrt{x}\,\right)^2 = 16.$$

Trouve-le, et donne sa valeur exacte.

## Hints

1. Pour que $\sqrt{x}$ existe, il faut $x \geqslant 0$. Que peut-on alors dire du signe de $x + \sqrt{x}$ ?
2. Un carré vaut $16$ quand le nombre vaut $4$ ou $-4$. Un seul des deux cas est possible ici.
3. Tu dois résoudre $x + \sqrt{x} = 4$. Pose $t = \sqrt{x}$ : quelle équation obtiens-tu en $t$ ?
4. Attention à la fin : tu cherches $x$, pas $t$. Et $x = t^2$.

## Solution

**L'idée : se ramener à une équation du second degré en posant $t = \sqrt{x}$.**

**Étape 1. On se débarrasse du carré.**

Pour que $\sqrt{x}$ ait un sens, il faut $x \geqslant 0$. Dans ce cas $x \geqslant 0$ et $\sqrt{x} \geqslant 0$, donc

$$x + \sqrt{x} \geqslant 0.$$

Un nombre positif dont le carré vaut $16$ ne peut être que $4$. L'équation équivaut donc à

$$x + \sqrt{x} = 4.$$

**Étape 2. Changement de variable.**

Posons $t = \sqrt{x}$, avec $t \geqslant 0$. Alors $x = t^2$ et l'équation devient

$$t^2 + t - 4 = 0.$$

Son discriminant vaut $\Delta = 1^2 - 4 \times 1 \times (-4) = 17 > 0$, et les deux racines sont

$$t = \frac{-1 - \sqrt{17}}{2} \quad \text{et} \quad t = \frac{-1 + \sqrt{17}}{2}.$$

La première est négative, puisque $-1 - \sqrt{17} < 0$ : on la rejette, car $t$ doit être positif ou nul. Il reste

$$t = \frac{-1 + \sqrt{17}}{2}.$$

Comme $\sqrt{17} \approx \text{4,12}$, on a bien $t \approx \text{1,56} > 0$.

**Étape 3. On revient à $x$.**

On veut $x = t^2$. Plutôt que d'élever au carré, utilisons l'équation $t^2 + t - 4 = 0$, qui donne directement $t^2 = 4 - t$ :

$$x = t^2 = 4 - t = 4 - \frac{-1 + \sqrt{17}}{2} = \frac{8 + 1 - \sqrt{17}}{2} = \frac{9 - \sqrt{17}}{2}.$$

**Conclusion : $x = \dfrac{9 - \sqrt{17}}{2} \approx \text{2,44}$.**

**Vérification numérique.** $\sqrt{x} \approx \text{1,5616}$, donc $x + \sqrt{x} \approx \text{2,4384} + \text{1,5616} = 4$, et $4^2 = 16$.
