---
id: "13444"
title: "Une suite où k + ℓ divise la somme de deux termes"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, suites, multiples, indice auxiliaire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve lycée, exercice 13 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soit $a_1, a_2, a_3, \ldots$ une suite infinie de nombres entiers. On suppose que, pour tous les entiers $k \geqslant 1$ et $\ell \geqslant 1$,

$$k + \ell \ \text{divise} \ a_k + a_\ell.$$

Montrer que, pour tous les entiers $k \geqslant 1$ et $\ell \geqslant 1$ avec $k \neq \ell$,

$$k - \ell \ \text{divise} \ a_k - a_\ell.$$

## Hints

1. Vérifie que la suite $a_n = n$ convient, puis la suite $a_n = n^3$. Pour la seconde, développe $(k + \ell)(k^2 - k\ell + \ell^2)$.
2. Si un entier $d$ divise $k + \ell$, que peux-tu dire de $d$ et de $a_k + a_\ell$ ?
3. Pour relier $a_k$ et $a_\ell$, fais intervenir un troisième indice $r$ : on a $a_k - a_\ell = (a_k + a_r) - (a_\ell + a_r)$.
4. Choisis $r$ de sorte que $k - \ell$ divise $k + r$. Est-ce qu'alors $k - \ell$ divise aussi $\ell + r$ ?

## Solution

**Une remarque.** Si un entier $d$ divise $k + \ell$, alors $d$ divise aussi $a_k + a_\ell$. En effet, $a_k + a_\ell$ est un multiple de $k + \ell$, qui est lui-même un multiple de $d$.

**On se ramène au cas $k > \ell$.** Si $k - \ell$ divise $a_k - a_\ell$, alors son opposé $\ell - k$ divise $a_\ell - a_k$, qui est l'opposé de $a_k - a_\ell$. Les rôles de $k$ et $\ell$ sont donc échangeables, et on peut supposer $k > \ell$. On pose $d = k - \ell$, qui est un entier au moins égal à $1$.

**L'idée : un troisième indice.** Pour tout indice $r \geqslant 1$,

$$a_k - a_\ell = (a_k + a_r) - (a_\ell + a_r).$$

Si $d$ divise à la fois $a_k + a_r$ et $a_\ell + a_r$, il divise leur différence, c'est-à-dire $a_k - a_\ell$. D'après la remarque, il suffit donc de trouver un indice $r \geqslant 1$ tel que

$$d \ \text{divise} \ k + r \qquad \text{et} \qquad d \ \text{divise} \ \ell + r.$$

**Le choix de $r$.** On prend

$$r = (k + 1)\,d - k.$$

C'est bien un entier au moins égal à $1$, car $r = k(d - 1) + d$ et $d \geqslant 1$. On a alors :

- $k + r = (k + 1)\,d$, qui est un multiple de $d$ ;
- $\ell + r = (k + r) - (k - \ell) = (k + 1)\,d - d = k\,d$, qui est aussi un multiple de $d$.

**Conclusion.** D'après la remarque, $d$ divise $a_k + a_r$ et $a_\ell + a_r$, donc il divise leur différence $a_k - a_\ell$. Ainsi $k - \ell$ divise $a_k - a_\ell$ pour tous les entiers $k \neq \ell$.

*Un exemple.* Avec $k = 5$ et $\ell = 3$, on a $d = 2$ et $r = 6 \times 2 - 5 = 7$. Alors $k + r = 12$ et $\ell + r = 10$ sont tous deux pairs. Donc $2$ divise $a_5 + a_7$ et $a_3 + a_7$, et par différence $2$ divise $a_5 - a_3$.

## Going further

La réciproque est-elle vraie ? Autrement dit, si $k - \ell$ divise $a_k - a_\ell$ pour tous les entiers $k \neq \ell$, est-ce que $k + \ell$ divise toujours $a_k + a_\ell$ ? Essaie la suite constante $a_n = 1$.
