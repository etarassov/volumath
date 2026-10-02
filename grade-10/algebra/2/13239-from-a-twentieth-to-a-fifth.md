---
id: "13239"
title: "De a²⁰ + 1/a²⁰ à a⁵ + 1/a⁵"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, puissances, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 13 ; réponse (7) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soit $a$ un nombre réel strictement positif tel que

$$a^{20} + \frac{1}{a^{20}} = 2207.$$

Déterminer la valeur de $a^5 + \frac{1}{a^5}$.

## Hints

1. Développe $\left(a^{10} + \frac{1}{a^{10}}\right)^2$. Quel lien avec $a^{20} + \frac{1}{a^{20}}$ ?
2. $2209$ est un carré.
3. Recommence une fois pour passer de $a^{10}$ à $a^5$, sans oublier que tout est positif.

## Solution

**Un outil.** Pour tout réel $y$ non nul, $\left(y + \frac{1}{y}\right)^2 = y^2 + 2 + \frac{1}{y^2}$, car le double produit vaut $2 \times y \times \frac{1}{y} = 2$.

**De la puissance $20$ à la puissance $10$.** Posons $u = a^{10} + \frac{1}{a^{10}}$. Avec $y = a^{10}$,

$$u^2 = a^{20} + 2 + \frac{1}{a^{20}} = 2207 + 2 = 2209 = 47^2.$$

Comme $a > 0$, le nombre $u$ est positif, donc $u = 47$.

**De la puissance $10$ à la puissance $5$.** Posons $t = a^5 + \frac{1}{a^5}$, positif lui aussi. Avec $y = a^5$,

$$t^2 = a^{10} + 2 + \frac{1}{a^{10}} = 47 + 2 = 49,$$

donc $t = 7$.

**Conclusion.** $a^5 + \frac{1}{a^5} = 7$.
