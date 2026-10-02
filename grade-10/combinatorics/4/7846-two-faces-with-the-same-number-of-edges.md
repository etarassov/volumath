---
id: "7846"
title: "Deux faces avec le même nombre d'arêtes"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, polyedre, convexite, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mercredi 19 matin (Clara Ding), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Un polyèdre est dit **convexe** lorsqu'il n'a aucun renfoncement : plus précisément, lorsque
pour tout couple de points du solide, le segment qui les relie est entièrement contenu dans le
solide. Un cube, une pyramide, un dodécaèdre sont convexes.

Montrer qu'un polyèdre convexe possède toujours deux faces ayant le même nombre d'arêtes.

## Hints

1. C'est un problème de tiroirs. Les objets sont les faces ; les tiroirs sont les nombres
   d'arêtes possibles. Il faut donc compter les faces et compter les valeurs possibles.
2. Une face est un polygone, donc elle a au moins $3$ arêtes. Appelle $m$ le plus grand nombre
   d'arêtes d'une face. Combien de valeurs le nombre d'arêtes d'une face peut-il prendre ?
3. Il faut maintenant montrer que le polyèdre a beaucoup de faces. Regarde la face $F$ qui a
   $m$ arêtes : chacune de ses arêtes est partagée avec une autre face.
4. Pourquoi ces faces voisines sont-elles toutes différentes les unes des autres ? C'est là
   qu'intervient la convexité.

## Solution

**Étape 1 : les tiroirs.**

Chaque face d'un polyèdre est un polygone, donc possède au moins $3$ arêtes. Notons $m$ le plus
grand nombre d'arêtes d'une face du polyèdre (il existe, car il n'y a qu'un nombre fini de
faces).

Le nombre d'arêtes d'une face est donc un entier compris entre $3$ et $m$. Cela fait
$$m - 3 + 1 = m - 2$$
valeurs possibles : ce seront nos tiroirs.

**Étape 2 : les objets, c'est-à-dire les faces.**

Soit $F$ une face ayant $m$ arêtes. Chacune de ces $m$ arêtes est partagée entre $F$ et une
autre face du polyèdre. Notons $F_1, \ldots, F_m$ ces faces voisines.

*Ces $m$ faces sont deux à deux distinctes.* Dans un polyèdre convexe, deux faces distinctes se
rencontrent le long d'au plus une arête : si deux faces partageaient deux arêtes différentes,
le solide se replierait sur lui-même et le segment joignant deux points bien choisis sortirait
du solide. Donc chaque $F_i$ ne peut être voisine de $F$ que par une seule arête, et les $m$
voisines sont différentes.

*Elles sont aussi différentes de $F$.* Une face n'est pas sa propre voisine.

Le polyèdre a donc au moins
$$m + 1$$
faces : la face $F$ et ses $m$ voisines.

**Étape 3 : le principe des tiroirs.**

On range les faces (au moins $m+1$) dans les tiroirs (au plus $m-2$). Or
$$m + 1 > m - 2 .$$

Il y a donc strictement plus de faces que de tiroirs : au moins deux faces tombent dans le même
tiroir, c'est-à-dire ont le même nombre d'arêtes.

**Conclusion.** Tout polyèdre convexe possède deux faces ayant le même nombre d'arêtes.

*Exemples.* Le cube a six faces à quatre arêtes : c'est frappant. Une pyramide à base carrée a
une face à quatre arêtes et quatre faces triangulaires. Un prisme à base triangulaire a deux
triangles et trois rectangles. Dans tous les cas, impossible d'y couper.
