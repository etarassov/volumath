---
id: "8227"
title: "Un point de la diagonale et ses deux distances"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [parallelogramme, aires, diagonale, distances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, TD (Lucie Wang, Martin Rakovsky, Mathieu Barré), exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

$ABCD$ est un parallélogramme et $M$ est un point de la diagonale $[AC]$.

Depuis $M$, on trace la perpendiculaire à $(AB)$ : elle coupe $(AB)$ en $E$. On trace aussi la perpendiculaire à $(AD)$ : elle coupe $(AD)$ en $F$.

![Le parallélogramme ABCD, le point M sur la diagonale [AC] et ses projetés E sur (AB) et F sur (AD)](8227-figure-1.svg)

Démontrer que

$$\frac{ME}{MF} = \frac{AD}{AB} .$$

## Hints

1. $ME$ et $MF$ sont des **distances d'un point à une droite**. Où rencontre-t-on ces distances ailleurs qu'en géométrie des perpendiculaires ? Dans les formules d'aire.
2. Exprime l'aire du triangle $ABM$ en prenant $[AB]$ pour base. Puis l'aire du triangle $ADM$ en prenant $[AD]$ pour base.
3. Il suffirait maintenant que ces deux aires soient **égales**. Le sont-elles ? C'est là qu'il faut utiliser que $M$ est sur la diagonale.
4. Les triangles $ABM$ et $ADM$ ont un côté commun : $[AM]$. Prends-le pour base des deux. Que faut-il alors comparer ?
5. Dans un parallélogramme, la diagonale $(AC)$ passe par le centre de symétrie de la figure. Que dit cela sur les positions de $B$ et de $D$ par rapport à la droite $(AC)$ ?

## Solution

**L'idée : traduire les distances en aires.**

Notons $[\,XYZ\,]$ l'aire d'un triangle.

Le segment $[ME]$ est perpendiculaire à $(AB)$, donc $ME$ est exactement la distance du point $M$ à la droite $(AB)$, c'est-à-dire la hauteur du triangle $ABM$ relative à la base $[AB]$ :

$$[\,ABM\,] = \frac{1}{2} \times AB \times ME . \qquad (1)$$

De même, $MF$ est la distance de $M$ à la droite $(AD)$, donc

$$[\,ADM\,] = \frac{1}{2} \times AD \times MF . \qquad (2)$$

**Les deux aires sont égales.**

C'est ici que sert l'hypothèse « $M$ est sur la diagonale $[AC]$ ».

Prenons cette fois $[AM]$ comme base commune des deux triangles $ABM$ et $ADM$. La hauteur correspondante est, pour le premier, la distance de $B$ à la droite $(AM) = (AC)$, et pour le second, la distance de $D$ à cette même droite.

Or, dans un parallélogramme, les diagonales se coupent en leur milieu. Notons $O$ ce point commun : $O$ est le milieu de $[BD]$, et $O$ appartient à la droite $(AC)$.

Les points $B$ et $D$ sont donc symétriques l'un de l'autre par rapport à un point de la droite $(AC)$. Une symétrie centrale conserve les distances et transforme la droite $(AC)$ en une droite parallèle passant par le centre, donc en elle-même. Par conséquent $B$ et $D$ sont **à la même distance de la droite $(AC)$**.

Les triangles $ABM$ et $ADM$ ont donc la même base $[AM]$ et la même hauteur :

$$[\,ABM\,] = [\,ADM\,] . \qquad (3)$$

**Conclusion.**

En combinant $(1)$, $(2)$ et $(3)$ :

$$\frac{1}{2} \times AB \times ME = \frac{1}{2} \times AD \times MF ,$$

d'où, en simplifiant par $\tfrac12$ et en divisant par $AB \times MF$ (qui est non nul) :

$$\boxed{\frac{ME}{MF} = \frac{AD}{AB} .}$$

**Remarque.** Le rapport $\dfrac{ME}{MF}$ ne dépend donc **pas** de la position de $M$ sur la diagonale : il reste le même quand $M$ se promène de $A$ à $C$. Les deux distances $ME$ et $MF$ grandissent ensemble, exactement en proportion des deux côtés du parallélogramme.

Ce n'est plus vrai pour un point $M$ qui ne serait pas sur la diagonale : l'énoncé est bien une propriété de la diagonale.

## Going further

Soit $M$ un point à l'intérieur d'un parallélogramme $ABCD$, pas forcément sur une diagonale. Montrer que
$$AB \times \operatorname{dist}(M, (AB)) + AD \times \operatorname{dist}(M, (AD))$$
ne dépend pas de $M$, et dire ce qu'il vaut.
