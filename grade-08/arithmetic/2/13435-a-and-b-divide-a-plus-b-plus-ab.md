---
id: "13435"
title: "a et b divisent a + b + ab"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 3 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soient $a$, $b$ et $n$ trois entiers strictement positifs. On suppose que $a$ et $b$ divisent tous les deux $n$, et que

$$n = a + b + ab.$$

Montrer que $a = b$.

## Hints

1. Essaie avec $a = b = 3$ : que vaut $n$ ? Essaie ensuite $a = 2$ et $b = 4$ : laquelle des deux conditions n'est pas vérifiée ?
2. Si un entier divise deux nombres, il divise aussi leur différence.
3. L'entier $a$ divise $n$, $a$ et $ab$. Qu'en déduis-tu pour $b = n - a - ab$ ?
4. Montre de même que $b$ divise $a$. Que peux-tu dire de deux entiers strictement positifs qui se divisent l'un l'autre ?

## Solution

**Un rappel.** Si un entier $d$ divise deux entiers $u$ et $v$, alors il divise $u - v$. En effet, on peut écrire $u = d \times p$ et $v = d \times q$ avec des entiers $p$ et $q$, et alors $u - v = d \times (p - q)$, où $p - q$ est un entier.

**L'entier $a$ divise $b$.** D'après l'énoncé, $b = n - a - ab$.

- L'entier $a$ divise $n$, par hypothèse.
- Il divise $a + ab = a \times (1 + b)$.

Donc $a$ divise la différence $n - (a + ab) = b$.

**L'entier $b$ divise $a$.** De la même façon, $a = n - b - ab$. L'entier $b$ divise $n$, et il divise $b + ab = b \times (1 + a)$. Donc $b$ divise leur différence, qui est $a$.

**Conclusion.** Comme $a$ divise $b$ et que $b$ est strictement positif, $b$ est un multiple strictement positif de $a$ : $b = a$, ou $2a$, ou $3a$, et ainsi de suite. Dans tous les cas, $a \leqslant b$. De même, comme $b$ divise $a$ et que $a > 0$, on a $b \leqslant a$. Donc $a = b$.

*Ce cas arrive vraiment.* Si $a = b$, alors $n = 2a + a^2 = a \times (a + 2)$, qui est bien divisible par $a$. Par exemple, $a = b = 3$ donne $n = 15$.

## Going further

On ne suppose plus que $b$ divise $n$. Trouver deux entiers $a \neq b$, strictement positifs, tels que $a$ divise $a + b + ab$. Montrer qu'alors $a$ divise toujours $b$.
