---
id: "0656"
title: "Le plus court chemin de part et d'autre d'une droite"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [inegalite-triangulaire, distance, minimum]
adapted_from: null
see_also: ["7668"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 21"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

On considère une droite $(xy)$ et deux points $A$ et $B$ situés de part et d'autre de cette droite. Trouvez sur $(xy)$ un point $M$ tel que la distance $AM + MB$ soit la plus petite possible.

![La droite (xy), les points A et B de part et d'autre, et un point M de la droite](0656-figure-1.svg)

## Hints

1. Pour un point $M$ qui n'est pas sur la droite $(AB)$, les trois points $A$, $M$, $B$ forment un vrai triangle. Que dit l'inégalité triangulaire pour ce triangle ?
2. La quantité $AM + MB$ ne peut donc jamais descendre en dessous d'une certaine valeur. Laquelle ?
3. Reste à trouver un point $M$ de la droite pour lequel cette valeur est atteinte. Où le segment $[AB]$ rencontre-t-il la droite $(xy)$ ?

## Solution

Comme $A$ et $B$ sont de part et d'autre de la droite $(xy)$, le segment $[AB]$ traverse cette droite : notons $M_0$ leur point d'intersection. C'est ce point qui répond à la question.

**Aucun point ne fait mieux que $AB$.** Soit $M$ un point quelconque de la droite $(xy)$.

- Si $M$ n'appartient pas au segment $[AB]$, les points $A$, $M$, $B$ forment un vrai triangle, et l'inégalité triangulaire donne

$$AM + MB > AB.$$

- Si $M$ appartient au segment $[AB]$, alors $AM + MB = AB$ : le chemin passant par $M$ est le segment $[AB]$ lui-même.

Dans tous les cas $AM + MB \geqslant AB$.

**Le point $M_0$ atteint cette valeur.** Comme $M_0$ est sur le segment $[AB]$, on a $AM_0 + M_0B = AB$.

De plus $M_0$ est le seul point de $(xy)$ situé sur le segment $[AB]$ : une droite et un segment qui n'est pas porté par elle se coupent au plus une fois. Tout autre point $M$ de $(xy)$ donne donc $AM + MB > AB$.

**Le point cherché est le point d'intersection du segment $[AB]$ avec la droite $(xy)$, et la plus petite valeur de $AM + MB$ est $AB$.** Autrement dit, le plus court chemin de $A$ à $B$ en passant par la droite est tout simplement la ligne droite.

## Going further

Si $A$ et $B$ étaient du même côté de la droite, la ligne droite ne rencontrerait plus $(xy)$ et la réponse changerait complètement : il faudrait d'abord remplacer $B$ par son symétrique $B'$ par rapport à $(xy)$, puis prendre l'intersection de $[AB']$ avec la droite. C'est le célèbre problème du rayon lumineux qui se réfléchit sur un miroir.
