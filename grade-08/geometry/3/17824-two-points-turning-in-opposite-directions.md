---
id: "17824"
title: "Deux points qui tournent en sens contraire"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [lieu-geometrique, cercles-tangents, symetrie-axiale, translation, droite-des-milieux, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mercredi matin (Vincent Jugé), exercice 3 (Olympiade mathématique lusophone 2011, problème 5), p.62 ; solution p.62-63"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Deux cercles $\mathcal{C}_1$ et $\mathcal{C}_2$, de centres $O_1$ et $O_2$ et de rayon $1$, se touchent en un point $T$, l'un à l'extérieur de l'autre. Soit $S$ le point de $\mathcal{C}_2$ diamétralement opposé à $T$.

- Un point $A$ part de $T$ et se déplace sur le cercle $\mathcal{C}_1$ dans le sens des aiguilles d'une montre.
- En même temps, un point $B$ part de $S$ et se déplace sur le cercle $\mathcal{C}_2$, à la même vitesse que $A$, dans le sens inverse des aiguilles d'une montre.

Quel chemin parcourt le milieu $M$ du segment $[AB]$ ?

## Hints

1. Faites plusieurs figures, pour plusieurs positions de $A$, et placez à chaque fois le milieu de $[AB]$. Que remarquez-vous ?
2. Soit $A'$ le symétrique de $A$ par rapport à la droite $(O_1O_2)$. Dans quel sens et de combien $A'$ a-t-il tourné depuis $T$ ?
3. Comparez la position de $A'$ sur $\mathcal{C}_1$ avec celle de $B$ sur $\mathcal{C}_2$ : on passe de l'une à l'autre en faisant glisser toute la figure.
4. Soit $H$ le milieu de $[AA']$. Dans le triangle $AA'B$, que dit le théorème des milieux ?

## Solution

Plaçons $O_1$ à gauche et $O_2$ à droite. Le point de contact $T$ est sur la droite $(O_1O_2)$, entre les deux centres, avec $O_1T = TO_2 = 1$, et $S$ est sur cette droite, à droite de $O_2$. Notons $P$ le point de $\mathcal{C}_1$ diamétralement opposé à $T$.

Les deux cercles ont le même rayon et les deux points vont à la même vitesse. À chaque instant, ils ont donc parcouru des arcs de même longueur, donc ils ont tourné du même angle, $A$ autour de $O_1$ et $B$ autour de $O_2$.

**Étape 1 : le symétrique de $A$.** Soit $A'$ le symétrique de $A$ par rapport à la droite $(O_1O_2)$. Cette symétrie laisse fixes $O_1$ et $T$ et change le sens de rotation. Le point $A'$ est donc sur $\mathcal{C}_1$, et il s'obtient en partant de $T$ et en tournant autour de $O_1$, du même angle que $A$, mais dans le sens inverse des aiguilles d'une montre.

**Étape 2 : de $A'$ à $B$.** Faisons glisser le cercle $\mathcal{C}_1$ vers la droite, d'une longueur $2$, parallèlement à $(O_1O_2)$. C'est la translation qui envoie $O_1$ sur $O_2$. Elle envoie le cercle $\mathcal{C}_1$ sur le cercle $\mathcal{C}_2$ et le point $T$ sur le point $S$, sans rien faire tourner. Le point $A'$, qui a tourné d'un certain angle depuis $T$ dans le sens inverse des aiguilles d'une montre, est donc envoyé sur le point de $\mathcal{C}_2$ qui a tourné du même angle depuis $S$, dans le même sens : c'est $B$. Ainsi le segment $[A'B]$ est parallèle à $(O_1O_2)$, dirigé de gauche à droite, et

$$A'B = O_1O_2 = 2 .$$

**Étape 3 : le milieu.** Soit $H$ le milieu de $[AA']$. Comme $A'$ est le symétrique de $A$, le point $H$ est sur la droite $(O_1O_2)$ et c'est le pied de la perpendiculaire menée de $A$ à cette droite. (Si $A$ est sur la droite, alors $A' = A = H$.)

Dans le triangle $AA'B$, le segment $[HM]$ joint les milieux de deux côtés. D'après le théorème des milieux, il est parallèle au troisième côté $[A'B]$ et mesure sa moitié. Donc $M$ est sur la droite $(O_1O_2)$, à droite de $H$, avec

$$HM = \frac{A'B}{2} = 1 .$$

(Si $A' = A$, alors $H = A$ et $M$ est le milieu de $[AB]$ avec $AB = 2$ : le résultat est le même.)

**Étape 4 : le chemin.** Quand $A$ fait le tour de $\mathcal{C}_1$, le point $H$, pied de la perpendiculaire, parcourt le diamètre $[PT]$ : il va de $T$ à $P$ pendant le premier demi-tour, puis revient de $P$ à $T$. Le point $M$ est toujours à la distance $1$ à droite de $H$. Or le point à droite de $T$ à la distance $1$ est $O_2$, et le point à droite de $P$ à la distance $1$ est $O_1$.

**Conclusion : le milieu $M$ parcourt le segment $[O_1O_2]$.** Il part de $O_2$, arrive en $O_1$ quand $A$ a fait un demi-tour, puis revient en $O_2$, et ainsi de suite.

## Going further

Avec des coordonnées, c'est immédiat. Prenons $T$ pour origine et $(O_1O_2)$ pour axe des abscisses. Si les deux points ont tourné d'un angle $t$, alors $A = (-1 + \cos t\,;\, -\sin t)$ et $B = (1 + \cos t\,;\, \sin t)$, donc $M = (\cos t\,;\, 0)$. On voit en plus que $M$ va et vient sur le segment, comme la projection d'un point qui tourne sur un cercle : plus vite au milieu, plus lentement aux extrémités.
