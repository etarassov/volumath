---
id: "8575"
title: "Chaque point est le milieu de deux autres"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [principe-de-lextremum, milieu, raisonnement-par-labsurde, coordonnees]
adapted_from: null
see_also: ["7232", "8834"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe du maximum et optimisation » (Hannah) du Groupe A, exercice sur les milieux"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $S$ un ensemble non vide de points du plan. On suppose que **chaque** point de $S$ est
le milieu de deux points distincts de $S$.

Démontrer que $S$ est infini.

## Hints

1. Raisonne par l'absurde : suppose $S$ fini et non vide, puis cherche un point de $S$ « au bord », qui ne peut être le milieu de rien.
2. Munis le plan d'un repère. Parmi les points de $S$, regarde d'abord ceux dont l'abscisse est la plus grande.
3. S'il y en a plusieurs, départage-les par l'ordonnée : prends, parmi eux, celui dont l'ordonnée est la plus grande. Pourquoi un tel point existe-t-il quand $S$ est fini ?
4. Si ce point est le milieu de $A$ et $B$, que peut-on dire des abscisses de $A$ et de $B$ ? Puis de leurs ordonnées ?

## Solution

Raisonnons par l'absurde : supposons $S$ fini et non vide.

### Le point du coin

Munissons le plan d'un repère. Comme $S$ est fini et non vide, on peut choisir :

- d'abord la plus grande abscisse atteinte par un point de $S$, appelons-la $x_0$ ;
- puis, parmi les points de $S$ d'abscisse $x_0$, celui dont l'ordonnée est la plus grande.

Notons $M = (x_0, y_0)$ ce point. Il a donc les deux propriétés suivantes : tout point de $S$
a une abscisse inférieure ou égale à $x_0$, et tout point de $S$ d'abscisse exactement $x_0$
a une ordonnée inférieure ou égale à $y_0$.

### $M$ ne peut être le milieu de rien

Par hypothèse, $M$ est le milieu de deux points distincts $A = (x_A, y_A)$ et
$B = (x_B, y_B)$ de $S$. Cela signifie

$$x_A + x_B = 2 x_0 \qquad \text{et} \qquad y_A + y_B = 2 y_0 .$$

**Les abscisses.** On a $x_A \leqslant x_0$ et $x_B \leqslant x_0$, donc
$x_A + x_B \leqslant 2x_0$. Comme la somme vaut exactement $2x_0$, aucune des deux
inégalités ne peut être stricte :

$$x_A = x_B = x_0 .$$

**Les ordonnées.** Les points $A$ et $B$ ont donc l'abscisse $x_0$, et par le choix de $M$
leurs ordonnées vérifient $y_A \leqslant y_0$ et $y_B \leqslant y_0$. Le même raisonnement
sur la somme $y_A + y_B = 2y_0$ donne

$$y_A = y_B = y_0 .$$

**La contradiction.** On obtient $A = B = M$, alors que $A$ et $B$ devaient être deux points
**distincts**.

### Conclusion

L'hypothèse « $S$ fini » est absurde. Un ensemble non vide dont chaque point est le milieu de
deux autres est donc infini.

## Going further

Un exemple montre qu'un tel ensemble existe : l'ensemble de tous les points à coordonnées
entières convient, car $(x, y)$ est le milieu de $(x-1, y)$ et $(x+1, y)$.
