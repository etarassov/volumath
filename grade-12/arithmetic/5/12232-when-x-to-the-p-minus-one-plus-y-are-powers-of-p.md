---
id: "12232"
title: "Quand xᵖ⁻¹ + y et x + yᵖ⁻¹ sont des puissances de p"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres-premiers, puissances, petit-theoreme-de-fermat, congruences, lemme-de-gauss, factorisation, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 2"
  reference: "2017-10_ofm-2014-2015-test-mai-2.pdf, test final du 13 mai 2015, exercices pour les candidats OIM et MYMC, exercice 9 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-2.pdf"
---

## Statement

Déterminer tous les triplets $(p, x, y)$, où $p$ est un nombre premier et $x$, $y$ sont des entiers strictement positifs, tels que les deux nombres

$$x^{p-1} + y \qquad \text{et} \qquad x + y^{p-1}$$

soient des puissances de $p$.

## Hints

1. Le cas $p = 2$ est à part. Pour $p$ impair, commence par le cas où $p$ divise $x$ : écris $x = p^r x'$ et $y = p^s y'$, avec $x'$ et $y'$ non divisibles par $p$, et compare $(p - 1)r$ avec $s$.
2. Si $p$ ne divise pas $x$, le petit théorème de Fermat donne $x \equiv y \equiv -1 \pmod p$. Suppose $x \leqslant y$ et écris $x^{p-1} + y = p^a$. Montre que $p^a$ divise aussi $x + y^{p-1}$.
3. Modulo $p^a$, remplace $y$ par $-x^{p-1}$ dans $x + y^{p-1}$. Tu dois obtenir que $p^a$ divise $z^p + 1$, avec $z = x^{p-2}$.
4. Si $z \equiv -1 \pmod p$, montre que $z^p + 1 = (z + 1) \times Q$ où $Q$ est divisible par $p$ mais pas par $p^2$. Déduis-en que $p^a \leqslant p\,(x + 1)$, puis compare avec $p^a \geqslant x^{p-1} + x$.

## Solution

On écrira $x^{p-1} + y = p^a$ et $x + y^{p-1} = p^b$. Ces deux nombres valent au moins $2$, donc $a \geqslant 1$ et $b \geqslant 1$.

**Le cas $p = 2$.** Les deux nombres valent tous deux $x + y$. Tous les triplets $(2, x, y)$ tels que $x + y$ soit une puissance de $2$ conviennent, par exemple $(2, 1, 1)$, $(2, 1, 3)$ ou $(2, 5, 11)$.

Dans toute la suite, $p$ est un nombre premier impair, donc $p \geqslant 3$, et $p - 1$ est pair.

**Étape 1. Le nombre $p$ ne divise pas $x$.**

Supposons que $p$ divise $x$. Comme $p$ divise $p^a = x^{p-1} + y$, il divise aussi $y$. Écrivons $x = p^r x'$ et $y = p^s y'$, avec $r \geqslant 1$, $s \geqslant 1$, et $x'$, $y'$ non divisibles par $p$. Alors

$$p^a = x^{p-1} + y = p^{(p-1)r}\,x'^{\,p-1} + p^s\,y'.$$

- Si $(p - 1)r < s$, on obtient $p^a = p^{(p-1)r}\left(x'^{\,p-1} + p^{s - (p-1)r}\,y'\right)$. Le nombre entre parenthèses divise $p^a$, c'est donc une puissance de $p$. Il n'est pas divisible par $p$, car $p$ divise le second terme mais pas le premier, donc il vaut $1$. C'est impossible, car il est au moins égal à $1 + p$.
- Si $(p - 1)r > s$, on obtient de même $p^a = p^s\left(p^{(p-1)r - s}\,x'^{\,p-1} + y'\right)$, et le nombre entre parenthèses est une puissance de $p$ non divisible par $p$ et au moins égale à $p + 1$ : c'est impossible.

