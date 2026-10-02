---
id: "12203"
title: "Deux nombres premiers q tels que qᵖ⁻¹ ≢ 1 modulo p²"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [congruences, nombres premiers, puissances, maths-expertes, raisonnement par l absurde, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection pour le Romanian Master of Mathematics, novembre 2014"
  reference: "2017-10_ofm-2014-2015-test-rmm.pdf, exercice 3 ; corrigé 2017-10_ofm-2014-2015-test-rmm-corrige.pdf (le corrigé écrit {p, q} au lieu de {q, r} à un endroit)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-rmm.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-rmm.pdf"
---

## Statement

Soit $p \geqslant 5$ un nombre premier.

Démontrer que parmi les nombres $2, 3, \ldots, p-2$, il existe au moins deux nombres premiers distincts $q$ et $r$ tels que

$$q^{p-1} \not\equiv 1 \pmod{p^2} \qquad \text{et} \qquad r^{p-1} \not\equiv 1 \pmod{p^2}.$$

## Hints

1. Appelle « bon » un entier $n$ tel que $n^{p-1} \equiv 1 \pmod{p^2}$. Montre que $1$ et $-1$ sont bons, et que le produit de deux nombres bons est bon.
2. Soit $a$ un nombre bon et $k$ un entier. Développe $(a + kp)^{p-1}$ modulo $p^2$ : seuls deux termes comptent. Quand $a + kp$ est-il bon ?
3. Déduis-en que $p - 1$ et $p + 1$ ne sont pas bons. Ils ont donc chacun un facteur premier qui n'est pas bon.
4. Le seul cas gênant est celui où ces deux facteurs premiers valent $2$. Suppose alors que tous les nombres premiers impairs jusqu'à $p - 2$ sont bons, et cherche un multiple de $3$ de la forme $\theta + 2p$, avec $\theta$ petit et impair.

## Solution

**Le cas $p = 5$.** Les nombres à examiner sont $2$ et $3$. On a $2^4 = 16$ et $3^4 = 81 = 3 \times 25 + 6$, et ni $16$ ni $6$ n'est congru à $1$ modulo $25$. Les nombres $q = 2$ et $r = 3$ conviennent. Dans la suite, $p \geqslant 7$.

**Vocabulaire.** On dit qu'un entier $n$ est **bon** si $n^{p-1} \equiv 1 \pmod{p^2}$. Il faut trouver deux nombres premiers distincts entre $2$ et $p - 2$ qui ne sont pas bons.

Deux remarques simples :

- $1$ et $-1$ sont bons, car $p - 1$ est pair, donc $(-1)^{p-1} = 1$.
- Si $a$ et $b$ sont bons, alors $ab$ est bon, car $(ab)^{p-1} = a^{p-1} b^{p-1} \equiv 1 \times 1 = 1 \pmod{p^2}$. Par conséquent, un produit de nombres bons est bon.

Un nombre bon $a$ n'est pas divisible par $p$ : sinon $a^{p-1}$ serait divisible par $p$, et ne pourrait pas être congru à $1$ modulo $p$, ni a fortiori modulo $p^2$.

**Étape 1. Le lemme clé : quand $a + kp$ est-il bon ?**

Soit $a$ un nombre bon et $k$ un entier. Développons $(a + kp)^{p-1}$, produit de $p - 1$ facteurs égaux à $a + kp$. On choisit dans chaque facteur soit $a$, soit $kp$ :

- si on choisit $a$ partout, on obtient $a^{p-1}$ ;
- si on choisit $kp$ dans exactement un facteur, on obtient $a^{p-2}\,kp$, et il y a $p - 1$ façons de le faire ;
- dans tous les autres termes, $kp$ apparaît au moins deux fois, donc ils sont divisibles par $p^2$.

Ainsi, modulo $p^2$,

$$(a + kp)^{p-1} \equiv a^{p-1} + (p-1)\,a^{p-2}\,kp \equiv 1 + p^2\,k\,a^{p-2} - kp\,a^{p-2} \equiv 1 - kp\,a^{p-2} \pmod{p^2}.$$

Donc $a + kp$ est bon si et seulement si $p^2$ divise $kp\,a^{p-2}$, c'est-à-dire si et seulement si $p$ divise $k\,a^{p-2}$. Comme $p$ est premier et ne divise pas $a$, il ne divise pas $a^{p-2}$, et cela revient à : **$p$ divise $k$**.

**Étape 2. $p - 1$ et $p + 1$ ne sont pas bons.**

On applique le lemme avec $k = 1$, qui n'est pas un multiple de $p$ : $p - 1 = -1 + p$ n'est pas bon (car $-1$ est bon), et $p + 1 = 1 + p$ n'est pas bon (car $1$ est bon).

**Étape 3. Deux facteurs premiers qui ne sont pas bons.**

Si tous les facteurs premiers de $p - 1$ étaient bons, leur produit $p - 1$ serait bon. Donc $p - 1$ a un facteur premier $q$ qui n'est pas bon. De même, $p + 1$ a un facteur premier $r$ qui n'est pas bon.

Ces deux nombres sont bien entre $2$ et $p - 2$. En effet, $p - 1$ est pair et plus grand que $2$, donc il n'est pas premier, et son facteur premier $q$ est un diviseur strict, d'où $q \leqslant \frac{p-1}{2} \leqslant p - 2$. De même $r \leqslant \frac{p+1}{2} \leqslant p - 2$, car $p \geqslant 5$.

Si $q \neq r$, on a terminé. Sinon, $q = r$ divise à la fois $p + 1$ et $p - 1$, donc leur différence $2$ : on a $q = r = 2$. On sait donc que **$2$ n'est pas bon**, et il reste à trouver un nombre premier impair, entre $3$ et $p - 2$, qui n'est pas bon.

**Étape 4. Un raisonnement par l'absurde.**

Supposons que tous les nombres premiers impairs compris entre $3$ et $p - 2$ sont bons. Alors **tout entier impair $m$ compris entre $1$ et $p - 2$ est bon** : soit $m = 1$, soit $m$ est un produit de nombres premiers impairs inférieurs ou égaux à $m \leqslant p - 2$, qui sont tous bons.

Comme $p \neq 3$, le reste de $p$ dans la division par $3$ vaut $1$ ou $2$. On pose

$$\theta = 1 \ \text{ si } p \equiv 1 \pmod 3, \qquad \theta = 5 \ \text{ si } p \equiv 2 \pmod 3,$$

et $N = \theta + 2p$. Dans les deux cas, $N$ est divisible par $3$ : $2 + 1 = 3$ et $4 + 5 = 9$. Et $N$ est impair.

- **$N$ n'est pas bon.** Le nombre $\theta$ est impair et inférieur ou égal à $p - 2$ (si $\theta = 5$, alors $p \equiv 2 \pmod 3$ avec $p \geqslant 7$, donc $p \geqslant 11$). Il est donc bon. Le lemme avec $k = 2$, qui n'est pas un multiple de $p$, montre que $N = \theta + 2p$ n'est pas bon.
- **$N$ est bon.** On écrit $N = 3 \times \frac{N}{3}$. Le nombre $3$ est impair et $3 \leqslant p - 2$, donc il est bon. Le nombre $\frac{N}{3}$ est impair, et il est inférieur ou égal à $p - 2$ : si $\theta = 1$, cela s'écrit $2p + 1 \leqslant 3p - 6$, vrai car $p \geqslant 7$ ; si $\theta = 5$, cela s'écrit $2p + 5 \leqslant 3p - 6$, vrai car $p \geqslant 11$. Donc $\frac{N}{3}$ est bon, et $N$, produit de deux nombres bons, est bon.

C'est une contradiction. Il existe donc un nombre premier impair $r'$ entre $3$ et $p - 2$ qui n'est pas bon.

**Conclusion.** Dans tous les cas, on a trouvé deux nombres premiers distincts entre $2$ et $p - 2$ qui ne sont pas bons : soit $q$ et $r$ de l'étape 3 quand ils sont différents, soit $2$ et $r'$. Pour ces deux nombres premiers, la puissance $(p-1)$-ième n'est pas congrue à $1$ modulo $p^2$.

## Going further

Pour $p = 7$, on peut tout vérifier à la main : $2^6 = 64 \equiv 15$, $3^6 = 729 \equiv 43$ et $5^6 = 15625 \equiv 43 \pmod{49}$. Aucun des trois nombres premiers $2$, $3$, $5$ n'est bon.

Un nombre premier $p$ tel que $2^{p-1} \equiv 1 \pmod{p^2}$ s'appelle un nombre premier de Wieferich. On n'en connaît que deux, $1093$ et $3511$. Pour $p = 1093$, le nombre $2$ est donc bon, et il faut vraiment chercher les deux nombres premiers ailleurs.
