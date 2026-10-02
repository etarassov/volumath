---
id: "13213"
title: "Trois racines carrées et un rationnel"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [racine-carree, equation, fractions]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 14 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Soit $x$ un nombre réel positif tel que

$$\sqrt{x} + \sqrt{x + 13} = \sqrt{4x + 17}.$$

On écrit $x$ sous forme de fraction irréductible $x = \frac{a}{b}$, avec $a$ et $b$ entiers positifs. Que vaut $a + b$ ?

## Hints

1. Les deux membres sont positifs : on peut élever au carré sans rien perdre. Développe le membre de gauche.
2. Il ne reste qu'une racine carrée. Isole-la, puis élève de nouveau au carré.
3. N'oublie pas de vérifier à la fin que le nombre trouvé convient vraiment.

## Solution

**Premier carré.** Les deux membres sont positifs, donc l'égalité équivaut à l'égalité de leurs carrés :

$$x + 2\sqrt{x}\sqrt{x + 13} + x + 13 = 4x + 17,$$

c'est-à-dire $2\sqrt{x(x+13)} = 2x + 4$, ou encore

$$\sqrt{x^2 + 13x} = x + 2.$$

**Second carré.** Ici aussi les deux membres sont positifs (car $x \geqslant 0$), donc on peut élever au carré :

$$x^2 + 13x = x^2 + 4x + 4, \qquad 9x = 4, \qquad x = \frac{4}{9}.$$

**Vérification.** $\sqrt{\frac{4}{9}} = \frac{2}{3}$, $\sqrt{\frac{4}{9} + 13} = \sqrt{\frac{121}{9}} = \frac{11}{3}$ et $\sqrt{\frac{16}{9} + 17} = \sqrt{\frac{169}{9}} = \frac{13}{3}$. On a bien $\frac{2}{3} + \frac{11}{3} = \frac{13}{3}$.

**Conclusion.** $x = \frac{4}{9}$, fraction irréductible, donc $a + b = 4 + 9 = 13$.
