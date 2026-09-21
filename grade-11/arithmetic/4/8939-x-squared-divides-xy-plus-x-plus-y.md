---
id: "8939"
title: "x² divise xy + x + y"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, changement-dinconnue, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 11"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers relatifs, avec $x \neq 0$. On suppose que

$$x^2 \text{ divise } xy + x + y.$$

Montrer qu'alors $x^2$ divise $x + y$.

## Hints

1. Commencez petit : $x$ divise $x^2$, donc $x$ divise aussi $xy + x + y$. Qu'est-ce que cela apprend sur $y$ ?
2. Vous devriez trouver que $x$ divise $y$. Écrivez alors $y = kx$ pour un certain entier $k$, et remplacez partout.
3. Avec $y = kx$, l'expression $xy + x + y$ devient $kx^2 + x + kx$. Le premier terme est déjà un multiple de $x^2$ : que reste-t-il ?
4. Vous obtenez que $x^2$ divise $x(k+1)$. Simplifiez par $x$ (c'est permis, $x$ n'est pas nul).
5. Il ne reste plus qu'à écrire $x + y$ avec $k$ et à conclure.

## Solution

### Étape 1 : $x$ divise $y$

Comme $x$ divise $x^2$ et que $x^2$ divise $xy + x + y$, on en déduit que $x$ divise $xy + x + y$.

Or $x$ divise évidemment $xy$ et $x$. En retranchant, $x$ divise

$$(xy + x + y) - xy - x = y.$$

Donc $x$ divise $y$ : il existe un entier $k$ tel que

$$y = kx.$$

### Étape 2 : remplacer et simplifier

Remplaçons $y$ par $kx$ dans l'hypothèse :

$$xy + x + y = x \cdot kx + x + kx = kx^2 + x(k+1).$$

Par hypothèse $x^2$ divise cette somme. Comme $x^2$ divise aussi le terme $kx^2$, il divise la différence :

$$x^2 \text{ divise } x(k+1).$$

### Étape 3 : simplifier par $x$

Écrivons $x(k+1) = m x^2$ pour un entier $m$. Comme $x \neq 0$, on peut diviser les deux membres par $x$ :

$$k + 1 = mx,$$

c'est-à-dire que $x$ divise $k+1$.

### Étape 4 : conclure

Enfin,

$$x + y = x + kx = x(k+1) = x \cdot mx = m x^2.$$

Donc $x^2$ divise $x + y$.

$$\boxed{x^2 \mid xy + x + y \ \Longrightarrow \ x^2 \mid x + y.}$$

*Le point de méthode.* L'hypothèse portait sur une expression mélangée, $xy + x + y$. Le déclic a été de remarquer que la conclusion cherchée, $x+y$, est exactement ce qu'il reste quand on enlève $xy$. Il suffisait donc de montrer que $x^2$ divise $xy$, et c'est ce que l'étape 1 a rendu possible en établissant $x \mid y$.

## Going further

1. Reprenez la démonstration et vérifiez qu'elle donne en fait une **équivalence** : $x^2$ divise $xy + x + y$ si et seulement si $x^2$ divise $x+y$.
2. Trouvez tous les couples $(x,y)$ d'entiers strictement positifs avec $x \leqslant 10$ tels que $x^2$ divise $xy + x + y$. La description obtenue à l'étape 3 vous donne la réponse d'un coup.
