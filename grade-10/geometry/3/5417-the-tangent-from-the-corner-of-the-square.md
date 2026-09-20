---
id: "5417"
title: "La tangente issue du coin du carré"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [carre, demi-cercle, tangente, pythagore, longueur]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « Get In Shape », problème 1"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

$ABCD$ est un carré de côté $2$. À l'intérieur du carré, on trace le demi-cercle de diamètre $[AB]$.

Depuis le sommet $C$, on trace la tangente à ce demi-cercle, autre que la droite $(BC)$ qui le touche déjà en $B$. Cette tangente coupe le côté $[AD]$ en un point $E$.

![Le carré ABCD, le demi-cercle de diamètre [AB] et la tangente issue de C qui coupe [AD] en E](5417-figure-1.svg)

Calculer la longueur $CE$.

## Hints

1. Notez $O$ le centre du demi-cercle : c'est le milieu de $[AB]$. Quelle est la position de la droite $(AD)$ par rapport au demi-cercle ?
2. Une droite qui passe par un point du cercle et qui est perpendiculaire au rayon en ce point est tangente au cercle. Regardez $(AD)$ en $A$, et $(BC)$ en $B$.
3. Depuis un point extérieur, les deux segments tangents à un cercle ont la même longueur. Démontrez-le avec le théorème de Pythagore, dans le triangle formé par le point, le centre et le point de contact.
4. Notez $T$ le point où la tangente issue de $C$ touche le demi-cercle. Découpez $[CE]$ en $[ET]$ et $[TC]$.
5. Posez $x = AE$. Exprimez $CE$ en fonction de $x$, puis trouvez une deuxième expression de $CE$ dans le triangle rectangle $CDE$.

## Solution

### Deux côtés du carré sont déjà tangents

Notons $O$ le milieu de $[AB]$ : c'est le centre du demi-cercle, et son rayon vaut $1$.

Le segment $[OA]$ est porté par la droite $(AB)$. Comme $ABCD$ est un carré, $(AD) \perp (AB)$, donc $(AD) \perp (OA)$. La droite $(AD)$ passe par le point $A$ du cercle et y est perpendiculaire au rayon : elle est donc **tangente** au cercle en $A$.

Pour la même raison, $(BC)$ est tangente au cercle en $B$.

### Les deux tangentes issues d'un même point ont la même longueur

Soit $P$ un point extérieur au cercle et $T$ un point de contact d'une tangente issue de $P$. Le rayon $[OT]$ est perpendiculaire à la tangente, donc le triangle $OTP$ est rectangle en $T$, et le théorème de Pythagore donne

$$PT^2 = PO^2 - OT^2 = PO^2 - 1 .$$

Cette longueur ne dépend que de $P$ : les deux tangentes issues de $P$ touchent donc le cercle à la même distance de $P$.

### Découpage de $[CE]$

Notons $T$ le point où la tangente issue de $C$ touche le demi-cercle. Le point $T$ est sur le segment $[CE]$, et

- $E$ est le point d'intersection de deux tangentes, celle qui touche en $A$ et celle qui touche en $T$ : donc $ET = EA$ ;
- $C$ est le point d'intersection de deux tangentes, celle qui touche en $B$ et celle qui touche en $T$ : donc $CT = CB = 2$.

Par conséquent

$$CE = ET + TC = EA + 2 .$$

### L'équation

Posons $x = AE$. Alors $CE = x + 2$, et comme $E$ est sur le côté $[AD]$ de longueur $2$,

$$DE = 2 - x .$$

Le triangle $CDE$ est rectangle en $D$, avec $DC = 2$ et $DE = 2 - x$. Le théorème de Pythagore donne

$$CE^2 = DC^2 + DE^2, \qquad \text{c'est-à-dire} \qquad (x+2)^2 = 2^2 + (2-x)^2 .$$

Développons les deux membres :

$$x^2 + 4x + 4 = 4 + 4 - 4x + x^2 .$$

Les termes $x^2$ disparaissent :

$$4x + 4 = 8 - 4x, \qquad 8x = 4, \qquad x = \frac{1}{2} .$$

### Conclusion

$$CE = x + 2 = \frac{1}{2} + 2 = \frac{5}{2} = \text{2,5} .$$

Au passage, $AE = \text{0,5}$ : le point $E$ est bien sur le côté $[AD]$, au quart de sa longueur à partir de $A$.

**Ce qu'il faut retenir.** L'idée n'est pas de calculer la position du point de contact, ce qui serait pénible, mais de remarquer que les deux côtés $[AD]$ et $[BC]$ du carré sont eux-mêmes tangents au demi-cercle. La longueur cherchée se découpe alors en deux morceaux que l'on sait nommer.

## Going further

1. Le triangle $CDE$ a pour côtés $\text{1,5}$, $2$ et $\text{2,5}$. Que remarquez-vous ?
2. Reprenez le problème avec un carré de côté $a$. Que vaut $CE$ ?
3. Placez la figure dans un repère d'origine $A$, écrivez l'équation de la droite $(CE)$, et retrouvez ainsi le point de contact $T$. À quelle hauteur au-dessus de $[AB]$ se trouve-t-il ?
