---
id: "12268"
title: "Quand a + b/a − 1/b est entier, c'est un carré"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [fractions, divisibilite, carre-parfait, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de février 2017"
  reference: "2017-10_ofm-2016-2017-test-fevrier.pdf et son corrigé, test du 15 février 2017, exercice 2 (groupe B). La solution suit celle du corrigé, résultat vérifié par ordinateur pour a, b < 1500"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-fevrier.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs. On suppose que le nombre
$$N = a + \frac{b}{a} - \frac{1}{b}$$
est un entier. Montrer que $N$ est le carré d'un entier.

## Hints

1. Cherche tous les couples $(a, b)$ qui conviennent avec $a \leqslant 10$ et $b \leqslant 10$. Que remarques-tu ?
2. Multiplie $N$ par $a$. Qu'en déduis-tu sur le nombre $\frac{a}{b}$ ?
3. Pose $a = kb$, avec $k$ entier. Multiplie maintenant $N$ par $b$ : tu dois trouver que $k$ divise $b$.
4. Écris $b = kc$. Que vaut $N - a$ en fonction de $k$ et de $c$ ? Multiplie-le par $k$.

## Solution

**Étape 1. Le nombre $b$ divise $a$.**

On multiplie $N$ par $a$ :
$$a\,N = a^2 + b - \frac{a}{b}.$$
Donc $\frac{a}{b} = a^2 + b - a\,N$. Le membre de droite est un entier, car $a$, $b$ et $N$ sont des entiers. Ainsi $\frac{a}{b}$ est un entier, strictement positif. On le note $k$ : on a $a = k\,b$, avec $k \geqslant 1$.

**Étape 2. Le nombre $k$ divise $b$.**

On multiplie $N$ par $b$ :
$$b\,N = a\,b + \frac{b^2}{a} - 1.$$
Donc $\frac{b^2}{a} = b\,N - a\,b + 1$ est un entier. Or, comme $a = k\,b$,
$$\frac{b^2}{a} = \frac{b^2}{k\,b} = \frac{b}{k}.$$
Ainsi $\frac{b}{k}$ est un entier, strictement positif. On le note $c$ : on a $b = k\,c$, avec $c \geqslant 1$.

**Étape 3. On a $c = 1$.**

Le nombre $N - a = \frac{b}{a} - \frac{1}{b}$ est un entier, comme différence de deux entiers. Avec $a = k\,b$ et $b = k\,c$, il s'écrit
$$N - a = \frac{1}{k} - \frac{1}{k\,c}.$$
On le multiplie par l'entier $k$ : le nombre $k\,(N - a) = 1 - \frac{1}{c}$ est encore un entier. Donc $\frac{1}{c}$ est un entier. Comme $c$ est un entier au moins égal à $1$, on a $0 < \frac{1}{c} \leqslant 1$, et le seul entier dans cet intervalle est $1$. Donc $c = 1$.

**Étape 4. Conclusion.**

On a donc $b = k$ et $a = k\,b = k^2$. Alors
$$N = k^2 + \frac{k}{k^2} - \frac{1}{k} = k^2 + \frac{1}{k} - \frac{1}{k} = k^2.$$
Le nombre $N$ est bien le carré de l'entier $k$.

## Going further

1. Réciproquement, vérifie que pour tout entier $k \geqslant 1$, le choix $a = k^2$ et $b = k$ donne bien un entier $N$.
2. On remplace le signe $-$ par un signe $+$ : on suppose que $a + \frac{b}{a} + \frac{1}{b}$ est un entier. Quelles valeurs cet entier peut-il prendre ? Ce sont encore des carrés ?
