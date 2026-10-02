---
id: "5213"
title: "Une équation sans la moindre solution"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, equation-diophantienne, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « Parity problems », problème 5"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

Existe-t-il des entiers relatifs $x$ et $y$ tels que

$$5x(x+1) = 3(2y+1)^3 \; ?$$

## Hints

1. N'essayez pas de résoudre l'équation : essayez plutôt de montrer qu'elle n'a pas de solution.
2. Regardez la parité des deux membres.
3. À gauche, $x$ et $x+1$ sont deux entiers consécutifs. Que peut-on dire de leur produit ?
4. À droite, $2y+1$ est impair. Le cube d'un nombre impair est-il pair ou impair ?

## Solution

Supposons qu'il existe des entiers $x$ et $y$ vérifiant l'égalité, et regardons la parité de chaque membre.

**Le membre de gauche est pair.**

$x$ et $x+1$ sont deux entiers consécutifs : l'un des deux est pair. Leur produit $x(x+1)$ est donc pair, et il en va de même de $5x(x+1)$.

**Le membre de droite est impair.**

$2y+1$ est impair. Le produit de trois nombres impairs est impair, donc $(2y+1)^3$ est impair. En multipliant par $3$, qui est impair, on obtient encore un nombre impair.

**Conclusion.**

L'égalité demanderait qu'un nombre pair soit égal à un nombre impair, ce qui est impossible.

**Il n'existe donc aucun couple d'entiers $(x\,;y)$ solution de cette équation.**

## Going further

Devant une équation à résoudre dans les entiers, le premier réflexe utile est souvent de regarder la parité des deux membres, ou plus généralement leur reste dans une division. Cela ne donne jamais les solutions, mais cela peut prouver en trois lignes qu'il n'y en a aucune, ce qui serait sans espoir en essayant des valeurs.
