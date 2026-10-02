---
id: "12441"
title: "f(x² + x + f(y)) = y + f(x) + f(x)²"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, injectivite, bijection, involution, fonction-croissante]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 février 2019"
  reference: "2019-03_Test-27-02.pdf, exercice 2 ; corrigé 2019-03_Test-27-02-Corrige.pdf (fin de solution réécrite : une fonction croissante telle que f(f(x)) = x est l'identité, au lieu de l'équation de Cauchy)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-27-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-27-02.pdf"
---

## Statement

Trouver toutes les fonctions $f$ de $\mathbb{R}$ dans $\mathbb{R}$ telles que, pour tous réels $x$
et $y$,
$$f(x^2 + x + f(y)) = y + f(x) + f(x)^2.$$

## Hints

1. Remplace $x$ par $0$. Que peux-tu dire de $f(f(y))$ ? Déduis-en que deux réels différents ont
   des images différentes, et que tout réel est l'image d'un réel.
2. Les réels $x$ et $-1 - x$ donnent la même valeur de $x^2 + x$. Utilise-le pour trouver
   $f(-\frac{1}{2})$.
3. Avec $x = -\frac{1}{2}$, calcule de proche en proche $f(-\frac{1}{4})$, $f(0)$ et
   $f(\frac{1}{4})$. Montre ensuite que $f(f(y)) = y$ pour tout $y$.
4. Montre que $f$ est croissante. Une fonction croissante qui vérifie $f(f(x)) = x$ pour tout $x$
   peut-elle être autre chose que l'identité ?

## Solution

On note $(E_{x,y})$ l'égalité de l'énoncé pour les réels $x$ et $y$. La fonction identité
$f(x) = x$ convient, puisque les deux membres valent alors $x^2 + x + y$. Montrons que c'est la
seule. Soit $f$ une solution.

### Étape 1 : $f$ est injective et surjective

L'égalité $(E_{0,y})$ donne, pour tout réel $y$,
$$f(f(y)) = y + c, \qquad \text{où } c = f(0) + f(0)^2.$$

- **$f$ est injective** : si $f(a) = f(b)$, alors $f(f(a)) = f(f(b))$, donc $a + c = b + c$, et
  $a = b$.
- **$f$ est surjective** : tout réel $z$ s'écrit $z = f(f(z - c))$, donc $z$ est l'image du réel
  $f(z - c)$.

### Étape 2 : $f(-\frac{1}{2}) = -\frac{1}{2}$

Pour tout réel $x$, posons $t = -1 - x$. Alors
$$t^2 + t = (1 + 2x + x^2) - 1 - x = x^2 + x.$$
Les égalités $(E_{x,y})$ et $(E_{t,y})$ ont donc le même membre de gauche, et par conséquent
$$f(x) + f(x)^2 = f(t) + f(t)^2, \quad \text{soit} \quad (f(x) - f(t))(f(x) + f(t) + 1) = 0.$$
Ainsi, **$f(t) = f(x)$ ou $f(t) = -1 - f(x)$.**

D'après l'étape 1, il existe un réel $a$ tel que $f(a) = -\frac{1}{2}$. Appliquons ce qui précède
à $x = a$ et $t = -1 - a$ : on a $f(t) = -\frac{1}{2}$ ou $f(t) = -1 + \frac{1}{2} = -\frac{1}{2}$.
Dans les deux cas $f(t) = f(a)$, donc $t = a$ par injectivité, c'est-à-dire $-1 - a = a$, et
$a = -\frac{1}{2}$. Donc $f(-\frac{1}{2}) = -\frac{1}{2}$.

### Étape 3 : trois autres valeurs, puis $f(f(y)) = y$

Pour $x = -\frac{1}{2}$, on a $x^2 + x = \frac{1}{4} - \frac{1}{2} = -\frac{1}{4}$ et
$f(x) + f(x)^2 = -\frac{1}{2} + \frac{1}{4} = -\frac{1}{4}$. L'égalité $(E_{-1/2,\,y})$ s'écrit
donc, pour tout $y$,
$$f(-\tfrac{1}{4} + f(y)) = y - \tfrac{1}{4}. \qquad (1)$$

- Avec $y = -\frac{1}{4}$ : $f(-\frac{1}{4} + f(-\frac{1}{4})) = -\frac{1}{2} = f(-\frac{1}{2})$.
  Par injectivité, $-\frac{1}{4} + f(-\frac{1}{4}) = -\frac{1}{2}$, donc
  $f(-\frac{1}{4}) = -\frac{1}{4}$.
- Avec $y = 0$ : $f(-\frac{1}{4} + f(0)) = -\frac{1}{4} = f(-\frac{1}{4})$,
  donc $-\frac{1}{4} + f(0) = -\frac{1}{4}$, et $f(0) = 0$.
- Avec $y = \frac{1}{4}$ : $f(-\frac{1}{4} + f(\frac{1}{4})) = 0 = f(0)$,
  donc $f(\frac{1}{4}) = \frac{1}{4}$.

Puisque $f(0) = 0$, on a $c = 0$, et l'étape 1 donne **$f(f(y)) = y$ pour tout réel $y$.**

### Étape 4 : une relation d'addition

Remplaçons $y$ par $f(y)$ dans l'énoncé. Comme $f(f(y)) = y$, on obtient, pour tous réels $x$ et
$y$,
$$f(x^2 + x + y) = f(y) + f(x) + f(x)^2. \qquad (2)$$
Avec $y = 0$, et puisque $f(0) = 0$, cela donne $f(x^2 + x) = f(x) + f(x)^2$. En reportant dans
(2) :
$$f(x^2 + x + y) = f(x^2 + x) + f(y).$$

Or tout réel $u \geqslant -\frac{1}{4}$ s'écrit $u = x^2 + x$ : il suffit de prendre
$x = \frac{-1 + \sqrt{1 + 4u}}{2}$, qui existe car $1 + 4u \geqslant 0$. Donc
$$f(u + y) = f(u) + f(y) \quad \text{pour tout } u \geqslant -\tfrac{1}{4} \text{ et tout réel } y. \qquad (3)$$

### Étape 5 : $f$ est croissante

**$f$ est positive sur $[0, +\infty[$.** Soit $u \geqslant 0$. Comme $u - \frac{1}{4} \geqslant -\frac{1}{4}$,
on peut écrire $u - \frac{1}{4} = x^2 + x$ pour un certain réel $x$. L'égalité (2) avec
$y = \frac{1}{4}$ donne alors
$$f(u) = f(\tfrac{1}{4}) + f(x) + f(x)^2 = \tfrac{1}{4} + f(x) + f(x)^2 = (f(x) + \tfrac{1}{2})^2 \geqslant 0.$$

**$f$ est croissante.** Soient $s \leqslant t$ deux réels. Posons $u = t - s \geqslant 0$.
D'après (3), $f(t) = f(u + s) = f(u) + f(s) \geqslant f(s)$.

### Étape 6 : $f$ est l'identité

Soit $x$ un réel. Supposons $f(x) > x$. Comme $f$ est croissante, $f(f(x)) \geqslant f(x) > x$. Or
$f(f(x)) = x$ : c'est absurde. De même, si $f(x) < x$, alors $f(f(x)) \leqslant f(x) < x$, ce qui
est encore absurde. Donc $f(x) = x$.

### Conclusion

**La seule solution est la fonction identité, $f(x) = x$ pour tout réel $x$.**
