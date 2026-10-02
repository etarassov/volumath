---
id: "1215"
title: "Dans quelles bases 2023 finit-il par 3 ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [bases-de-numeration, division-euclidienne, diviseurs, chiffre-des-unites]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.1 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

On rappelle qu'écrire un nombre entier en base $b$ (avec $b \geqslant 2$), c'est le décomposer sous la forme

$$c_p \times b^{\,p} + c_{p-1}\times b^{\,p-1} + \dots + c_1 \times b + c_0,$$

où les chiffres $c_0, c_1, \dots, c_p$ sont des entiers compris entre $0$ et $b-1$.

En base dix, le nombre $2023$ se termine par le chiffre $3$. Dans combien de bases $b$ le nombre $2023$ se termine-t-il aussi par le chiffre $3$ ?

## Hints

1. Le dernier chiffre de $2023$ en base $b$, c'est le reste de la division euclidienne de $2023$ par $b$. Pourquoi ?
2. La condition s'écrit donc : $2023 = q \times b + 3$ pour un certain entier $q$.
3. Réécrire cette égalité de façon à faire apparaître un multiple de $b$.
4. Ne pas oublier une contrainte facile à manquer : pour que $3$ soit un chiffre en base $b$, il faut que…
5. Décomposer $2020$ en facteurs premiers pour compter ses diviseurs.

## Solution

**Traduire « se termine par $3$ ».**

Dans l'écriture en base $b$, tous les termes sauf le dernier sont des multiples de $b$ :

$$2023 = \underbrace{c_p b^{\,p} + \dots + c_1 b}_{\text{multiple de } b} + c_0.$$

Comme $0 \leqslant c_0 \leqslant b-1$, le chiffre des unités $c_0$ est exactement **le reste de la division euclidienne de $2023$ par $b$**.

Dire que $2023$ se termine par $3$ en base $b$, c'est donc dire qu'il existe un entier $q$ avec

$$2023 = q\,b + 3, \qquad \text{et} \qquad 3 \leqslant b - 1.$$

**Deux conditions.**

La première égalité se réécrit

$$2020 = q\,b,$$

c'est-à-dire : **$b$ est un diviseur de $2020$.**

La seconde condition, souvent oubliée, dit que le chiffre $3$ doit exister en base $b$ : il faut $b \geqslant 4$. (En base $2$ ou $3$, il n'y a pas de chiffre « $3$ ».)

**Compter les diviseurs.**

$$2020 = 2^2 \times 5 \times 101.$$

Le nombre de diviseurs est $(2+1)(1+1)(1+1) = 12$. Les voici :

$$1,\; 2,\; 4,\; 5,\; 10,\; 20,\; 101,\; 202,\; 404,\; 505,\; 1010,\; 2020.$$

On élimine ceux qui sont inférieurs à $4$, c'est-à-dire $1$ et $2$. Il reste $12 - 2 = 10$ bases :

$$4,\; 5,\; 10,\; 20,\; 101,\; 202,\; 404,\; 505,\; 1010,\; 2020.$$

**Vérification sur deux exemples.**

- En base $4$ : $2023 = 505 \times 4 + 3$, donc l'écriture se termine bien par $3$ (elle vaut $133213_4$).
- En base $2020$ : $2023 = 1 \times 2020 + 3$, donc $2023$ s'écrit $\,\text{«}\,1\,3\,\text{»}\,$ en base $2020$.

**Conclusion.** Il y a $10$ bases dans lesquelles $2023$ se termine par le chiffre $3$.

## Going further

1. Dans combien de bases $2023$ se termine-t-il par le chiffre $0$ ?
2. Dans combien de bases $2023$ s'écrit-il avec exactement deux chiffres ?
