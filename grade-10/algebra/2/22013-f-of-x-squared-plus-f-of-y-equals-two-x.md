---
id: "22013"
title: "f(x² + f(y)) = 2x − f(y)"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation-fonctionnelle, substitution, surjectivite, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f(x^2 + f(y)) = 2x - f(y).$$

## Hints

1. Fixez $y = 0$. Le membre de gauche ne change pas quand on remplace $x$ par $-x$. Et le membre de droite ?
2. Comparez les deux égalités obtenues avec $x = 1$ et avec $x = -1$.

## Solution

Supposons qu'une fonction $f$ vérifie l'équation, et cherchons ce que cela impose.

**Étape 1 : $y = 0$.** Pour tout réel $x$,

$$f(x^2 + f(0)) = 2x - f(0).$$

**Étape 2 : $x$ et $-x$ ont le même carré.** Écrivons cette égalité pour $x = 1$ puis pour $x = -1$. Comme $1^2 = (-1)^2 = 1$, le membre de gauche est le même nombre $f(1 + f(0))$ dans les deux cas. Donc

$$2 - f(0) = f(1 + f(0)) = -2 - f(0),$$

ce qui donne $2 = -2$. C'est impossible.

**Conclusion.** Aucune fonction ne vérifie cette équation : elle n'a pas de solution.

**Une autre façon de voir.** Le corrigé de la source cherche d'abord quelle fonction pourrait convenir. Avec $y = 0$, le membre de droite $2x - f(0)$ prend toutes les valeurs réelles quand $x$ varie : tout réel $z$ est de la forme $f(\ldots)$. On dit que $f$ est *surjective*. Avec $x = 0$, l'équation donne $f(f(y)) = -f(y)$, donc $f(z) = -z$ pour tout réel $z$. Mais cette fonction ne vérifie pas l'équation : avec $x = 1$ et $y = 0$, le membre de gauche vaut $f(1) = -1$ et celui de droite vaut $2$. On retrouve qu'il n'y a pas de solution.

## Going further

1. Montrer que l'équation $f(x^2 + f(y)) = 2x^2 - f(y)$ n'a pas non plus de solution. (Le piège de $x$ et $-x$ ne marche plus. Pensez à la surjectivité, mais attention : $2x^2$ ne prend pas toutes les valeurs.)
2. Une leçon générale : avant de se lancer dans de longs calculs, regardez si l'équation est cohérente avec les symétries évidentes, comme $x \mapsto -x$.
