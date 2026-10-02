---
id: "13405"
title: "Un diviseur coincé entre a et b"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [diviseurs, divisibilite, factorisation, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve collège, exercice 5 (repris tel quel en exercice 11 de l'épreuve lycée) ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Soit $n > 8$ un entier. On suppose que $n$ a deux diviseurs positifs $a$ et $b$, avec $a < b$, tels que

$$n = a^2 + b.$$

Montrer que $n$ a au moins un diviseur $d$ tel que $a < d < b$.

## Hints

1. Commence par un exemple : trouve un nombre $n$ qui s'écrit ainsi, et cherche un diviseur entre $a$ et $b$. Essaie aussi $n = 8$ : pourquoi l'énoncé demande-t-il $n > 8$ ?
2. Si $a$ divise $n$, alors $a$ divise aussi $n - a^2$. Qu'en déduis-tu pour $b$ ?
3. Écris donc $b = ka$ avec $k$ entier. Factorise $n = a^2 + ka$.
4. Tu obtiens un nouveau diviseur de $n$. Il est clairement plus grand que $a$. Pour montrer qu'il est plus petit que $b$, regarde le produit $(a - 1)(k - 1)$.

## Solution

**Premières remarques sur $a$ et $b$.**

Le nombre $a$ divise $n$ et divise $a^2$, donc il divise la différence $n - a^2 = b$. Il existe donc un entier $k \geqslant 1$ tel que

$$b = ka.$$

Comme $b > a$, on a même $k \geqslant 2$.

De même, $b$ divise $n$, donc $b$ divise $n - b = a^2$. Si l'on avait $a = 1$, alors $b$ diviserait $1$, donc $b = 1 = a$, ce qui est exclu. Donc $a \geqslant 2$.

**Un nouveau diviseur.**

On remplace $b$ par $ka$ :

$$n = a^2 + ka = a \times (a + k).$$

Donc $d = a + k$ est un diviseur de $n$. Montrons qu'il convient.

- Comme $k \geqslant 1$, on a $d = a + k > a$.
- Il reste à montrer que $a + k < b$, c'est-à-dire $a + k < ak$.

**L'inégalité $a + k < ak$.**

On développe :

$$(a - 1)(k - 1) = ak - a - k + 1.$$

Donc $ak - (a + k) = (a - 1)(k - 1) - 1$, et l'inégalité $a + k < ak$ revient à

$$(a - 1)(k - 1) > 1.$$

Or $a - 1 \geqslant 1$ et $k - 1 \geqslant 1$, donc $(a - 1)(k - 1) \geqslant 1$. Le produit vaut exactement $1$ seulement si $a - 1 = 1$ et $k - 1 = 1$, c'est-à-dire $a = k = 2$. Mais dans ce cas $b = 4$ et $n = 2 \times (2 + 2) = 8$, ce qui est exclu puisque $n > 8$.

Donc $(a - 1)(k - 1) \geqslant 2 > 1$, et $a + k < ak = b$.

**Conclusion.** Le nombre $d = a + k = a + \frac{b}{a}$ est un diviseur de $n$ qui vérifie $a < d < b$.

*Exemple.* Pour $a = 3$ et $b = 9$, on a $n = 9 + 9 = 18$, et $d = 3 + 3 = 6$ divise bien $18$, avec $3 < 6 < 9$.

## Going further

Pour $n = 8$, $a = 2$ et $b = 4$, il n'y a aucun diviseur de $8$ strictement entre $2$ et $4$ : l'hypothèse $n > 8$ est donc nécessaire. Montrer que $n = 8$ est le seul nombre pour lequel la conclusion est fausse.
