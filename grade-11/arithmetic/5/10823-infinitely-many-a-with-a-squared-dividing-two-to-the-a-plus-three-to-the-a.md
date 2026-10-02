---
id: "10823"
title: "Une infinité de a tels que a² divise 2ᵃ + 3ᵃ"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [divisibilite, puissances, factorisation, congruences, nombres-premiers, construction, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Montrer qu'il existe une infinité d'entiers $a \geqslant 1$ tels que $a^2$ divise $2^a + 3^a$.

## Hints

1. Vérifie que $a = 1$ et $a = 5$ conviennent. Pour $a = 5$, calcule le quotient $\left(2^5 + 3^5\right) / 5^2$.
2. Idée : partir d'un $a$ qui convient, et en fabriquer un plus grand de la forme $p \times a$. Pour $a = 5$, essaie $p = 11$.
3. Pour $p$ impair, factorise $X^p + Y^p$ par $X + Y$. Si $p$ divise $X + Y$, montre que $p$ divise aussi l'autre facteur.
4. Prends pour $p$ un nombre premier qui divise le quotient $\left(2^a + 3^a\right) / a^2$. Pourquoi un tel nombre premier existe-t-il, et pourquoi est-il impair ?

## Solution

L'idée est de **construire** une suite infinie, de plus en plus grande, de nombres qui conviennent : chaque nombre est obtenu en multipliant le précédent par un nombre premier bien choisi.

### Un rappel sur les restes

On écrit $u \equiv v \pmod k$, et on lit « $u$ est congru à $v$ modulo $k$ », quand $u - v$ est un multiple de $k$. On peut ajouter et multiplier ces relations comme des égalités.

### Étape 1 : un lemme de factorisation

**Lemme.** Soit $p \geqslant 1$ un entier impair, et $X$, $Y$ deux entiers. Alors
$$X^p + Y^p = (X + Y) \times T, \qquad \text{avec } T = X^{p-1} - X^{p-2}\,Y + X^{p-3}\,Y^2 - \cdots + Y^{p-1} .$$
De plus, si $p$ divise $X + Y$, alors $p$ divise $T$.

*Preuve.* Le nombre $T$ est la somme des $p$ termes $(-1)^i\,X^{p-1-i}\,Y^i$, pour $i$ allant de $0$ à $p - 1$. En développant $(X + Y) \times T$, chaque terme de $X \times T$, sauf le premier $X^p$, est annulé par un terme de $Y \times T$. Il reste $X^p$ et le dernier terme de $Y \times T$, qui est $(-1)^{p-1}\,Y^p = Y^p$ puisque $p - 1$ est pair.

Si $p$ divise $X + Y$, alors $Y \equiv -X \pmod p$. Chaque terme de $T$ vérifie donc
$$(-1)^i\,X^{p-1-i}\,Y^i \equiv (-1)^i\,X^{p-1-i}\,(-X)^i = (-1)^{2i}\,X^{p-1} = X^{p-1} \pmod p .$$
En additionnant les $p$ termes, $T \equiv p\,X^{p-1} \equiv 0 \pmod p$.

### Étape 2 : comment agrandir une solution

Soit $a \geqslant 1$ un entier tel que $a^2$ divise $2^a + 3^a$. Notons
$$q = \frac{2^a + 3^a}{a^2} ,$$
qui est un entier.

*Le quotient $q$ a un facteur premier impair.* Le nombre $2^a + 3^a$ est impair (pair plus impair), donc $q$ est impair. De plus $3^a > a^2$ pour tout $a \geqslant 1$ (voir ci-dessous), donc $q > 1$. Ainsi $q$ est un entier impair au moins égal à $3$ : il a un facteur premier $p$, forcément impair.

*Vérification de $3^a > a^2$.* C'est vrai pour $a = 1$ et $a = 2$ ($3 > 1$ et $9 > 4$). Si c'est vrai pour un $a \geqslant 2$, alors $3^{a+1} = 3 \times 3^a > 3a^2 = a^2 + 2a^2 \geqslant a^2 + 4a > a^2 + 2a + 1 = (a+1)^2$. Par récurrence, c'est vrai pour tout $a \geqslant 1$.

*Le nombre $b = p\,a$ convient.* Comme $p$ divise $q$, le nombre $p\,a^2$ divise $q\,a^2 = 2^a + 3^a$. On applique le lemme avec $X = 2^a$, $Y = 3^a$ et l'entier impair $p$ :
$$2^{b} + 3^{b} = \left(2^a\right)^p + \left(3^a\right)^p = \left(2^a + 3^a\right) \times T .$$
Le premier facteur est divisible par $p\,a^2$. Comme $p$ divise $2^a + 3^a = X + Y$, le lemme dit que $p$ divise $T$. Le produit est donc divisible par $p\,a^2 \times p = (p\,a)^2 = b^2$.

**Ainsi, $b = p\,a$ convient aussi, et $b \geqslant 3a > a$.**

### Étape 3 : une infinité de solutions

On part de $a_0 = 1$, qui convient car $1$ divise $2 + 3 = 5$. En appliquant l'étape 2 encore et encore, on obtient une suite $a_0 < a_1 < a_2 < \cdots$ d'entiers qui conviennent tous. Comme elle est strictement croissante, ses termes sont tous différents. **Il existe donc une infinité d'entiers $a$ tels que $a^2$ divise $2^a + 3^a$.**

*Les premiers termes.* Pour $a = 1$, on a $q = 5$, d'où $p = 5$ et $a_1 = 5$. Pour $a = 5$, on a $2^5 + 3^5 = 32 + 243 = 275 = 25 \times 11$, d'où $q = 11$, $p = 11$ et $a_2 = 55$.

## Going further

1. Essaie la même méthode avec $2^a + 1$ à la place de $2^a + 3^a$. En partant de $a = 1$, on trouve $a = 3$. Pourquoi la méthode est-elle bloquée ensuite ? *On peut montrer que seuls $a = 1$ et $a = 3$ vérifient « $a^2$ divise $2^a + 1$ » : c'est un problème des Olympiades internationales de 1990.*
2. Montre de la même façon qu'il existe une infinité d'entiers $a$ tels que $a^2$ divise $4^a + 5^a$. En partant de $a = 1$, quels nombres la méthode fournit-elle ensuite ? *Ici, le quotient obtenu pour $a = 3$ a deux facteurs premiers, $3$ et $7$ : on a le choix.*
