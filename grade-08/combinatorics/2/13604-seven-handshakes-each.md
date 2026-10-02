---
id: "13604"
title: "Sept poignées de main chacun"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [parite, double-comptage, graphe]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2009 (test de sélection du stage olympique de Grésillon, 4 juin 2009)"
  reference: "2017-09_coupe_printemps_2009_3.pdf, épreuve collégiens, exercice 4 (commun aux trois épreuves) ; corrigé 2017-09_coupe_printemps_2009_corrige.pdf, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2009_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2009_3.pdf"
---

## Statement

Lors de la soirée du Nouvel An chez mes grands-parents, chaque invité a serré la main d'exactement $7$ autres invités, et a fait la bise à tous les autres.

Montrer que le nombre d'invités était pair.

## Hints

1. Les bises ne servent à rien. Concentre-toi sur les poignées de main.
2. Essaie de compter le nombre total de poignées de main échangées pendant la soirée.
3. Si chaque invité dit combien de mains il a serrées et qu'on additionne, combien de fois compte-t-on chaque poignée de main ?

## Solution

Appelons $n$ le nombre d'invités et $P$ le nombre total de poignées de main échangées dans la soirée.

**On compte les poignées de main en interrogeant chaque invité.** Chaque invité a serré $7$ mains. Si on additionne les réponses de tous les invités, on obtient $7 \times n$.

Mais dans cette somme, chaque poignée de main est comptée **deux fois** : une poignée de main relie deux personnes, et elle est comptée une fois dans la réponse de chacune des deux. Donc

$$7 \times n = 2 \times P .$$

**On conclut.** Le nombre $2P$ est pair, donc $7n$ est pair. Or $7$ est impair. Le produit de deux nombres impairs est impair, donc si $n$ était impair, $7n$ serait impair. Ainsi $n$ est pair.

**Conclusion.** Le nombre d'invités est pair. (Par exemple, avec $8$ invités qui se serrent tous la main, chacun en serre exactement $7$.)

## Going further

Le même raisonnement montre un résultat plus général : dans n'importe quel groupe, le nombre de personnes qui ont serré un nombre **impair** de mains est toujours pair. Essaie de le démontrer.
