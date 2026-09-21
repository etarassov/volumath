---
id: "7840"
title: "Chaque point est le milieu de deux autres"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [principe de l extremum, milieu, distance maximale, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $E$ un ensemble **non vide** de points du plan possédant la propriété suivante :

> tout point de $E$ est le milieu d'un segment dont les deux extrémités sont, elles aussi,
> des points de $E$ (différents de lui).

Montrer que $E$ contient une infinité de points.

## Hints

1. Raisonne par l'absurde : suppose $E$ fini (et non vide).
2. Si $E$ est fini, il n'y a qu'un nombre fini de couples de points de $E$, donc un nombre fini
   de distances. L'une d'elles est la plus grande : appelle $A$ et $B$ deux points de $E$
   réalisant cette distance maximale.
3. Applique la propriété au point $B$ : il est le milieu de $[CD]$ pour deux points $C$ et $D$
   de $E$. Regarde les deux angles $\widehat{ABC}$ et $\widehat{ABD}$ : que vaut leur somme ?
4. Dans un triangle, le plus grand côté est opposé au plus grand angle. Si un angle vaut au
   moins $90^\circ$, quel est le plus grand côté ?

## Solution

**Étape 1 : on suppose $E$ fini.**

Raisonnons par l'absurde : supposons que $E$ soit fini. Comme il est non vide, et que chacun de
ses points est le milieu de deux autres, $E$ contient au moins trois points.

Il n'y a alors qu'un nombre fini de couples de points de $E$, donc un nombre fini de distances.
D'après le principe de l'extremum, l'une d'elles est la plus grande. Soient $A$ et $B$ deux
points de $E$ tels que $AB$ soit cette distance maximale :
$$AB \geq PQ \quad \text{pour tous points } P, Q \text{ de } E . \qquad (\star)$$

**Étape 2 : on applique la propriété au point $B$.**

Par hypothèse, $B$ est le milieu d'un segment $[CD]$ avec $C$ et $D$ dans $E$, tous deux
différents de $B$.

Les points $C$, $B$, $D$ sont donc alignés dans cet ordre, avec $B$ strictement entre $C$ et $D$.
Les demi-droites $[BC)$ et $[BD)$ sont opposées, donc les angles $\widehat{ABC}$ et
$\widehat{ABD}$ sont supplémentaires :
$$\widehat{ABC} + \widehat{ABD} = 180^\circ .$$

**Étape 3 : l'un des deux angles est au moins droit.**

Deux angles de somme $180^\circ$ ne peuvent pas être tous les deux strictement inférieurs à
$90^\circ$. L'un des deux vaut donc au moins $90^\circ$. Quitte à échanger les noms de $C$ et
$D$, supposons
$$\widehat{ABC} \geq 90^\circ .$$

*(Remarquons au passage que $A$ n'est pas sur la droite $(CD)$ : s'il y était, l'un des deux
angles vaudrait $180^\circ$ et l'autre $0^\circ$, et le raisonnement qui suit fonctionne encore,
en donnant même directement $AC > AB$ ou $AD > AB$.)*

**Étape 4 : le côté opposé est le plus long.**

Dans le triangle $ABC$, l'angle en $B$ est le plus grand des trois (les trois angles ont pour
somme $180^\circ$, donc les deux autres sont strictement aigus). Or, dans un triangle, au plus
grand angle est opposé le plus grand côté. Le côté opposé à l'angle en $B$ est $[AC]$, donc
$$AC > AB .$$

**Étape 5 : la contradiction.**

Les points $A$ et $C$ appartiennent tous les deux à $E$, et $AC > AB$. Cela contredit la
maximalité $(\star)$ de la distance $AB$.

**Conclusion.** L'hypothèse « $E$ est fini » est absurde : un ensemble non vide de points du
plan dont chaque point est le milieu de deux autres est nécessairement **infini**.

*Un exemple d'un tel ensemble.* L'ensemble de tous les points à coordonnées entières convient :
le point $(x, y)$ est le milieu de $(x-1, y)$ et $(x+1, y)$. Il est bien infini.
