---
id: "0633"
title: "Un point au bout de la diagonale"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [carre, diagonale, symetrie-axiale, triangle-equilateral, calcul-dangles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 14, section « Problèmes divers », d'après E. H. Bakaev, 2017"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Soit $ABCD$ un carré. On prolonge la diagonale $[AC]$ au-delà du point $C$, et on choisit sur ce prolongement un point $K$ tel que

$$BK = AC.$$

Déterminer la mesure de l'angle $\widehat{BKC}$.

## Hints

1. Fais un dessin soigné, avec un carré assez grand. Place $K$ à la règle et au compas : il est sur la demi-droite $[AC)$ au-delà de $C$, à la distance $AC$ du point $B$.
2. La droite $(AC)$ est un axe de symétrie du carré. Quel point est l'image de $B$ dans cette symétrie ?
3. Le point $K$ est sur l'axe : la symétrie ne le bouge pas. Que peux-tu dire alors des longueurs $KB$ et $KD$ ?
4. Compare maintenant les trois longueurs $KB$, $KD$ et $BD$. Quelle sorte de triangle est $KBD$ ?
5. L'axe de symétrie coupe l'angle $\widehat{BKD}$ en deux parts égales.

## Solution

**L'idée : faire apparaître le point $D$.**

La droite $(AC)$ porte une diagonale du carré : c'est un axe de symétrie du carré, et la symétrie d'axe $(AC)$ échange les deux sommets $B$ et $D$.

Le point $K$ est situé sur la droite $(AC)$, donc il est invariant par cette symétrie. Comme une symétrie axiale conserve les longueurs, l'image du segment $[KB]$ est le segment $[KD]$, et donc

$$KD = KB.$$

**Le triangle $KBD$ est équilatéral.**

Rassemblons ce que l'on sait sur les trois côtés du triangle $KBD$ :

- $KB = AC$, c'est l'hypothèse de l'énoncé ;
- $KD = KB$, on vient de le démontrer ;
- $BD = AC$, car les deux diagonales d'un carré ont la même longueur.

Les trois côtés $KB$, $KD$ et $BD$ sont donc tous les trois égaux à $AC$ : le triangle $KBD$ est **équilatéral**. Ses angles mesurent chacun $60°$, en particulier

$$\widehat{BKD} = 60°.$$

**On coupe en deux.**

La droite $(AC)$ est aussi un axe de symétrie du triangle $KBD$, puisqu'elle passe par $K$ et échange $B$ et $D$. Elle coupe donc l'angle $\widehat{BKD}$ en deux angles égaux :

$$\widehat{BKC} = \frac{\widehat{BKD}}{2} = \frac{60°}{2} = 30°.$$

(Le point $C$ est bien sur la demi-droite issue de $K$ qui porte l'axe, entre $K$ et $A$ : c'est l'angle $\widehat{BKC}$ que l'on obtient, et non son supplémentaire.)

**Conclusion.** L'angle $\widehat{BKC}$ mesure $30°$.

**Une autre route.** Notons $O$ le centre du carré, point d'intersection des diagonales. Les diagonales d'un carré sont perpendiculaires et se coupent en leur milieu, donc le triangle $BOK$ est rectangle en $O$ et

$$BO = \frac{BD}{2} = \frac{AC}{2} = \frac{BK}{2}.$$

Dans un triangle rectangle, lorsqu'un côté de l'angle droit vaut la moitié de l'hypoténuse, l'angle opposé à ce côté mesure $30°$ : on retrouve $\widehat{BKO} = \widehat{BKC} = 30°$.

## Going further

1. Où faudrait-il placer $K$ sur le prolongement de $[AC]$ pour que l'angle $\widehat{BKC}$ mesure $45°$ ?
2. Démontre le résultat utilisé dans la deuxième méthode : dans un triangle rectangle, un côté de l'angle droit vaut la moitié de l'hypoténuse si et seulement si l'angle opposé à ce côté mesure $30°$. (Indication : accole au triangle son symétrique par rapport au côté de l'angle droit.)
3. Le carré de côté $1$ a pour diagonale $AC = \sqrt{2}$. Calcule la longueur $CK$.
