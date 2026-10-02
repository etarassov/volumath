---
id: "11645"
title: "Quand (a³ + b)(b³ + a) est une puissance de 2"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [puissances-de-2, parite, divisibilite, factorisation, identites-remarquables, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices communs, exercice 7 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Trouver tous les entiers strictement positifs $a$, $b$ et $c$ tels que

$$(a^3 + b)(b^3 + a) = 2^c.$$

## Hints

1. Chacun des deux facteurs est lui-même une puissance de $2$. Montre que $a$ et $b$ sont impairs, puis qu'ils n'ont aucun diviseur commun autre que $1$.
2. Traite le cas $a = b$. Sinon, suppose $a > b$ et compare $a^3 + b$ avec $b^3 + a$. Pourquoi $b^3 + a$ divise-t-il $a^3 + b$ ?
3. Utilise $b^9 + a^3 = (b^3 + a)(b^6 - ab^3 + a^2)$ pour montrer que $b^3 + a$ divise $b^9 - b$, puis $b^8 - 1$.
4. Factorise $b^8 - 1 = (b^4 + 1)(b^2 + 1)(b^2 - 1)$. Combien de facteurs $2$ contiennent $b^4 + 1$ et $b^2 + 1$ quand $b$ est impair ? Compare ensuite $b^2 - 1$ avec $b^3$.

## Solution

Soit $(a, b, c)$ une solution. Les diviseurs positifs de $2^c$ sont des puissances de $2$, donc il existe des entiers $x, y \geqslant 1$ tels que
$$a^3 + b = 2^x \qquad \text{et} \qquad b^3 + a = 2^y,$$
avec $c = x + y$. (On a $x, y \geqslant 1$ car $a^3 + b \geqslant 2$ et $b^3 + a \geqslant 2$.)

**Étape 1 : un fait sur les puissances de 2.** Soient $u = 2^p u'$ et $v = 2^q v'$ deux entiers strictement positifs, avec $u'$ et $v'$ impairs et $p < q$. Alors
$$u + v = 2^p\left(u' + 2^{q - p} v'\right),$$
et la parenthèse est impaire et au moins égale à $1 + 2 = 3$. Donc **$u + v$ n'est pas une puissance de $2$.**

**Étape 2 : $a$ et $b$ sont impairs.** Comme $a^3 + b$ est pair, $a$ et $b$ ont la même parité. Supposons-les tous les deux pairs, et écrivons $a = 2^\alpha a'$ et $b = 2^\beta b'$ avec $a'$, $b'$ impairs et $\alpha, \beta \geqslant 1$. Alors $a^3 = 2^{3\alpha} a'^3$ avec $a'^3$ impair. Comme $a^3 + b$ est une puissance de $2$, l'étape 1 impose $3\alpha = \beta$. De même, $b^3 + a$ impose $3\beta = \alpha$. On en tire $\alpha = 9\alpha$, donc $\alpha = 0$, ce qui contredit $\alpha \geqslant 1$. Donc **$a$ et $b$ sont impairs.**

**Étape 3 : $a$ et $b$ n'ont aucun diviseur commun autre que 1.** Un diviseur commun $d$ de $a$ et $b$ divise $a^3 + b = 2^x$, donc c'est une puissance de $2$. Mais $a$ est impair, donc $d = 1$.

**Étape 4 : le cas $a = b$.** D'après l'étape 3, $a = b = 1$. Alors $(1 + 1)(1 + 1) = 4 = 2^2$ : on trouve la solution $(1, 1, 2)$.

**Étape 5 : on suppose $a > b$.** Les rôles de $a$ et $b$ sont symétriques, donc cela suffit. On a
$$(a^3 + b) - (b^3 + a) = (a^3 - b^3) - (a - b) = (a - b)(a^2 + ab + b^2 - 1) > 0,$$
car $a - b > 0$ et $a^2 + ab + b^2 \geqslant 3$. Donc $2^x > 2^y$, puis $x > y$, et **$2^y$ divise $2^x$, c'est-à-dire que $b^3 + a$ divise $a^3 + b$.**

*Le cas $b = 1$ est impossible.* On aurait $a = 2^y - 1$ avec $y \geqslant 2$ (car $a > 1$), et
$$2^x = a^3 + 1 = (2^y - 1)^3 + 1 = 2^{3y} - 3 \times 2^{2y} + 3 \times 2^y = 2^y\left(2^{2y} - 3 \times 2^y + 3\right).$$
La parenthèse est impaire, et elle vaut au moins $3$, car $2^{2y} - 3 \times 2^y = 2^y(2^y - 3) \geqslant 0$ quand $y \geqslant 2$. Un tel nombre ne peut pas diviser une puissance de $2$. Donc $b \geqslant 3$, puisque $b$ est impair.

**Étape 6 : $b^3 + a$ divise $b^8 - 1$.** On a l'identité $u^3 + v^3 = (u + v)(u^2 - uv + v^2)$. Avec $u = b^3$ et $v = a$ :
$$b^9 + a^3 = (b^3 + a)(b^6 - ab^3 + a^2).$$
Donc $b^3 + a$ divise $b^9 + a^3$. D'après l'étape 5, il divise aussi $a^3 + b$, donc il divise la différence
$$(b^9 + a^3) - (a^3 + b) = b^9 - b = b\,(b^8 - 1).$$
Comme $b^3 + a = 2^y$ et que $b$ est impair, cette puissance de $2$ divise $b^8 - 1$.

**Étape 7 : compter les facteurs 2.** On factorise
$$b^8 - 1 = (b^4 + 1)(b^4 - 1) = (b^4 + 1)(b^2 + 1)(b^2 - 1).$$
Un nombre impair au carré donne un reste $1$ dans la division par $4$ : $(2k + 1)^2 = 4(k^2 + k) + 1$. Donc $b^2 + 1$ et $b^4 + 1 = (b^2)^2 + 1$ ont un reste $2$ dans la division par $4$ : chacun est **le double d'un nombre impair**.

Le nombre $b^2 - 1$ n'est pas nul, car $b \geqslant 3$. Écrivons-le $b^2 - 1 = 2^v w$, avec $w$ impair. Alors $b^8 - 1$ est égal à $2^{v + 2}$ multiplié par un nombre impair. Comme $2^y$ divise $b^8 - 1$, on a $y \leqslant v + 2$, donc $2^{y - 2}$ divise $b^2 - 1$. En particulier
$$b^2 - 1 \geqslant 2^{y - 2} = \frac{b^3 + a}{4} > \frac{b^3}{4}.$$

**Étape 8 : $b = 3$, puis $a = 5$.** L'inégalité donne $4b^2 - 4 > b^3$, donc $b^2(4 - b) > 4$, ce qui impose $b < 4$. Comme $b$ est impair et $b \geqslant 3$, on a $b = 3$.

Alors $2^{y - 2}$ divise $b^2 - 1 = 8$, donc $y \leqslant 5$. D'autre part $2^y = 27 + a$ avec $a > b = 3$, donc $2^y \geqslant 31$ et $y \geqslant 5$. Ainsi $y = 5$ et $a = 32 - 27 = 5$. On vérifie : $a^3 + b = 125 + 3 = 128 = 2^7$ et $b^3 + a = 27 + 5 = 32 = 2^5$, donc $c = 7 + 5 = 12$.

**Conclusion : les solutions sont $(a, b, c) = (1, 1, 2)$, $(3, 5, 12)$ et $(5, 3, 12)$.** Réciproquement, ces trois triplets conviennent : $2 \times 2 = 2^2$ et $128 \times 32 = 2^{12}$.
