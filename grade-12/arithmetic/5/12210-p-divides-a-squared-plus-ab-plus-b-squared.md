---
id: "12210"
title: "p divise a² + ab + b² et aⁿ + bⁿ + cⁿ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, congruences, nombres premiers, petit theoreme de fermat, bezout, inverse modulo p, pgcd]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2015"
  reference: "2017-10_ofm-2014-2015-test-janvier.pdf, exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2014-2015-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-janvier.pdf"
---

## Statement

Soit $a$, $b$, $c$ des entiers relatifs et $n \geqslant 2$ un entier. Soit $p$ un nombre premier qui divise $a^2 + ab + b^2$ et $a^n + b^n + c^n$, mais qui ne divise pas $a + b + c$.

Prouver que $n$ et $p - 1$ ne sont pas premiers entre eux.

## Hints

1. Montre d'abord que $p$ ne divise pas $b$. Ensuite, grâce à un inverse de $b$ modulo $p$, ramène-toi au cas $b = 1$ : les trois conditions ne changent pas si on multiplie $a$, $b$, $c$ par un même nombre.
2. Avec $b = 1$, multiplie $a^2 + a + 1$ par $a - 1$. Que vaut $a^3$ modulo $p$ ? Traite à part le cas $a \equiv 1 \pmod p$.
3. Si $n$ et $p - 1$ sont premiers entre eux, montre avec Bézout et le petit théorème de Fermat que $x^n \equiv y^n \pmod p$ entraîne $x \equiv y \pmod p$.
4. Selon le reste de $n$ modulo $3$, compare $c^n$ avec $(a^2)^n$ modulo $p$.

## Solution

Toutes les congruences sont modulo $p$, sauf mention contraire.

**Étape 1. On se ramène à $b = 1$.**

Si $p$ divisait $b$, alors $p$ diviserait $a^2 = (a^2 + ab + b^2) - b(a + b)$, donc $p$ diviserait $a$. Il diviserait alors $c^n = (a^n + b^n + c^n) - a^n - b^n$, donc $c$, et finalement $a + b + c$ : c'est exclu. Donc $p$ ne divise pas $b$.

Comme $p$ est premier et ne divise pas $b$, les entiers $b$ et $p$ sont premiers entre eux. D'après le théorème de Bézout, il existe des entiers $u$ et $v$ tels que $ub + vp = 1$, donc $ub \equiv 1$. Posons $A = ua$ et $C = uc$. Comme $ub \equiv 1$,

$$u^2(a^2 + ab + b^2) = A^2 + A\,(ub) + (ub)^2 \equiv A^2 + A + 1, \qquad u^n(a^n + b^n + c^n) \equiv A^n + 1 + C^n.$$

Comme $p$ divise $a^2 + ab + b^2$ et $a^n + b^n + c^n$, on obtient $A^2 + A + 1 \equiv 0$ et $A^n + 1 + C^n \equiv 0$. De plus, si on avait $A + 1 + C \equiv 0$, on aurait aussi, en multipliant par $b$ et en utilisant $ub \equiv 1$,

$$a + b + c \equiv (ub)\,a + b + (ub)\,c = b\,(A + 1 + C) \equiv 0,$$

ce qui est exclu. On a donc

$$A^2 + A + 1 \equiv 0, \qquad A^n + 1 + C^n \equiv 0, \qquad A + 1 + C \not\equiv 0.$$

**Étape 2. Une conséquence : $A^3 \equiv 1$.**

On a $(A - 1)(A^2 + A + 1) = A^3 - 1$, donc $A^3 \equiv 1$. En particulier, $p$ ne divise pas $A$.

**Étape 3. Le cas $A \equiv 1$.**

Alors $A^2 + A + 1 \equiv 3$, donc $p$ divise $3$ : $p = 3$ et $p - 1 = 2$. La deuxième condition donne $C^n \equiv -1 - 1 \equiv 1 \pmod 3$, donc $3$ ne divise pas $C$, et $C \equiv 1$ ou $C \equiv -1 \pmod 3$. Or $C \equiv 1$ donnerait $A + 1 + C \equiv 3 \equiv 0$, ce qui est exclu. Donc $C \equiv -1 \pmod 3$, et $(-1)^n \equiv 1 \pmod 3$, ce qui force $n$ à être pair. Ainsi $2$ divise à la fois $n$ et $p - 1$ : ils ne sont pas premiers entre eux.

