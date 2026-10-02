---
id: "0102"
title: "Les bonbons des trois amies"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, multiples, invariant, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 1, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Marie, Louise et Clara font des exercices de mathématiques ensemble. Pour aller plus vite, elles ont acheté des bonbons et se sont mises d'accord sur la règle suivante : pour chaque exercice, celle qui le résout la première reçoit quatre bonbons, celle qui le résout en deuxième en reçoit deux, et celle qui le résout en dernier en reçoit un.

Elles ont toutes les trois résolu tous les exercices, et deux filles n'ont jamais fini un exercice en même temps.

Est-il possible qu'à la fin, chacune des trois ait reçu exactement $20$ bonbons ?

## Hints

1. Choisis un exercice, n'importe lequel. Combien de bonbons les trois filles reçoivent-elles en tout pour cet exercice-là ?
2. Pour chaque exercice, il se distribue toujours le même nombre de bonbons. Que peut-on alors dire du nombre total de bonbons distribués, si les filles ont fait $n$ exercices ?
3. Calcule le nombre total de bonbons reçus dans la situation décrite par l'énoncé. Ce nombre est-il compatible avec la réponse de l'indication 2 ?

## Solution

**L'idée : compter le total de deux façons.**

**Première façon : exercice par exercice.**

Prenons un exercice quelconque. Comme les trois filles l'ont résolu, et jamais deux en même temps, il y a une première, une deuxième et une dernière. Elles reçoivent donc

$$4 + 2 + 1 = 7 \text{ bonbons}$$

Et cela pour chaque exercice, quel que soit l'ordre dans lequel les filles ont fini.

Si les filles ont fait $n$ exercices, le nombre total de bonbons distribués vaut donc

$$7 \times n$$

**Ce nombre est donc un multiple de $7$.**

**Deuxième façon : fille par fille.**

Si chacune des trois filles a reçu $20$ bonbons, le nombre total de bonbons distribués vaut

$$20 \times 3 = 60$$

**On compare.**

Il faudrait donc que $60$ soit un multiple de $7$. Or

$$7 \times 8 = 56 \qquad \text{et} \qquad 7 \times 9 = 63$$

Le nombre $60$ est strictement compris entre $56$ et $63$ : ce n'est pas un multiple de $7$.

**Conclusion.** C'est impossible. Les trois filles ne peuvent pas avoir reçu $20$ bonbons chacune.

## Going further

1. Avec la même règle, chacune des trois filles pourrait-elle repartir avec $21$ bonbons ? Et avec $14$ bonbons ? Dans les cas possibles, combien d'exercices ont-elles faits ?
2. Les filles changent la règle : $5$ bonbons à la première, $3$ à la deuxième, $1$ à la dernière. Chacune peut-elle maintenant obtenir $20$ bonbons ?
3. Trouve tous les nombres $b$ tels que chacune des trois filles puisse repartir avec exactement $b$ bonbons, avec la règle de départ ($4$, $2$, $1$).
