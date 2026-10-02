---
id: "11040"
title: "n² = 17x⁴ − 32x²y² + 41y⁴"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [restes, carres, descente-infinie, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Juniors, exercice 3 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Trouver tous les triplets d'entiers $(x, y, n)$ tels que

$$n^2 = 17x^4 - 32x^2y^2 + 41y^4 .$$

## Hints

1. Le triplet $(0, 0, 0)$ convient. Pour en chercher d'autres, regarde ce qui se passe avec la divisibilité par $3$.
2. Le carré d'un entier a pour reste $0$ ou $1$ dans la division par $3$. Quand une somme de deux carrés est-elle un multiple de $3$ ?
3. Calcule $n^2 + (x^2 + y^2)^2$ à l'aide de l'équation.
4. Tu dois trouver que $x$ et $y$ sont des multiples de $3$, et $n$ un multiple de $9$. Alors $\left(\frac{x}{3}, \frac{y}{3}, \frac{n}{9}\right)$ est encore une solution. Pourquoi cela empêche-t-il une solution non nulle d'exister ?

## Solution

**Réponse :** la seule solution est $(x, y, n) = (0, 0, 0)$.

**Un fait sur les carrés.** Tout entier s'écrit $3q$, $3q + 1$ ou $3q - 1$, et son carré vaut $9q^2$,
$9q^2 + 6q + 1$ ou $9q^2 - 6q + 1$. Le reste d'un carré dans la division par $3$ est donc $0$ ou $1$, et il
vaut $0$ seulement si l'entier est un multiple de $3$.

Par conséquent, si $A^2 + B^2$ est un multiple de $3$, alors $A$ et $B$ sont des multiples de $3$. En
effet, sinon, la somme des restes vaudrait $1$ ou $2$, et $A^2 + B^2$ ne serait pas divisible par $3$.

**Étape 1 : tout est divisible par 3.** Soit $(x, y, n)$ une solution. On ajoute
$(x^2 + y^2)^2 = x^4 + 2x^2y^2 + y^4$ aux deux membres :

$$n^2 + (x^2 + y^2)^2 = 18x^4 - 30x^2y^2 + 42y^4 = 6\left(3x^4 - 5x^2y^2 + 7y^4\right) .$$

C'est un multiple de $3$, donc $n$ et $x^2 + y^2$ sont des multiples de $3$. En appliquant encore le fait
ci-dessus à $x^2 + y^2$, on obtient que $x$ et $y$ sont des multiples de $3$.

**Étape 2 : une solution plus petite.** Écrivons $x = 3x'$ et $y = 3y'$. Alors

$$n^2 = 81\left(17x'^4 - 32x'^2y'^2 + 41y'^4\right) .$$

Donc $81 = 3^4$ divise $n^2$. Dans la décomposition en facteurs premiers, l'exposant de $3$ dans $n^2$ est
le double de celui dans $n$ ; il vaut au moins $4$, donc celui de $n$ vaut au moins $2$, et $9$ divise $n$.
Écrivons $n = 9n'$. En divisant par $81$, on obtient

$$n'^2 = 17x'^4 - 32x'^2y'^2 + 41y'^4 .$$

Ainsi $\left(\frac{x}{3}, \frac{y}{3}, \frac{n}{9}\right) = (x', y', n')$ est encore une solution.

**Étape 3 : la descente.** Supposons qu'il existe une solution autre que $(0, 0, 0)$. Parmi toutes ces
solutions, choisissons-en une pour laquelle l'entier $|x| + |y| + |n| \geqslant 1$ est le plus petit
possible. D'après l'étape 2, $(x', y', n')$ est aussi une solution, différente de $(0, 0, 0)$, et

$$|x'| + |y'| + |n'| = \frac{|x|}{3} + \frac{|y|}{3} + \frac{|n|}{9} < |x| + |y| + |n| .$$

C'est contraire au choix de la solution. Il n'y a donc pas de solution autre que $(0, 0, 0)$.

**Vérification.** Le triplet $(0, 0, 0)$ convient, puisque les deux membres valent $0$.

La seule solution est donc $(x, y, n) = (0, 0, 0)$.

## Going further

Ce raisonnement s'appelle la **descente infinie** : d'une solution non nulle, on en fabrique une
strictement plus petite, ce qui ne peut pas continuer indéfiniment avec des entiers positifs. Il montre par
exemple que $\sqrt{2}$ n'est pas rationnel. Essaie : si $a^2 = 2b^2$ avec $b \geqslant 1$, montre que $a$
et $b$ sont pairs, puis conclus.
