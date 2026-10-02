---
id: "12015"
title: "f(x + f(y + f(z))) = y + f(x + z) sur les rationnels"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [equation fonctionnelle, rationnels, fonctions affines, equation de cauchy, substitution]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 5 (sujet olympique) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf (coquilles dans le premier cas du corrigé : une parenthèse mal placée dans l'équation développée, et « a³ = 3 » au lieu de a³ = a ; la conclusion est juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

On note $\mathbb{Q}$ l'ensemble des nombres rationnels. Déterminer toutes les fonctions $f : \mathbb{Q} \to \mathbb{Q}$ telles que, pour tous rationnels $x$, $y$, $z$,

$$f\left(x + f(y + f(z))\right) = y + f(x + z) .$$

## Hints

1. Choisissez $y$ pour que $y + f(z)$ soit nul. Que devient l'équation ?
2. Vous devez obtenir que $f(x + z) - f(z)$ ne dépend pas de $z$. En prenant $z = 0$, montrez que la fonction $g(x) = f(x) - f(0)$ vérifie $g(x + z) = g(x) + g(z)$.
3. Une fonction $g : \mathbb{Q} \to \mathbb{Q}$ telle que $g(x + z) = g(x) + g(z)$ est de la forme $g(x) = ax$. Montrez-le d'abord pour les entiers, puis pour les fractions $\dfrac{m}{n}$.
4. Il reste à chercher quelles fonctions affines $f(x) = ax + b$ conviennent : remplacez dans l'équation et identifiez les coefficients de $x$, $y$, $z$.

## Solution

**Réponse.** Les solutions sont la fonction $f(x) = x$ et les fonctions $f(x) = b - x$, où $b$ est un rationnel quelconque.

**Ces fonctions conviennent.**

- Si $f(x) = x$ : le membre de gauche vaut $x + y + z$, et le membre de droite $y + x + z$.
- Si $f(x) = b - x$ : on a $f(z) = b - z$, puis $f(y + f(z)) = b - (y + b - z) = z - y$, puis
$$f\left(x + f(y + f(z))\right) = b - (x + z - y) = b - x - z + y ,$$
et le membre de droite vaut $y + b - (x + z)$, la même chose.

Montrons qu'il n'y en a pas d'autres. Soit $f$ une solution.

**Étape 1 : une substitution.** Pour $z$ rationnel fixé, prenons $y = -f(z)$, de sorte que $y + f(z) = 0$. L'équation devient

$$f\left(x + f(0)\right) = -f(z) + f(x + z), \qquad \text{c'est-à-dire} \qquad f(x + z) - f(z) = f(x + f(0)) .$$

Le membre de droite ne dépend pas de $z$. Donc $f(x + z) - f(z)$ a la même valeur pour tout $z$, en particulier la même que pour $z = 0$ :

$$f(x + z) - f(z) = f(x) - f(0) \qquad \text{pour tous } x, z \in \mathbb{Q}. \qquad (1)$$

Posons $g(x) = f(x) - f(0)$. En retranchant $f(0)$ deux fois, $(1)$ s'écrit

$$g(x + z) = g(x) + g(z) \qquad \text{pour tous } x, z \in \mathbb{Q}. \qquad (2)$$

**Étape 2 : $g$ est linéaire.** Posons $a = g(1)$ et montrons que $g(x) = ax$ pour tout rationnel $x$.

- Avec $x = z = 0$ dans $(2)$ : $g(0) = 2g(0)$, donc $g(0) = 0$.
- Pour tout rationnel $x$ et tout entier $n \ge 1$, on a $g(nx) = n\,g(x)$. En effet c'est vrai pour $n = 1$, et si c'est vrai pour $n$, alors $(2)$ donne $g((n+1)x) = g(nx) + g(x) = (n+1)\,g(x)$.
- Avec $z = -x$ dans $(2)$ : $0 = g(0) = g(x) + g(-x)$, donc $g(-x) = -g(x)$.
- Soit $x = \dfrac{m}{n}$ un rationnel positif, avec $m \ge 0$ et $n \ge 1$ entiers. En utilisant deux fois le deuxième point,
$$n\,g\!\left(\frac{m}{n}\right) = g\!\left(n \times \frac{m}{n}\right) = g(m) = g(m \times 1) = m\,g(1) = ma ,$$
donc $g\!\left(\dfrac{m}{n}\right) = a\,\dfrac{m}{n}$. (Pour $m = 0$, c'est $g(0) = 0$.)
- Si $x$ est un rationnel négatif, $-x$ est positif et $g(x) = -g(-x) = -a(-x) = ax$.

Donc $g(x) = ax$ pour tout $x \in \mathbb{Q}$. En notant $b = f(0)$, on a obtenu :

$$f(x) = ax + b \qquad \text{pour tout } x \in \mathbb{Q}, \text{ avec } a, b \in \mathbb{Q}.$$

**Étape 3 : quelles fonctions affines conviennent ?** Avec $f(x) = ax + b$, calculons les deux membres :

$$f(z) = az + b, \qquad f(y + f(z)) = a(y + az + b) + b = ay + a^2 z + ab + b ,$$

$$f\left(x + f(y + f(z))\right) = a\left(x + ay + a^2 z + ab + b\right) + b = ax + a^2 y + a^3 z + a^2 b + ab + b ,$$

$$y + f(x + z) = ax + y + az + b .$$

L'égalité doit avoir lieu pour tous $x$, $y$, $z$.

- Avec $x = z = 0$ et $y = 1$, puis $y = 0$, et en retranchant : $a^2 = 1$, donc $a = 1$ ou $a = -1$.
- Avec $x = y = 0$ et $z = 1$, puis $z = 0$, et en retranchant : $a^3 = a$, ce qui est déjà vrai quand $a^2 = 1$.
- Avec $x = y = z = 0$ : $a^2 b + ab + b = b$, soit $b\,(a^2 + a) = 0$. Comme $a^2 = 1$, cela donne $b\,(1 + a) = 0$.

Si $a = 1$, alors $2b = 0$, donc $b = 0$ et $f(x) = x$. Si $a = -1$, la condition est vraie pour tout $b$, et $f(x) = b - x$.

**Conclusion.** Les solutions sont $f(x) = x$ et les fonctions $f(x) = b - x$ avec $b \in \mathbb{Q}$ quelconque.

## Going further

L'étape 2 est l'*équation de Cauchy*. Sur $\mathbb{Q}$, elle force $g(x) = ax$ sans aucune autre hypothèse. Sur $\mathbb{R}$, ce n'est plus vrai : il existe des fonctions bizarres qui vérifient $g(x + z) = g(x) + g(z)$ sans être de la forme $ax$. On peut seulement conclure si l'on sait en plus que $g$ est continue, ou monotone, ou bornée sur un intervalle.
