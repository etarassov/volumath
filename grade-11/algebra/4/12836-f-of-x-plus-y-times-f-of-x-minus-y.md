---
id: "12836"
title: "f(x + y) f(x − y) ≥ f(x)² − f(y)²"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [equation-fonctionnelle, inegalite, signe, substitution]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 novembre 2023"
  reference: "2025-01_Enonce-Test-1.pdf, test senior, exercice 3 ; corrigé 2025-01_Corrige-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-1.pdf"
---

## Statement

Soit $f : \mathbb{R} \to \mathbb{R}$ une fonction telle que, pour tous réels $x$ et $y$,

$$f(x + y)\, f(x - y) \geq f(x)^2 - f(y)^2.$$

On suppose qu'il existe deux réels $x_0$ et $y_0$ pour lesquels cette inégalité est stricte.

Démontrer que $f$ ne change jamais de signe : ou bien $f(x) \geq 0$ pour tout réel $x$, ou bien $f(x) \leq 0$ pour tout réel $x$.

## Hints

1. Vérifiez que la fonction $f(x) = x$ vérifie l'inégalité, avec égalité pour tous $x$ et $y$. Elle change de signe : l'hypothèse sur $x_0$ et $y_0$ est donc indispensable, et il faudra s'en servir.
2. Écrivez l'inégalité pour le couple $(x, y)$, puis pour le couple $(y, x)$, et ajoutez-les. Que deviennent les membres de droite ?
3. Pour deux réels $a$ et $b$ donnés, choisissez $x$ et $y$ tels que $x + y = a$ et $x - y = b$.
4. Vous devez obtenir $f(a)\left(f(b) + f(-b)\right) \geq 0$ pour tous réels $a$ et $b$. Utilisez enfin $x_0$ et $y_0$ pour trouver un $b$ tel que $f(b) + f(-b) \neq 0$.

## Solution

On note $I(x, y)$ l'inégalité de l'énoncé écrite pour le couple $(x, y)$.

### Étape 1 : une inégalité pour tous a et b

Soit $a$ et $b$ deux réels. Posons $u = \frac{a + b}{2}$ et $v = \frac{a - b}{2}$, de sorte que

$$u + v = a, \qquad u - v = b, \qquad v - u = -b.$$

L'inégalité $I(u, v)$ s'écrit

$$f(a)\, f(b) \geq f(u)^2 - f(v)^2,$$

et l'inégalité $I(v, u)$, où l'on a échangé les rôles de $u$ et $v$, s'écrit

$$f(a)\, f(-b) \geq f(v)^2 - f(u)^2.$$

Les deux membres de droite sont opposés. En ajoutant les deux inégalités, on obtient donc, pour tous réels $a$ et $b$,

$$f(a)\left(f(b) + f(-b)\right) \geq 0. \qquad (J)$$

### Étape 2 : on utilise x₀ et y₀

Reprenons le calcul de l'étape 1 avec $u = x_0$ et $v = y_0$, c'est-à-dire avec $a_0 = x_0 + y_0$ et $b_0 = x_0 - y_0$. La première inégalité, $I(x_0, y_0)$, est stricte par hypothèse. La somme est donc stricte elle aussi :

$$f(a_0)\left(f(b_0) + f(-b_0)\right) > 0.$$

Un produit strictement positif n'a aucun facteur nul. Le nombre $s = f(b_0) + f(-b_0)$ n'est donc pas nul.

### Étape 3 : conclusion

Appliquons $(J)$ avec $b = b_0$ : pour tout réel $a$, on a $s \cdot f(a) \geq 0$.

- Si $s > 0$, on peut diviser par $s$ sans changer le sens : $f(a) \geq 0$ pour tout réel $a$.
- Si $s < 0$, diviser par $s$ change le sens : $f(a) \leq 0$ pour tout réel $a$.

**Dans les deux cas, $f$ ne change pas de signe.**

## Going further

1. Vérifiez que la fonction $f(x) = |x|$ vérifie l'inégalité de l'énoncé, et qu'elle est stricte pour certains couples $(x, y)$. Lesquels ?
2. On n'a utilisé l'hypothèse stricte qu'une seule fois, pour savoir que $s \neq 0$. Pourquoi ne suffit-il pas de savoir que $f$ n'est pas la fonction nulle ?
