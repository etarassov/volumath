---
id: "11058"
title: "Les couleurs d'Augustin"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [restes, nombres-premiers-entre-eux, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 7, repris tel quel en Exercices Seniors, exercice 14 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. C'est le problème 2 de l'OIM 1985. L'énoncé de l'envoi autorise i = n dans la seconde règle alors que n n'est pas colorié (le corrigé parle de « la couleur de n ») ; ici la règle porte sur 1 ⩽ i ⩽ n − 1, comme dans l'énoncé original."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Soient $n$ et $k$ deux entiers premiers entre eux, avec $1 \leqslant k < n$.

Augustin colorie chacun des entiers $1, 2, \ldots, n - 1$ avec une couleur. Il peut utiliser autant de couleurs qu'il le souhaite, mais il doit respecter deux règles :

- **règle 1 :** pour tout entier $j$ tel que $1 \leqslant j \leqslant n - 1$, les entiers $j$ et $n - j$ ont la même couleur ;
- **règle 2 :** pour tout entier $i$ tel que $1 \leqslant i \leqslant n - 1$ et $i \neq k$, les entiers $i$ et $|i - k|$ ont la même couleur.

Démontrer qu'Augustin a colorié tous les entiers $1, 2, \ldots, n - 1$ de la même couleur.

## Hints

1. Essaie avec $n = 7$ et $k = 3$. Pars de $4 = 7 - 3$ et cherche, une règle après l'autre, quels nombres doivent avoir la même couleur que lui.
2. Soit $r$ un entier entre $1$ et $n - 1$, différent de $k$. Montre que $r$ a la même couleur que le reste de $r - k$ dans la division par $n$. Sépare les cas $r > k$ et $r < k$.
3. En partant de $n - k$ et en retirant $k$ à chaque fois, on obtient les restes de $-k, -2k, -3k, \ldots$ dans la division par $n$. Pourquoi ces restes sont-ils tous différents ?

## Solution

Pour un entier $m$ (positif ou négatif), on note $[m]$ le reste de $m$ dans la division par $n$ : c'est l'unique entier entre $0$ et $n - 1$ tel que $m - [m]$ soit un multiple de $n$. Par exemple, pour $n = 7$, on a $[-3] = 4$ et $[-6] = 1$.

**Étape 1 : retirer $k$ ne change pas la couleur.**

Soit $r$ un entier tel que $1 \leqslant r \leqslant n - 1$ et $r \neq k$. Montrons que $[r - k]$ n'est pas nul et a la même couleur que $r$.

Le nombre $r - k$ est compris entre $-(n - 2)$ et $n - 2$ et n'est pas nul, donc ce n'est pas un multiple de $n$ : $[r - k] \neq 0$.

- **Si $r > k$**, alors $[r - k] = r - k = |r - k|$, qui a la couleur de $r$ par la règle 2.
- **Si $r < k$**, alors $k - r = |r - k|$ a la couleur de $r$ par la règle 2, puis $n - (k - r)$ a la couleur de $k - r$ par la règle 1. Or $n - (k - r) = (r - k) + n$ est compris entre $1$ et $n - 1$, donc c'est exactement $[r - k]$.

Dans les deux cas, $[r - k]$ a la couleur de $r$.

**Étape 2 : un petit lemme sur les nombres premiers entre eux.**

*Si $n$ divise $m \times k$ et si $n$ et $k$ sont premiers entre eux, alors $n$ divise $m$.*

En effet, soit $p$ un facteur premier de $n$, qui apparaît avec l'exposant $e$ dans $n$. Le nombre $p$ ne divise pas $k$, sinon ce serait un diviseur commun à $n$ et $k$ plus grand que $1$. Donc, dans la décomposition de $m \times k$ en facteurs premiers, toutes les puissances de $p$ viennent de $m$. Comme $p^e$ divise $m \times k$, il divise $m$. C'est vrai pour chaque facteur premier de $n$, donc $n$ divise $m$.

**Étape 3 : on fait le tour.**

Posons, pour $j = 1, 2, \ldots, n - 1$,
$$r_j = [-j\,k] .$$
Par exemple $r_1 = [-k] = n - k$. Ces nombres ont trois propriétés.

- *Aucun n'est nul.* Si $r_j = 0$, alors $n$ divise $j\,k$, donc $n$ divise $j$ d'après l'étape 2. C'est impossible car $1 \leqslant j \leqslant n - 1$.
- *Ils sont deux à deux différents.* Si $r_i = r_j$ avec $i < j$, alors $n$ divise $-ik - (-jk) = (j - i)\,k$, donc $n$ divise $j - i$. C'est impossible car $1 \leqslant j - i \leqslant n - 2$.
- *Aucun des $n - 2$ premiers ne vaut $k$.* Si $r_j = k$, alors $n$ divise $-jk - k = -(j + 1)\,k$, donc $n$ divise $j + 1$, ce qui oblige $j = n - 1$.

De plus, $r_j - k$ et $-jk - k = -(j + 1)\,k$ diffèrent d'un multiple de $n$, donc
$$r_{j+1} = [r_j - k] .$$

Pour $j = 1, 2, \ldots, n - 2$, le nombre $r_j$ est entre $1$ et $n - 1$ et différent de $k$, donc l'étape 1 s'applique : $r_{j+1}$ a la même couleur que $r_j$. De proche en proche, les nombres $r_1, r_2, \ldots, r_{n-1}$ ont tous la couleur de $r_1 = n - k$.

**Étape 4 : conclusion.**

Les nombres $r_1, \ldots, r_{n-1}$ sont $n - 1$ entiers différents, tous compris entre $1$ et $n - 1$. Ce sont donc exactement les entiers $1, 2, \ldots, n - 1$, dans un certain ordre. Ils ont tous la même couleur : **Augustin a colorié tous les entiers de la même couleur.**

**Sur l'exemple $n = 7$, $k = 3$.** On obtient la chaîne $4 \to 1 \to 5 \to 2 \to 6 \to 3$. Par exemple, on passe de $1$ à $5$ ainsi : $1$ a la couleur de $|1 - 3| = 2$ (règle 2), qui a la couleur de $7 - 2 = 5$ (règle 1).

## Going further

Montrer que l'hypothèse « $n$ et $k$ premiers entre eux » est indispensable : si $g = \mathrm{PGCD}(n, k) > 1$, Augustin peut respecter les deux règles en utilisant deux couleurs.

*Réponse :* il colorie en rouge les multiples de $g$ et en bleu les autres. Comme $g$ divise $n$, le nombre $j$ est un multiple de $g$ exactement quand $n - j$ en est un : la règle 1 est respectée. Comme $g$ divise $k$, le nombre $i$ est un multiple de $g$ exactement quand $|i - k|$ en est un : la règle 2 est respectée. Les deux couleurs servent vraiment, car $g \leqslant k \leqslant n - 1$ est rouge et $1$ est bleu.
