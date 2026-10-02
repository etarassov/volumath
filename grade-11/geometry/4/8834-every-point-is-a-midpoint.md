---
id: "8834"
title: "Chaque point est un milieu"
grade: 11
theme: geometry
difficulty: 4
duration_min: 30
tags: [principe-de-lextremum, milieu, raisonnement-par-l-absurde, ensemble-infini]
adapted_from: null
see_also: []
same_as: ["7725"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 1, p. 115"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $S$ un ensemble non vide de points du plan ayant la propriété suivante :

> tout point de $S$ est le milieu d'un segment dont les **deux extrémités** sont dans $S$.

Montrer que $S$ est infini.

## Hints

1. Raisonne par l'absurde : suppose $S$ fini. Un ensemble fini de points a une propriété très utile : parmi toutes les paires de points, il en existe une dont la distance est maximale.
2. Prends $A$ et $B$ dans $S$ à distance maximale. Le point $B$ est le milieu d'un segment $[CD]$ avec $C$, $D$ dans $S$. Que peux-tu dire de $AC$ et $AD$ ?
3. Il y a une manière très courte de conclure : $C$ et $D$ sont symétriques par rapport à $B$. L'un des deux est « du côté opposé à $A$ ». Compare sa distance à $A$ avec $AB$.
4. Une autre route : place un repère bien choisi et regarde le point de $S$ le plus à droite.

## Solution

### Le principe de l'extremum

Un ensemble **fini** de points admet toujours une paire de points dont la distance est maximale : il n'y a qu'un nombre fini de distances à comparer. C'est exactement ce qui va rendre l'hypothèse « $S$ fini » intenable.

### La preuve

Supposons par l'absurde que $S$ soit fini. Notons $A$ et $B$ deux points de $S$ réalisant la **plus grande distance** entre deux points de $S$. (Un segment a deux extrémités distinctes, donc $S$ contient au moins deux points.)

Par hypothèse, $B$ est le milieu d'un segment $[CD]$ avec $C$ et $D$ dans $S$. Les points $C$ et $D$ sont donc symétriques l'un de l'autre par rapport à $B$.

Traçons la droite perpendiculaire à $(AB)$ passant par $B$. Elle partage le plan en deux demi-plans : celui qui contient $A$ et l'autre.

Comme $C$ et $D$ sont symétriques par rapport à $B$, ils sont de part et d'autre de $B$ sur la droite $(CD)$. Au moins l'un des deux, disons $C$, se trouve dans le demi-plan qui **ne contient pas** $A$ (ou sur la perpendiculaire elle-même).

Notons $H$ le projeté orthogonal de $C$ sur la droite $(AB)$. Comme $C$ est du côté opposé à $A$, le point $B$ est entre $A$ et $H$, ou confondu avec $H$. Donc $AH \geqslant AB$. Le théorème de Pythagore dans le triangle $AHC$ rectangle en $H$ donne
$$AC^2 = AH^2 + HC^2 \; \geqslant \; AH^2 \; \geqslant \; AB^2 ,$$
donc $AC \geqslant AB$.

De plus $C \neq B$ (sinon $C = D = B$ et le segment $[CD]$ serait réduit à un point), donc $HC > 0$ ou $AH > AB$ ; dans les deux cas l'inégalité $AC > AB$ est stricte.

On a donc trouvé deux points de $S$, à savoir $A$ et $C$, plus éloignés que $A$ et $B$. Cela contredit le choix de $A$ et $B$.

**Conclusion.** L'hypothèse « $S$ fini » est impossible : $S$ est infini.

### Une deuxième preuve, avec des coordonnées

Supposons encore $S$ fini. Il y a un nombre fini de segments joignant deux points de $S$, donc un nombre fini de directions. On peut donc choisir un repère dans lequel aucun de ces segments n'est vertical : deux points distincts de $S$ ont alors des abscisses différentes.

Considérons le point $M$ de $S$ d'abscisse **maximale**. Il doit être le milieu de deux points de $S$, donc l'abscisse de $M$ est la moyenne de deux abscisses de points de $S$. Or toutes les autres abscisses sont strictement plus petites que celle de $M$ : leur moyenne l'est aussi. Contradiction.

## Going further

Un ensemble $S$ de points du plan est tel que tout point de $S$ est le **centre de gravité** de trois points de $S$ deux à deux distincts. Montrer que $S$ est encore infini.
