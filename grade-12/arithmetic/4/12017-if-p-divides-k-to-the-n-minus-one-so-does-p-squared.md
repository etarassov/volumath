---
id: "12017"
title: "Si p divise kⁿ − 1, alors p² aussi"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres premiers, congruences, petit theoreme de fermat, binome de newton, divisibilite, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de novembre 2012"
  reference: "2017-10_ofm-2012-2013-test-novembre.pdf, exercice 7 (sujet olympique) ; corrigé 2017-10_ofm-2012-2013-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-novembre.pdf"
---

## Statement

Soit $p$ un nombre premier. Trouver tous les entiers $n \ge 1$ qui ont la propriété suivante :

> pour tout entier $k \ge 1$, si $k^n - 1$ est divisible par $p$, alors $k^n - 1$ est aussi divisible par $p^2$.

## Hints

1. Essayez $k = p + 1$. Ce $k$ vérifie-t-il l'hypothèse ? Développez $(1 + p)^n$ avec la formule du binôme et regardez-le modulo $p^2$.
2. Vous devez trouver que $p$ divise forcément $n$. Pour la réciproque, écrivez $n = pm$ et posez $a = k^m$, de sorte que $k^n = a^p$.
3. Si $p$ divise $a^p - 1$, le petit théorème de Fermat permet de montrer que $p$ divise $a - 1$.
4. Écrivez alors $a = 1 + \ell p$ et développez $(1 + \ell p)^p$.

## Solution

**Réponse.** Ce sont exactement les multiples de $p$.

On utilise deux outils.

- **La formule du binôme**, sous la forme : pour tout entier $c$ et tout entier $N \ge 1$,
$$(1 + cp)^N = 1 + N\,cp + \binom{N}{2} c^2 p^2 + \binom{N}{3} c^3 p^3 + \cdots + c^N p^N \equiv 1 + N\,cp \pmod{p^2},$$
car tous les termes à partir du troisième contiennent au moins $p^2$.
- **Le petit théorème de Fermat** : pour tout entier $a$, on a $a^p \equiv a \pmod p$.

**Étape 1 : si $n$ a la propriété, alors $p$ divise $n$.** Prenons $k = p + 1$. Comme $k \equiv 1 \pmod p$, on a $k^n \equiv 1^n = 1 \pmod p$ : le nombre $k^n - 1$ est divisible par $p$. D'après la propriété, il est divisible par $p^2$.

Or, d'après la formule du binôme avec $c = 1$ et $N = n$,

$$k^n = (1 + p)^n \equiv 1 + np \pmod{p^2}, \qquad \text{donc} \qquad k^n - 1 \equiv np \pmod{p^2} .$$

Ainsi $p^2$ divise $np$, c'est-à-dire que $np = p^2 q$ pour un entier $q$, d'où $n = pq$ : **$p$ divise $n$.**

**Étape 2 : si $p$ divise $n$, alors $n$ a la propriété.** Écrivons $n = pm$ avec $m \ge 1$, et soit $k \ge 1$ un entier tel que $p$ divise $k^n - 1$. Posons $a = k^m$, de sorte que

$$k^n = k^{pm} = \left(k^m\right)^p = a^p .$$

*D'abord, $p$ divise $a - 1$.* Par hypothèse $a^p \equiv 1 \pmod p$, et d'après le petit théorème de Fermat $a^p \equiv a \pmod p$. Donc $a \equiv 1 \pmod p$ : on peut écrire $a = 1 + \ell p$ avec $\ell$ entier.

*Ensuite, $p^2$ divise $a^p - 1$.* D'après la formule du binôme avec $c = \ell$ et $N = p$,

$$k^n = a^p = (1 + \ell p)^p \equiv 1 + p \cdot \ell p = 1 + \ell p^2 \equiv 1 \pmod{p^2} .$$

Donc $p^2$ divise $k^n - 1$, et $n$ a bien la propriété.

**Conclusion.** Les entiers $n \ge 1$ qui ont la propriété sont exactement les multiples de $p$.

## Going further

Pour $p = 2$, l'énoncé dit : « si $k^n - 1$ est pair, alors il est divisible par $4$ ». C'est vrai pour $n$ pair, car le carré d'un nombre impair $2j + 1$ vaut $4j(j+1) + 1$. C'est faux pour $n$ impair, comme le montre $k = 3$ : $3^n - 1 \equiv (-1)^n - 1 = -2 \pmod 4$.
