---
id: "0429"
title: "Cinq nœuds du quadrillage"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [parite, quadrillage, tiroirs, milieu, coordonnees]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 3 «Принцип Дирихле», задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Sur une feuille de papier quadrillé, on appelle **nœud** un point où deux lignes du quadrillage se croisent.

On marque $5$ nœuds, où l'on veut.

Montrer que, parmi ces cinq points, on peut toujours en choisir deux dont le milieu du segment est lui aussi un nœud.

## Hints

1. Munis la feuille d'un repère : l'origine est un nœud, et l'unité est le côté d'un carreau. Quelles sont alors les coordonnées des nœuds ?
2. Prends deux nœuds $A$ et $B$. Pour aller de $A$ à $B$, on se déplace horizontalement, puis verticalement. Le milieu de $[AB]$ s'obtient en faisant la moitié de chacun de ces deux déplacements. À quelle condition tombe-t-on encore sur un nœud ?
3. Ce qui compte pour chaque nœud n'est donc pas la valeur de ses coordonnées, mais seulement leur **parité**. Combien de possibilités cela fait-il ?
4. Tu as cinq points et quatre possibilités. Principe des tiroirs.

## Solution

**Étape 1. Traduire « nœud » en nombres.**

Choisissons un repère dont l'origine est un nœud et dont l'unité, sur chaque axe, est le côté d'un carreau.

Alors les nœuds sont exactement les points dont les deux coordonnées sont des entiers.

**Étape 2. Quand le milieu de $[AB]$ est-il un nœud ?**

Prenons deux nœuds $A(x_A\,;\,y_A)$ et $B(x_B\,;\,y_B)$, avec $x_A$, $y_A$, $x_B$, $y_B$ entiers.

Pour aller de $A$ à $B$, on se décale de $x_B - x_A$ horizontalement et de $y_B - y_A$ verticalement. Le milieu $I$ de $[AB]$ s'obtient en faisant la moitié de ce trajet :

$$I\left(\frac{x_A + x_B}{2}\,;\,\frac{y_A + y_B}{2}\right)$$

Ce point est un nœud si et seulement si ses deux coordonnées sont entières, c'est-à-dire si et seulement si

$$x_A + x_B \text{ est pair} \quad \text{et} \quad y_A + y_B \text{ est pair}$$

Or une somme de deux entiers est paire exactement quand ces deux entiers ont la **même parité**. Donc :

> le milieu de $[AB]$ est un nœud si et seulement si $x_A$ et $x_B$ ont la même parité, et $y_A$ et $y_B$ ont la même parité.

**Étape 3. Classer les nœuds par parité.**

Seule la parité des coordonnées compte. Pour un nœud, il y a donc quatre cas possibles, que l'on peut voir comme quatre tiroirs :

| Tiroir | abscisse | ordonnée | exemple |
| --- | --- | --- | --- |
| 1 | paire | paire | $(4\,;\,0)$ |
| 2 | paire | impaire | $(4\,;\,7)$ |
| 3 | impaire | paire | $(3\,;\,0)$ |
| 4 | impaire | impaire | $(3\,;\,7)$ |

**Étape 4. Le principe des tiroirs.**

On range nos $5$ nœuds dans ces $4$ tiroirs. Comme $5 > 4$, un tiroir contient au moins deux de nos nœuds. Appelons-les $A$ et $B$.

Puisque $A$ et $B$ sont dans le même tiroir, leurs abscisses ont la même parité et leurs ordonnées aussi. D'après l'étape 2, le milieu de $[AB]$ est donc un nœud.

**Conclusion.** Parmi cinq nœuds quelconques, on peut toujours en trouver deux dont le milieu du segment est encore un nœud.

**Ce qu'il faut retenir.** Quand une position est repérée par des entiers, il est souvent inutile de connaître ces entiers : leur parité suffit, et elle ne laisse qu'un très petit nombre de cas.

## Going further

1. Montrer que l'énoncé est faux avec seulement $4$ nœuds : trouver quatre nœuds tels qu'aucun des six milieux ne soit un nœud.
2. Même problème dans l'espace, avec un quadrillage en trois dimensions : combien de nœuds faut-il marquer pour être sûr que deux d'entre eux ont leur milieu sur un nœud ?
3. Parmi cinq nœuds, on trouve donc un segment dont le milieu est un nœud. Peut-on toujours en trouver deux, c'est-à-dire deux paires de points différentes ?
