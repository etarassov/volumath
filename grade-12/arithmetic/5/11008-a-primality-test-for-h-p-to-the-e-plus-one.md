---
id: "11008"
title: "Un critère de primalité pour h·pᵉ + 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [maths-expertes, nombres-premiers, petit-theoreme-de-fermat, ordre, congruences, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 15 ; corrigé 2020-02_corrige-commente-envoi-3.pdf (qui utilise l'indicatrice d'Euler ; la solution ci-dessous s'en passe)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Soit $p$ un nombre premier impair, $h$ un entier tel que $1 \leqslant h < p$, et $e \in \{1, 2\}$. On pose
$$n = h\,p^e + 1 ,$$
et on suppose que $n$ divise $2^{n-1} - 1$, mais que $n$ ne divise pas $2^h - 1$.

Montrer que $n$ est un nombre premier.

## Hints

1. Pour un entier $N$ impair, appelle **ordre de 2 modulo $N$** le plus petit entier $w \geqslant 1$ tel que $N$ divise $2^w - 1$. Montre que $N$ divise $2^k - 1$ si et seulement si $w$ divise $k$.
2. Il existe un facteur premier $q$ de $n$ tel que, si $q^a$ est la plus grande puissance de $q$ qui divise $n$, alors $q^a$ ne divise pas $2^h - 1$. Montre que $p$ divise l'ordre de $2$ modulo $q^a$.
3. Avec le petit théorème de Fermat, montre que $2^{(q-1)q^{a-1}} \equiv 1 \pmod{q^a}$, puis que $p$ divise $q - 1$. Remarque que $q - 1$ est même un multiple pair de $p$.
4. Si $n$ n'était pas égal à $q$, il serait trop grand. Compare avec $p^2$, puis avec $p^3$, en utilisant aussi que $n \equiv 1 \pmod{p^e}$.

## Solution

**Deux petits faits utiles.** Comme $h \geqslant 1$, on a $n - 1 \geqslant 3$, donc $2^{n-1} - 1$ est impair ; son
diviseur $n$ est donc impair, et tous les facteurs premiers de $n$ sont impairs. Par ailleurs
$n \equiv 1 \pmod p$, donc $p$ ne divise pas $n$.

**Lemme 1 (ordre).** Soit $N$ un entier impair qui divise au moins un nombre $2^k - 1$ avec
$k \geqslant 1$, et soit $w$ le plus petit tel $k$. Alors $N$ divise $2^k - 1$ si et seulement si $w$ divise $k$.

*Preuve.* Écrivons $k = sw + r$ avec $0 \leqslant r < w$. Comme $2^w \equiv 1 \pmod N$, on a
$2^{sw} \equiv 1$, donc $2^k = 2^{sw} \cdot 2^r \equiv 2^r \pmod N$. Ainsi $N$ divise $2^k - 1$ si et seulement
si $N$ divise $2^r - 1$. Si $r \geqslant 1$, c'est impossible par minimalité de $w$ ; si $r = 0$, c'est vrai.
Donc $N$ divise $2^k - 1$ exactement quand $r = 0$, c'est-à-dire quand $w$ divise $k$.

**Lemme 2 (remontée).** Soit $q$ un nombre premier et $x$ un entier tel que $x \equiv 1 \pmod{q^j}$ avec
$j \geqslant 1$. Alors $x^q \equiv 1 \pmod{q^{j+1}}$.

*Preuve.* On a $x^q - 1 = (x - 1)(x^{q-1} + x^{q-2} + \cdots + x + 1)$. Le premier facteur est un multiple
de $q^j$. Dans le second, chacun des $q$ termes est congru à $1$ modulo $q$, donc ce facteur est congru
à $q \equiv 0 \pmod q$. Le produit est donc un multiple de $q^{j+1}$.

**Étape 1 : un facteur premier $q$ de $n$ tel que $p$ divise $q - 1$.**

Écrivons $n$ comme produit de puissances de nombres premiers distincts. Ces puissances sont premières
entre elles deux à deux ; si chacune divisait $2^h - 1$, leur produit $n$ le diviserait aussi, ce qui
est exclu. Il existe donc un nombre premier $q$ et un exposant $a \geqslant 1$ tels que $q^a$ divise $n$,
$q^{a+1}$ ne divise pas $n$, et $q^a$ ne divise pas $2^h - 1$.

