---
id: "0802"
title: "Victor multiplie par 10, Alice par 15"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [nombres-premiers, fractions, decimaux]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 2, d'après Mathematical Olympiads for Middle School (Moscou), 2013"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Victor multiplie un nombre par $10$ et il obtient un nombre premier.

Alice multiplie le même nombre par $15$ et elle obtient également un nombre premier.

Est-ce que cette situation est possible ?

## Hints

1. Commence par essayer avec des nombres entiers. Que vaut $10 \times 3$ ? Et $10 \times 7$ ? Arrives-tu à obtenir un nombre premier ?
2. Si le nombre de départ est un entier $n$, alors $10n$ est un multiple de $10$ : il se divise par $2$ et par $5$. Un tel nombre peut-il être premier ?
3. L'énoncé dit « un nombre », il ne dit pas « un nombre entier ». Es-tu obligé de partir d'un entier ?
4. Cherche un nombre qui, multiplié par $10$, donne un petit nombre premier comme $2$.

## Solution

**Réponse : oui, c'est possible.** Le nombre de départ n'est pas un entier : il vaut $\frac{1}{5}$, c'est-à-dire $0,2$.

**Étape 1. Avec un entier, c'est impossible.**

Supposons d'abord que le nombre de départ soit un entier $n \geqslant 1$. Alors
$$10 \times n = 2 \times (5n),$$
donc $10n$ est divisible par $2$. Comme $10n \geqslant 10$, ce nombre a au moins trois diviseurs : $1$, $2$ et lui-même. Il n'est donc pas premier.

Si on s'arrête là, on répond « non ». Mais l'énoncé ne dit nulle part que le nombre de départ est entier !

**Étape 2. Chercher ailleurs.**

Que faut-il pour que $10 \times n$ soit premier ? Il suffit par exemple que ce produit vaille $2$, le plus petit nombre premier. Cela donne
$$n = \frac{2}{10} = \frac{1}{5} = 0,2.$$

**Étape 3. Vérifier que ce nombre convient pour les deux calculs.**

- Victor : $10 \times 0,2 = 2$, et $2$ est premier. ✓
- Alice : $15 \times 0,2 = 3$, et $3$ est premier. ✓

**Conclusion.** La situation est possible : il suffit que le nombre de départ soit $0,2$. Victor obtient $2$ et Alice obtient $3$.

*Remarque.* Ce nombre est le seul qui convienne. En effet, si $10n$ et $15n$ sont tous deux des entiers premiers, leur différence $15n - 10n = 5n$ est un entier, et $10n = 2 \times 5n$ est premier seulement si $5n = 1$, c'est-à-dire $n = \frac{1}{5}$.

## Going further

1. Trouve un nombre qui, multiplié par $14$ et par $21$, donne deux fois un nombre premier.
2. Peut-on trouver un nombre qui, multiplié par $10$ **et** par $12$, donne à chaque fois un nombre premier ?
