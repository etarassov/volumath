---
id: "8151"
title: "Une racine de f, puis de f ∘ f ∘ f"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [polynome, second-degre, racines, composition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 11 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels, et soit $f$ la fonction définie sur $\mathbb{R}$ par

$$f(x) = x^2 + ax + b.$$

On suppose qu'il existe un nombre réel $t$ tel que

$$f(t) = 0 \qquad \text{et} \qquad f(f(f(t))) = 0.$$

Montrer que

$$f(0) \times f(1) = 0.$$

## Hints

1. L'hypothèse $f(t) = 0$ permet de simplifier l'expression $f(f(f(t)))$. Remplace la parenthèse la plus intérieure.
2. Tu obtiens une condition qui ne fait plus intervenir $t$ du tout. Écris-la.
3. Que valent $f(0)$ et $f(1)$ en fonction de $a$ et $b$ ?
4. La condition de l'étape 2 est une égalité en $a$ et $b$ : factorise-la et compare avec le produit $f(0) \times f(1)$.

## Solution

**Étape 1 : faire disparaître $t$.**

Comme $f(t) = 0$, on a

$$f(f(f(t))) = f(f(0)).$$

L'hypothèse devient donc simplement

$$f(f(0)) = 0.$$

Le nombre $t$ a disparu : il ne servait qu'à garantir que $f$ possède une racine réelle.

**Étape 2 : traduire en $a$ et $b$.**

On a $f(0) = b$. La condition s'écrit donc $f(b) = 0$, c'est-à-dire

$$b^2 + ab + b = 0.$$

Factorisons par $b$ :

$$b\,(b + a + 1) = 0.$$

**Étape 3 : reconnaître le produit demandé.**

Calculons les deux valeurs qui nous intéressent :

$$f(0) = b, \qquad f(1) = 1 + a + b.$$

Leur produit vaut

$$f(0) \times f(1) = b\,(1 + a + b),$$

c'est-à-dire exactement l'expression de l'étape 2.

**Conclusion.**

$$f(0) \times f(1) = b\,(b + a + 1) = 0.$$

Remarque : le résultat dit qu'au moins l'un des deux nombres $f(0)$ et $f(1)$ est nul, autrement dit que $0$ ou $1$ est racine de $f$.

- Le cas $b = 0$ donne $f(x) = x^2 + ax = x(x+a)$, dont $0$ est racine.
- Le cas $a + b + 1 = 0$ donne $f(x) = x^2 + ax - a - 1$, et l'on vérifie que $f(1) = 1 + a - a - 1 = 0$.
