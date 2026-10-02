---
id: "11624"
title: "aⁿ + nᵇ et bⁿ + nᵃ toujours premiers entre eux ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, petit theoreme de fermat, congruences, pgcd, nombres premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 1, exercices du groupe A, exercice 6 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Existe-t-il des entiers strictement positifs $a$ et $b$ tels que, pour **tout** entier $n \geqslant 0$, les nombres

$$a^n + n^b \qquad \text{et} \qquad b^n + n^a$$

soient premiers entre eux ?

## Hints

1. Commence par $n = \mathrm{PGCD}(a, b)$. Que peux-tu en déduire sur $a$ et $b$ ?
2. Le nombre $N = a^a + b^b$ est plus grand que $1$. Prends un nombre premier $p$ qui le divise. Montre que $p$ ne divise ni $a$ ni $b$.
3. On cherche $n$ tel que $p$ divise les deux nombres. Le petit théorème de Fermat permet de régler $a^n$ modulo $p$ en choisissant $n$ modulo $p - 1$, et $n^b$ en choisissant $n$ modulo $p$.
4. Par symétrie, suppose $a \geqslant b$. Essaie de choisir $n$ tel que $n \equiv k \pmod p$, où $ka \equiv b \pmod p$, et $n \equiv a - b \pmod{p-1}$.

## Solution

**La réponse est non.** Supposons, pour arriver à une contradiction, que $a$ et $b$ conviennent. Les deux nombres de l'énoncé s'échangent quand on échange $a$ et $b$, donc on peut supposer $a \geqslant b$.

**Étape 1 : $a$ et $b$ sont premiers entre eux.** Soit $d = \mathrm{PGCD}(a, b)$. Pour $n = d$, le nombre $d$ divise $a^d$ (car $d$ divise $a$) et $d^b$, donc il divise $a^d + d^b$. De même, il divise $b^d + d^a$. Ces deux nombres étant premiers entre eux, $d = 1$.

**Étape 2 : un nombre premier $p$.** Le nombre $N = a^a + b^b$ est au moins $2$, donc il a un diviseur premier $p$. Si $p$ divisait $a$, il diviserait $a^a$, donc $b^b = N - a^a$, donc $b$ : c'est impossible puisque $a$ et $b$ sont premiers entre eux. Donc $p$ ne divise pas $a$, et de même $p$ ne divise pas $b$.

Comme $a$ est premier avec $p$, il est inversible modulo $p$ : il existe un entier $k$ tel que

$$ka \equiv b \pmod p.$$

**Étape 3 : le choix de $n$.** On pose $t = a - b - k + p - 1$ et $n = k + pt$, où l'on a pris $k$ entre $0$ et $p - 1$. Alors $t \geqslant 0$ (car $a \geqslant b$ et $k \leqslant p - 1$), donc $n \geqslant 0$. On a d'une part

$$n \equiv k \pmod p,$$

et d'autre part, en écrivant $pt = t + (p-1)t$,

$$n = k + t + (p-1)t = (a - b) + (p - 1) + (p-1)t = (a - b) + (p-1)(t + 1).$$

**Étape 4 : $p$ divise $a^n + n^b$.** D'après le petit théorème de Fermat, $a^{p-1} \equiv 1 \pmod p$, puisque $p$ ne divise pas $a$. Donc

$$a^n = a^{a-b} \times \left(a^{p-1}\right)^{t+1} \equiv a^{a-b} \pmod p, \qquad n^b \equiv k^b \pmod p.$$

En multipliant par $a^b$ :

$$a^b\left(a^n + n^b\right) \equiv a^a + (ka)^b \equiv a^a + b^b = N \equiv 0 \pmod p.$$

Comme $p$ est premier et ne divise pas $a^b$, il divise $a^n + n^b$.

**Étape 5 : $p$ divise $b^n + n^a$.** De même, $b^{p-1} \equiv 1 \pmod p$, donc $b^n \equiv b^{a-b}$ et $n^a \equiv k^a \pmod p$. En multipliant par $b^b$ puis en remplaçant $b$ par $ka$ :

$$b^b\left(b^n + n^a\right) \equiv b^a + b^b k^a \equiv (ka)^a + (ka)^b k^a = k^a\left(a^a + k^b a^b\right) = k^a\left(a^a + (ka)^b\right) \equiv k^a\left(a^a + b^b\right) \equiv 0 \pmod p.$$

Comme $p$ ne divise pas $b^b$, il divise $b^n + n^a$.

**Conclusion.** Pour cet entier $n$, le nombre premier $p$ divise à la fois $a^n + n^b$ et $b^n + n^a$, qui ne sont donc pas premiers entre eux. C'est une contradiction : **il n'existe pas de tels entiers $a$ et $b$.**

## Going further

Pour $a = 2$ et $b = 1$ : $N = 2^2 + 1^1 = 5$, $p = 5$, et $k = 3$ convient car $3 \times 2 = 6 \equiv 1 \pmod 5$. On trouve $t = 2 - 1 - 3 + 4 = 2$ et $n = 3 + 10 = 13$. On vérifie que $2^{13} + 13 = 8205$ et $1^{13} + 13^2 = 170$ sont tous deux multiples de $5$.