Comme $q^a$ divise $n$, il divise $2^{n-1} - 1$. Soit $w$ l'ordre de $2$ modulo $q^a$. Par le lemme 1,
$w$ divise $n - 1 = h p^e$, mais $w$ ne divise pas $h$. Si $p$ ne divisait pas $w$, alors $w$ serait
premier avec $p^e$ et, divisant $h p^e$, il diviserait $h$ (lemme de Gauss). Donc **$p$ divise $w$**.

D'autre part $q$ est un premier impair, donc par le petit théorème de Fermat $2^{q-1} \equiv 1 \pmod q$.
En appliquant $a - 1$ fois le lemme 2, on obtient
$$2^{(q-1)q^{a-1}} \equiv 1 \pmod{q^a} ,$$
donc, par le lemme 1, $w$ divise $(q - 1)\,q^{a-1}$. Ainsi $p$ divise $(q-1)\,q^{a-1}$. Comme $p$ ne divise
pas $n$, on a $p \neq q$, et le lemme d'Euclide donne : **$p$ divise $q - 1$.**

On écrit $q = 1 + kp$ avec $k \geqslant 1$. Comme $q$ et $p$ sont impairs, $kp = q - 1$ est pair, donc $k$
est pair et $k \geqslant 2$ : **$q \geqslant 2p + 1$**.

**Étape 2 : si $n \neq q$, alors $e = 2$.**

Écrivons $n = q^a N$, où $N$ n'est pas divisible par $q$. Modulo $p$, on a $n \equiv 1$ et $q \equiv 1$,
donc $N \equiv 1 \pmod p$. De plus $N$ est impair, comme $n$. Donc $N = 1$ ou $N \geqslant 2p + 1$.

Supposons $n \neq q$. Alors $a \geqslant 2$ ou $N \geqslant 2p + 1$, et dans les deux cas
$$n \geqslant (2p+1)^2 > p^2 + 1 > hp + 1 .$$
Ceci exclut $e = 1$. Donc $e = 2$, et
$$n = h p^2 + 1 \leqslant (p-1)p^2 + 1 < p^3, \qquad n \equiv 1 \pmod{p^2} .$$

**Étape 3 : le cas $a \geqslant 2$ est impossible.** Si $a \geqslant 3$, ou si $a = 2$ et $N > 1$, on
aurait $n \geqslant (2p+1)^3 > p^3$. Il resterait $n = q^2$. Or
$$q^2 = (1 + kp)^2 = 1 + 2kp + k^2p^2 \equiv 1 + 2kp \pmod{p^2} .$$
Comme $n \equiv 1 \pmod{p^2}$, $p^2$ divise $2kp$, donc $p$ divise $2k$, donc $p$ divise $k$ ($p$ est impair).
Alors $k \geqslant p$, $q \geqslant p^2 + 1$ et $n = q^2 > p^4 > p^3$ : impossible.

**Étape 4 : le cas $a = 1$, $N > 1$ est impossible.** Écrivons $N = 1 + lp$, avec $l$ pair et $l \geqslant 2$
(car $N$ est impair et $N \geqslant 2p+1$). Alors
$$n = qN = (1 + kp)(1 + lp) = 1 + (k + l)\,p + kl\,p^2 \equiv 1 + (k+l)\,p \pmod{p^2} .$$
Comme $n \equiv 1 \pmod{p^2}$, $p$ divise $k + l$. Or $k + l$ est pair et $p$ impair, donc $2p$ divise
$k + l$ et $k + l \geqslant 2p$. L'un des deux, disons $k$, vaut donc au moins $p$, et
$$n = qN \geqslant (1 + p^2)(2p + 1) > p^3 ,$$
ce qui contredit $n < p^3$. (Le cas $l \geqslant p$ est identique.)

**Conclusion.** Toutes les possibilités avec $n \neq q$ mènent à une contradiction. Donc $n = q$ :
**$n$ est un nombre premier.**

## Going further

C'est une variante du **critère de Pocklington**, qui sert vraiment à prouver qu'un très grand nombre
est premier sans le factoriser : on vérifie une ou deux puissances de $2$ modulo $n$, au lieu de
chercher des diviseurs. Les tests de primalité utilisés pour les grands nombres premiers connus
reposent sur des idées de ce genre.
