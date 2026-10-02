---
id: "8663"
title: "Quand 2ᵐ − 1 est une puissance de 3"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-diophantienne, congruences, modulo-huit, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Équations diophantiennes et factorisations » (Théo & Gaspard D.), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les couples $(m, n)$ d'entiers positifs ou nuls tels que

$$2^m - 1 = 3^n .$$

## Hints

1. Cherche à la main les petites solutions : $m = 1$, $m = 2$, $m = 3$, $m = 4$\ldots Tu devrais en trouver deux, et pas une de plus.
2. Pour montrer qu'il n'y en a pas d'autres, il faut prouver que $m$ ne peut pas être grand. Quel modulo rend $2^m$ très simple quand $m$ est grand ?
3. Dès que $m \geqslant 3$, le nombre $2^m$ est un multiple de $8$. Écris alors l'équation modulo $8$.
4. Il te reste à savoir quels restes $3^n$ peut avoir modulo $8$. Calcule $3^0, 3^1, 3^2, 3^3$ modulo $8$.
5. Tu vas trouver que $3^n$ vaut toujours $1$ ou $3$ modulo $8$. Et l'équation impose quoi ?

## Solution

**Les puissances de 3 modulo 8.** Calculons :

$$3^0 \equiv 1, \quad 3^1 \equiv 3, \quad 3^2 = 9 \equiv 1, \quad 3^3 = 27 \equiv 3 \pmod 8 .$$

Comme $3^2 \equiv 1$, le motif se répète de deux en deux :

$$3^n \equiv 1 \pmod 8 \text{ si } n \text{ est pair}, \qquad 3^n \equiv 3 \pmod 8 \text{ si } n \text{ est impair.}$$

Dans tous les cas, **$3^n$ vaut $1$ ou $3$ modulo $8$**.

**Le cas $m \geqslant 3$ est impossible.** Si $m \geqslant 3$, alors $8$ divise $2^m$, donc

$$3^n = 2^m - 1 \equiv 0 - 1 \equiv 7 \pmod 8 .$$

Or $7$ ne figure pas parmi les valeurs possibles. Contradiction : on a donc $m \leqslant 2$.

**On examine les trois cas restants.**

- $m = 0$ : l'équation donne $3^n = 1 - 1 = 0$, impossible, car une puissance de $3$ n'est jamais nulle.
- $m = 1$ : l'équation donne $3^n = 2 - 1 = 1$, donc $n = 0$.
- $m = 2$ : l'équation donne $3^n = 4 - 1 = 3$, donc $n = 1$.

**Vérification.** $2^1 - 1 = 1 = 3^0$ et $2^2 - 1 = 3 = 3^1$. 

$$\boxed{(m, n) = (1, 0) \quad \text{et} \quad (m, n) = (2, 1) .}$$

*(Si l'on exige que $n$ soit strictement positif, il ne reste que $(2, 1)$.)*

## Going further

Le schéma est très général et vaut d'être retenu :

> Pour une équation où deux puissances se font face, on cherche un modulo pour lequel **l'une des deux puissances devient constante au-delà d'un certain rang**, et pour lequel **l'autre ne prend que quelques valeurs**. On borne ainsi l'exposant, et il ne reste que des cas à la main.

Ici, $2^m$ devient $0$ modulo $8$ dès que $m \geqslant 3$, et $3^n$ n'a que deux valeurs possibles. Le choix du module $8$ n'est donc pas magique : c'est la plus petite puissance de $2$ qui laisse assez peu de place aux puissances de $3$.

Pour t'entraîner avec exactement la même méthode : trouve tous les couples $(m, n)$ d'entiers positifs tels que $3^m - 1 = 2^n$. *(Réponse : $(1,1)$ et $(2,3)$.)*
