---
id: "7716"
title: "Deux points de même couleur à un mètre l'un de l'autre"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [principe-des-tiroirs, triangle-equilateral, couleurs, plan]
adapted_from: null
see_also: []
same_as: ["8339"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Quelqu'un a colorié **tous** les points d'un plan, chacun en rouge ou en noir. On ne sait rien de la façon dont il s'y est pris : le coloriage peut être aussi bizarre qu'on veut.

Montrer qu'il existe forcément deux points **de la même couleur** situés à exactement $1$ mètre l'un de l'autre.

## Hints

1. Tu ne peux rien supposer sur le coloriage : il faut donc trouver un argument qui marche pour tous les coloriages à la fois.
2. Tu cherches deux points à distance $1$ mètre. Plutôt que de chercher des points au hasard, dessine une figure dont **tous** les côtés mesurent $1$ mètre.
3. Combien de sommets a la figure la plus simple de ce genre ? Et combien de couleurs sont disponibles ?

## Solution

**L'idée : il suffit de regarder un triangle équilatéral de côté $1$ mètre.**

**La construction.** Choisissons un point quelconque du plan, et construisons un triangle équilatéral dont il est un sommet et dont les côtés mesurent $1$ mètre. Appelons $A$, $B$ et $C$ ses trois sommets. Par construction,

$$AB = BC = CA = 1 \text{ m} .$$

**Le principe des tiroirs.** Chacun des trois points $A$, $B$, $C$ est colorié, soit en rouge, soit en noir. On range donc trois points dans deux tiroirs : le tiroir « rouge » et le tiroir « noir ». Comme il y a plus de points que de tiroirs, l'un des tiroirs contient au moins deux points.

Autrement dit, deux des trois points $A$, $B$, $C$ sont de la même couleur. Appelons-les $P$ et $Q$.

**On conclut.** Les points $P$ et $Q$ sont deux sommets distincts du triangle, donc $PQ$ est l'un des côtés $AB$, $BC$ ou $CA$, et cette longueur vaut $1$ mètre.

**Conclusion : $P$ et $Q$ sont de la même couleur et distants d'exactement $1$ mètre. Un tel couple existe donc toujours, quel que soit le coloriage.**

Remarque : le raisonnement ne dit pas **où** se trouvent ces deux points, ni **de quelle couleur** ils sont. Il dit seulement qu'ils existent. C'est déjà beaucoup, vu qu'on ne sait rien du coloriage.

## Going further

Le même argument marche pour n'importe quelle distance : il suffit de prendre un triangle équilatéral de côté $d$ pour trouver deux points de même couleur à distance $d$.

Avec **trois** couleurs, le triangle ne suffit plus : trois points dans trois tiroirs, cela ne force rien. Le résultat reste pourtant vrai, mais il demande une figure plus astucieuse, faite de plusieurs triangles accrochés les uns aux autres.
