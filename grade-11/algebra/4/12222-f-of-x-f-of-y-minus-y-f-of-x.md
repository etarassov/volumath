---
id: "12222"
title: "f(xf(y) − yf(x)) = f(xy) − xy"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [equation fonctionnelle, substitution, valeur absolue, analyse synthese, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercice commun, exercice 4 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f\left(x f(y) - y f(x)\right) = f(xy) - xy.$$

## Hints

1. Essaie $y = x$, puis $y = 0$. Tu dois trouver $f(0)$ et les valeurs de $f$ sur les réels positifs.
2. Avec $x = 1$, puis avec $y = 1$, montre que $f(x) \geqslant x$ pour tout réel $x$. Pose $a = f(x) - x$ et regarde $f(a)$ et $f(-a)$.
3. Avec $y = -1$ et $x > 0$, montre que $f$ est de la forme $t \mapsto kt$ sur les réels négatifs.
4. Il reste à trouver $k$ : essaie $x = -1$ et $y = 1$.

## Solution

On note $(E)$ l'égalité de l'énoncé, et $(E)$ en $(x, y)$ cette égalité écrite pour des valeurs précises de $x$ et $y$. On cherche d'abord ce que doit être $f$, puis on vérifie que les fonctions trouvées conviennent.

**Étape 1. Les réels positifs.**

$(E)$ en $(x, x)$ donne $f(x f(x) - x f(x)) = f(x^2) - x^2$, c'est-à-dire $f(0) = f(x^2) - x^2$. Notons $c = f(0)$. Comme tout réel $t \geqslant 0$ s'écrit $t = x^2$ (avec $x = \sqrt{t}$), on obtient

$$f(t) = t + c \qquad \text{pour tout } t \geqslant 0.$$

**Étape 2. $f(0) = 0$.**

$(E)$ en $(x, 0)$ donne $f(x f(0) - 0) = f(0) - 0$, c'est-à-dire $f(cx) = c$ pour tout réel $x$.

Si $c \neq 0$, alors $cx$ prend toutes les valeurs réelles quand $x$ parcourt $\mathbb{R}$, donc $f$ serait constante, égale à $c$. Mais l'étape 1 donne $f(1) = 1 + c \neq c$. C'est impossible. Donc $c = 0$, et

$$f(t) = t \qquad \text{pour tout } t \geqslant 0.$$

En particulier $f(1) = 1$.

**Étape 3. $f(x) \geqslant x$ pour tout réel $x$.**

Fixons un réel $x$ et posons $a = f(x) - x$.

- $(E)$ en $(1, x)$ donne $f(f(x) - x f(1)) = f(x) - x$, c'est-à-dire $f(a) = a$.
- $(E)$ en $(x, 1)$ donne $f(x f(1) - f(x)) = f(x) - x$, c'est-à-dire $f(-a) = a$.

Supposons $a < 0$. Alors $-a > 0$, donc $f(-a) = -a$ d'après l'étape 2. Avec $f(-a) = a$, on obtient $a = -a$, donc $a = 0$, ce qui contredit $a < 0$. Donc $a \geqslant 0$, c'est-à-dire $f(x) \geqslant x$.

**Étape 4. Sur les réels négatifs, $f$ est de la forme $t \mapsto kt$.**

Notons $d = f(-1)$. D'après l'étape 3, $d \geqslant -1$. Soit $x > 0$, de sorte que $f(x) = x$. $(E)$ en $(x, -1)$ donne

$$f\left(x f(-1) + f(x)\right) = f(-x) + x, \qquad \text{c'est-à-dire} \qquad f\left(x(d + 1)\right) = f(-x) + x.$$

Comme $x > 0$ et $d + 1 \geqslant 0$, le nombre $x(d + 1)$ est positif, donc $f(x(d + 1)) = x(d + 1)$ d'après l'étape 2. On en déduit $f(-x) = x(d + 1) - x = dx$.

Posons $k = -d$. Pour tout $t < 0$, on applique ce qui précède à $x = -t > 0$ : $f(t) = d \times (-t) = kt$. De plus $k = -d \leqslant 1$.

**Étape 5. $k = 1$ ou $k = -1$.**

On a $f(1) = 1$ et $f(-1) = -k$. $(E)$ en $(-1, 1)$ donne

$$f\left(-f(1) - f(-1)\right) = f(-1) + 1, \qquad \text{c'est-à-dire} \qquad f(k - 1) = 1 - k.$$

Si $k < 1$, alors $k - 1 < 0$, donc $f(k - 1) = k(k - 1)$ d'après l'étape 4. On obtient $k(k - 1) = 1 - k$, soit $(k - 1)(k + 1) = 0$, et comme $k \neq 1$, $k = -1$.

Sinon $k = 1$. Il reste donc deux possibilités :

- $k = 1$ : $f(t) = t$ pour tout réel $t$ ;
- $k = -1$ : $f(t) = t$ pour $t \geqslant 0$ et $f(t) = -t$ pour $t < 0$, c'est-à-dire $f(t) = |t|$.

**Étape 6. Vérification.**

*La fonction $f(t) = t$.* Le membre de gauche vaut $f(xy - yx) = f(0) = 0$ et le membre de droite vaut $xy - xy = 0$.

*La fonction $f(t) = |t|$.* Le membre de droite vaut $|xy| - xy$. Il vaut $0$ si $xy \geqslant 0$, et $-2xy$ si $xy < 0$. Pour le membre de gauche, on calcule $x|y| - y|x|$ selon les signes de $x$ et $y$.

- Si $x \geqslant 0$ et $y \geqslant 0$ : $xy - yx = 0$.
- Si $x \leqslant 0$ et $y \leqslant 0$ : $x(-y) - y(-x) = 0$.
- Si $x > 0 > y$ : $x(-y) - yx = -2xy$, qui est positif.
- Si $x < 0 < y$ : $xy - y(-x) = 2xy$, qui est négatif, et sa valeur absolue est $-2xy$.

Dans les deux premiers cas, $xy \geqslant 0$ et les deux membres valent $0$. Dans les deux derniers, $xy < 0$ et les deux membres valent $-2xy$.

**Réponse : les solutions sont la fonction $f(x) = x$ et la fonction valeur absolue $f(x) = |x|$.**

## Going further

Une fois l'étape 2 obtenue, il est tentant de « deviner » que $f(x) = x$ est la seule solution. La fonction valeur absolue montre qu'il ne faut jamais oublier de chercher d'autres solutions, et que la vérification de la fin n'est pas une formalité.

Que se passe-t-il pour les fonctions de la forme $f(t) = t$ pour $t \geqslant 0$ et $f(t) = kt$ pour $t < 0$, avec $k$ quelconque ? Vérifie directement, avec $x = -1$ et $y = 1$, qu'elles ne conviennent que pour $k = 1$ et $k = -1$.
