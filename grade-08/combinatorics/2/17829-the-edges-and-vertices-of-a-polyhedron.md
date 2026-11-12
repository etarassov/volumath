---
id: "17829"
title: "Les arêtes et les sommets d'un polyèdre"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [double-comptage, polyedre, euler]
adapted_from: null
see_also: ["5612", "11225"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercices 5 et 6, p.68-69, réunis ici en un seul exercice ; solutions p.68-69. La source ne précise pas que le polyèdre est convexe, ce qu'il faut pour appliquer la formule d'Euler."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Un polyèdre est un solide limité par des faces planes en forme de polygones. Chaque arête est commune à exactement deux faces.

On admet la **formule d'Euler** : un polyèdre convexe qui a $S$ sommets, $A$ arêtes et $F$ faces vérifie

$$S - A + F = 2 .$$

1. Un polyèdre convexe a $20$ faces, qui sont toutes des triangles. Combien a-t-il d'arêtes ? Combien de sommets ?
2. Mêmes questions pour un polyèdre convexe qui a $12$ faces, toutes des pentagones.

## Hints

1. Comptez les côtés de toutes les faces, face par face. Combien de fois chaque arête du polyèdre est-elle comptée ?
2. Une fois le nombre d'arêtes connu, la formule d'Euler donne le nombre de sommets.

## Solution

**1. Vingt faces triangulaires.** Comptons tous les côtés de toutes les faces. Chaque face a $3$ côtés, cela fait $20 \times 3 = 60$ côtés en tout. Mais chaque arête du polyèdre est commune à deux faces : elle a été comptée deux fois, une fois pour chacune de ses deux faces. Donc

$$2A = 60, \qquad A = 30 .$$

La formule d'Euler donne alors $S = 2 + A - F = 2 + 30 - 20 = 12$.

**Le polyèdre a $30$ arêtes et $12$ sommets.**

**2. Douze faces pentagonales.** Le même compte donne $12 \times 5 = 60$ côtés, donc $2A = 60$ et $A = 30$. Puis $S = 2 + 30 - 12 = 20$.

**Le polyèdre a $30$ arêtes et $20$ sommets.**

## Going further

L'icosaèdre régulier (question 1) et le dodécaèdre régulier (question 2) sont des exemples de tels polyèdres. On remarque que les nombres s'échangent : $20$ faces et $12$ sommets d'un côté, $12$ faces et $20$ sommets de l'autre. Ce n'est pas un hasard : en plaçant un point au centre de chaque face de l'un, et en reliant les centres de deux faces voisines, on obtient l'autre.

Faites le même calcul pour un polyèdre convexe à $n$ faces triangulaires. Montrez que $n$ est forcément pair.
