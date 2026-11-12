---
id: "22025"
title: "f(x + y) = x + f(f(y))"
grade: 10
theme: algebra
difficulty: 1
duration_min: 10
tags: [equation-fonctionnelle, substitution]
adapted_from: null
see_also: ["22012"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, « Entraînement de mi-parcours », exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x + y) = x + f(f(y)).$$

## Hints

1. Essayez une valeur simple pour $y$.
2. Avec $y = 0$, vous obtenez la forme de $f$, avec une constante inconnue. Remettez cette forme dans l'équation pour trouver la constante.

## Solution

**Étape 1 : la forme de $f$.** Prenons $y = 0$. Pour tout réel $x$,

$$f(x) = x + f(f(0)).$$

Le nombre $f(f(0))$ ne dépend pas de $x$ : c'est une constante, que l'on note $a$. Donc $f(x) = x + a$ pour tout réel $x$.

**Étape 2 : la valeur de $a$.** Remplaçons $f$ par cette forme dans l'équation. D'un côté, $f(x + y) = x + y + a$. De l'autre, $f(y) = y + a$, donc $f(f(y)) = (y + a) + a = y + 2a$, et $x + f(f(y)) = x + y + 2a$. L'équation devient

$$x + y + a = x + y + 2a,$$

donc $a = 0$.

**Étape 3 : vérification.** Pour $f(x) = x$, on a bien $f(x + y) = x + y$ et $x + f(f(y)) = x + y$.

**Conclusion.** La seule solution est la fonction $f(x) = x$.

## Going further

1. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que $f(x + y) = x + f(y)$ pour tous réels $x$ et $y$. Pourquoi y a-t-il cette fois une infinité de solutions ?
2. Même question avec $f(x + y) = 2x + f(f(y))$.
