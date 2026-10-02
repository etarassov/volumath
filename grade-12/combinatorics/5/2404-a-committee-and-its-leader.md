---
id: "2404"
title: "Un comité et son chef"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [coefficient-binomial, double-comptage, divisibilite, nombres-premiers, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Combinatorics"
  reference: "Handout-467-565.pdf, exercice 9 (indications dans Handout-468-565.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-467-565.pdf"
---

## Statement

1. Soient $n$ et $k$ des entiers avec $1 \le k \le n$. Démontrer, en comptant une même chose de deux manières, que

   $$k \binom{n}{k} = n \binom{n-1}{k-1} .$$

2. Soit $p$ un nombre premier et $a \ge 1$ un entier. Montrer que pour tout entier $k$ tel que $0 < k < p^{a}$, le coefficient binomial

   $$\binom{p^{a}}{k}$$

   est divisible par $p$.

## Hints

1. Pour la question 1 : dans un club de $n$ personnes, on veut former un comité de $k$ personnes et désigner l'un des membres du comité comme chef. Compte ces « comités avec chef » de deux façons.
2. Soit on choisit d'abord le comité puis le chef parmi ses membres ; soit on choisit d'abord le chef parmi tout le club, puis le reste du comité.
3. Pour la question 2, applique la formule de la question 1 avec $n = p^{a}$. Que peux-tu dire alors du produit $k \binom{p^{a}}{k}$ ?
4. Écris $k = p^{s} m$ avec $m$ non divisible par $p$. Pourquoi a-t-on forcément $s \le a - 1$ ? Puis compare les puissances de $p$ des deux côtés de l'égalité.

## Solution

### 1. L'identité $k\binom{n}{k} = n\binom{n-1}{k-1}$

**Ce que l'on compte.** Un club a $n$ membres. On veut former un comité de $k$ personnes et désigner parmi elles un chef. Appelons *configuration* la donnée d'un tel comité avec son chef.

**Premier comptage.** On choisit d'abord le comité : $\binom{n}{k}$ façons. Puis on choisit le chef parmi les $k$ membres du comité : $k$ façons. Total :

$$k \binom{n}{k} .$$

**Second comptage.** On choisit d'abord le chef parmi les $n$ membres du club : $n$ façons. Puis on complète le comité en choisissant les $k-1$ autres membres parmi les $n-1$ personnes restantes : $\binom{n-1}{k-1}$ façons. Total :

$$n \binom{n-1}{k-1} .$$

Les deux comptages portent sur le même ensemble de configurations, donc

$$k \binom{n}{k} = n \binom{n-1}{k-1} .$$

*(Vérification sur un exemple : $n = 5$, $k = 2$. À gauche $2 \times 10 = 20$, à droite $5 \times 4 = 20$.)*

### 2. Divisibilité de $\binom{p^{a}}{k}$

Posons $n = p^{a}$ dans l'identité précédente. Pour $0 < k < p^{a}$ on obtient

$$k \binom{p^{a}}{k} = p^{a} \binom{p^{a}-1}{k-1} .$$

Le membre de droite est un multiple de $p^{a}$. Donc

$$(\star) \qquad p^{a} \ \text{ divise } \ k \binom{p^{a}}{k} .$$

**On regarde la puissance de $p$ contenue dans $k$.** Écrivons

$$k = p^{s} m \qquad \text{avec } s \ge 0 \text{ et } m \text{ non divisible par } p .$$

Comme $0 < k < p^{a}$, on a $p^{s} \le k < p^{a}$, donc $s < a$, c'est-à-dire

$$s \le a - 1 .$$

**Conclusion.** D'après $(\star)$, le produit $p^{s} m \binom{p^{a}}{k}$ est divisible par $p^{a}$. Le facteur $m$ n'apporte aucun $p$, et le facteur $p^{s}$ en apporte exactement $s$. Il faut donc que $\binom{p^{a}}{k}$ fournisse les $a - s$ facteurs $p$ manquants : autrement dit $p^{\,a-s}$ divise $\binom{p^{a}}{k}$.

*Détaillons ce dernier point, qui utilise le lemme d'Euclide.* Comme $p^{a}$ divise $p^{s} m \binom{p^{a}}{k}$, on peut simplifier par $p^{s}$ : $p^{\,a-s}$ divise $m \binom{p^{a}}{k}$. Or $p$ est premier et ne divise pas $m$, donc $p$ et $m$ sont premiers entre eux, et il en va de même de $p^{\,a-s}$ et $m$. Par le théorème de Gauss, $p^{\,a-s}$ divise $\binom{p^{a}}{k}$.

Comme $s \le a-1$, on a $a - s \ge 1$, donc en particulier

$$p \ \text{ divise } \ \binom{p^{a}}{k} .$$

**Exemple.** Pour $p = 3$ et $a = 2$, la ligne $n = 9$ du triangle de Pascal est

$$1,\ 9,\ 36,\ 84,\ 126,\ 126,\ 84,\ 36,\ 9,\ 1 ,$$

et tous les nombres sauf les deux $1$ des extrémités sont bien divisibles par $3$.

## Going further

1. Pour $p = 2$ et $a = 3$, écrire la ligne $n = 8$ du triangle de Pascal et vérifier le résultat. Quelle puissance de $2$ divise $\binom{8}{4}$ ?
2. En déduire que pour tout entier $x$, le nombre $(1+x)^{p^{a}} - 1 - x^{p^{a}}$ a tous ses coefficients divisibles par $p$.
3. Le résultat reste-t-il vrai si l'on remplace $p^{a}$ par un entier $n$ quelconque ? Essayer $n = 6$, $k = 2$.
