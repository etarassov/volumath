---
id: "0637"
title: "Trois règles pour atteindre 11"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [ensembles, implication, raisonnement-a-rebours, puissances-de-trois]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 35, section « Ensembles » (marqué d'une étoile dans la feuille)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Soit $M$ un ensemble de nombres réels vérifiant les trois propriétés suivantes :

1. $1 \in M$ ;
2. pour tout réel $x$ : si $x \in M$, alors $3x \in M$ ;
3. pour tout réel $x$ : si $5x - 4 \in M$, alors $x \in M$.

Démontrer que $11 \in M$.

## Hints

1. Les deux règles ne servent pas de la même façon. La règle 2 fabrique un **nouveau** nombre à partir d'un nombre déjà dans $M$. La règle 3, elle, se lit à l'envers : pour faire entrer un nombre $x$ dans $M$, il suffit que le nombre $5x - 4$ y soit déjà.
2. Pars donc de la fin. Que faudrait-il avoir dans $M$ pour que la règle 3 y fasse entrer $11$ ?
3. Tu obtiens un nombre. S'il est divisible par $3$, la règle 2 ramène la question à son tiers.
4. Continue à remonter ainsi, en alternant les deux règles, jusqu'à tomber sur un nombre que tu sais fabriquer à partir de $1$ avec la seule règle 2.

## Solution

**Comment lire les deux règles.**

La règle 2 est une machine qui avance : à partir d'un nombre de $M$, elle donne son triple. En partant de $1$ elle fournit

$$1, \quad 3, \quad 9, \quad 27, \quad 81, \quad 243, \quad \ldots$$

qui sont donc tous dans $M$.

La règle 3 se lit dans l'autre sens : **si** le nombre $5x - 4$ est déjà dans $M$, **alors** $x$ y entre aussi. Pour faire entrer un nombre, il faut donc savoir fabriquer son « billet d'entrée » $5x - 4$.

**On remonte à partir de 11.**

- Pour obtenir $11$ par la règle 3, il suffit d'avoir $5 \times 11 - 4 = 51$ dans $M$.
- Pour obtenir $51$ par la règle 2, il suffit d'avoir $17$ dans $M$, puisque $51 = 3 \times 17$.
- Pour obtenir $17$ par la règle 3, il suffit d'avoir $5 \times 17 - 4 = 81$ dans $M$.
- Et $81 = 3^4$ s'obtient à partir de $1$ en appliquant quatre fois la règle 2.

La chaîne est bouclée. Il ne reste qu'à l'écrire à l'endroit.

**La démonstration, dans l'ordre.**

1. $1 \in M$, c'est la propriété 1.
2. Par la règle 2, appliquée quatre fois de suite :
$$3 \in M, \qquad 9 \in M, \qquad 27 \in M, \qquad 81 \in M.$$
3. Comme $81 = 5 \times 17 - 4$, la règle 3 appliquée à $x = 17$ donne
$$17 \in M.$$
4. Par la règle 2, $3 \times 17 = 51 \in M$.
5. Comme $51 = 5 \times 11 - 4$, la règle 3 appliquée à $x = 11$ donne
$$11 \in M.$$

**Conclusion.** Le nombre $11$ appartient bien à $M$, et cela quel que soit l'ensemble $M$ vérifiant les trois propriétés.

**Vérification des deux calculs clés :** $5 \times 17 - 4 = 85 - 4 = 81$ ✔ et $5 \times 11 - 4 = 55 - 4 = 51$ ✔.

## Going further

1. Déduis-en que tous les nombres $11$, $33$, $99$, $297$, ... c'est-à-dire tous les $11 \times 3^k$, appartiennent à $M$.
2. Le nombre $81$ a joué un rôle de pivot parce qu'il s'écrit à la fois $3^4$ et $5 \times 17 - 4$. Pour quels exposants $k$ le nombre $3^k$ est-il de la forme $5x - 4$ avec $x$ entier ? (Regarde le dernier chiffre de $3^k$.)
3. Les trois propriétés n'interdisent pas à $M$ de contenir d'autres nombres. Donne un exemple d'ensemble $M$ qui vérifie les trois propriétés et qui contient aussi $2$.
