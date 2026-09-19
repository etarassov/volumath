---
id: "4215"
title: "Les départements et leurs voisins"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [parite, double comptage, graphe]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, More Graphs and Geometry"
  reference: "Handout-2069-1883.pdf, exercice 4 (corrigé dans Handout-2070-1883.pdf), énoncé transposé des États des États-Unis aux départements français"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2069-1883.pdf"
---

## Statement

On dit que deux départements français sont **voisins** lorsqu'ils ont une frontière commune (pas
seulement un point). Chaque département a ainsi un certain nombre de voisins : par exemple, le
Cantal en a six.

Démontrer que le nombre de départements ayant un nombre **impair** de voisins est toujours
**pair**.

*On demande une démonstration qui marche sans regarder la carte.*

## Hints

1. Additionne, pour tous les départements à la fois, leur nombre de voisins. Que compte-t-on en
   réalité avec cette somme ?
2. Chaque frontière entre deux départements est comptée deux fois dans cette somme : une fois de
   chaque côté. La somme est donc un nombre pair.
3. Sépare maintenant cette somme en deux paquets : les départements qui ont un nombre pair de
   voisins, et ceux qui en ont un nombre impair. Que peut-on dire de chaque paquet ?

## Solution

**La somme de tous les nombres de voisins est paire.**

Faisons la liste des départements et, pour chacun, écrivons son nombre de voisins. Additionnons
tous ces nombres ; appelons $S$ le résultat.

Que compte $S$ ? Chaque fois que deux départements $X$ et $Y$ se touchent, cette frontière est
comptée une fois dans le nombre de voisins de $X$, et une fois dans celui de $Y$. Donc chaque
frontière est comptée exactement **deux** fois dans $S$. Si $f$ désigne le nombre total de
frontières entre départements, on a
$$S = 2f.$$

La somme $S$ est donc paire.

**On coupe la somme en deux.**

Séparons les départements en deux groupes :

- ceux qui ont un nombre **pair** de voisins ; notons $P$ la somme de leurs nombres de voisins ;
- ceux qui ont un nombre **impair** de voisins ; notons $I$ la somme de leurs nombres de voisins.

On a bien sûr $S = P + I$.

La somme $P$ n'additionne que des nombres pairs : elle est donc paire. Comme $S$ est paire aussi,
$$I = S - P$$
est la différence de deux nombres pairs : $I$ est paire.

**On conclut.**

Or $I$ est une somme de nombres **impairs**. Une somme d'un nombre impair de termes impairs est
impaire ; une somme d'un nombre pair de termes impairs est paire. Puisque $I$ est paire, il y a
forcément un nombre **pair** de termes dans cette somme.

Ces termes sont exactement les départements ayant un nombre impair de voisins.

**Conclusion.** Le nombre de départements ayant un nombre impair de voisins est pair.

Le raisonnement n'utilise rien de la carte de France : il vaut pour n'importe quel pays, et plus
généralement dès qu'on relie des objets deux à deux.

## Going further

Dans une soirée, certaines personnes se serrent la main. Montrer, par le même raisonnement, que
le nombre de personnes ayant serré un nombre impair de mains est pair.
