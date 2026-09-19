---
id: "0534"
title: "Le nombre 101010 est-il une différence de carrés ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carres, parite, divisibilite, identite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 8, задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Le nombre $101\,010$ peut-il s'écrire comme la différence des carrés de deux entiers ?

Autrement dit, existe-t-il des entiers $a$ et $b$ tels que

$$a^2 - b^2 = 101\,010 \ ?$$

## Hints

1. Tu connais une identité remarquable qui transforme $a^2 - b^2$ en un produit. Écris-la.
2. Les deux facteurs de ce produit ne sont pas indépendants : calcule leur différence. Que peux-tu en déduire sur leur parité ?
3. Le nombre $101\,010$ est pair. Un produit de deux nombres impairs peut-il être pair ?
4. Si les deux facteurs sont pairs, par quel nombre leur produit est-il forcément divisible ? Regarde alors les deux derniers chiffres de $101\,010$.

## Solution

**On raisonne par l'absurde** : supposons qu'il existe des entiers $a$ et $b$ tels que $a^2 - b^2 = 101\,010$, et cherchons une contradiction.

**On factorise.**

L'identité remarquable $a^2 - b^2 = (a - b)(a + b)$ donne

$$(a - b)(a + b) = 101\,010.$$

**Les deux facteurs ont la même parité.**

Calculons la différence des deux facteurs :

$$(a + b) - (a - b) = 2b,$$

qui est un nombre **pair**. Or deux entiers dont la différence est paire sont soit tous les deux pairs, soit tous les deux impairs. Donc $a - b$ et $a + b$ ont la même parité.

**Ils sont pairs tous les deux.**

Leur produit vaut $101\,010$, qui est pair. Si les deux facteurs étaient impairs, leur produit serait impair : c'est exclu. Comme ils ont la même parité, ils sont donc **pairs tous les deux**.

**Le produit devrait être un multiple de 4.**

Écrivons alors $a - b = 2m$ et $a + b = 2n$, où $m$ et $n$ sont des entiers. Le produit devient

$$101\,010 = 2m \times 2n = 4mn.$$

Autrement dit, $101\,010$ serait un multiple de $4$.

**Et c'est faux.**

Un nombre est divisible par $4$ exactement quand le nombre formé par ses deux derniers chiffres l'est. Ici ces deux chiffres forment $10$, et $10$ n'est pas divisible par $4$. On peut aussi le voir en posant la division :

$$101\,010 = 4 \times 25\,252 + 2.$$

**Conclusion.** La supposition de départ mène à une contradiction. Le nombre $101\,010$ **ne peut pas** s'écrire comme la différence des carrés de deux entiers.

**L'idée à retenir.** On a transformé une différence en produit, puis on a travaillé sur la parité des facteurs. Le raisonnement ne se sert pas du tout des chiffres de $101\,010$, sauf à la toute fin : il montre en réalité qu'**aucun** nombre pair non multiple de $4$ n'est une différence de deux carrés.

## Going further

1. Montre que tout nombre impair s'écrit comme différence de deux carrés. Regarde pour cela $(k+1)^2 - k^2$.
2. Montre que tout multiple de $4$ s'écrit comme différence de deux carrés. Regarde $(k+1)^2 - (k-1)^2$. Quels sont alors, exactement, les entiers positifs qui s'écrivent comme différence de deux carrés ?
