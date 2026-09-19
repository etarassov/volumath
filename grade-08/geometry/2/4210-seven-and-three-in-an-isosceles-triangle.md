---
id: "4210"
title: "Sept et trois dans un triangle isocèle"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [triangle isocele, inegalite triangulaire, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Graphs and Geometry"
  reference: "Handout-2065-1860.pdf, exercice 5 (corrigé dans Handout-2066-1860.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2065-1860.pdf"
---

## Statement

Le triangle $ABC$ est isocèle en $B$ : autrement dit $AB = BC$.

On sait que l'un des deux segments $[AB]$ et $[AC]$ mesure $7$ cm, et que l'autre mesure $3$ cm.

Lequel des deux mesure $7$ cm ? Justifier.

## Hints

1. Il n'y a que deux possibilités. Examine-les l'une après l'autre.
2. Si $AB = 3$ cm, que vaut $BC$ ? Et que vaut alors $AB + BC$ ?
3. Souviens-toi : dans un triangle, la longueur d'un côté est toujours **inférieure** à la somme
   des longueurs des deux autres.

## Solution

Il y a deux cas à examiner.

**Premier cas : $AB = 3$ cm et $AC = 7$ cm.**

Comme le triangle est isocèle en $B$, on a aussi $BC = AB = 3$ cm. Les trois côtés mesurent alors
$3$, $3$ et $7$ cm. Vérifions l'inégalité triangulaire :
$$AB + BC = 3 + 3 = 6 < 7 = AC.$$

Pour aller de $A$ à $C$ en passant par $B$, on parcourrait $6$ cm, alors que le trajet direct de
$A$ à $C$ en mesure $7$ : c'est impossible. Un tel triangle n'existe pas.

**Deuxième cas : $AB = 7$ cm et $AC = 3$ cm.**

On a alors $BC = AB = 7$ cm, et les trois côtés mesurent $7$, $7$ et $3$ cm. Cette fois chaque
côté est bien plus court que la somme des deux autres :
$$3 < 7 + 7, \qquad 7 < 7 + 3.$$

Ce triangle existe : c'est un triangle isocèle assez « pointu », avec une base courte de $3$ cm et
deux longs côtés de $7$ cm.

**Conclusion.** C'est $[AB]$ qui mesure $\mathbf{7}$ cm, et $[AC]$ qui mesure $3$ cm.

## Going further

Dans un triangle isocèle dont les deux côtés égaux mesurent $c$ et la base $b$, quelle condition
doivent vérifier $b$ et $c$ pour que le triangle existe ? (Réponse : $b < 2c$.)
