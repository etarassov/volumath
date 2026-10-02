---
id: "10462"
title: "f(1 + x f(y)) = y f(x + y)"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, injectivite, inegalite, limites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Senior, exercice 8 ; corrigé 2019-02_envoi-3-cor.pdf (coquille dans le corrigé : la substitution x = y f(y)⁻¹ doit se lire x = (y f(y))⁻¹)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $]0, +\infty[$, à valeurs dans $]0, +\infty[$, telles que

$$f(1 + x f(y)) = y\,f(x + y)$$

pour tous réels $x > 0$ et $y > 0$.

## Hints

1. Cherche une solution parmi les fonctions usuelles.
2. Si l'on peut choisir $x > 0$ de sorte que $1 + x f(y) = x + y$, que dit l'équation ? Déduis-en que $f(t) \leqslant 1$ pour tout $t > 1$.
3. Le membre de gauche est donc toujours au plus égal à $1$. Déduis-en que $f(t) \leqslant 1 / t$ pour tout $t > 0$.
4. Montre que $f$ est injective. Il sera utile de savoir d'abord que $y\,f(y)$ reste plus grand qu'une constante strictement positive : essaie $x = 1 / f(y)$.
5. Pour finir, prends $x = 1 / (y f(y))$, et compare avec l'équation écrite pour $x = 1$ et $1 / y$ à la place de $y$.

## Solution

**Une solution.** La fonction $f(t) = 1 / t$ convient : pour tous $x, y > 0$,

$$f\left( 1 + \frac{x}{y} \right) = \frac{y}{x + y} = y \cdot \frac{1}{x + y} = y\,f(x + y) .$$

Montrons que c'est la seule. Soit $f$ une solution. On note $(E)$ l'équation de l'énoncé.

**Étape 1 : $f(t) \leqslant 1$ pour $t > 1$, et $f(t) \geqslant 1$ pour $t < 1$.** Soit $y > 0$ tel que $f(y) \neq 1$, et supposons que le nombre $x = (y - 1) / (f(y) - 1)$ soit strictement positif. Il vérifie $x f(y) - x = y - 1$, c'est-à-dire $1 + x f(y) = x + y$. En notant $z = x + y$, l'équation $(E)$ donne $f(z) = y\,f(z)$, donc $y = 1$ puisque $f(z) > 0$. Mais alors $x = 0$, ce qui est absurde.

Donc, pour tout $y$ tel que $f(y) \neq 1$, les nombres $y - 1$ et $f(y) - 1$ ne sont pas de même signe strict. On en déduit : si $y > 1$, alors $f(y) \leqslant 1$, et si $y < 1$, alors $f(y) \geqslant 1$.

**Étape 2 : $f(t) \leqslant 1 / t$ pour tout $t > 0$.** Pour tous $x, y > 0$, on a $1 + x f(y) > 1$, donc d'après l'étape 1, $f(1 + x f(y)) \leqslant 1$, et $(E)$ donne

$$y\,f(x + y) \leqslant 1 \qquad \text{pour tous } x, y > 0 .$$

Soit $t > 0$. Pour tout $y$ de $]0, t[$, on peut prendre $x = t - y > 0$, et on obtient $f(t) \leqslant 1 / y$. Supposons $f(t) > 1 / t$, c'est-à-dire $1 / f(t) < t$. Choisissons $y$ strictement entre $1 / f(t)$ et $t$. Alors $f(t) \leqslant 1 / y < f(t)$, ce qui est absurde. Donc

$$f(t) \leqslant \frac{1}{t} \qquad \text{pour tout } t > 0 . \qquad (1)$$

**Étape 3 : $y\,f(y)$ est minoré par une constante strictement positive.** Soit $y > 0$. Prenons $x = 1 / f(y)$ dans $(E)$ : comme $1 + x f(y) = 2$, on obtient

$$f(2) = y\,f\left( y + \frac{1}{f(y)} \right) \leqslant \frac{y}{y + 1 / f(y)} = \frac{y f(y)}{y f(y) + 1} ,$$

en utilisant $(1)$. Notons $s = y f(y) > 0$. L'inégalité s'écrit $f(2) \leqslant s / (s + 1) < 1$, puis $f(2)(s + 1) \leqslant s$, c'est-à-dire $s\,(1 - f(2)) \geqslant f(2)$. Comme $0 < f(2) < 1$, on obtient

$$y\,f(y) \geqslant C \qquad \text{pour tout } y > 0, \qquad \text{où } C = \frac{f(2)}{1 - f(2)} > 0 . \qquad (2)$$

**Étape 4 : $f$ est injective.** Supposons $f(\alpha) = f(\beta)$ avec $0 < \alpha < \beta$, et notons $d = \beta - \alpha > 0$ et $q = \alpha / \beta$, qui est dans $]0, 1[$. Écrivons $(E)$ avec $y = \alpha$ puis avec $y = \beta$. Les deux membres de gauche sont égaux, car $f(\alpha) = f(\beta)$. Donc

$$\alpha\,f(x + \alpha) = \beta\,f(x + \beta) \qquad \text{pour tout } x > 0 .$$

Autrement dit, pour tout $t > \alpha$, on a $f(t + d) = q\,f(t)$. En appliquant cela à $t = \beta$, puis $t = \beta + d$, puis $t = \beta + 2d$, et ainsi de suite, on obtient par récurrence

$$f(\beta + k d) = q^k f(\beta) \qquad \text{pour tout entier } k \geqslant 0 .$$

D'après $(2)$ appliquée en $\beta + kd$,

$$C \leqslant (\beta + k d)\,q^k f(\beta) \qquad \text{pour tout } k \geqslant 0 .$$

Or, comme $0 < q < 1$, les suites $(q^k)$ et $(k q^k)$ tendent vers $0$ (croissances comparées, car $k q^k = k\,e^{k \ln q}$ avec $\ln q < 0$). Le membre de droite tend donc vers $0$, alors que $C > 0$. C'est absurde, donc $f$ est injective.

**Étape 5 : conclusion.** Soit $y > 0$. Prenons $x = 1 / (y f(y))$ dans $(E)$. Comme $1 + x f(y) = 1 + 1 / y$,

$$f\left( 1 + \frac{1}{y} \right) = y\,f\left( y + \frac{1}{y f(y)} \right) . \qquad (3)$$

Écrivons aussi $(E)$ avec $x = 1$ et $1 / y$ à la place de $y$ :

$$f\left( 1 + f\left( \frac{1}{y} \right) \right) = \frac{1}{y}\,f\left( 1 + \frac{1}{y} \right) = f\left( y + \frac{1}{y f(y)} \right) ,$$

la dernière égalité venant de $(3)$. Comme $f$ est injective,

$$1 + f\left( \frac{1}{y} \right) = y + \frac{1}{y f(y)} .$$

D'après $(1)$, $f(1 / y) \leqslant y$, donc $y + 1 / (y f(y)) \leqslant 1 + y$, c'est-à-dire $1 / (y f(y)) \leqslant 1$, soit $y f(y) \geqslant 1$. Avec $(1)$, on a aussi $y f(y) \leqslant 1$. Donc $y f(y) = 1$.

**Conclusion.** La seule fonction qui convient est $f(t) = 1 / t$.

## Going further

1. Montrer directement, sans les croissances comparées, que $k q^k$ tend vers $0$ quand $0 < q < 1$. (On pourra écrire $1 / q = 1 + h$ avec $h > 0$, et minorer $(1 + h)^k$ par $k(k - 1) h^2 / 2$ pour $k \geqslant 2$.)
2. Trouver toutes les fonctions $f$ de $]0, +\infty[$ dans $]0, +\infty[$ telles que $f(x f(y)) = y\,f(x)$ pour tous $x, y > 0$ et qui tendent vers $0$ en $+\infty$.
