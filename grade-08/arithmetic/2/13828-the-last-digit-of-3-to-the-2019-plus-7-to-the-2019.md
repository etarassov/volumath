---
id: "13828"
title: "Le dernier chiffre de 3²⁰¹⁹ + 7²⁰¹⁹"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [chiffre-des-unites, puissances, periodicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices communs, exercice 12 ; corrigé dans le même fichier, solution 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Quel est le chiffre des unités du nombre $3^{2019} + 7^{2019}$ ?

## Hints

1. Écris le chiffre des unités de $3^1$, $3^2$, $3^3$, $3^4$, $3^5$, $3^6$. Que remarques-tu ?
2. Pour connaître le chiffre des unités de $3^{n+1} = 3^n \times 3$, il suffit de connaître
   celui de $3^n$. Pourquoi la liste se répète-t-elle donc pour toujours ?
3. Fais de même avec les puissances de $7$, puis regarde où tombe l'exposant $2019$ dans le
   cycle.

## Solution

**Une remarque.** Le chiffre des unités d'un produit ne dépend que des chiffres des unités des
facteurs. Pour trouver le chiffre des unités de $3^{n+1} = 3^n \times 3$, il suffit donc de
multiplier par $3$ le chiffre des unités de $3^n$ et de garder le chiffre des unités du
résultat.

**Les puissances de $3$.** En partant de $3^1 = 3$, on trouve successivement les chiffres des
unités

$$3, \quad 9, \quad 7, \quad 1, \quad 3, \quad 9, \quad 7, \quad 1, \quad \ldots$$

car $3 \times 3 = 9$, $9 \times 3 = 27$, $7 \times 3 = 21$ et $1 \times 3 = 3$. Après $3^4$, on
retrouve le chiffre $3$, et d'après la remarque tout recommence de la même façon. Le chiffre
des unités se répète donc tous les $4$ exposants. Comme $2019 = 4 \times 504 + 3$, le nombre
$3^{2019}$ a le même chiffre des unités que $3^3 = 27$, c'est-à-dire $7$.

**Les puissances de $7$.** De même, on trouve les chiffres des unités

$$7, \quad 9, \quad 3, \quad 1, \quad 7, \quad 9, \quad 3, \quad 1, \quad \ldots$$

car $7 \times 7 = 49$, $9 \times 7 = 63$, $3 \times 7 = 21$ et $1 \times 7 = 7$. Ici aussi la
liste se répète tous les $4$ exposants, et $7^{2019}$ a le même chiffre des unités que
$7^3 = 343$, c'est-à-dire $3$.

**La somme.** Le chiffre des unités de $3^{2019} + 7^{2019}$ est celui de $7 + 3 = 10$.

**Le chiffre des unités de $3^{2019} + 7^{2019}$ est $0$.**

## Going further

Ce n'est pas un hasard. Pour un exposant impair $n$, le nombre $a^n + b^n$ est toujours un
multiple de $a + b$, et ici $3 + 7 = 10$. Par exemple $3^3 + 7^3 = 27 + 343 = 370$. Que se
passe-t-il pour $3^{2020} + 7^{2020}$ ?
