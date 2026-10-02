---
id: "0301"
title: "Un produit sans aucun zéro"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [nombres-premiers, decomposition, chiffres, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 8 «Просто о простых», задача 2 (с. 48)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Écrire le nombre $200\,000$ comme un produit de deux entiers dont aucun ne contient le chiffre $0$ dans son écriture décimale.

## Hints

1. Quand est-ce qu'un nombre se termine par un zéro ? Par quoi doit-il être divisible ?
2. Décomposer $200\,000$ en produit de facteurs premiers. Il n'y a que deux facteurs premiers différents.
3. Un zéro apparaît au bout d'un nombre dès que ce nombre est divisible par $10 = 2 \times 5$. Pour qu'aucun des deux facteurs ne se termine par un zéro, il ne faut pas laisser un $2$ et un $5$ dans le même facteur. Où mettre alors tous les $2$, et où mettre tous les $5$ ?

## Solution

**L'idée : séparer les $2$ des $5$.**

Un nombre se termine par le chiffre $0$ exactement quand il est divisible par $10$, c'est-à-dire quand il est divisible à la fois par $2$ et par $5$. Si l'on veut deux facteurs qui ne se terminent pas par un zéro, il ne faut donc pas mettre à la fois un $2$ et un $5$ dans le même facteur.

**La décomposition en facteurs premiers.**

$$200\,000 = 2 \times 100\,000 = 2 \times 10^5 = 2 \times (2 \times 5)^5 = 2 \times 2^5 \times 5^5 = 2^6 \times 5^5$$

Il n'y a que deux facteurs premiers : le $2$ et le $5$. La séparation est donc imposée : tous les $2$ d'un côté, tous les $5$ de l'autre.

**Le produit cherché.**

$$2^6 = 64 \qquad \text{et} \qquad 5^5 = 3125$$

Vérifions le produit :
$$64 \times 3125 = 64 \times 3000 + 64 \times 125 = 192\,000 + 8\,000 = 200\,000$$

Et vérifions les chiffres : $64$ s'écrit avec les chiffres $6$ et $4$, $3125$ avec les chiffres $3$, $1$, $2$ et $5$. Aucun zéro nulle part.

**Conclusion.** $200\,000 = 64 \times 3125$, et ni $64$ ni $3125$ ne contient le chiffre $0$.

*Remarque.* Le raisonnement garantit seulement qu'aucun des deux facteurs ne **se termine** par un zéro ; un zéro pourrait encore se cacher au milieu, comme dans $105$. C'est pour cela qu'on regarde l'écriture des deux nombres obtenus à la fin.

## Going further

1. Faire de même avec $1\,000\,000$.
2. Pour quelles puissances de $10$ ce découpage est-il possible ? Essayer $10^{10}$, puis $10^{20}$, et regarder si un zéro finit par apparaître au milieu de l'un des deux facteurs.
