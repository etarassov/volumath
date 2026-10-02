---
id: "12053"
title: "(a + bc)(b + ac) = 19ⁿ impose n pair"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [puissances, nombres premiers, decomposition en facteurs premiers, divisibilite, raisonnement par l'absurde, plus petit contre-exemple]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test du 26 février 2014"
  reference: "2017-10_ofm-2013-2014-test-fevrier.pdf, exercice 5 (groupe A) ; corrigé 2017-10_ofm-2013-2014-test-fevrier-corrige.pdf ; vérifié par ordinateur pour a, b, c < 400"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-fevrier.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient $a$, $b$, $c$ trois entiers strictement positifs tels que

$$(a + bc)(b + ac) = 19^n .$$

Montrer que $n$ est pair.

## Hints

1. Les deux facteurs $a + bc$ et $b + ac$ ont pour produit $19^n$. Que peut-on dire de chacun d'eux ?
2. Si $19$ divise à la fois $a$ et $b$, que se passe-t-il quand on divise $a$ et $b$ par $19$ ? Montrez ensuite que $19$ ne peut pas diviser un seul des deux nombres $a$ et $b$.
3. Écrivez $a + bc = 19^x$ et $b + ac = 19^y$. Si $x = y$, c'est fini. Sinon, supposez $x < y$, et montrez que $a > b$ et $c \geqslant 2$.
4. Calculez $c(b + ac) - (a + bc)$ et factorisez le résultat. Le nombre $19$ peut-il diviser à la fois $c - 1$ et $c + 1$ ?

## Solution

**Ce que l'on utilise.** Tout entier supérieur ou égal à $2$ s'écrit d'une seule façon comme produit de nombres premiers. Pour un entier $u \geqslant 1$, appelons **exposant de $19$ dans $u$** le nombre de fois que le facteur premier $19$ apparaît dans cette décomposition. L'exposant de $19$ dans un produit $uv$ est la somme des exposants de $19$ dans $u$ et dans $v$. On en tire trois conséquences, pour des entiers $u, v \geqslant 1$.

- (R1) Si $uv = 19^m$, alors $u$ et $v$ sont des puissances de $19$, car $19$ est leur seul facteur premier possible.
- (R2) Si $19$ divise $uv$, alors $19$ divise $u$ ou $19$ divise $v$.
- (R3) Si $19^x$ divise $uv$ et si $19$ ne divise pas $u$, alors $19^x$ divise $v$.

Raisonnons par l'absurde : supposons qu'il existe des entiers strictement positifs $a$, $b$, $c$ et un entier **impair** $n$ tels que $(a + bc)(b + ac) = 19^n$. Parmi tous ces triplets $(a, b, c)$, choisissons-en un pour lequel la somme $a + b$ est la plus petite possible.

**Étape 1 : deux puissances de $19$.** D'après (R1), il existe des entiers $x, y \geqslant 0$ tels que

$$a + bc = 19^x , \qquad b + ac = 19^y , \qquad x + y = n .$$

Comme $a$, $b$, $c$ valent au moins $1$, les deux facteurs valent au moins $2$, donc $x \geqslant 1$ et $y \geqslant 1$.

**Étape 2 : $19$ ne divise ni $a$ ni $b$.**

*Si $19$ divise $a$ et $b$.* Écrivons $a = 19a_1$ et $b = 19b_1$. Alors $a + bc = 19(a_1 + b_1 c)$ et $b + ac = 19(b_1 + a_1 c)$, donc

$$(a_1 + b_1 c)(b_1 + a_1 c) = 19^{n-2} .$$

Le membre de gauche vaut au moins $4$, donc $n - 2 \geqslant 1$, et $n - 2$ est impair. Le triplet $(a_1, b_1, c)$ est donc encore un triplet du type étudié, avec $a_1 + b_1 < a + b$. C'est impossible, puisque $a + b$ est la plus petite somme possible.

*Si $19$ divise $a$ mais pas $b$.* Le nombre $19$ divise $a$ et $19^x$, donc il divise $19^x - a = bc$. D'après (R2), et comme $19$ ne divise pas $b$, il divise $c$. Il divise alors $ac$, et il divise $19^y$, donc il divise $19^y - ac = b$. C'est une contradiction.

*Si $19$ divise $b$ mais pas $a$.* On échange les rôles : $19$ divise $19^y - b = ac$, donc $c$, donc $bc$, donc $19^x - bc = a$. C'est encore une contradiction.

**Étape 3 : comparer $x$ et $y$.** Si $x = y$, alors $n = 2x$ est pair, ce qui est contraire à l'hypothèse. Donc $x \neq y$. Échanger $a$ et $b$ échange les deux facteurs et ne change pas $a + b$ ; on peut donc supposer $x < y$. Alors

$$(b + ac) - (a + bc) = (a - b)(c - 1) = 19^y - 19^x > 0 .$$

Comme $c - 1 \geqslant 0$, ce produit ne peut être strictement positif que si $c - 1 > 0$ et $a - b > 0$. Ainsi $c \geqslant 2$ et $a > b \geqslant 1$, donc $a \geqslant 2$.

**Étape 4 : le calcul clé.** On calcule de deux façons

$$c(b + ac) - (a + bc) = ac^2 - a = a(c - 1)(c + 1) ,$$

$$c(b + ac) - (a + bc) = c \times 19^y - 19^x = 19^x \left(c \times 19^{y - x} - 1\right) .$$

Donc $19^x$ divise $a(c - 1)(c + 1)$. Comme $19$ ne divise pas $a$ (étape 2), la propriété (R3) montre que $19^x$ divise $(c - 1)(c + 1)$.

Le nombre $19$ ne divise pas à la fois $c - 1$ et $c + 1$ : sinon il diviserait leur différence, qui vaut $2$. Si $19$ ne divise pas $c - 1$, la propriété (R3) montre que $19^x$ divise $c + 1$ ; sinon, $19$ ne divise pas $c + 1$, et $19^x$ divise $c - 1$. Dans les deux cas, $19^x$ divise un entier strictement positif inférieur ou égal à $c + 1$ (on a $c - 1 \geqslant 1$). Donc

$$19^x \leqslant c + 1 .$$

Mais $19^x = a + bc \geqslant 2 + c$, puisque $a \geqslant 2$ et $b \geqslant 1$. On obtient $c + 2 \leqslant c + 1$, ce qui est absurde.

**Conclusion.** L'hypothèse « $n$ est impair » mène à une contradiction. Donc $n$ est pair.

## Going further

1. Trouver des entiers strictement positifs $a$, $b$, $c$ tels que $(a + bc)(b + ac) = 19^2$.
2. Vérifier que $(3 + 1 \times 5)(1 + 3 \times 5) = 2^7$. Le résultat est donc faux si l'on remplace $19$ par $2$. Quelle étape de la solution ne marche plus ?
