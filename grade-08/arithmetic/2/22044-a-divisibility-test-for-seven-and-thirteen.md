---
id: "22044"
title: "Un critère de divisibilité par 7, puis par 13"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 25
tags: [criteres-de-divisibilite, divisibilite, division-euclidienne]
adapted_from: null
see_also: ["5011"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n$ un entier naturel. On note $q$ et $r$ le quotient et le reste de la division euclidienne de $n$ par $10$. Autrement dit, $n = 10q + r$ : le nombre $r$ est le chiffre des unités de $n$, et $q$ est le nombre qu'on obtient en effaçant ce chiffre. Par exemple, pour $n = 2023$, on a $q = 202$ et $r = 3$.

1. Montrer que $7$ divise $n$ si et seulement si $7$ divise $q - 2r$.
2. En déduire que $2023$ est divisible par $7$.
3. Proposer un critère du même genre pour la divisibilité par $13$, et l'utiliser pour savoir si $2023$ est divisible par $13$.

## Hints

1. Calculez $10\,(q - 2r)$ et comparez avec $n = 10q + r$.
2. Pour l'autre sens, calculez $21q - 2n$.
3. Pour la question 2, appliquez le critère deux fois de suite : il remplace un nombre par un nombre plus petit.
4. Pour $13$, cherchez un nombre $k$ entre $1$ et $12$ tel que $10k - 1$ soit un multiple de $13$.

## Solution

**Question 1.** On a $n = 10q + r$. On démontre les deux sens.

- *Si $7$ divise $q - 2r$, alors $7$ divise $n$.* En effet,
  $$10\,(q - 2r) = 10q - 20r = (10q + r) - 21r = n - 21r,$$
  donc $n = 10\,(q - 2r) + 21r$. Les deux termes de cette somme sont des multiples de $7$, puisque $21 = 3 \times 7$. Donc $n$ est un multiple de $7$.
- *Si $7$ divise $n$, alors $7$ divise $q - 2r$.* En effet,
  $$21q - 2n = 21q - 20q - 2r = q - 2r.$$
  Si $7$ divise $n$, alors $21q$ et $2n$ sont des multiples de $7$, donc leur différence $q - 2r$ aussi.

Ainsi, $7$ divise $n$ si et seulement si $7$ divise $q - 2r$.

**Question 2.** Pour $n = 2023$ : $q = 202$ et $r = 3$, donc $q - 2r = 202 - 6 = 196$. Il suffit donc de savoir si $7$ divise $196$.

On recommence avec $196$ : $q = 19$ et $r = 6$, donc $q - 2r = 19 - 12 = 7$, qui est divisible par $7$.

Donc $196$ est divisible par $7$, et par conséquent $2023$ aussi. On peut le vérifier : $2023 = 7 \times 289$.

**Question 3.** Dans la question 1, tout reposait sur le fait que $10 \times 2 = 20 = 21 - 1$, avec $21$ multiple de $7$. Pour $13$, on cherche de même un nombre $k$ tel que $10k - 1$ soit un multiple de $13$. On essaie : $10 \times 4 - 1 = 39 = 3 \times 13$. Donc $k = 4$ convient, et cette fois on ajoute : le critère porte sur $q + 4r$.

- *Si $13$ divise $q + 4r$, alors $13$ divise $n$*, car
  $$10\,(q + 4r) = 10q + 40r = n + 39r, \quad \text{donc} \quad n = 10\,(q + 4r) - 39r.$$
- *Si $13$ divise $n$, alors $13$ divise $q + 4r$*, car
  $$4n - 39q = 40q + 4r - 39q = q + 4r.$$

Donc $13$ divise $n$ si et seulement si $13$ divise $q + 4r$.

Pour $n = 2023$ : $202 + 4 \times 3 = 214$, puis, pour $214$ : $21 + 4 \times 4 = 37$. Or $37$ n'est pas divisible par $13$, donc $214$ ne l'est pas, et $2023$ non plus. On peut le vérifier : $2023 = 13 \times 155 + 8$.

**Conclusion.** $7$ divise $n$ si et seulement si $7$ divise $q - 2r$, et $13$ divise $n$ si et seulement si $13$ divise $q + 4r$. Le nombre $2023$ est divisible par $7$, mais pas par $13$.

## Going further

1. Montrer que $q - 9r$ donne un critère qui marche à la fois pour $7$ et pour $13$. (Remarquez que $91 = 7 \times 13$.)
2. Trouver un critère du même genre pour la divisibilité par $17$, puis par $19$.