**Étape 4. Le cas $A \not\equiv 1$ : alors $3$ divise $p - 1$.**

D'après le petit théorème de Fermat, $A^{p-1} \equiv 1$ puisque $p$ ne divise pas $A$. Écrivons la division euclidienne $p - 1 = 3q + s$ avec $s \in \{0, 1, 2\}$. Alors

$$1 \equiv A^{p-1} = (A^3)^q \times A^s \equiv A^s.$$

Si $s = 1$, on aurait $A \equiv 1$, exclu. Si $s = 2$, on aurait $A^2 \equiv 1$, donc $A \equiv A \times A^2 = A^3 \equiv 1$, exclu. Donc $s = 0$ : **$3$ divise $p - 1$.**

**Étape 5. Un lemme : si $n$ et $p - 1$ sont premiers entre eux, alors $x^n \equiv y^n$ entraîne $x \equiv y$.**

D'après le théorème de Bézout, il existe des entiers $k$ et $w$ tels que $kn - w(p-1) = 1$. Quitte à remplacer $k$ par $k + t(p-1)$ et $w$ par $w + tn$ avec $t$ assez grand, on peut supposer $k \geqslant 1$ et $w \geqslant 0$. Alors, pour tout entier $x$ non divisible par $p$, le petit théorème de Fermat donne

$$(x^n)^k = x^{kn} = x^{1 + w(p-1)} = x \times \left(x^{p-1}\right)^w \equiv x.$$

C'est encore vrai si $p$ divise $x$, car les deux membres sont alors divisibles par $p$. Donc, si $x^n \equiv y^n$, on obtient $x \equiv (x^n)^k \equiv (y^n)^k \equiv y$.

**Étape 6. Fin du cas $A \not\equiv 1$.**

Supposons, par l'absurde, que $n$ et $p - 1$ sont premiers entre eux. D'après l'étape 4, $3$ divise $p - 1$, donc $3$ ne divise pas $n$. Rappelons que $A^3 \equiv 1$ et $A^2 \equiv -A - 1$.

- *Si $n = 3m + 1$.* Alors $A^n = (A^3)^m A \equiv A$, donc $C^n \equiv -A - 1 \equiv A^2$. Et $(A^2)^n = A^{6m + 2} = (A^3)^{2m} A^2 \equiv A^2$.
- *Si $n = 3m + 2$.* Alors $A^n \equiv A^2$, donc $C^n \equiv -A^2 - 1 \equiv A$. Et $(A^2)^n = A^{6m + 4} = (A^3)^{2m + 1} A \equiv A$.

Dans les deux cas, $C^n \equiv (A^2)^n$. D'après le lemme de l'étape 5, $C \equiv A^2 \equiv -A - 1$, c'est-à-dire $A + 1 + C \equiv 0$. C'est exclu.

Donc $n$ et $p - 1$ ne sont pas premiers entre eux. Plus précisément, $3$ divise alors $n$ et $p - 1$.

**Conclusion.** Dans tous les cas, $n$ et $p - 1$ ont un diviseur commun plus grand que $1$ : ils ne sont pas premiers entre eux.

## Going further

Les deux cas se produisent vraiment.

- Avec $p = 3$, $a = b = 1$, $c = 2$ et $n = 2$ : $a^2 + ab + b^2 = 3$, $a^2 + b^2 + c^2 = 6$ et $a + b + c = 4$. Ici le diviseur commun de $n$ et $p - 1$ est $2$.
- Avec $p = 31$, $a = 5$, $b = 1$, $c = 11$ et $n = 3$ : $a^2 + ab + b^2 = 31$, $a^3 + b^3 + c^3 = 1457 = 31 \times 47$ et $a + b + c = 17$. Ici le diviseur commun est $3$.

Le corrigé officiel parle de l'**ordre** de $a$ modulo $p$, c'est-à-dire du plus petit exposant $d \geqslant 1$ tel que $a^d \equiv 1$. Le calcul de l'étape 4 est un cas particulier d'un fait général : l'ordre de $a$ divise $p - 1$.
