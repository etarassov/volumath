---
id: "8143"
title: "Remplacer a et b par ab + a + b"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [invariant, factorisation, factorielle, produit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 9 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Les nombres $1, 2, 3, \ldots, n$ sont écrits au tableau.

À chaque étape, on choisit deux nombres $a$ et $b$ parmi ceux du tableau, on les efface, et on écrit à leur place le nombre

$$ab + a + b.$$

Le tableau contient donc un nombre de moins à chaque étape. Au bout de $n-1$ étapes, il ne reste qu'un seul nombre.

Quel est ce dernier nombre ? Dépend-il des choix faits en chemin ?

## Hints

1. Essaie d'abord avec $n = 3$, en faisant les calculs dans deux ordres différents. Que constates-tu ?
2. Cherche une quantité qui ne change pas d'une étape à l'autre. Elle ne portera pas sur les nombres eux-mêmes, mais sur quelque chose de très proche.
3. L'expression $ab + a + b$ ressemble à un produit développé auquel il manque un terme. Ajoute $1$ et factorise.
4. Si l'opération remplace $a$ et $b$ par un nombre $c$ tel que $c + 1 = (a+1)(b+1)$, que devient le produit de tous les $(x+1)$ pour $x$ au tableau ?

## Solution

**L'idée : ajouter $1$.**

Si l'on remplace $a$ et $b$ par $c = ab + a + b$, alors

$$c + 1 = ab + a + b + 1 = (a+1)(b+1).$$

Autrement dit, dans le monde des nombres « augmentés de $1$ », l'opération est une simple multiplication.

**L'invariant.**

Considérons la quantité

$$P = \prod_{x \text{ au tableau}} (x+1),$$

c'est-à-dire le produit de tous les nombres du tableau augmentés de $1$.

À chaque étape, deux facteurs $(a+1)$ et $(b+1)$ disparaissent du produit, et un facteur $(c+1) = (a+1)(b+1)$ apparaît. Le produit $P$ **ne change pas**.

**Sa valeur au départ.**

Au départ, le tableau contient $1, 2, \ldots, n$, donc

$$P = (1+1)(2+1)\cdots(n+1) = 2 \times 3 \times \cdots \times (n+1) = (n+1)!$$

(le produit $2 \times 3 \times \cdots \times (n+1)$ est bien $(n+1)!$, puisqu'il ne manque que le facteur $1$).

**Sa valeur à la fin.**

À la fin, il ne reste qu'un seul nombre $N$, donc $P = N + 1$.

**Conclusion.**

$$N + 1 = (n+1)!, \qquad \text{donc} \qquad N = (n+1)! - 1.$$

Ce résultat ne dépend d'aucun des choix faits en chemin : quel que soit l'ordre dans lequel on marie les nombres, on obtient toujours $(n+1)! - 1$.

**Vérification pour $n = 3$.** Le tableau contient $1, 2, 3$.

- En commençant par $1$ et $2$ : on écrit $1 \times 2 + 1 + 2 = 5$. Le tableau contient $5$ et $3$, et l'on écrit $5 \times 3 + 5 + 3 = 23$.
- En commençant par $2$ et $3$ : on écrit $2 \times 3 + 2 + 3 = 11$. Le tableau contient $1$ et $11$, et l'on écrit $1 \times 11 + 1 + 11 = 23$.

Et en effet $4! - 1 = 24 - 1 = 23$.
