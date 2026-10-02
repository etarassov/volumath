---
id: "11643"
title: "L'équation f(x + y) + f(x)f(y) = f(xy) + f(x) + f(y)"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [equations fonctionnelles, fonctions, monotonie, periodicite, rationnels, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices communs, exercice 5 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf (dans le calcul qui mène à f(xy + x) = f(x) + (2 − a)f(xy), la dernière ligne du corrigé se termine par « + x » au lieu de « + a »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x + y) + f(x)\,f(y) = f(xy) + f(x) + f(y).$$

## Hints

1. Prends $y = 0$. Ensuite, dans le cas où $f(0) = 0$, prends $y = 1$ et note $a = f(1)$.
2. Remplace $y$ par $y + 1$ dans l'équation, et utilise la relation obtenue avec $y = 1$ pour faire disparaître les $f(\ldots + 1)$. Tu dois arriver à $f(xy + x) = (2 - a)\,f(xy) + f(x)$.
3. Prends $y = -1$ dans cette nouvelle relation. Si $f$ n'est pas la fonction nulle, montre que $a = 1$ ou $a = 3$.
4. Si $a = 1$, montre que $f(u + v) = f(u) + f(v)$ et $f(uv) = f(u)\,f(v)$ pour tous $u$, $v$, puis que $f$ est croissante. Si $a = 3$, montre que $f$ est périodique de période $2$, puis que tout réel non nul est une période.

## Solution

On note $(E)$ l'équation de l'énoncé.

**Étape 1 : $y = 0$.** L'équation $(E)$ avec $y = 0$ donne $f(x) + f(x)\,f(0) = f(0) + f(x) + f(0)$, c'est-à-dire
$$f(0)\,\left(f(x) - 2\right) = 0 \quad \text{pour tout réel } x.$$
Si $f(0) \neq 0$, alors $f(x) = 2$ pour tout $x$. **La fonction constante égale à $2$ est solution** : $2 + 2 \times 2 = 2 + 2 + 2$.

Dans toute la suite, on suppose $f(0) = 0$, et on note $a = f(1)$.

**Étape 2 : $y = 1$.** L'équation $(E)$ avec $y = 1$ donne $f(x + 1) + a\,f(x) = f(x) + f(x) + a$, donc
$$f(x + 1) = (2 - a)\,f(x) + a \quad \text{pour tout réel } x. \qquad (R)$$

**Étape 3 : une nouvelle relation.** On écrit $(E)$ avec $y + 1$ à la place de $y$ :
$$f(x + y + 1) + f(x)\,f(y + 1) = f(xy + x) + f(x) + f(y + 1).$$
On remplace $f(x + y + 1)$ et $f(y + 1)$ grâce à $(R)$. Le membre de gauche devient
$$(2 - a)\,f(x + y) + a + f(x)\left((2 - a)\,f(y) + a\right) = (2 - a)\left(f(x + y) + f(x)\,f(y)\right) + a + a\,f(x).$$
D'après $(E)$, la parenthèse vaut $f(xy) + f(x) + f(y)$, donc le membre de gauche vaut
$$(2 - a)\,f(xy) + (2 - a)\,f(x) + (2 - a)\,f(y) + a + a\,f(x) = (2 - a)\,f(xy) + 2\,f(x) + (2 - a)\,f(y) + a.$$
Le membre de droite vaut $f(xy + x) + f(x) + (2 - a)\,f(y) + a$. En égalant les deux et en simplifiant :
$$f(xy + x) = (2 - a)\,f(xy) + f(x) \quad \text{pour tous réels } x, y. \qquad (G)$$

**Étape 4 : $a = 1$ ou $a = 3$.** Avec $y = -1$, la relation $(G)$ donne $f(0) = (2 - a)\,f(-x) + f(x)$, donc
$$f(x) = -(2 - a)\,f(-x) \quad \text{pour tout réel } x.$$
En appliquant cela à $-x$, on a aussi $f(-x) = -(2 - a)\,f(x)$, donc $f(x) = (2 - a)^2\,f(x)$.

- Si $f(x) = 0$ pour tout $x$, **la fonction nulle est solution** : $0 + 0 = 0 + 0 + 0$.
- Sinon, on choisit un $x$ tel que $f(x) \neq 0$ et l'on obtient $(2 - a)^2 = 1$, donc $2 - a = 1$ ou $2 - a = -1$, c'est-à-dire $a = 1$ ou $a = 3$.

**Étape 5 : le cas $a = 3$ est impossible.** La relation $(R)$ s'écrit $f(x + 1) = 3 - f(x)$. En l'appliquant deux fois, $f(x + 2) = 3 - f(x + 1) = 3 - 3 + f(x) = f(x)$ : la fonction $f$ est périodique de période $2$.

On écrit $(E)$ avec $y + 2$ à la place de $y$. Comme $f(x + y + 2) = f(x + y)$ et $f(y + 2) = f(y)$, on obtient
$$f(x + y) + f(x)\,f(y) = f(xy + 2x) + f(x) + f(y).$$
En comparant avec $(E)$, on trouve $f(xy + 2x) = f(xy)$ pour tous $x$ et $y$.

Soient maintenant $u$ un réel et $h$ un réel non nul. On prend $x = h/2$ et $y = u/x$ : alors $xy = u$ et $2x = h$, donc $f(u + h) = f(u)$. Tout réel non nul est donc une période de $f$, et en particulier $f(1) = f(0 + 1) = f(0) = 0$. C'est impossible, puisque $f(1) = a = 3$.

**Étape 6 : le cas $a = 1$.** La relation $(G)$ devient $f(xy + x) = f(xy) + f(x)$.

- *Additivité.* Soient $u$ et $v$ deux réels. Si $v \neq 0$, on prend $x = v$ et $y = u/v$ : alors $f(u + v) = f(u) + f(v)$. Si $v = 0$, c'est encore vrai puisque $f(0) = 0$. Donc
$$f(u + v) = f(u) + f(v) \quad \text{pour tous réels } u, v.$$
- *Multiplicativité.* En remplaçant $f(x + y)$ par $f(x) + f(y)$ dans $(E)$, il reste $f(x)\,f(y) = f(xy)$ pour tous $x$, $y$.
- *Croissance.* Pour $t \geqslant 0$, on a $f(t) = f(\sqrt{t} \times \sqrt{t}) = f(\sqrt{t})^2 \geqslant 0$. Si $u \leqslant v$, alors $f(v) = f(u) + f(v - u) \geqslant f(u)$. Donc $f$ est croissante.
- *Valeurs aux rationnels.* L'additivité donne, par récurrence, $f(nx) = n\,f(x)$ pour tout entier $n \geqslant 0$, et $f(-x) = -f(x)$ puisque $f(x) + f(-x) = f(0) = 0$. Donc $f(m) = m\,f(1) = m$ pour tout entier relatif $m$. Pour un rationnel $q = m/n$ avec $n \geqslant 1$, on a $n\,f(q) = f(nq) = f(m) = m$, donc $f(q) = q$.
- *Valeurs aux réels.* Soit $x$ un réel. Supposons $f(x) > x$. Il existe un rationnel $r$ tel que $x < r < f(x)$ : on choisit un entier $n \geqslant 1$ tel que $1/n < f(x) - x$, et l'un des nombres $m/n$ tombe entre $x$ et $f(x)$. Comme $f$ est croissante et $x < r$, on a $f(x) \leqslant f(r) = r < f(x)$, ce qui est absurde. De la même façon, $f(x) < x$ est impossible. Donc $f(x) = x$.

Réciproquement, **la fonction $f(x) = x$ est solution** : $(x + y) + xy = xy + x + y$.

**Conclusion : les solutions sont la fonction nulle, la fonction constante égale à $2$, et la fonction $x \mapsto x$.**
