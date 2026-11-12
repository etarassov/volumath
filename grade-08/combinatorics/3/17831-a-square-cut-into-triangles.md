---
id: "17831"
title: "Un carré découpé en triangles"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, triangulation, somme-des-angles, carre]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercice 9, p.69 ; solution p.69"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

On marque $1004$ points dans un carré : ses $4$ sommets et $1000$ points à l'intérieur. Trois de ces points ne sont jamais alignés.

On trace des segments entre certains de ces points, sans qu'ils se croisent, de façon à découper le carré en triangles. Chaque triangle a pour sommets trois des points marqués, et chacun des $1004$ points est un sommet de certains triangles (aucun point n'est à l'intérieur d'un triangle).

Combien y a-t-il de triangles ? Combien de segments, en comptant les quatre côtés du carré ?

## Hints

1. Faites un dessin avec seulement $1$ ou $2$ points à l'intérieur du carré, et comptez.
2. Soit $T$ le nombre de triangles. Calculez de deux façons la somme de tous les angles de tous les triangles.
3. Autour d'un point intérieur, que vaut la somme des angles des triangles qui ont ce point pour sommet ? Et aux quatre sommets du carré ?
4. Pour les segments, comptez de deux façons les côtés de tous les triangles. Combien de triangles touchent un segment intérieur ? Un côté du carré ?

## Solution

Notons $T$ le nombre de triangles et $A$ le nombre de segments tracés, en comptant les quatre côtés du carré.

Comme trois points ne sont jamais alignés, aucun point intérieur n'est sur un côté du carré, et aucun point n'est au milieu d'un côté d'un triangle.

**Le nombre de triangles.** Calculons de deux façons la somme $s$ de tous les angles de tous les triangles.

- Triangle par triangle : chaque triangle apporte $180^\circ$, donc $s = 180^\circ \times T$.
- Point par point : chaque angle d'un triangle est placé en l'un des points marqués. Autour d'un point intérieur, les triangles qui ont ce point pour sommet font le tour complet, sans trou ni chevauchement : leurs angles en ce point font $360^\circ$. Aux quatre sommets du carré, les angles des triangles remplissent l'angle droit du carré : $4 \times 90^\circ = 360^\circ$ en tout. Donc

$$s = 1000 \times 360^\circ + 360^\circ = 1001 \times 360^\circ .$$

On en déduit $180 \times T = 1001 \times 360$, donc $T = 2 \times 1001 = 2\,002$.

**Le nombre de segments.** Comptons de deux façons les côtés de tous les triangles.

- Triangle par triangle : $3T = 6\,006$.
- Segment par segment : un côté du carré est un côté d'un seul triangle, car de l'autre côté il n'y a rien. Un segment intérieur sépare deux triangles, il est donc côté de deux triangles. Cela fait $4 \times 1 + (A - 4) \times 2 = 2A - 4$.

Donc $2A - 4 = 6\,006$, et $A = 3\,005$.

**Conclusion : il y a $2\,002$ triangles et $3\,005$ segments.**

## Going further

Avec $n$ points à l'intérieur du carré au lieu de $1000$, le même raisonnement donne $T = 2n + 2$ triangles et $A = 3n + 5$ segments. Le résultat ne dépend pas de la façon de tracer les segments.

Si l'on compte les $n + 4$ points, les $A$ segments et les $T$ triangles plus la région extérieure au carré, on trouve $(n + 4) - (3n + 5) + (2n + 3) = 2$ : c'est la formule d'Euler.
