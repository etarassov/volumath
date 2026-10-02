---
id: "10436"
title: "f(x) f(y f(x) − 1) = x² f(y) − f(x)"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, fonction-impaire, rationnels, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs réelles, telles que

$$f(x)\,f(y f(x) - 1) = x^2 f(y) - f(x)$$

pour tous réels $x$ et $y$.

## Hints

1. Prends $x = 0$. Montre que si $f(0) \neq 0$, la fonction $f$ est constante, et que c'est impossible. Donc $f(0) = 0$.
2. On suppose maintenant que $f$ n'est pas la fonction nulle. Montre que $f(x) = 0$ seulement pour $x = 0$, puis que $f(1) = 1$. Prends ensuite $x = 1$ : que trouves-tu ? Utilise-le pour simplifier l'équation.
3. Montre que $f$ est impaire, que $f(y + n) = f(y) + n$ et $f(ny) = n\,f(y)$ pour tout entier $n$. Montre aussi que $f(x^2) = f(x)^2$, puis que $f$ est strictement positive sur $]0, +\infty[$.
4. Si $f(z) > z$ pour un certain réel $z$, glisse une fraction $\frac{n}{m}$ entre $z$ et $f(z)$, et calcule $f(n - mz)$ de deux façons.

## Solution

**Deux solutions.** La fonction nulle convient : les deux membres valent $0$. La fonction $f(x) = x$ convient aussi, car

$$x\,(yx - 1) = x^2 y - x .$$

Montrons qu'il n'y en a pas d'autre. Soit $f$ une solution. Notons $(E)$ l'équation de l'énoncé.

**Étape 1 : $f(0) = 0$.** Avec $x = 0$, $(E)$ donne $f(0)\,f(y f(0) - 1) = -f(0)$ pour tout $y$. Supposons $f(0) \neq 0$. En divisant par $f(0)$, on obtient $f(y f(0) - 1) = -1$ pour tout $y$. Quand $y$ parcourt $\mathbb{R}$, le nombre $y f(0) - 1$ parcourt aussi tout $\mathbb{R}$, donc $f$ est la fonction constante égale à $-1$. Mais alors $(E)$ avec $x = 1$ s'écrit $(-1) \times (-1) = 1 \times (-1) - (-1)$, c'est-à-dire $1 = 0$. C'est absurde, donc $f(0) = 0$.

À partir de maintenant, on suppose que $f$ n'est pas la fonction nulle, et on fixe un réel $a$ tel que $f(a) \neq 0$.

**Étape 2 : $f(-1) = -1$, et $f$ ne s'annule qu'en $0$.**

- Avec $x = a$ et $y = 0$, $(E)$ donne $f(a)\,f(-1) = a^2 f(0) - f(a) = -f(a)$. En divisant par $f(a)$, on obtient $f(-1) = -1$.
- Soit $x$ tel que $f(x) = 0$. Avec $y = a$, $(E)$ donne $0 = x^2 f(a) - 0$, donc $x^2 = 0$ et $x = 0$.

Ainsi $f(x) = 0$ si et seulement si $x = 0$.

**Étape 3 : $f(1) = 1$.** Avec $x = y = 1$, $(E)$ donne $f(1)\,f(f(1) - 1) = f(1) - f(1) = 0$. Comme $1 \neq 0$, on a $f(1) \neq 0$, donc $f(f(1) - 1) = 0$. D'après l'étape 2, $f(1) - 1 = 0$.

**Étape 4 : une équation plus simple.** Avec $x = 1$, $(E)$ donne $f(y - 1) = f(y) - 1$ pour tout réel $y$. En remplaçant $y$ par $y + 1$, on obtient aussi $f(y + 1) = f(y) + 1$. Par récurrence, dans un sens puis dans l'autre,

$$f(y + n) = f(y) + n \qquad \text{pour tout réel } y \text{ et tout entier relatif } n . \qquad (1)$$

En particulier $f(y f(x) - 1) = f(y f(x)) - 1$, et $(E)$ devient $f(x)\,f(y f(x)) - f(x) = x^2 f(y) - f(x)$, c'est-à-dire

$$f(x)\,f(y f(x)) = x^2 f(y) \qquad \text{pour tous réels } x, y . \qquad (2)$$

**Étape 5 : $f(ny) = n\,f(y)$ pour tout entier $n$.** D'après $(1)$ avec $y = 0$, on a $f(n) = n$ pour tout entier relatif $n$. Avec $x = n$, l'équation $(2)$ donne $n\,f(ny) = n^2 f(y)$. Pour $n \neq 0$, on divise par $n$ ; pour $n = 0$, les deux membres valent $0$. Donc

$$f(ny) = n\,f(y) \qquad \text{pour tout réel } y \text{ et tout entier relatif } n . \qquad (3)$$

Avec $n = -1$, on voit que $f$ est impaire.

**Étape 6 : $f$ est strictement positive sur $]0, +\infty[$.** Avec $y = 1$, l'équation $(2)$ donne

$$f(x)\,f(f(x)) = x^2 \qquad \text{pour tout réel } x . \qquad (4)$$

Soit $x \neq 0$. Alors $f(x) \neq 0$, puis $f(f(x)) \neq 0$ d'après l'étape 2. Appliquons $(2)$ en remplaçant $x$ et $y$ tous deux par le nombre $f(x)$ :

$$f(f(x))\,f(f(x)\,f(f(x))) = f(x)^2\,f(f(x)) .$$

En divisant par $f(f(x)) \neq 0$, et en utilisant $(4)$ à l'intérieur, on obtient $f(x^2) = f(x)^2$. Cette égalité est aussi vraie pour $x = 0$.

Soit maintenant $t > 0$. Alors $f(t) = f((\sqrt{t})^2) = f(\sqrt{t})^2 \geqslant 0$, et $f(t) \neq 0$ car $t \neq 0$. Donc $f(t) > 0$.

**Étape 7 : $f(z) = z$ pour tout réel $z$.** On utilise le fait suivant : *entre deux réels $u < v$, il y a toujours une fraction $\frac{n}{m}$, avec $n$ entier relatif et $m$ entier strictement positif.* En effet, choisissons un entier $m \geqslant 1$ tel que $m(v - u) > 1$, et posons $n = \lfloor mu \rfloor + 1$. Alors $mu < n \leqslant mu + 1 < mv$, donc $u < \frac{n}{m} < v$.

Soit $z$ un réel.

- Supposons $f(z) > z$. Choisissons une fraction telle que $z < \frac{n}{m} < f(z)$. Alors $n - mz > 0$, donc $f(n - mz) > 0$ d'après l'étape 6. Mais d'après $(1)$ puis $(3)$, $f(n - mz) = f(-mz) + n = n - m\,f(z)$, et ce nombre est strictement négatif puisque $f(z) > \frac{n}{m}$. C'est une contradiction.
- Supposons $f(z) < z$. Choisissons une fraction telle que $f(z) < \frac{n}{m} < z$. Alors $mz - n > 0$, donc $f(mz - n) > 0$. Mais $f(mz - n) = f(mz) - n = m\,f(z) - n < 0$. C'est encore une contradiction.

Donc $f(z) = z$.

**Conclusion.** Les solutions sont la fonction nulle et la fonction $x \mapsto x$.

## Going further

1. Vérifier directement que la seule fonction constante qui convient est la fonction nulle.
2. Montrer, en utilisant seulement $(3)$ et $f(n) = n$ pour tout entier $n$, que $f(r) = r$ pour tout nombre rationnel $r$. Pourquoi cela ne suffit-il pas pour conclure ?
