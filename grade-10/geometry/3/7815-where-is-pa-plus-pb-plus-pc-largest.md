---
id: "7815"
title: "Où la somme PA + PB + PC est-elle la plus grande ?"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [maximum, triangle rectangle, inegalite triangulaire, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, Coupe Animath du 2 juin 2015, énoncés collège, exercice 2 (la conclusion imprimée contient une coquille, voir la solution)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $A$.

Un point $P$ se promène sur le **périmètre** du triangle, c'est-à-dire sur la réunion des trois
côtés $[AB]$, $[BC]$ et $[CA]$.

Déterminer la ou les positions de $P$ pour lesquelles la somme
$$PA + PB + PC$$
est la plus grande possible.

## Hints

1. Un point du périmètre est sur un côté. Il y a donc trois cas à traiter séparément :
   $P \in [AB]$, $P \in [BC]$, $P \in [CA]$.
2. Prenons le cas $P \in [AB]$. Le point $P$ est alors **entre** $A$ et $B$. Que vaut
   $PA + PB$ ?
3. Dans ce cas, la somme $PA + PB + PC$ se simplifie énormément : il ne reste qu'un terme qui
   dépende de $P$. Où faut-il placer $P$ sur $[AB]$ pour le rendre maximal ?
4. Une fois les trois cas traités, il reste à comparer les trois maximums obtenus. Souviens-toi
   que dans un triangle rectangle, l'hypoténuse est le plus grand côté.

## Solution

Le point $P$ est sur l'un des trois côtés. On traite les trois cas, puis on compare.

**Cas 1 : $P$ est sur $[AB]$.**

Comme $P$ est entre $A$ et $B$, on a $PA + PB = AB$, qui ne dépend pas de $P$. Donc
$$PA + PB + PC = AB + PC .$$

Il ne reste qu'à rendre $PC$ maximal, avec $P$ sur le segment $[AB]$. La distance d'un point
fixe $C$ à un point $P$ qui parcourt un segment est maximale à l'une des deux extrémités du
segment : elle vaut $CA$ en $P = A$, et $CB$ en $P = B$. Comme $ABC$ est rectangle en $A$, le
côté $[BC]$ est l'hypoténuse, donc $CB > CA$.

Le maximum sur ce côté est donc atteint en $P = B$, et il vaut
$$AB + BC .$$

**Cas 2 : $P$ est sur $[BC]$.**

Cette fois $PB + PC = BC$, et
$$PA + PB + PC = BC + PA .$$

Il faut rendre $PA$ maximal avec $P$ sur $[BC]$, donc placer $P$ en $B$ ou en $C$, et comparer
$AB$ et $AC$.

**Cas 3 : $P$ est sur $[CA]$.**

Ici $PC + PA = CA$, et
$$PA + PB + PC = AC + PB .$$

Il faut rendre $PB$ maximal avec $P$ sur $[CA]$, donc placer $P$ en $A$ (ce qui donne $AB$) ou
en $C$ (ce qui donne $CB$). Comme $CB > AB$, le maximum est atteint en $P = C$ et vaut
$$AC + BC .$$

**On compare.**

Les cas 1 et 3 donnent respectivement $AB + BC$ et $AC + BC$. Le cas 2 ne donne rien de neuf :
il redonne $B$ ou $C$, déjà examinés.

Tout se joue donc sur la comparaison de $AB$ et de $AC$ :

- si $AB > AC$, le maximum est $AB + BC$, atteint **uniquement** en $P = B$ ;
- si $AC > AB$, le maximum est $AC + BC$, atteint **uniquement** en $P = C$ ;
- si $AB = AC$ (le triangle est alors rectangle isocèle), les deux valeurs coïncident et le
  maximum est atteint en $P = B$ **et** en $P = C$.

**Conclusion.** Le maximum de $PA + PB + PC$ est atteint au sommet de l'angle droit adjacent au
plus grand des deux côtés de l'angle droit : en $B$ si $AB > AC$, en $C$ si $AC > AB$, et aux
deux sommets si $AB = AC$. Sa valeur est $BC + \max(AB, AC)$.

*Coquille dans la source.* Le polycopié écrit « si $AB > AC$ alors le maximum est atteint en
$P = B$. De même, si $AC < AB$ alors le maximum est atteint en $P = C$ », ce qui répète deux
fois la même hypothèse. Le second cas est bien sûr $AC > AB$.
