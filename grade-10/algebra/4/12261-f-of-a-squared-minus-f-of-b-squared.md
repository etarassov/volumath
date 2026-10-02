---
id: "12261"
title: "f(a²) − f(b²) ≤ (f(a) + b)(a − f(b))"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [equation fonctionnelle, substitution, fonction impaire, inegalite]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 1 (groupe B)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous réels $a$ et $b$,
$$f(a^2) - f(b^2) \leqslant \left(f(a) + b\right)\left(a - f(b)\right).$$

## Hints

1. Commence par des valeurs simples : $a = b = 0$, puis $b = 0$, puis $a = 0$.
2. Tu dois obtenir $f(0) = 0$, puis $f(x^2) = x\,f(x)$ pour tout réel $x$. Remplace $f(a^2)$ et $f(b^2)$ dans l'inégalité de départ, développe et simplifie.
3. Tu dois arriver à $f(a)\,f(b) \leqslant ab$. Que donne l'égalité $f(x^2) = x\,f(x)$ quand on remplace $x$ par $-x$ ?
4. La fonction $f$ est impaire. Remplace $b$ par $-b$ dans $f(a)\,f(b) \leqslant ab$.

## Solution

**Étape 1. On a $f(0) = 0$.**

Avec $a = b = 0$, l'inégalité donne $f(0) - f(0) \leqslant f(0) \times \left(-f(0)\right)$, c'est-à-dire $0 \leqslant -f(0)^2$. Un carré n'est jamais strictement négatif, donc $f(0)^2 = 0$ et $f(0) = 0$.

**Étape 2. Pour tout réel $x$, $f(x^2) = x\,f(x)$.**

Soit $x$ un réel.

- Avec $a = x$ et $b = 0$, on obtient $f(x^2) - f(0) \leqslant f(x) \times \left(x - f(0)\right)$, c'est-à-dire $f(x^2) \leqslant x\,f(x)$.
- Avec $a = 0$ et $b = x$, on obtient $f(0) - f(x^2) \leqslant \left(f(0) + x\right) \times \left(0 - f(x)\right)$, c'est-à-dire $-f(x^2) \leqslant -x\,f(x)$, soit $f(x^2) \geqslant x\,f(x)$.

Les deux inégalités donnent
$$f(x^2) = x\,f(x) \quad \text{pour tout réel } x. \qquad (1)$$

**Étape 3. Pour tous réels $a$ et $b$, $f(a)\,f(b) \leqslant ab$.**

D'après $(1)$, le membre de gauche de l'inégalité de départ vaut $a\,f(a) - b\,f(b)$. On développe le membre de droite :
$$\left(f(a) + b\right)\left(a - f(b)\right) = a\,f(a) - f(a)\,f(b) + ab - b\,f(b).$$
L'inégalité devient $a\,f(a) - b\,f(b) \leqslant a\,f(a) - f(a)\,f(b) + ab - b\,f(b)$. On retire $a\,f(a) - b\,f(b)$ des deux côtés :
$$f(a)\,f(b) \leqslant ab \quad \text{pour tous réels } a \text{ et } b. \qquad (2)$$

**Étape 4. La fonction $f$ est impaire.**

Soit $x$ un réel. On applique $(1)$ à $x$, puis à $-x$. Comme $(-x)^2 = x^2$, on obtient
$$x\,f(x) = f(x^2) = (-x)\,f(-x).$$
Si $x \neq 0$, on divise par $x$ : $f(-x) = -f(x)$. Si $x = 0$, l'égalité $f(-0) = -f(0)$ est vraie aussi, puisque $f(0) = 0$. Donc $f(-x) = -f(x)$ pour tout réel $x$.

**Étape 5. Pour tous réels $a$ et $b$, $f(a)\,f(b) = ab$.**

On applique $(2)$ à $a$ et à $-b$ : $f(a)\,f(-b) \leqslant a \times (-b)$. Comme $f(-b) = -f(b)$, cela s'écrit $-f(a)\,f(b) \leqslant -ab$, c'est-à-dire $f(a)\,f(b) \geqslant ab$. Avec $(2)$, on obtient
$$f(a)\,f(b) = ab \quad \text{pour tous réels } a \text{ et } b. \qquad (3)$$

**Étape 6. Les fonctions possibles.**

On note $c = f(1)$. Avec $a = b = 1$, l'égalité $(3)$ donne $c^2 = 1$, donc $c = 1$ ou $c = -1$. Avec $b = 1$, elle donne $c\,f(a) = a$ pour tout réel $a$. Comme $c^2 = 1$, on multiplie par $c$ et l'on obtient $f(a) = c\,a$.

- Si $c = 1$, alors $f(x) = x$ pour tout réel $x$.
- Si $c = -1$, alors $f(x) = -x$ pour tout réel $x$.

**Étape 7. Réciproquement, ces deux fonctions conviennent.**

- Pour $f(x) = x$, le membre de gauche vaut $a^2 - b^2$, et le membre de droite $(a + b)(a - b) = a^2 - b^2$. L'inégalité est vraie, c'est même une égalité.
- Pour $f(x) = -x$, le membre de gauche vaut $-a^2 + b^2$, et le membre de droite $(-a + b)(a + b) = b^2 - a^2$. L'inégalité est vraie, c'est encore une égalité.

**Conclusion.** Les fonctions cherchées sont $f(x) = x$ et $f(x) = -x$.

## Going further

1. On ne demande plus l'inégalité que pour $a \geqslant 0$ et $b \geqslant 0$. Montre que la fonction nulle convient alors aussi. Quelle étape de la démonstration ne marche plus ?
2. Pourquoi l'inégalité est-elle forcément une égalité pour toute solution ? Relis les étapes 3 et 5 pour le voir.
