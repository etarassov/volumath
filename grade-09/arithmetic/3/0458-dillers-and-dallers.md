---
id: "0458"
title: "Dillers et dallers"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [invariant, divisibilite, difference, monnaie]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8 класс), сост. А. Л. Канунников"
  reference: "Kan2017.pdf, листок 9, задача 5"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

La Dillie et la Dallie sont deux pays voisins. En Dillie la monnaie est le diller, en Dallie c'est le daller.

- Dans un bureau de change de Dillie, on donne $1$ diller et on reçoit $10$ dallers.
- Dans un bureau de change de Dallie, on donne $1$ daller et on reçoit $10$ dillers.

Un financier débutant part avec $1$ diller et aucun daller. Il peut passer d'un pays à l'autre autant de fois qu'il veut, et changer son argent dans les deux pays.

Montrer qu'il n'aura jamais autant de dillers que de dallers.

## Hints

1. Note $d$ le nombre de dillers et $\ell$ le nombre de dallers qu'il possède. Écris ce qu'il faudrait obtenir.
2. Intéresse-toi à la différence $d - \ell$. De combien varie-t-elle quand il fait un change en Dillie ? Et un change en Dallie ?
3. Cette différence part de $1$ et varie toujours de $11$ ou de $-11$. Sous quelle forme s'écrit-elle donc à tout instant ? Le nombre $0$ peut-il s'écrire ainsi ?

## Solution

**L'idée : suivre la différence entre les deux nombres, et montrer qu'elle ne peut pas atteindre $0$.**

Notons $d$ le nombre de dillers et $\ell$ le nombre de dallers que le financier possède à un instant donné. Au départ

$$d = 1, \qquad \ell = 0, \qquad \text{donc} \qquad d - \ell = 1$$

Avoir autant de dillers que de dallers, cela veut dire $d = \ell$, c'est-à-dire $d - \ell = 0$. C'est ce que nous voulons rendre impossible.

**Étape 1. Ce que fait un change à la différence.**

*Un change en Dillie.* Il donne $1$ diller et reçoit $10$ dallers :

$$d \ \longrightarrow \ d - 1, \qquad \ell \ \longrightarrow \ \ell + 10$$

La nouvelle différence vaut

$$(d - 1) - (\ell + 10) = (d - \ell) - 11$$

*Un change en Dallie.* Il donne $1$ daller et reçoit $10$ dillers :

$$d \ \longrightarrow \ d + 10, \qquad \ell \ \longrightarrow \ \ell - 1$$

La nouvelle différence vaut

$$(d + 10) - (\ell - 1) = (d - \ell) + 11$$

Quel que soit le change, **la différence $d - \ell$ varie exactement de $11$ ou de $-11$**.

**Étape 2. Ce qui ne change jamais.**

Au départ

$$d - \ell = 1 = 11 \times 0 + 1$$

Supposons qu'à un moment la différence s'écrive $d - \ell = 11k + 1$, où $k$ est un entier relatif. Après un change de plus, elle vaut

$$11k + 1 + 11 = 11(k+1) + 1 \qquad \text{ou} \qquad 11k + 1 - 11 = 11(k-1) + 1$$

Dans les deux cas elle est encore de la forme $11 \times (\text{un entier}) + 1$.

Comme c'est vrai au départ, et que cela se transmet d'un change au suivant, **à tout instant la différence $d - \ell$ s'écrit $11k + 1$ avec $k$ entier relatif**. C'est l'invariant du problème.

**Étape 3. Conclusion.**

Supposons qu'à un certain moment il ait autant de dillers que de dallers. On aurait alors

$$11k + 1 = 0 \qquad \text{donc} \qquad 11k = -1$$

Mais $-1$ n'est pas dans la table de $11$ : aucun entier $k$ ne convient. C'est donc impossible.

Le financier n'aura jamais autant de dillers que de dallers, quels que soient ses voyages et ses changes.

## Going further

1. Pourra-t-il un jour avoir exactement $2$ dillers de plus que de dallers ? Et exactement $12$ de plus ?
2. Il part maintenant avec $12$ dillers et $1$ daller. Le raisonnement ci-dessus ne s'applique plus. Peut-il alors arriver à en avoir autant des deux ?
3. Les deux bureaux de change passent à « $1$ contre $9$ ». Le financier part toujours avec $1$ diller. La conclusion change-t-elle ?
