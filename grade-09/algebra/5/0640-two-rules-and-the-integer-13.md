---
id: "0640"
title: "Deux règles et l'entier 13"
grade: 9
theme: algebra
difficulty: 5
duration_min: 45
tags: [ensembles, implication, identites-remarquables, developpement, raisonnement-de-proche-en-proche]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 34, section « Ensembles » (marqué d'une étoile dans la feuille)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Soit $M$ un ensemble d'entiers relatifs vérifiant les trois propriétés suivantes :

1. $1 \in M$ ;
2. pour tout entier $x$ : si $x \in M$, alors $x^2 - x + 1 \in M$ ;
3. pour tout entier $x$ : si $x^2 - 3x + 3 \in M$, alors $x \in M$.

Démontrer que $13 \in M$.

## Hints

1. Les deux règles ne se lisent pas dans le même sens. La règle 2 fabrique un nouveau nombre à partir d'un nombre de $M$. La règle 3 dit ce qu'il faut avoir **déjà** dans $M$ pour y faire entrer un nombre $x$ : son billet d'entrée est $x^2 - 3x + 3$.
2. Essaie de faire entrer $2$. Calcule son billet d'entrée $2^2 - 3 \times 2 + 3$. Bonne surprise ?
3. Continue : applique la règle 2 à $2$. Puis cherche le billet d'entrée de $4$, et regarde si tu sais le fabriquer.
4. Une fois que tu as $4$, regarde ce que la règle 2 en fait.
5. Pour comprendre pourquoi tout cela marche, développe $(x-1)^2 - (x-1) + 1$ et compare au billet d'entrée $x^2 - 3x + 3$.

## Solution

**L'observation qui explique tout.**

Développons l'expression de la règle 2 en remplaçant $x$ par $x - 1$ :

$$(x-1)^2 - (x-1) + 1 = x^2 - 2x + 1 - x + 1 + 1 = x^2 - 3x + 3.$$

C'est exactement l'expression de la règle 3 ! Autrement dit, le « billet d'entrée » du nombre $x$ n'est rien d'autre que ce que la règle 2 produit à partir de $x - 1$.

On en tire la règle pratique suivante.

> **Si un entier $k$ est dans $M$, alors $k + 1$ est dans $M$.**

En effet, si $k \in M$, la règle 2 place $k^2 - k + 1$ dans $M$. Or, en posant $x = k+1$ :

$$x^2 - 3x + 3 = (k+1)^2 - 3(k+1) + 3 = k^2 + 2k + 1 - 3k - 3 + 3 = k^2 - k + 1.$$

Ce nombre est dans $M$, donc la règle 3 fait entrer $x = k + 1$ dans $M$.

**On monte l'échelle.**

Partant de $1 \in M$, cette règle donne successivement $2 \in M$, $3 \in M$, $4 \in M$, et ainsi de suite : **tous les entiers supérieurs ou égaux à $1$ appartiennent à $M$.** En particulier $13 \in M$.

**La chaîne détaillée, si l'on veut aller vite jusqu'à 13.**

On n'a pas besoin de monter jusqu'à $13$ marche par marche. Six étapes suffisent :

| étape | règle utilisée | calcul | conclusion |
|---|---|---|---|
| 1 | propriété 1 | | $1 \in M$ |
| 2 | règle 3 avec $x = 2$ | $2^2 - 3 \times 2 + 3 = 1 \in M$ | $2 \in M$ |
| 3 | règle 2 avec $x = 2$ | $2^2 - 2 + 1 = 3$ | $3 \in M$ |
| 4 | règle 2 avec $x = 3$ | $3^2 - 3 + 1 = 7$ | $7 \in M$ |
| 5 | règle 3 avec $x = 4$ | $4^2 - 3 \times 4 + 3 = 7 \in M$ | $4 \in M$ |
| 6 | règle 2 avec $x = 4$ | $4^2 - 4 + 1 = 13$ | $13 \in M$ |

**Conclusion.** Le nombre $13$ appartient à $M$, et cela quel que soit l'ensemble $M$ vérifiant les trois propriétés.

**Pourquoi la règle 3 est indispensable.** Avec la seule règle 2, on ne produit à partir de $1$ que le nombre $1$ lui-même, puisque $1^2 - 1 + 1 = 1$. C'est la règle 3, lue à l'envers, qui fait démarrer la machine.

## Going further

1. Démontre que $M$ contient aussi $0$ et tous les entiers négatifs. (Indication : cherche le billet d'entrée de $0$, puis celui de $-1$, et repère un nombre déjà obtenu.)
2. Le plus petit ensemble $M$ vérifiant les trois propriétés est-il $\mathbb{Z}$ tout entier ?
3. On remplace la règle 3 par : « si $x^2 + x + 1 \in M$ alors $x \in M$ ». Peut-on encore atteindre $13$ à partir de $1$ ?
