---
id: "11225"
title: "Six sommets et douze arêtes"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [polyedre, euler, double-comptage, moyenne, espace]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (la formule d'Euler, que le corrigé utilise sans la rappeler, est donnée ici dans l'énoncé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

Un polyèdre convexe a $6$ sommets et $12$ arêtes. Montrer que toutes ses faces sont des triangles.

On admettra la **formule d'Euler** : pour un polyèdre convexe ayant $S$ sommets, $A$ arêtes et
$F$ faces, on a toujours
$$S - A + F = 2 .$$

## Hints

1. Combien ce polyèdre a-t-il de faces ?
2. Pour chaque face, compte son nombre de côtés, puis additionne ces nombres sur toutes les faces.
   Combien de fois chaque arête est-elle comptée dans ce total ?
3. Combien de côtés une face a-t-elle au minimum ?

## Solution

**Le nombre de faces.** Notons $F$ le nombre de faces. La formule d'Euler donne
$6 - 12 + F = 2$, donc $F = 8$.

**Un double comptage.** Numérotons les faces de $1$ à $8$, et notons $c_1, c_2, \ldots, c_8$ leurs
nombres de côtés. Chaque côté d'une face est une arête du polyèdre, et chaque arête est un côté
d'exactement deux faces : celles qui se touchent le long de cette arête. Quand on additionne les
nombres de côtés de toutes les faces, chaque arête est donc comptée exactement deux fois :
$$c_1 + c_2 + \cdots + c_8 = 2 \times 12 = 24 .$$

**Conclusion.** Une face est un polygone, elle a donc au moins $3$ côtés : $c_1 \geqslant 3$,
$c_2 \geqslant 3$, …, $c_8 \geqslant 3$. Si une seule face avait au moins $4$ côtés, la somme
dépasserait $8 \times 3 = 24$. Comme elle vaut exactement $24$, toutes les faces ont exactement
$3$ côtés.

**Toutes les faces de ce polyèdre sont des triangles.**

## Going further

- L'octaèdre régulier, formé de deux pyramides à base carrée collées par leur base, a bien $6$
  sommets, $12$ arêtes et $8$ faces triangulaires. Ce n'est pas le seul : en déformant un peu
  l'octaèdre, on obtient d'autres polyèdres qui conviennent.
- Le même raisonnement montre qu'un polyèdre convexe a toujours au plus $3S - 6$ arêtes. En effet,
  $2A$ est la somme des nombres de côtés des faces, qui est au moins $3F = 3(2 - S + A)$. Ici
  $3 \times 6 - 6 = 12$ : avec $6$ sommets, on a le plus grand nombre d'arêtes possible.
