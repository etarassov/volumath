---
id: "0855"
title: "La somme vaut 8, et le reste ?"
grade: 9
theme: algebra
difficulty: 1
duration_min: 10
tags: [identites remarquables, calcul litteral, carre d une somme]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Calcul », niveau collège - débutants, 16 avril 2024"
  reference: "Nombres.Introduction.pdf, exercice 32, section « Divers »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Nombres.Introduction.pdf"
---

## Statement

On sait que $a + b = 8$.

Calcule $a^2 + b^2 + 2ab$.

## Hints

1. Avec la seule information $a+b=8$, impossible de trouver $a$ et $b$ séparément : il y a une infinité de possibilités. Ce n'est pas grave, car la quantité demandée ne dépend peut-être que de la somme.
2. Regarde bien $a^2 + b^2 + 2ab$ : c'est une des trois identités remarquables du cours, écrite dans le désordre.
3. Remets les termes dans l'ordre habituel : $a^2 + 2ab + b^2$.

## Solution

**L'idée : reconnaître une identité remarquable.**

On range les trois termes dans l'ordre habituel :

$$a^2 + b^2 + 2ab = a^2 + 2ab + b^2 = (a+b)^2.$$

Comme $a + b = 8$, on obtient

$$(a+b)^2 = 8^2 = 64.$$

**Conclusion.** $a^2 + b^2 + 2ab = \mathbf{64}$, quels que soient les deux nombres $a$ et $b$ de somme $8$.

**Vérification sur des exemples.** Prenons quelques couples de somme $8$ :

- $a = 3$ et $b = 5$ : $9 + 25 + 2 \times 15 = 9 + 25 + 30 = 64$ ;
- $a = 0$ et $b = 8$ : $0 + 64 + 0 = 64$ ;
- $a = -2$ et $b = 10$ : $4 + 100 + 2 \times (-20) = 4 + 100 - 40 = 64$.

On trouve bien $64$ à chaque fois.

## Going further

1. On sait maintenant que $a + b = 8$ **et** que $ab = 15$. Que vaut $a^2 + b^2$ ? (Retire deux fois le produit au carré de la somme.)
2. On sait que $a - b = 3$. Que vaut $a^2 + b^2 - 2ab$ ?
