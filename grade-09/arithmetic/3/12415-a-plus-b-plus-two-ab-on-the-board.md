---
id: "12415"
title: "a + b + 2ab au tableau : le chiffre des unités final"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [invariant, parite, restes, tableau]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 mars 2018"
  reference: "juge_Enonce-03-2018.pdf, exercices du groupe B, exercice 1 ; corrigé juge_Corrige-03-2018.pdf"
  url: "http://igm.univ-mlv.fr/~juge/pofm/doc/%c3%89nonc%c3%a9-03-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/juge_Enonce-03-2018.pdf"
---

## Statement

Les entiers $1, 2, 3, \ldots, 2018$ sont écrits au tableau. On répète $2017$ fois l'opération
suivante : on choisit deux nombres $a$ et $b$ écrits au tableau, on les efface, et on écrit à
leur place le nombre
$$a + b + 2ab.$$
À la fin, il ne reste qu'un seul nombre au tableau.

Quelles valeurs son chiffre des unités peut-il prendre ?

## Hints

1. Le chiffre des unités d'un nombre se lit sur deux renseignements : sa parité, et son reste
   dans la division par $5$.
2. Regarde ce que devient la somme de tous les nombres du tableau après une opération : sa
   parité change-t-elle ?
3. Pour le reste dans la division par $5$, cherche un nombre du tableau qui « contamine » tous
   ceux avec lesquels on le combine. Que vaut $a + b + 2ab$ quand $a = 2$ ?

## Solution

### Étape 1 : le dernier nombre est impair

Lors d'une opération, on retire $a$ et $b$ et on ajoute $a + b + 2ab$. La somme de tous les
nombres du tableau augmente donc de $2ab$, qui est pair : **la parité de la somme ne change
jamais**.

Au départ, la somme vaut
$$1 + 2 + \cdots + 2018 = \frac{2018 \times 2019}{2} = 1009 \times 2019,$$
qui est impaire (produit de deux nombres impairs). À la fin, la somme est le dernier nombre
lui-même : **il est impair**.

### Étape 2 : le dernier nombre a pour reste 2 dans la division par 5

Supposons qu'un des deux nombres choisis, disons $a$, ait pour reste $2$ dans la division
par $5$ : $a = 5k + 2$. Alors
$$a + b + 2ab = 5k + 2 + b + 2b(5k + 2) = 5k + 2 + 5b + 10kb = 5(k + b + 2kb) + 2,$$
qui a aussi pour reste $2$ dans la division par $5$.

Ainsi, s'il y a au tableau un nombre de reste $2$, il y en a encore un après l'opération : soit
on n'a pas touché à ce nombre, soit on l'a combiné avec un autre et le résultat a encore le reste
$2$. Au départ, le nombre $2$ est au tableau. Par conséquent, à chaque étape il reste au tableau
un nombre de reste $2$, et à la fin, **le dernier nombre a pour reste $2$ dans la division
par $5$**.

### Étape 3 : conclusion

Un nombre de reste $2$ dans la division par $5$ se termine par $2$ ou par $7$. Comme le dernier
nombre est impair, il se termine par $7$.

Le chiffre des unités du dernier nombre est donc **toujours $7$**, quelle que soit la façon de
mener les opérations.

## Going further

1. Vérifie que $2(a + b + 2ab) + 1 = (2a + 1)(2b + 1)$. En déduire que le dernier nombre $N$ ne
   dépend pas de l'ordre des opérations, et qu'il vérifie
   $2N + 1 = 3 \times 5 \times 7 \times \cdots \times 4037$.
2. Retrouve, à partir de cette formule, que le chiffre des unités de $N$ est $7$.
