---
id: "12237"
title: "Quand (5ᵐ + 2ⁿ⁺¹)/(5ᵐ − 2ⁿ⁺¹) est un carré"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [puissances, diviseurs, carres parfaits, parite, decomposition en facteurs premiers]
adapted_from: null
see_also: ["12240"]
created: 2026-10-01
source:
  name: "POFM, test de janvier 2016"
  reference: "2017-10_ofm-2015-2016-test-janvier.pdf, test du 6 janvier 2016, exercices du groupe B, exercice 2 (c'est aussi la question a de l'exercice 5 du groupe A) ; corrigé 2017-10_ofm-2015-2016-test-janvier-corrige.pdf (le corrigé ne traite pas le cas d'un dénominateur négatif)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-janvier.pdf"
---

## Statement

Trouver tous les entiers $m \geqslant 1$ et $n \geqslant 1$ tels que le nombre

$$\frac{5^m + 2^{n+1}}{5^m - 2^{n+1}}$$

soit le carré d'un entier.

## Hints

1. Le dénominateur peut-il être négatif ? Peut-il être nul ?
2. Si un entier divise deux nombres, il divise aussi leur différence. Applique cela au numérateur et au dénominateur.
3. Le dénominateur est impair. Quels sont les diviseurs impairs d'une puissance de $2$ ?
4. Tu dois arriver à $(a - 1)(a + 1) = 2^{n+2}$. Deux puissances de $2$ peuvent-elles différer de $2$ ?

## Solution

On note $N = 5^m + 2^{n+1}$ le numérateur et $d = 5^m - 2^{n+1}$ le dénominateur. On cherche les cas où $\frac{N}{d}$ est égal à $a^2$ pour un entier $a$, que l'on peut prendre positif ou nul.

**Étape 1. Le signe du dénominateur.**

Le nombre $5^m$ est impair, et $2^{n+1}$ est pair, donc $d$ est impair. En particulier, $d \neq 0$.

Si $d < 0$, alors $\frac{N}{d}$ est strictement négatif, puisque $N > 0$. Un carré est positif ou nul, donc ce cas est impossible. Ainsi $d > 0$.

**Étape 2. Le dénominateur vaut $1$.**

Comme $\frac{N}{d} = a^2$ est un entier, $d$ divise $N$. Il divise aussi $d$, donc il divise la différence
$$N - d = 2^{n+1} + 2^{n+1} = 2^{n+2}.$$

D'après la décomposition en facteurs premiers, les diviseurs positifs de $2^{n+2}$ sont les puissances de $2$ : $1, 2, 4, \ldots, 2^{n+2}$. Le seul qui soit impair est $1$. Comme $d$ est un diviseur positif et impair de $2^{n+2}$, on a $d = 1$.

On a donc $5^m = 2^{n+1} + 1$, et $a^2 = N = 2^{n+1} + 1 + 2^{n+1} = 2^{n+2} + 1$.

**Étape 3. On trouve $a$.**

On a $a^2 \geqslant 2^3 + 1 = 9$, donc $a \geqslant 3$. De $a^2 = 2^{n+2} + 1$, on tire
$$(a - 1)(a + 1) = a^2 - 1 = 2^{n+2}.$$

Les nombres $a - 1$ et $a + 1$ sont des diviseurs positifs de $2^{n+2}$, donc des puissances de $2$. Écrivons $a - 1 = 2^c$ et $a + 1 = 2^e$, avec $c < e$. Leur différence vaut
$$2^e - 2^c = (a + 1) - (a - 1) = 2.$$

- Si $c \geqslant 2$, alors $2^c$ et $2^e$ sont tous les deux divisibles par $4$, et leur différence aussi. Or $2$ n'est pas divisible par $4$ : c'est impossible.
- Si $c = 0$, alors $a = 2$, ce qui contredit $a \geqslant 3$.
- Il reste $c = 1$ : $a - 1 = 2$, donc $a = 3$, et $a + 1 = 4$ est bien une puissance de $2$.

Ainsi $a = 3$, et $2^{n+2} = a^2 - 1 = 8$, donc $n = 1$. Enfin $5^m = 2^2 + 1 = 5$, donc $m = 1$.

**Vérification.** Pour $m = n = 1$, on trouve $\dfrac{5 + 4}{5 - 4} = 9 = 3^2$.

**Réponse :** la seule solution est $m = n = 1$.

## Going further

L'exercice 12240 pose la même question avec $2^n p$ au lieu de $2^{n+1}$, où $p$ est un nombre premier. On y trouve trois solutions.

La preuve marche encore si l'on autorise $m = 0$ ou $n = 0$ : vérifie qu'on obtient toujours seulement $m = n = 1$. Ce petit complément sert justement dans l'exercice 12240.
