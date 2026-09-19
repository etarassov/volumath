---
id: "0606"
title: "Comparer des puissances"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [puissances, comparaison, calcul]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Comparez les nombres :

a) $4^{301}$ et $2^{60}$

b) $3^{17}$ et $9^8$

c) $16^{17}$ et $8^{34}$

d) $10^{1000}$ et $100^{100}$

## Hints

1. Ces nombres sont beaucoup trop grands pour être écrits. Il faut les comparer sans les calculer.
2. Deux puissances de même base se comparent d'un coup d'œil : si $a > 1$ et $m > n$, alors $a^m > a^n$. Essaie d'écrire les deux nombres de chaque question avec la même base.
3. $4 = 2^2$, $9 = 3^2$, $16 = 2^4$, $8 = 2^3$, $100 = 10^2$. Et rappelle-toi que $(a^m)^n = a^{m \times n}$.

## Solution

L'outil est toujours le même : ramener les deux nombres à une base commune, puis comparer
les exposants, car pour $a > 1$ la suite $a, a^2, a^3, \ldots$ est croissante.

**a)** $4 = 2^2$, donc $4^{301} = (2^2)^{301} = 2^{602}$. Comme $602 > 60$ :

$$4^{301} > 2^{60}.$$

**b)** $9 = 3^2$, donc $9^8 = (3^2)^8 = 3^{16}$. Comme $17 > 16$ :

$$3^{17} > 9^8.$$

**c)** $16 = 2^4$ donne $16^{17} = 2^{68}$, et $8 = 2^3$ donne $8^{34} = 2^{102}$.
Comme $102 > 68$ :

$$8^{34} > 16^{17}.$$

C'est la seule des quatre questions où c'est le deuxième nombre qui l'emporte.

**d)** $100 = 10^2$, donc $100^{100} = (10^2)^{100} = 10^{200}$. Comme $1000 > 200$ :

$$10^{1000} > 100^{100}.$$
