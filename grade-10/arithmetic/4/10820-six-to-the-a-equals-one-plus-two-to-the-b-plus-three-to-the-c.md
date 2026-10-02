---
id: "10820"
title: "6ᵃ = 1 + 2ᵇ + 3ᶜ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [equation-diophantienne, puissances, congruences, restes, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ d'entiers strictement positifs tels que

$$6^a = 1 + 2^b + 3^c .$$

## Hints

1. Cherche les solutions avec $a = 1$, puis avec $a = 2$.
2. Regarde les restes dans la division par $3$. Que peut-on en déduire sur $b$ ?
3. Traite à part le cas $b = 1$, en divisant l'équation par $3$.
4. Si $b \geqslant 3$, regarde les restes dans la division par $4$, puis dans la division par $8$. Tu dois trouver $a = 2$.

## Solution

**Réponse : il y a trois triplets, $(1, 1, 1)$, $(2, 3, 3)$ et $(2, 5, 1)$.**

On vérifie : $6 = 1 + 2 + 3$, $36 = 1 + 8 + 27$ et $36 = 1 + 32 + 3$.

### Un rappel sur les restes

On écrit $x \equiv y \pmod k$, et on lit « $x$ est congru à $y$ modulo $k$ », quand $x - y$ est un multiple de $k$. Pour des nombres positifs, cela veut dire que $x$ et $y$ ont le même reste dans la division par $k$. On peut ajouter et multiplier ces relations comme des égalités. En particulier, $x \equiv y$ donne $x^j \equiv y^j \pmod k$ pour tout $j \geqslant 1$.

### Étape 1 : $b$ est impair

Comme $a \geqslant 1$ et $c \geqslant 1$, les nombres $6^a$ et $3^c$ sont des multiples de $3$. L'équation donne donc $1 + 2^b \equiv 0 \pmod 3$. Or $2 \equiv -1 \pmod 3$, donc
$$1 + 2^b \equiv 1 + (-1)^b \pmod 3 .$$
Si $b$ était pair, ce nombre serait congru à $2$, pas à $0$. **Donc $b$ est impair.**

### Étape 2 : le cas $b = 1$

L'équation devient $6^a = 3 + 3^c$. En divisant par $3$ :
$$2 \times 6^{a-1} = 1 + 3^{c-1} .$$

- Si $a \geqslant 2$, le membre de gauche est un multiple de $6$, donc de $3$. Le membre de droite doit l'être aussi, ce qui oblige $c = 1$ (si $c \geqslant 2$, alors $1 + 3^{c-1}$ a pour reste $1$ dans la division par $3$). Mais alors le membre de droite vaut $2$, alors que celui de gauche vaut au moins $12$. Impossible.
- Donc $a = 1$, et l'équation devient $2 = 1 + 3^{c-1}$, d'où $c = 1$.

On obtient la solution **$(1, 1, 1)$**.

### Étape 3 : le cas $b \geqslant 3$, on montre que $a = 2$

Comme $b \geqslant 3$, on a $6^a \geqslant 1 + 8 + 3 = 12 > 6$, donc $a \geqslant 2$. Ainsi $6^a$ est un multiple de $6^2 = 36$, donc de $4$, et $2^b$ est un multiple de $2^3 = 8$.

*Modulo $4$.* L'équation donne $0 \equiv 1 + 0 + 3^c \pmod 4$, donc $3^c \equiv -1 \pmod 4$. Comme $3 \equiv -1 \pmod 4$, on a $3^c \equiv (-1)^c$, et cela vaut $-1$ seulement si **$c$ est impair**.

*Modulo $8$.* On a $3^2 = 9 \equiv 1 \pmod 8$. Comme $c$ est impair, écrivons $c = 2j + 1$ : alors $3^c = \left(3^2\right)^j \times 3 \equiv 3 \pmod 8$. Donc
$$6^a = 1 + 2^b + 3^c \equiv 1 + 0 + 3 = 4 \pmod 8 .$$
Or, si $a \geqslant 3$, le nombre $6^a = 2^a \times 3^a$ est un multiple de $2^3 = 8$, donc congru à $0$ et pas à $4$. **Donc $a = 2$.**

### Étape 4 : on termine avec $a = 2$

L'équation devient $36 = 1 + 2^b + 3^c$, c'est-à-dire
$$2^b + 3^c = 35 .$$
Comme $3^c \geqslant 3$, on a $2^b \leqslant 32$, et $b$ est impair et au moins égal à $3$ : il reste $b = 3$ ou $b = 5$.

- $b = 3$ : $3^c = 35 - 8 = 27$, donc $c = 3$.
- $b = 5$ : $3^c = 35 - 32 = 3$, donc $c = 1$.

On obtient les solutions **$(2, 3, 3)$ et $(2, 5, 1)$**.

### Conclusion

Les triplets cherchés sont $(1, 1, 1)$, $(2, 3, 3)$ et $(2, 5, 1)$.

## Going further

1. Trouve tous les entiers $b, c \geqslant 1$ tels que $3^c = 2^b + 1$. *Indication : si $b \geqslant 3$, regarde modulo $8$ pour montrer que $c$ est pair, puis factorise $3^c - 1$.*
2. À l'étape 3, pourquoi a-t-on eu besoin de regarder modulo $8$, et pas seulement modulo $4$ ?
