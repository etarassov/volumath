---
id: "0176"
title: "Toute la suite est divisible par 53"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, suites, ecriture-decimale, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 7 класс, II полугодие, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 19, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On écrit la liste de nombres suivante, qui ne s'arrête jamais :

$$10\,017,\quad 100\,117,\quad 1\,001\,117,\quad 10\,011\,117,\quad 100\,111\,117,\ \ldots$$

Chaque nombre commence par $100$ et se termine par $7$ ; entre les deux, il y a un chiffre $1$ de plus qu'au nombre précédent.

Montrer que **tous** les nombres de cette liste sont divisibles par $53$.

## Hints

1. Vérifie d'abord que le premier nombre, $10\,017$, est divisible par $53$. Combien vaut le quotient ?
2. Tu ne pourras jamais vérifier tous les nombres un par un, puisqu'il y en a une infinité. L'idée est donc de passer d'un nombre au suivant : si tu sais que l'un est divisible par $53$, peux-tu en déduire que le suivant l'est aussi ?
3. Que devient $10\,017$ si tu le multiplies par $10$ ? Compare le résultat au nombre suivant de la liste, $100\,117$. Que faut-il enlever ?
4. Si un nombre $a$ s'écrit $a = 53 \times k$, essaie de factoriser $10a - 53$.

## Solution

**L'idée :** on ne peut pas vérifier une infinité de nombres. On montre donc deux choses : le premier est divisible par $53$, et **chaque nombre fabrique le suivant** en gardant cette propriété. De proche en proche, toute la liste y passe.

**Étape 1. Le premier nombre.**

$$10\,017 = 53 \times 189$$

Donc $10\,017$ est divisible par $53$.

**Étape 2. Passer d'un nombre au suivant.**

Multiplier un nombre par $10$, c'est écrire un $0$ de plus à droite :

$$10\,017 \times 10 = 100\,170$$

Ce nombre se termine par $70$. Enlevons $53$ :

$$100\,170 - 53 = 100\,117$$

car $70 - 53 = 17$, et rien d'autre ne change dans l'écriture. On retrouve exactement le deuxième nombre de la liste.

Ça marche à chaque fois, pour la même raison : un nombre de la liste se termine toujours par $17$. En le multipliant par $10$, il se termine par $170$, donc par $70$ ; en enlevant $53$, ces deux derniers chiffres redeviennent $17$, et le chiffre $1$ qui était devant reste en place. On a donc gagné un $1$ au milieu, c'est-à-dire le nombre suivant de la liste. Par exemple :

$$100\,117 \times 10 - 53 = 1\,001\,170 - 53 = 1\,001\,117$$

Si on note $a$ un nombre de la liste et $b$ le suivant, on a donc toujours

$$b = 10a - 53$$

**Étape 3. La divisibilité se transmet.**

Supposons qu'un nombre $a$ de la liste soit divisible par $53$. On peut alors écrire $a = 53k$, où $k$ est un entier. Le nombre suivant vaut

$$b = 10a - 53 = 10 \times 53k - 53 = 53 \times (10k - 1)$$

Comme $10k - 1$ est un entier, $b$ est bien divisible par $53$.

**Étape 4. On propage.**

- $10\,017$ est divisible par $53$ (étape 1).
- Donc $100\,117$ l'est aussi (étape 3).
- Donc $1\,001\,117$ l'est aussi.
- Donc $10\,011\,117$ l'est aussi, et ainsi de suite sans jamais s'arrêter.

**Conclusion.** Tous les nombres de la liste sont divisibles par $53$.

## Going further

1. Calcule le quotient par $53$ des quatre premiers nombres de la liste. Quel motif reconnais-tu ?
2. Avec la même méthode, montrer que tous les nombres de la liste $12$, $102$, $1\,002$, $10\,002$, $100\,002$, … sont divisibles par $6$. Quelle est ici la relation entre un nombre et le suivant ?
