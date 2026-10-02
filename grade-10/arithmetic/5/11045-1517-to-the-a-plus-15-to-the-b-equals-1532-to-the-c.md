---
id: "11045"
title: "1517ᵃ + 15ᵇ = 1532ᶜ"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [puissances, restes, factorisation, disjonction-de-cas, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 8 ; corrigé 2023-03_corrige.pdf. Le corrigé oublie le cas où les deux facteurs valent 1 et 15^b, et il écrit « 3³ + 5³ ≡ 5 (mod 16) » alors que 3³ + 5³ = 152 a pour reste 8. La réponse (1, 1, 1) est juste."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Trouver tous les entiers naturels $a$, $b$ et $c$ tels que

$$1517^a + 15^b = 1532^c .$$

## Hints

1. Il y a une solution évidente. Traite à part les cas $c = 0$ et $c = 1$, puis suppose $c \geqslant 2$.
2. Regarde les restes dans la division par $4$, puis par $16$ et par $5$. Tu dois obtenir que $b$ est impair et que $a$ et $c$ sont des multiples de $4$.
3. Avec $a = 2e$ et $c = 2d$, le nombre $15^b$ est une différence de deux carrés. Factorise-la.
4. Les deux facteurs obtenus n'ont aucun facteur premier commun. Quelles valeurs peuvent-ils prendre ? Regarde leur somme dans la division par $32$.

## Solution

**Réponse :** la seule solution est $(a, b, c) = (1, 1, 1)$, et en effet $1517 + 15 = 1532$.

Dans toute la solution, on utilise le fait suivant : pour tout entier $t \geqslant 1$, le nombre
$x^t - 1 = (x - 1)(x^{t-1} + \cdots + x + 1)$ est divisible par $x - 1$. Le reste d'une somme ou d'un produit
se calcule à partir des restes des termes.

**Les cas $c = 0$ et $c = 1$.**

* Si $c = 0$, le membre de droite vaut $1$, alors que celui de gauche vaut au moins $1 + 1 = 2$. Pas de
  solution.
* Si $c = 1$ : si $a \geqslant 2$, le membre de gauche dépasse $1517^2 > 1532$. Si $a = 0$, il faudrait
  $15^b = 1531$, ce qui est impossible ($1531$ n'est pas une puissance de $15$). Si $a = 1$, il faut
  $15^b = 15$, donc $b = 1$. On obtient la solution $(1, 1, 1)$.

**Le cas $c \geqslant 2$.** On montre qu'il n'y a aucune solution. Comme $1532 = 4 \times 383$, le nombre
$1532^c$ est divisible par $4^2 = 16$.

*Étape 1 : $b$ est impair.* On a $1517 = 4 \times 379 + 1$, donc $1517^a$ a pour reste $1$ dans la
division par $4$. Et $15 = 16 - 1$ : $15^b$ a pour reste $1$ si $b$ est pair, $3$ si $b$ est impair (car
$15^2 = 225$ a pour reste $1$). Comme $1532^c$ est divisible par $4$, il faut $1 + 3$ et non $1 + 1$ : $b$
est impair. En particulier $b \geqslant 1$.

*Étape 2 : $a$ est un multiple de 4.* Comme $b$ est impair,
$15^b + 1 = (15 + 1)(15^{b-1} - 15^{b-2} + \cdots - 15 + 1)$ est divisible par $16$. Donc
$1517^a - 1 = 1532^c - (15^b + 1)$ est divisible par $16$. Or $1517 = 16 \times 94 + 13$, et les restes des
puissances de $13$ dans la division par $16$ sont :

| exposant | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| reste de $13^k$ | $1$ | $13$ | $9$ | $5$ | $1$ |

Ils se répètent avec une période $4$ (car $13^4$ a pour reste $1$). Le reste $1$ n'apparaît que pour les
exposants multiples de $4$, donc $a$ est un multiple de $4$.

*Étape 3 : $c$ est un multiple de 4.* Regardons les restes dans la division par $5$. Comme $b \geqslant 1$,
$15^b$ est divisible par $5$. Et $1517$ et $1532$ ont tous les deux pour reste $2$. Donc $2^a$ et $2^c$ ont
le même reste dans la division par $5$. Les restes des puissances de $2$ sont $1, 2, 4, 3$, puis ils se
répètent avec une période $4$ (car $2^4 = 16$ a pour reste $1$). Comme $a$ est un multiple de $4$, $2^a$ a
pour reste $1$, donc $2^c$ aussi, et $c$ est un multiple de $4$. Avec $c \geqslant 2$, cela donne
$c \geqslant 4$.

*Étape 4 : une factorisation.* Écrivons $a = 2e$ et $c = 2d$, où $d$ est pair et $d \geqslant 2$. Alors

$$15^b = 1532^{2d} - 1517^{2e} = X \times Y, \quad \text{avec} \quad X = 1532^d - 1517^e, \quad Y = 1532^d + 1517^e .$$

Le nombre $Y$ est positif, donc $X$ aussi, et $X < Y$.

*Étape 5 : $X$ et $Y$ n'ont aucun facteur premier commun.* Un facteur premier de $X$ ou de $Y$ divise
$15^b$, donc c'est $3$ ou $5$. S'il divisait $X$ et $Y$, il diviserait leur somme $X + Y = 2 \times 1532^d$,
donc il diviserait $1532$ (il est impair, donc il ne divise pas $2$). Or ni $3$ ni $5$ ne divise $1532$ (la
somme des chiffres vaut $11$, et le dernier chiffre est $2$).

Donc $3^b$ est entièrement dans $X$ ou entièrement dans $Y$, et de même pour $5^b$. Comme $X < Y$, il ne
reste que deux possibilités :

$$X = 1 \text{ et } Y = 15^b, \qquad \text{ou} \qquad X = 3^b \text{ et } Y = 5^b .$$

*Étape 6 : la somme $X + Y$.* On a $X + Y = 2 \times 1532^d$, et $1532^d$ est divisible par $4^d$, donc par
$16$ puisque $d \geqslant 2$. Ainsi $X + Y$ est divisible par $32$.

* Si $X = 1$ et $Y = 15^b$ : $X + Y = 1 + 15^b = 16 \times (15^{b-1} - 15^{b-2} + \cdots + 1)$. La
  parenthèse contient $b$ nombres impairs, avec $b$ impair : elle est impaire. Donc $1 + 15^b$ est $16$
  fois un nombre impair, et il n'est pas divisible par $32$. Contradiction.
* Si $X = 3^b$ et $Y = 5^b$ : écrivons $b = 2s + 1$. Alors
  $$3^b + 5^b = 3 \times 9^s + 5 \times 25^s = 8 \times 9^s + 5\left(25^s - 9^s\right) .$$
  Le nombre $25^s - 9^s$ est divisible par $25 - 9 = 16$ (car $x^s - y^s = (x - y)(x^{s-1} + x^{s-2}y + \cdots + y^{s-1})$), et
  $8 \times 9^s$ est $8$ fois un nombre impair. Donc $3^b + 5^b$ a pour reste $8$ dans la division par
  $16$ : il n'est même pas divisible par $16$. Contradiction.

Il n'y a donc aucune solution avec $c \geqslant 2$.

**Conclusion.** La seule solution est $(a, b, c) = (1, 1, 1)$.

## Going further

Pourquoi a-t-on regardé les restes modulo $16$ et modulo $5$ plutôt que modulo $3$ ? Essaie : que donne la
division par $3$, et pourquoi n'apporte-t-elle presque rien ici ?
