---
id: "12897"
title: "Chaque diviseur plus 1 est premier ou divise n"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, nombres-premiers, puissances-de-2, parite, decomposition-en-facteurs-premiers, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test senior, exercice 5 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf (première solution ; le corrigé écrit « un diviseur de n + 1 » au lieu de « un diviseur de n » à la troisième ligne)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Déterminer tous les entiers $n \geq 1$ qui ont la propriété suivante : pour tout diviseur positif $d$ de $n$, le nombre $d + 1$ est un nombre premier ou un diviseur de $n$.

## Hints

1. Testez les petites valeurs de $n$. Par exemple, $n = 6$ ne convient pas, car $6 + 1 = 7$ est premier mais $3 + 1 = 4$ ne divise pas $6$.
2. Écrivez $n = 2^a b$ avec $b$ impair, et appliquez la propriété au diviseur $d = b$.
3. Si $b + 1$ divise $n$, montrez que $b + 1$ est une puissance de $2$.
4. Si $8$ divise $n$, appliquez la propriété aux diviseurs $2^a$ et $2^{a-1}$.

## Solution

La réponse : **les entiers qui conviennent sont $1$, $2$, $4$ et $12$.**

### Ces quatre entiers conviennent

- $n = 1$ : son seul diviseur est $1$, et $2$ est premier.
- $n = 2$ : ses diviseurs sont $1$ et $2$, et $2$, $3$ sont premiers.
- $n = 4$ : ses diviseurs sont $1$, $2$, $4$, et $2$, $3$, $5$ sont premiers.
- $n = 12$ : ses diviseurs sont $1$, $2$, $3$, $4$, $6$, $12$. Les nombres $2$, $3$, $5$, $7$, $13$ sont premiers, et $3 + 1 = 4$ divise $12$.

### Un lemme sur les diviseurs impairs

**Lemme.** Soit $n = 2^a b$, avec $a \geq 0$ et $b$ impair. Alors tout diviseur impair de $n$ divise $b$. De plus, si $2^c$ divise $n$, alors $c \leq a$.

*Preuve.* On utilise la décomposition en facteurs premiers. Un diviseur $e$ de $n$ ne contient que des facteurs premiers de $n$, chacun avec un exposant au plus égal à son exposant dans $n$. Si $e$ est impair, ses facteurs premiers sont des nombres premiers impairs, et leur exposant dans $n = 2^a b$ est le même que dans $b$. Donc $e$ divise $b$. De même, l'exposant de $2$ dans $n$ est $a$, donc si $2^c$ divise $n$, alors $c \leq a$.

### Le début de la recherche

Soit $n$ un entier qui a la propriété. On écrit $n = 2^a b$, avec $a \geq 0$ et $b$ impair. Comme $b$ divise $n$, le nombre $b + 1$ est premier ou divise $n$.

### Premier cas : b + 1 est premier

Le nombre $b$ est impair, donc $b + 1$ est pair. Le seul nombre premier pair est $2$, donc $b + 1 = 2$, $b = 1$ et $n = 2^a$.

Si $a \geq 3$, alors $8$ divise $n$. Mais $8 + 1 = 9$ n'est pas premier, et $9$ ne divise pas $2^a$, car $9$ est impair et plus grand que $1$. C'est impossible, donc $a \leq 2$ et **$n$ vaut $1$, $2$ ou $4$.**

### Second cas : b + 1 n'est pas premier

Alors $b + 1$ divise $n$. On écrit $b + 1 = 2^c e$ avec $e$ impair. Le nombre $e$ divise $b + 1$, qui divise $n$, et il est impair, donc d'après le lemme il divise $b$. Il divise donc $(b + 1) - b = 1$, et $e = 1$. Ainsi **$b + 1 = 2^c$ est une puissance de $2$.**

Comme $b + 1$ n'est pas premier, $b + 1 \neq 2$, donc $c \geq 2$. Comme $2^c$ divise $n$, le lemme donne $c \leq a$. On a donc $2 \leq c \leq a$ et $b = 2^c - 1$.

**Si $a = 2$**, alors $c = 2$, $b = 3$, et $n = 4 \times 3 = 12$.

**Si $a \geq 3$**, on montre qu'il n'y a aucune solution. Les nombres $2^a$ et $2^{a-1}$ divisent $n$.

- *Le nombre $2^a + 1$ est premier.* Sinon il divise $n$. Il est impair, donc il divise $b$ d'après le lemme, et $2^a + 1 \leq b = 2^c - 1 \leq 2^a - 1$, ce qui est faux.
- *Le nombre $2^{a-1} + 1$ est premier.* Sinon il divise $n$, et comme il est impair, il divise $b = 2^c - 1$. Alors $2^{a-1} + 1 \leq 2^c - 1 < 2^c$, donc $c > a - 1$, et comme $c \leq a$, on a $c = a$. Le nombre $2^{a-1} + 1$ divise donc $2^a - 1 = 2\left(2^{a-1} + 1\right) - 3$, donc il divise $3$. Mais $2^{a-1} + 1 \geq 2^2 + 1 = 5$, ce qui est faux.

Parmi les deux entiers consécutifs $a - 1$ et $a$, l'un est impair. Notons-le $m = 2k + 1$. Comme $m \geq a - 1 \geq 2$ et $m$ est impair, $m \geq 3$, donc $k \geq 1$. Alors

$$2^m + 1 = 2 \times 4^k + 1 = 2\left(4^k - 1\right) + 3.$$

Or $4^k - 1 = (4 - 1)\left(4^{k-1} + 4^{k-2} + \cdots + 4 + 1\right)$ est divisible par $3$. Donc $2^m + 1$ est divisible par $3$. Comme $2^m + 1 \geq 2^3 + 1 = 9 > 3$, ce n'est pas un nombre premier. Cela contredit les deux points précédents. **Il n'y a pas de solution avec $a \geq 3$ dans ce cas.**

### Conclusion

Un entier qui a la propriété vaut $1$, $2$, $4$ ou $12$, et ces quatre entiers l'ont. **Les entiers cherchés sont $1$, $2$, $4$ et $12$.**

## Going further

1. En appliquant la propriété à $d = n$, montrez directement qu'une solution $n \geq 2$ est paire. En l'appliquant à $d = n/2$, montrez qu'une solution $n \geq 4$ est divisible par $4$.
2. Déterminez tous les entiers $n \geq 1$ tels que $d + 1$ est premier pour tout diviseur positif $d$ de $n$.
