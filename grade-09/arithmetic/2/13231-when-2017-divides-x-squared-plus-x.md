---
id: "13231"
title: "Quand 2017 divise x² + x"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres-premiers, divisibilite, factorisation, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 4 ; réponse (2000) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Déterminer le nombre d'entiers $x$ tels que $1 \leqslant x \leqslant 2\,017\,000$ et tels que $2017$ divise $x^2 + x$.

## Hints

1. Factorise $x^2 + x$.
2. Le nombre $2017$ est premier. Vérifie-le : jusqu'à quel nombre faut-il chercher un diviseur ?
3. Si un nombre premier divise un produit de deux entiers, il divise l'un des deux. Que dois-tu compter ?

## Solution

**Factorisation.** On a $x^2 + x = x\,(x + 1)$.

**$2017$ est premier.** Si $2017$ avait un diviseur autre que $1$ et lui-même, il en aurait un au plus égal à $\sqrt{2017}$, donc au plus $44$ (car $45^2 = 2025$). On vérifie qu'aucun des nombres premiers $2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43$ ne divise $2017$. Par exemple $2016 = 7 \times 288$, $2015 = 13 \times 155 = 31 \times 65$, $2013 = 11 \times 183$, $2009 = 41 \times 49$, $2021 = 43 \times 47$ : $2017$ tombe toujours entre deux multiples.

**Ce qu'il faut compter.** Un nombre premier qui divise un produit de deux entiers divise l'un des deux (c'est une conséquence de l'unicité de la décomposition en facteurs premiers). Donc $2017$ divise $x(x + 1)$ exactement quand $2017$ divise $x$ ou $2017$ divise $x + 1$. Les deux à la fois sont impossibles, car $x$ et $x + 1$ diffèrent de $1$.

**Le décompte.** Comme $2\,017\,000 = 2017 \times 1000$ :

- les $x$ multiples de $2017$ entre $1$ et $2\,017\,000$ sont $2017 \times k$ pour $k = 1, \ldots, 1000$ : il y en a $1000$ ;
- les $x$ tels que $x + 1$ soit multiple de $2017$ sont $x = 2017 \times k - 1$ pour $k = 1, \ldots, 1000$ : il y en a $1000$ aussi (le plus petit est $2016$, le plus grand $2\,016\,999$).

**Conclusion.** Il y a $1000 + 1000 = 2000$ tels entiers $x$.
