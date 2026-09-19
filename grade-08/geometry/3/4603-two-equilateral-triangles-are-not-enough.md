---
id: "4603"
title: "Deux triangles équilatéraux ne suffisent pas"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [triangle equilateral, recouvrement, tiroirs, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 2 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

On découpe dans du papier deux triangles équilatéraux, tous les deux **strictement plus petits**
qu'un triangle équilatéral $ABC$ donné.

Peut-on poser ces deux morceaux de papier sur le triangle $ABC$ de façon à le recouvrir
entièrement ? Les deux morceaux ont le droit de se chevaucher et de dépasser.

## Hints

1. Recouvrir entièrement, cela veut dire recouvrir aussi les trois sommets $A$, $B$ et $C$.
2. Il y a trois sommets et seulement deux morceaux de papier. Que peut-on en déduire ?
3. Quelle est la plus grande distance entre deux points d'un triangle équilatéral de côté $c$ ?
4. Si un petit triangle recouvre à la fois $A$ et $B$, quelle longueur doit avoir son côté ?

## Solution

**La réponse est non : c'est impossible.**

Notons $c$ la longueur du côté du triangle $ABC$, et raisonnons par l'absurde en supposant que
deux triangles équilatéraux de côtés $c_1 < c$ et $c_2 < c$ recouvrent entièrement $ABC$.

**Étape 1 : trois sommets, deux morceaux.**

Les trois sommets $A$, $B$ et $C$ sont recouverts. Chacun est donc sous le premier morceau ou
sous le second. Trois sommets répartis dans deux morceaux : par le principe des tiroirs, un des
deux morceaux recouvre au moins deux de ces trois sommets.

Disons que c'est le premier morceau, de côté $c_1$, et qu'il recouvre $A$ et $B$.

**Étape 2 : deux sommets dans un petit triangle, c'est impossible.**

Dans un triangle équilatéral de côté $c_1$, deux points quelconques sont à une distance d'au
plus $c_1$ l'un de l'autre : les points les plus éloignés sont deux sommets, et un sommet est à
la distance $c_1$ des deux autres, distance que l'on ne peut pas dépasser à l'intérieur de la
figure.

Or $A$ et $B$ sont distants de $c$, puisque $ABC$ est équilatéral de côté $c$. Comme $A$ et $B$
sont tous les deux dans le premier morceau, on obtient
$$c = AB \leqslant c_1 .$$

**Étape 3 : la contradiction.**

On avait supposé $c_1 < c$, et on vient d'obtenir $c \leqslant c_1$. C'est contradictoire.

**Conclusion.** Deux triangles équilatéraux strictement plus petits que $ABC$ ne peuvent jamais
recouvrir $ABC$ entièrement, même en se chevauchant.

## Going further

Avec **trois** triangles équilatéraux plus petits, c'est au contraire possible : place-en un dans
chaque coin, assez grand pour que les trois se rejoignent au milieu. Essaie de dessiner un tel
recouvrement, par exemple avec trois triangles de côté $\frac{2c}{3}$.
