---
id: "7260"
title: "On efface deux nombres et on écrit leur somme moins un"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, somme, tableau, operations]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, « Entraînement du groupe A », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Les nombres $1, 2, 3, \ldots, 10$ sont écrits au tableau.

Une **opération** consiste à effacer deux nombres, disons $a$ et $b$, puis à écrire à leur place le
nombre $a + b - 1$.

Que peut-il rester au tableau après $9$ opérations ?

## Hints

1. Combien y a-t-il de nombres au tableau au départ ? Et après une opération ? Après neuf ?
2. Ne regarde pas les nombres un par un : regarde leur **somme**.
3. On enlève $a$ et $b$, on ajoute $a + b - 1$. De combien la somme change-t-elle ?

## Solution

**Combien de nombres reste-t-il ?**

Au départ il y a $10$ nombres. Chaque opération en efface deux et en écrit un : le nombre de
nombres au tableau **diminue de $1$** à chaque fois.

Après $9$ opérations, il reste donc $10 - 9 = 1$ seul nombre.

**L'invariant : la somme.**

Notons $S$ la somme de tous les nombres écrits au tableau. Au départ,
$$S = 1 + 2 + \cdots + 10 = \frac{10 \times 11}{2} = 55 .$$

Faisons une opération. On retire $a$ et $b$, on ajoute $a + b - 1$. La nouvelle somme vaut
$$S - a - b + (a + b - 1) = S - 1 .$$

**À chaque opération, la somme diminue exactement de $1$.**

Ce résultat ne dépend ni de $a$, ni de $b$, ni de l'ordre dans lequel on joue.

**Conclusion.**

Après $9$ opérations, la somme vaut
$$55 - 9 = 46 .$$

Mais il ne reste qu'un seul nombre au tableau : ce nombre **est** la somme.

**Le nombre qui reste vaut nécessairement $46$, quelles que soient les opérations effectuées.**

## Going further

Une autre façon de voir la même chose : remplaçons chaque nombre $x$ du tableau par $x - 1$.
L'opération devient alors « effacer $a-1$ et $b-1$, écrire $(a-1) + (b-1)$ », c'est-à-dire une
simple addition. La somme de ces nouveaux nombres ne change donc jamais : elle vaut
$$(1-1) + (2-1) + \cdots + (10-1) = 0 + 1 + \cdots + 9 = 45 .$$
À la fin, il reste un seul nombre $x$, et $x - 1 = 45$, donc $x = 46$.

Essaie la même question avec $1, 2, \ldots, n$ : le nombre final vaut toujours
$\dfrac{n(n+1)}{2} - (n-1)$.
