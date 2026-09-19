---
id: "0789"
title: "Les scores impossibles aux fléchettes"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [sommes, multiples, demonstration, recherche-de-cas, entiers-consecutifs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 15, question 4, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On joue aux fléchettes sur une cible comportant trois zones : une à $5$ points, une à $7$ points et une à $11$ points. Toutes les fléchettes lancées atteignent la cible, et leur nombre n'est pas limité. Le score est la somme des points obtenus : ainsi $30$ est un score possible, puisque $30 = 11 + 7 + 7 + 5$.

1. Démontrer que $14$ et les quatre entiers suivants sont des scores possibles.
2. En déduire que tout entier supérieur ou égal à $14$ est un score possible.
3. Déterminer la liste des entiers strictement positifs qui ne correspondent à aucun score.

## Hints

1. Question 1 : il s'agit juste de trouver cinq jeux, un pour $14$, un pour $15$, un pour $16$, un pour $17$, un pour $18$.
2. Question 2 : cinq entiers qui se suivent, et une zone qui vaut $5$ points. Que se passe-t-il si tu ajoutes une fléchette à $5$ points à un score déjà obtenu ?
3. Question 2 : prends un entier $n \geqslant 14$ et effectue la division de $n - 14$ par $5$. Que peux-tu dire du reste ?
4. Question 3 : il ne reste donc à examiner que les entiers de $1$ à $13$. Pour ceux-là, combien de fléchettes peut-on lancer au maximum ?
5. Question 3 : avec trois fléchettes le score vaut au moins $15$. Il suffit donc de faire la liste des scores obtenus avec zéro, une ou deux fléchettes.

## Solution

### Question 1 : cinq scores qui se suivent

$$14 = 7 + 7$$
$$15 = 5 + 5 + 5$$
$$16 = 5 + 11$$
$$17 = 5 + 5 + 7$$
$$18 = 7 + 11$$

Les cinq entiers $14$, $15$, $16$, $17$ et $18$ sont donc des scores possibles.

### Question 2 : tout entier à partir de 14

**L'idée :** une fléchette à $5$ points ajoute exactement $5$ au score. Donc **si $s$ est un score possible, alors $s + 5$, $s + 10$, $s + 15$, … le sont aussi.**

Soit $n$ un entier avec $n \geqslant 14$. Effectuons la division euclidienne de $n - 14$ par $5$ : il existe un quotient $q \geqslant 0$ et un reste $r$ avec

$$n - 14 = 5q + r \qquad \text{et} \qquad 0 \leqslant r \leqslant 4$$

Autrement dit

$$n = (14 + r) + 5q$$

Comme $0 \leqslant r \leqslant 4$, le nombre $14 + r$ est l'un des cinq entiers $14$, $15$, $16$, $17$, $18$ : c'est un score possible d'après la question 1. Il suffit alors d'ajouter $q$ fléchettes à $5$ points pour obtenir le score $n$.

**Tout entier supérieur ou égal à $14$ est donc un score possible.** C'est ici que servent les cinq scores consécutifs : cinq de suite suffisent, parce que la plus petite zone vaut $5$ points.

*Exemple :* pour $n = 2024$, on calcule $2024 - 14 = 2010 = 5 \times 402$, donc $r = 0$ et $2024 = 14 + 5 \times 402$ : deux fléchettes à $7$ points et $402$ fléchettes à $5$ points.

### Question 3 : les entiers qui ne sont pas des scores

Grâce à la question 2, il ne reste à examiner que les entiers de $1$ à $13$.

Pour un tel score, le nombre de fléchettes est petit : avec trois fléchettes le score vaut au moins $5 + 5 + 5 = 15$, ce qui est déjà trop. Il y a donc **au plus deux fléchettes**. Faisons la liste complète :

| nombre de fléchettes | scores obtenus |
| --- | --- |
| une | $5$, $7$, $11$ |
| deux | $5+5 = 10$, $5+7 = 12$, $7+7 = 14$, $5+11 = 16$, $7+11 = 18$, $11+11 = 22$ |

Parmi tous ces nombres, ceux qui sont inférieurs ou égaux à $13$ sont

$$5 \quad 7 \quad 10 \quad 11 \quad 12$$

Tous les autres entiers de $1$ à $13$ ne sont donc des scores d'aucun jeu.

**Conclusion.** Les entiers strictement positifs qui ne correspondent à aucun score sont exactement

$$1 \quad 2 \quad 3 \quad 4 \quad 6 \quad 8 \quad 9 \quad 13$$

Il y en a huit, et le plus grand d'entre eux est $13$.

## Going further

Reprendre tout l'exercice avec une cible à deux zones seulement, l'une à $5$ points et l'autre à $7$ points. Quel est alors le plus grand entier qui n'est pas un score ?
