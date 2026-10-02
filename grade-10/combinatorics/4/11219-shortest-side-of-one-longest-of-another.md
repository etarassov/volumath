---
id: "11219"
title: "Le plus court côté de l'un, le plus long de l'autre"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [points, triangle, coloriage, tiroirs, disjonction-de-cas]
adapted_from: null
see_also: ["0235"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

On place $6$ points dans le plan. On suppose que, quels que soient les trois points que l'on
choisit parmi eux, ils forment un triangle dont les trois côtés ont des longueurs **différentes**.

Montrer qu'il existe un triangle dont le plus court côté est aussi le plus long côté d'un autre
triangle.

## Hints

1. Pour chacun des triangles, colorie en rouge son plus court côté. Un segment peut être colorié
   plusieurs fois, ce n'est pas gênant. Que peut-on dire de chaque triangle ?
2. Montre qu'il suffit de trouver un triangle dont les trois côtés sont rouges.
3. Choisis l'un des six points. Parmi les cinq segments qui en partent, il y en a au moins trois
   de la même sorte : rouges, ou non coloriés.
4. Dans chacun des deux cas, regarde les triangles formés par les trois autres extrémités de ces
   segments.

## Solution

Appelons $P_1, P_2, \ldots, P_6$ les six points. Pour chacun des triangles dont les sommets sont
parmi ces points, colorions en rouge son plus court côté. Un même segment peut être le plus court
côté de plusieurs triangles : il est alors colorié plusieurs fois, et reste rouge. Les segments qui
ne sont le plus court côté d'aucun triangle restent non coloriés.

On a ainsi une propriété très simple : **chaque triangle a au moins un côté rouge**, son plus court
côté.

**Étape 1. Il suffit de trouver un triangle dont les trois côtés sont rouges.**

Supposons que le triangle $T$ ait ses trois côtés rouges. Soit $[XY]$ le plus long côté de $T$. Ce
segment est rouge, donc c'est le plus court côté d'un certain triangle $T'$. Ce triangle $T'$ n'est
pas $T$, puisque dans $T$ le segment $[XY]$ est le plus long côté, et pas le plus court (les trois
côtés ont des longueurs différentes). Ainsi le plus court côté de $T'$ est aussi le plus long côté
de $T$ : c'est ce que l'on cherche.

**Étape 2. Il existe un triangle dont les trois côtés sont rouges.**

Regardons les cinq segments $[P_1P_2]$, $[P_1P_3]$, $[P_1P_4]$, $[P_1P_5]$ et $[P_1P_6]$ qui partent
de $P_1$. Chacun est rouge ou non colorié. Si au plus deux étaient rouges et au plus deux non
coloriés, il n'y en aurait que quatre. Donc au moins trois sont rouges, ou au moins trois sont non
coloriés. Quitte à renuméroter les points, on peut supposer que ce sont $[P_1P_2]$, $[P_1P_3]$ et
$[P_1P_4]$.

- **Premier cas : $[P_1P_2]$, $[P_1P_3]$ et $[P_1P_4]$ sont rouges.** Le triangle $P_2P_3P_4$ a au
  moins un côté rouge, par exemple $[P_2P_3]$. Alors le triangle $P_1P_2P_3$ a ses trois côtés
  $[P_1P_2]$, $[P_1P_3]$ et $[P_2P_3]$ rouges.
- **Second cas : $[P_1P_2]$, $[P_1P_3]$ et $[P_1P_4]$ ne sont pas coloriés.** Le triangle
  $P_1P_2P_3$ a au moins un côté rouge. Ce n'est ni $[P_1P_2]$ ni $[P_1P_3]$, donc c'est $[P_2P_3]$.
  De la même façon, en regardant les triangles $P_1P_3P_4$ et $P_1P_2P_4$, on voit que $[P_3P_4]$ et
  $[P_2P_4]$ sont rouges. Le triangle $P_2P_3P_4$ a donc ses trois côtés rouges.

Dans les deux cas, on a trouvé un triangle dont les trois côtés sont rouges.

**Conclusion : d'après l'étape 1, il existe un triangle dont le plus court côté est aussi le plus
long côté d'un autre triangle.**

## Going further

L'étape 2 ressemble beaucoup au problème classique des six personnes : parmi six personnes, il y en
a toujours trois qui se connaissent deux à deux, ou trois qui ne se connaissent pas deux à deux.
Ici, c'est même un peu plus simple, car un triangle sans côté rouge est impossible.
