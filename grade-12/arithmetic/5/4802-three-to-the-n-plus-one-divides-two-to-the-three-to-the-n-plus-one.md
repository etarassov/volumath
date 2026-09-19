---
id: "4802"
title: "Une tour de puissances divisible par 3ⁿ⁺¹"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [recurrence, divisibilite, congruences, factorisation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Introduction to Induction (Olga Radko)"
  reference: "handoutId10-0.pdf, section 4, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId10-0.pdf"
---

## Statement

Montrer que pour tout entier naturel $n$, le nombre
$$2^{3^n} + 1$$
est divisible par $3^{n+1}$.

Attention à la lecture de l'exposant : $3^n$ est lui-même une puissance. Par exemple, pour $n = 2$ le nombre est $2^9 + 1 = 513$, et il faut montrer qu'il est divisible par $3^3 = 27$.

## Hints

1. Vérifie l'énoncé à la main pour $n = 0$, $n = 1$ et $n = 2$ avant de te lancer.
2. Pose $a = 2^{3^n}$. Que vaut $2^{3^{n+1}}$ en fonction de $a$ ? (Souviens-toi que $3^{n+1} = 3 \times 3^n$.)
3. Tu dois donc passer de $a + 1$ à $a^3 + 1$. Connais-tu une factorisation de $a^3 + 1$ ?
4. La factorisation donne $a^3 + 1 = (a+1)(a^2 - a + 1)$. Le facteur $a+1$ apporte déjà $3^{n+1}$ par hypothèse de récurrence. Il faut donc gagner **un** facteur $3$ de plus : montre que $a^2 - a + 1$ est divisible par $3$.
5. Pour cela, quel est le reste de $a$ dans la division par $3$ ? L'hypothèse de récurrence te le dit.

## Solution

**Ce qu'il faut démontrer.** Pour tout $n \geqslant 0$, notons $P(n)$ l'affirmation
$$3^{n+1} \text{ divise } 2^{3^n} + 1.$$

**Initialisation ($n = 0$).** On a $3^0 = 1$, donc $2^{3^0} + 1 = 2^1 + 1 = 3$, qui est bien divisible par $3^{0+1} = 3$. Donc $P(0)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \geqslant 0$, et posons
$$a = 2^{3^n}.$$
L'hypothèse de récurrence dit que $3^{n+1}$ divise $a + 1$.

*Le nombre de rang suivant.* Comme $3^{n+1} = 3 \times 3^n$, on a
$$2^{3^{n+1}} = 2^{3 \times 3^n} = \left(2^{3^n}\right)^3 = a^3 .$$
Il s'agit donc de montrer que $3^{n+2}$ divise $a^3 + 1$.

*La factorisation.* Pour tout nombre $a$,
$$a^3 + 1 = (a+1)\left(a^2 - a + 1\right).$$
(On peut le vérifier en développant : $(a+1)(a^2 - a + 1) = a^3 - a^2 + a + a^2 - a + 1 = a^3 + 1$.)

*Le premier facteur.* Par hypothèse de récurrence, $a + 1 = 3^{n+1} k$ pour un certain entier $k$.

*Le second facteur.* Puisque $3^{n+1}$ divise $a+1$ et que $n + 1 \geqslant 1$, en particulier $3$ divise $a + 1$. Donc $a$ a pour reste $2$ dans la division par $3$, autrement dit
$$a \equiv -1 \pmod 3 .$$
On en déduit
$$a^2 - a + 1 \equiv (-1)^2 - (-1) + 1 = 1 + 1 + 1 = 3 \equiv 0 \pmod 3,$$
donc $3$ divise $a^2 - a + 1$. Écrivons $a^2 - a + 1 = 3m$ avec $m$ entier.

*On rassemble.*
$$a^3 + 1 = (a+1)\left(a^2 - a + 1\right) = 3^{n+1} k \times 3 m = 3^{n+2} \, (km).$$
Donc $3^{n+2}$ divise $2^{3^{n+1}} + 1$, c'est-à-dire que $P(n+1)$ est vraie.

**Conclusion.** Par récurrence, $P(n)$ est vraie pour tout entier naturel $n$ :
$$\boxed{3^{n+1} \text{ divise } 2^{3^n} + 1 \quad \text{pour tout } n \geqslant 0.}$$

**Vérification sur les premiers cas.**

| $n$ | $2^{3^n} + 1$ | $3^{n+1}$ | quotient |
|---|---|---|---|
| $0$ | $3$ | $3$ | $1$ |
| $1$ | $9$ | $9$ | $1$ |
| $2$ | $513$ | $27$ | $19$ |
| $3$ | $134\,217\,729$ | $81$ | $1\,657\,009$ |

## Going further

1. Dans le tableau, le quotient n'est jamais divisible par $3$. Montre que c'est toujours le cas, autrement dit que $3^{n+2}$ ne divise **pas** $2^{3^n} + 1$. (Indication : reprendre le calcul modulo $9$ au lieu de modulo $3$.)
2. La même méthode marche-t-elle pour $5^{3^n} + 1$ ? Et pour $2^{3^n} - 1$ ?
3. Ce résultat est un cas particulier d'un théorème appelé « lemme de l'exposant qui se relève » (*lifting the exponent*). Cherche son énoncé général.
