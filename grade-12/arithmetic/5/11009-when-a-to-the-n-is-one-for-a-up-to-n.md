---
id: "11009"
title: "Quand aⁿ ≡ 1 pour a = 1, …, n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [maths-expertes, congruences, nombres-premiers, polynomes, binome-de-newton]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 16 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Soient $m \geqslant 2$ et $n \geqslant 2$ deux entiers tels que
$$a^n \equiv 1 \pmod m \qquad \text{pour tout } a \in \{1, 2, \ldots, n\} .$$

Montrer que $m$ est un nombre premier et que $n = m - 1$.

## Hints

1. Soit $p$ un facteur premier de $m$. Montre d'abord que $n < p$.
2. Considère le polynôme $P(X) = X^n - 1 - (X - 1)(X - 2)\cdots(X - n)$. Il est de degré au plus $n - 1$, et $p$ divise $P(1), P(2), \ldots, P(n)$. Quel est son coefficient de $X^{n-1}$ ?
3. Un polynôme à coefficients entiers dont le coefficient dominant n'est pas divisible par $p$ a au plus autant de « racines modulo $p$ » que son degré. Démontre-le en factorisant $P(X) - P(r)$ par $X - r$.
4. Pour exclure $p^2 \mid m$, développe $(p - 1)^{p-1}$ avec le binôme de Newton.

## Solution

**Lemme (racines modulo $p$).** Soit $p$ un nombre premier et $Q(X) = c_d X^d + \cdots + c_1 X + c_0$ un
polynôme à coefficients entiers, avec $p$ qui ne divise pas $c_d$. Alors, parmi $0, 1, \ldots, p - 1$, il y
a au plus $d$ entiers $x$ tels que $p$ divise $Q(x)$.

*Preuve, par récurrence sur $d$.* Si $d = 0$, $Q = c_0$ n'est divisible par $p$ en aucun point. Soit
$d \geqslant 1$. Si aucun $x$ ne convient, c'est fini. Sinon, soit $r$ l'un d'eux. Comme
$x^j - r^j = (x - r)(x^{j-1} + x^{j-2} r + \cdots + r^{j-1})$, on peut écrire
$Q(X) - Q(r) = (X - r)\,R(X)$, où $R$ est à coefficients entiers, de degré $d - 1$, de coefficient
dominant $c_d$. Si $s \neq r$ est un autre entier de $\{0, \ldots, p-1\}$ avec $p \mid Q(s)$, alors $p$
divise $Q(s) - Q(r) = (s - r)\,R(s)$. Comme $0 < |s - r| < p$, le lemme d'Euclide donne $p \mid R(s)$.
Par hypothèse de récurrence, il y a au plus $d - 1$ tels $s$, donc au plus $d$ entiers en tout.

**Étape 1 : $n < p$ pour tout facteur premier $p$ de $m$.** Soit $p$ un nombre premier qui divise $m$.
L'hypothèse donne $a^n \equiv 1 \pmod p$ pour $a = 1, \ldots, n$. Si l'on avait $n \geqslant p$, on pourrait
prendre $a = p$ : mais $p^n \equiv 0 \pmod p$, pas $1$. Donc $n \leqslant p - 1$. En particulier
$p \geqslant n + 1 \geqslant 3$, donc $p$ est impair.

**Étape 2 : $n = p - 1$.** Considérons
$$P(X) = X^n - 1 - (X - 1)(X - 2)\cdots(X - n) .$$
En développant le produit, $(X-1)\cdots(X-n) = X^n - (1 + 2 + \cdots + n)\,X^{n-1} + \cdots$, donc
$$P(X) = (1 + 2 + \cdots + n)\,X^{n-1} + (\text{termes de degré} \leqslant n - 2) .$$
Pour $x \in \{1, \ldots, n\}$, le produit $(x - 1)\cdots(x - n)$ est nul et $p$ divise $x^n - 1$ : donc $p$
divise $P(x)$. Ce sont $n$ entiers distincts de $\{0, \ldots, p-1\}$, car $n < p$.

Si l'un des coefficients de $P$ n'était pas divisible par $p$, notons $c_d X^d$ le terme de plus haut
degré dont le coefficient n'est pas divisible par $p$. Comme les termes de degré plus grand sont
multiples de $p$ en tout point, $p$ diviserait $c_d x^d + \cdots + c_0$ pour ces $n$ valeurs de $x$, avec
$d \leqslant n - 1 < n$ : cela contredit le lemme. Donc **tous les coefficients de $P$ sont divisibles
par $p$**, en particulier
$$p \ \text{divise} \ 1 + 2 + \cdots + n = \frac{n(n+1)}{2} .$$
Comme $p$ est impair, $p$ divise $n(n+1)$, donc $p$ divise $n$ ou $n + 1$. Mais $1 \leqslant n < p$, donc $p$
ne divise pas $n$, et $p$ divise $n + 1 \leqslant p$. Ainsi $n + 1 = p$.

**Étape 3 : $m = p$.** L'étape 2 montre que tout facteur premier de $m$ est égal à $n + 1$. Donc $m$ est
une puissance de $p = n + 1$. Supposons que $p^2$ divise $m$. Comme $a = p - 1 = n$ est autorisé, on
aurait $(p - 1)^{p-1} \equiv 1 \pmod{p^2}$. Or, par le binôme de Newton, tous les termes de
$(-1 + p)^{p-1}$ contenant $p^2$ disparaissent modulo $p^2$, et il reste
$$(p - 1)^{p-1} \equiv (-1)^{p-1} + (p - 1)\,p\,(-1)^{p-2} \pmod{p^2} .$$
Comme $p - 1$ est pair, cela vaut $1 - p(p-1) = 1 + p - p^2 \equiv 1 + p \pmod{p^2}$, qui n'est pas congru
à $1$ puisque $p^2$ ne divise pas $p$. Contradiction : $p^2$ ne divise pas $m$.

**Conclusion.** $m = p$ est premier et $n = p - 1 = m - 1$.

## Going further

La réciproque est vraie : si $m$ est premier et $n = m - 1$, le petit théorème de Fermat donne
exactement $a^{m-1} \equiv 1 \pmod m$ pour $a = 1, \ldots, m - 1$. L'énoncé dit donc que la conclusion de
Fermat, demandée seulement pour les petits $a$, caractérise les nombres premiers.
