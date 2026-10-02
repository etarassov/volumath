---
id: "10446"
title: "a/(bc) + b/(ac) + c/(ab) contre 2/a + 2/b − 2/c"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, fractions, identites-remarquables, carre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe B, exercice 1 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Soient $a$, $b$, $c$ des nombres strictement positifs. Montrer que

$$\frac{a}{bc} + \frac{b}{ac} + \frac{c}{ab} \geqslant \frac{2}{a} + \frac{2}{b} - \frac{2}{c} .$$

Attention, il y a bien un signe « moins » dans le membre de droite.

## Hints

1. Les six fractions ont toutes un dénominateur qui divise $abc$. Multiplie les deux membres par $abc$. Le sens de l'inégalité change-t-il ?
2. Tu dois obtenir une inégalité sans fraction. Fais tout passer à gauche, et cherche à y reconnaître $(a + b)^2$.
3. Pose $u = a + b$. Il reste une expression de la forme $u^2 - 2uc + c^2$.

## Solution

Le nombre $abc$ est strictement positif. Multiplier les deux membres par $abc$ ne change donc pas le sens de l'inégalité. Comme

$$\frac{a}{bc} \times abc = a^2, \qquad \frac{b}{ac} \times abc = b^2, \qquad \frac{c}{ab} \times abc = c^2,$$

$$\frac{2}{a} \times abc = 2bc, \qquad \frac{2}{b} \times abc = 2ac, \qquad \frac{2}{c} \times abc = 2ab,$$

l'inégalité à démontrer équivaut à

$$a^2 + b^2 + c^2 \geqslant 2bc + 2ac - 2ab .$$

Faisons tout passer à gauche et regroupons les termes :

$$a^2 + b^2 + c^2 - 2bc - 2ac + 2ab = (a^2 + 2ab + b^2) - 2c\,(a + b) + c^2 = (a + b)^2 - 2c\,(a + b) + c^2 .$$

On reconnaît l'identité $u^2 - 2uc + c^2 = (u - c)^2$ avec $u = a + b$. L'inégalité équivaut donc à

$$(a + b - c)^2 \geqslant 0 ,$$

ce qui est vrai, car un carré est toujours positif ou nul.

**Conclusion.** L'inégalité est vraie pour tous nombres $a$, $b$, $c$ strictement positifs. Il y a égalité exactement quand $a + b - c = 0$, c'est-à-dire quand $c = a + b$.

## Going further

1. Vérifier l'égalité directement avec $a = 1$, $b = 2$ et $c = 3$.
2. Montrer de même que
   $$\frac{a}{bc} + \frac{b}{ac} + \frac{c}{ab} \geqslant \frac{1}{a} + \frac{1}{b} + \frac{1}{c} .$$
   On pourra calculer $(a - b)^2 + (b - c)^2 + (c - a)^2$.
