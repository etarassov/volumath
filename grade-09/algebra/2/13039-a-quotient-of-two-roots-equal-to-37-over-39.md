---
id: "13039"
title: "Un quotient de deux racines égal à 37/39"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [racine-carree, identites-remarquables, equation, quotient]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 1 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Soit $x$ un nombre réel strictement positif tel que
$$\frac{\sqrt{x^2 + 4x + 4}}{\sqrt{x^2 + 6x + 9}} = \frac{37}{39} .$$
Déterminer la valeur de $10x$.

## Hints

1. Reconnais-tu les deux expressions sous les racines ? Pense aux identités remarquables.
2. Pour un nombre $u$ positif, que vaut $\sqrt{u^2}$ ?
3. Il reste une équation avec une fraction de chaque côté : fais les produits en croix.

## Solution

**Deux carrés.** D'après l'identité $(a + b)^2 = a^2 + 2ab + b^2$,
$$x^2 + 4x + 4 = (x + 2)^2 \qquad \text{et} \qquad x^2 + 6x + 9 = (x + 3)^2 .$$

**On enlève les racines.** Pour un nombre $u \geqslant 0$, on a $\sqrt{u^2} = u$. Comme $x > 0$, les nombres $x + 2$ et $x + 3$ sont positifs, donc
$$\sqrt{x^2 + 4x + 4} = x + 2 \qquad \text{et} \qquad \sqrt{x^2 + 6x + 9} = x + 3 .$$
L'équation devient
$$\frac{x + 2}{x + 3} = \frac{37}{39} .$$

**On résout.** Les produits en croix donnent $39\,(x + 2) = 37\,(x + 3)$, soit
$$39x + 78 = 37x + 111, \qquad 2x = 33, \qquad x = \frac{33}{2} .$$
Ce nombre est bien strictement positif.

**Conclusion.** On a $x = \dfrac{33}{2}$, donc $10x = 165$.

## Going further

1. Que devient le problème si l'on ne suppose plus $x > 0$ ? Chercher toutes les solutions réelles, sans oublier que $\sqrt{u^2}$ vaut $-u$ quand $u$ est négatif.
2. Pour quelles fractions $\dfrac{p}{q}$ l'équation $\dfrac{\sqrt{x^2 + 4x + 4}}{\sqrt{x^2 + 6x + 9}} = \dfrac{p}{q}$ a-t-elle une solution $x > 0$ ?