Donc $s = (p - 1)r$. En faisant le même raisonnement avec $p^b = x + y^{p-1}$, on obtient $r = (p - 1)s$. Alors $s = (p - 1)^2 s$, et comme $s \geqslant 1$, $(p - 1)^2 = 1$, ce qui est faux pour $p \geqslant 3$.

Ainsi $p$ ne divise pas $x$. De même, $p$ ne divise pas $y$ : sinon il diviserait $p^b - y^{p-1} = x$.

**Étape 2. On a $x \equiv y \equiv -1 \pmod p$.**

D'après le petit théorème de Fermat, $x^{p-1} \equiv 1 \pmod p$, puisque $p$ ne divise pas $x$. Comme $p$ divise $x^{p-1} + y$, on obtient $1 + y \equiv 0$, c'est-à-dire $y \equiv -1 \pmod p$. De même, $x \equiv -1 \pmod p$.

**Étape 3. On peut supposer $x \leqslant y$, et alors $p^a$ divise $x + y^{p-1}$.**

Le problème ne change pas quand on échange $x$ et $y$. On suppose donc $x \leqslant y$, et on n'oubliera pas d'échanger à la fin.

La fonction $t \mapsto t^{p-1} - t = t\left(t^{p-2} - 1\right)$ est croissante sur $[1, +\infty[$, comme produit de deux fonctions croissantes et positives. Donc

$$p^b - p^a = \left(y^{p-1} - y\right) - \left(x^{p-1} - x\right) \geqslant 0,$$

d'où $a \leqslant b$, et $p^a$ divise $p^b = x + y^{p-1}$.

**Étape 4. Le nombre $p^a$ divise $z^p + 1$, où $z = x^{p-2}$.**

On a $y \equiv -x^{p-1} \pmod{p^a}$. Comme $p - 1$ est pair,

$$y^{p-1} \equiv \left(-x^{p-1}\right)^{p-1} = x^{(p-1)^2} \pmod{p^a}.$$

D'après l'étape 3, $p^a$ divise donc $x + x^{(p-1)^2}$. Or $(p - 1)^2 - 1 = p^2 - 2p = p\,(p - 2)$, donc

$$x + x^{(p-1)^2} = x\left(1 + x^{p(p-2)}\right) = x\left(1 + z^p\right).$$

Comme $p$ est premier et ne divise pas $x$, les nombres $p^a$ et $x$ sont premiers entre eux. D'après le lemme de Gauss, $p^a$ divise $z^p + 1$.

Enfin, $p - 2$ est impair, donc $z = x^{p-2} \equiv (-1)^{p-2} = -1 \pmod p$.

**Étape 5. Un lemme.** *Soit $z$ un entier strictement positif tel que $z \equiv -1 \pmod p$. Alors $z^p + 1 = (z + 1)\,Q$, où $Q$ est divisible par $p$ mais pas par $p^2$.*

Comme $p$ est impair, on a la factorisation $z^p + 1 = (z + 1)\,Q$ avec

$$Q = 1 - z + z^2 - \cdots + z^{p-1} = \sum_{i=0}^{p-1} (-z)^i.$$

Posons $w = z + 1$, de sorte que $-z = 1 - w$ et que $p$ divise $w$. Montrons par récurrence que $(1 - w)^i \equiv 1 - i\,w \pmod{p^2}$ pour tout $i \geqslant 0$. C'est vrai pour $i = 0$. Si c'est vrai au rang $i$, alors

$$(1 - w)^{i+1} \equiv (1 - i\,w)(1 - w) = 1 - (i + 1)\,w + i\,w^2 \equiv 1 - (i + 1)\,w \pmod{p^2},$$

car $p^2$ divise $w^2$. En additionnant pour $i$ allant de $0$ à $p - 1$,

$$Q \equiv p - w\,(0 + 1 + \cdots + (p - 1)) = p - p \times \frac{p - 1}{2} \times w \pmod{p^2}.$$

Comme $p$ est impair, $\frac{p - 1}{2}$ est un entier, et comme $p$ divise $w$, le nombre $p \times \frac{p - 1}{2} \times w$ est divisible par $p^2$. Donc $Q \equiv p \pmod{p^2}$ : $Q$ est divisible par $p$, mais pas par $p^2$.

**Étape 6. On a $p^a \leqslant p\,(x + 1)$.**

Soit $p^e$ la plus grande puissance de $p$ qui divise $x + 1$.

D'abord, $p^e$ est aussi la plus grande puissance de $p$ qui divise $z + 1 = x^{p-2} + 1$. En effet, comme $p - 2$ est impair, $x^{p-2} + 1 = (x + 1)\,Q'$ avec $Q' = \displaystyle\sum_{i=0}^{p-3} (-x)^i$. Chacun des $p - 2$ termes de cette somme est congru à $1$ modulo $p$, puisque $-x \equiv 1$, donc $Q' \equiv p - 2 \equiv -2 \pmod p$, et $p$ ne divise pas $Q'$.

Ensuite, d'après l'étape 5, $z^p + 1 = (z + 1)\,Q$ où $Q$ apporte exactement un facteur $p$ de plus. La plus grande puissance de $p$ qui divise $z^p + 1$ est donc $p^{e+1}$.

Comme $p^a$ divise $z^p + 1$, on a $a \leqslant e + 1$, d'où

$$p^a \leqslant p \times p^e \leqslant p\,(x + 1).$$

**Étape 7. Conclusion.**

Comme $y \geqslant x$, on a $p^a = x^{p-1} + y \geqslant x^{p-1} + x$. Avec l'étape 6,

$$x^{p-1} + x \leqslant p\,(x + 1).$$

De plus, $x \equiv -1 \pmod p$ et $x \geqslant 1$, donc $x \geqslant p - 1$, c'est-à-dire $p \leqslant x + 1$.

- **Si $p \geqslant 5$**, alors $x \geqslant 4$, et $p\,(x + 1) \leqslant (x + 1)^2 = x^2 + 2x + 1$. On aurait donc $x^4 + x \leqslant x^{p-1} + x \leqslant x^2 + 2x + 1$, soit $x^4 \leqslant x^2 + x + 1$. C'est faux, car $x^4 \geqslant 16\,x^2 > x^2 + x + 1$ pour $x \geqslant 4$.
- **Si $p = 3$**, l'inégalité s'écrit $x^2 + x \leqslant 3\,(x + 1)$, c'est-à-dire $x\,(x + 1) \leqslant 3\,(x + 1)$, donc $x \leqslant 3$. Comme $x \equiv -1 \pmod 3$, on a $x = 2$. Alors $x + 1 = 3$, donc $e = 1$ et $a \leqslant 2$. Mais $3^a = 4 + y \geqslant 4 + 2 = 6$, donc $a = 2$ et $y = 9 - 4 = 5$.

Vérifions $(3, 2, 5)$ : $x^2 + y = 4 + 5 = 9 = 3^2$ et $x + y^2 = 2 + 25 = 27 = 3^3$. Ce triplet convient, et en échangeant $x$ et $y$, le triplet $(3, 5, 2)$ aussi.

**Réponse :** les triplets cherchés sont les triplets $(2, x, y)$ tels que $x + y$ soit une puissance de $2$, et les deux triplets $(3, 2, 5)$ et $(3, 5, 2)$.

## Going further

Le lemme de l'étape 5 est un cas particulier d'un résultat qu'on appelle souvent « lemme de relèvement des exposants » : si $p$ est un premier impair qui divise $u + v$ sans diviser $u$, alors la plus grande puissance de $p$ qui divise $u^n + v^n$, pour $n$ impair, est celle de $u + v$ multipliée par la plus grande puissance de $p$ qui divise $n$. En appliquant deux fois l'étape 5, montre par exemple que si $z \equiv -1 \pmod p$, la plus grande puissance de $p$ qui divise $z^{p^2} + 1$ est $p^2$ fois celle qui divise $z + 1$.
