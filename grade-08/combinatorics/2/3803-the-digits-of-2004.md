---
id: "3803"
title: "Les nombres écrits avec les chiffres de 2004"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [denombrement, chiffres, permutations, repetition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 19, d'après AMC 8 2004, problème 2 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

On dispose des quatre chiffres du nombre $2004$, c'est-à-dire $2$, $0$, $0$ et $4$.

En les remettant dans un autre ordre, combien de nombres différents de quatre chiffres peut-on écrire ? (Un nombre de quatre chiffres ne commence pas par $0$.)

## Hints

1. Un nombre de quatre chiffres ne peut pas commencer par $0$. Quels chiffres peuvent donc occuper la première place ?
2. Traite séparément le cas où le nombre commence par $2$ et celui où il commence par $4$.
3. Une fois le premier chiffre choisi, il reste trois chiffres à placer, dont deux sont identiques. Attention à ne pas compter deux fois le même nombre.

## Solution

**L'idée : fixer d'abord le chiffre des milliers, puis ranger les trois qui restent.**

Le premier chiffre ne peut être ni $0$ (sinon le nombre n'a pas quatre chiffres) : il vaut donc $2$ ou $4$.

**Cas 1 : le nombre commence par $2$.**

Il reste à placer $0$, $0$ et $4$ sur les trois dernières places. Comme les deux zéros sont identiques, il suffit de choisir la place du $4$ : il y a $3$ possibilités.

$$2004, \quad 2040, \quad 2400.$$

**Cas 2 : le nombre commence par $4$.**

De la même façon, il reste à placer $0$, $0$ et $2$, et il suffit de choisir la place du $2$ : encore $3$ possibilités.

$$4002, \quad 4020, \quad 4200.$$

**On rassemble.**

Les deux cas ne peuvent pas donner le même nombre, puisque le premier chiffre n'est pas le même. Au total :

$$3 + 3 = 6.$$

**Conclusion.** On peut écrire $6$ nombres de quatre chiffres.

## Going further

1. Même question avec les chiffres de $2024$.
2. Même question avec les chiffres de $1000$.
3. Avec quatre chiffres tous différents et aucun zéro, combien de nombres obtiendrait-on ?
