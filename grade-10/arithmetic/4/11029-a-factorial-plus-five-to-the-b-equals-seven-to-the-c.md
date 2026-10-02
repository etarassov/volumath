---
id: "11029"
title: "a! + 5ᵇ = 7ᶜ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [equation-diophantienne, factorielle, restes, puissances, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 9 ; corrigé 2022-02_corrige-envoi-3.pdf. Pour la parité de b, le corrigé raisonne modulo 8 ; on utilise ici les restes modulo 3."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Déterminer tous les triplets $(a, b, c)$ d'entiers naturels (zéro compris) tels que

$$a! + 5^b = 7^c .$$

On rappelle que $0! = 1! = 1$ et que $a! = 1 \times 2 \times \cdots \times a$ pour $a \geqslant 1$.

## Hints

1. Commence par les valeurs extrêmes de $a$. Que se passe-t-il si $a \leqslant 1$ ? Regarde la parité. Et si $a \geqslant 7$ ? Pense aux facteurs $5$ et $7$ de $a!$.
2. Il reste $2 \leqslant a \leqslant 6$. Traite d'abord à part les cas $b = 0$ et $b = 1$.
3. Si $b \geqslant 2$, alors $7^c$ et $a!$ ont le même reste dans la division par $25$. Fais la liste des restes des puissances de $7$ dans la division par $25$.
4. Tu dois trouver $a = 4$ et $c$ pair. Montre que $b$ est pair aussi, en regardant les restes dans la division par $3$, puis factorise $7^c - 5^b$.

## Solution

**Si $a \leqslant 1$.** Alors $a! = 1$, et $1 + 5^b$ est pair (car $5^b$ est impair), alors que $7^c$ est
impair. Pas de solution, donc $a \geqslant 2$.

**Si $a \geqslant 7$.** Alors $a!$ est un multiple de $5$ et de $7$.

- Si $b \geqslant 1$, le membre de gauche est un multiple de $5$, mais $7^c$ ne l'est jamais.
- Si $b = 0$, l'équation devient $a! + 1 = 7^c$. Le membre de gauche dépasse $1$, donc $c \geqslant 1$,
  et alors $7$ divise $7^c$ et $a!$, donc divise $1$ : impossible.

Donc $2 \leqslant a \leqslant 6$, et $a!$ vaut $2$, $6$, $24$, $120$ ou $720$.

**Si $b \leqslant 1$.** Alors $5^b$ vaut $1$ ou $5$, et $7^c = a! + 5^b$ est l'un des nombres

$$3, \; 7, \; 25, \; 121, \; 721 \quad (\text{avec } 5^b = 1) \qquad 7, \; 11, \; 29, \; 125, \; 725 \quad (\text{avec } 5^b = 5).$$

Les puissances de $7$ sont $1, 7, 49, 343, \ldots$ : seul $7$ figure dans ces listes ($721 = 7 \times 103$
n'est pas une puissance de $7$). On obtient $6 + 1 = 7$ et $2 + 5 = 7$, c'est-à-dire les solutions
$(a, b, c) = (3, 0, 1)$ et $(2, 1, 1)$.

**Si $b \geqslant 2$ : on regarde les restes dans la division par $25$.** Alors $5^b$ est un multiple de
$25$, donc $7^c$ et $a!$ ont le même reste dans la division par $25$.

*Restes de $7^c$.* On a $7^4 = 2401 = 96 \times 25 + 1$. Donc $7^{c+4} - 7^c = 7^c \times 2400$ est un
multiple de $25$ : les restes se répètent tous les quatre pas. Il suffit de calculer

| $c$ | $0$ | $1$ | $2$ | $3$ |
|---|---|---|---|---|
| $7^c$ | $1$ | $7$ | $49$ | $343$ |
| reste dans la division par $25$ | $1$ | $7$ | $24$ | $18$ |

*Restes de $a!$.* Pour $a = 2, 3, 4, 5, 6$, les nombres $2, 6, 24, 120, 720$ ont pour restes
$2, 6, 24, 20, 20$.

Le seul reste commun est $24$. Donc $a = 4$, et $c$ est de la forme $4q + 2$ : en particulier $c \geqslant 2$
est pair.

**$b$ est pair : on regarde les restes dans la division par $3$.** L'équation s'écrit
$5^b = 7^c - 24$. Comme $7 = 6 + 1$, le nombre $7^c$ a pour reste $1$ dans la division par $3$, et $24$
est un multiple de $3$, donc $5^b$ a pour reste $1$. Or $5 = 6 - 1$ : le reste de $5^b$ vaut $1$ si $b$
est pair et $2$ si $b$ est impair. Donc $b$ est pair.

**On factorise.** Écrivons $b = 2\beta$ et $c = 2\gamma$ avec $\gamma \geqslant 1$. Alors

$$24 = 7^c - 5^b = \left( 7^{\gamma} - 5^{\beta} \right) \left( 7^{\gamma} + 5^{\beta} \right) .$$

Le premier facteur est un entier positif (car le produit vaut $24 > 0$), donc au moins $1$, et le second
facteur est donc au plus $24$. Ainsi $7^\gamma < 24$, ce qui donne $\gamma = 1$ et $c = 2$. Alors
$5^b = 49 - 24 = 25$, donc $b = 2$. On vérifie : $4! + 5^2 = 24 + 25 = 49 = 7^2$.

**Conclusion.** Les solutions sont

$$(a, b, c) = (2, 1, 1), \qquad (3, 0, 1), \qquad (4, 2, 2) .$$
