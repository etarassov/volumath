---
id: "0908"
title: "L'hypoténuse double d'un côté"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-rectangle, symetrie-axiale, triangle-equilateral, trente-degres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 9, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$.

Démontrer que $BC = 2 \times AC$ **si et seulement si** $\widehat{ABC} = 30^\circ$.

*« Si et seulement si » veut dire qu'il y a deux choses à démontrer : que l'angle de
$30^\circ$ entraîne l'égalité des longueurs, et que l'égalité des longueurs entraîne l'angle
de $30^\circ$.*

## Hints

1. Une longueur double, cela fait penser à un point symétrique : en repliant la figure, on
   fabrique une longueur deux fois plus grande.
2. Trace le symétrique $C'$ du point $C$ par rapport à la droite $(AB)$. Pourquoi les points
   $C$, $A$, $C'$ sont-ils alignés, et pourquoi $CC' = 2 \times AC$ ?
3. Que peut-on dire du triangle $BCC'$ ? Compare $BC$ et $BC'$, puis les angles en $B$.
4. Un triangle isocèle qui a un angle de $60^\circ$ est équilatéral. Et un triangle
   équilatéral a tous ses angles égaux à $60^\circ$.

## Solution

**La construction, la même pour les deux sens.**

Notons $C'$ le symétrique du point $C$ par rapport à la droite $(AB)$.

Comme $(AC) \perp (AB)$, la droite $(AB)$ est la médiatrice de $[CC']$ : le point $A$ est donc
le milieu de $[CC']$, et

$$CC' = 2 \times AC.$$

De plus, $B$ est sur la droite $(AB)$, donc $BC' = BC$ : le triangle $BCC'$ est isocèle en $B$.
Enfin la symétrie échange les angles $\widehat{ABC}$ et $\widehat{ABC'}$, donc

$$\widehat{CBC'} = 2 \times \widehat{ABC}.$$

**Premier sens : si $\widehat{ABC} = 30^\circ$, alors $BC = 2 \times AC$.**

Ici $\widehat{CBC'} = 2 \times 30^\circ = 60^\circ$. Le triangle $BCC'$ est isocèle en $B$ avec
un angle de $60^\circ$ au sommet : ses deux angles à la base valent alors
$(180^\circ - 60^\circ) : 2 = 60^\circ$ chacun. Tous ses angles valent $60^\circ$, il est donc
équilatéral. En particulier

$$CC' = BC, \qquad \text{c'est-à-dire} \qquad BC = 2 \times AC.$$

**Deuxième sens : si $BC = 2 \times AC$, alors $\widehat{ABC} = 30^\circ$.**

Ici $CC' = 2 \times AC = BC$. Comme on sait déjà que $BC' = BC$, les trois côtés du triangle
$BCC'$ sont égaux : il est équilatéral. Tous ses angles valent donc $60^\circ$, en particulier

$$\widehat{CBC'} = 60^\circ, \qquad \text{donc} \qquad \widehat{ABC} = \frac{60^\circ}{2} = 30^\circ.$$

**Conclusion.** Dans un triangle rectangle en $A$, l'hypoténuse $[BC]$ mesure le double du côté
$[AC]$ exactement lorsque l'angle $\widehat{ABC}$ mesure $30^\circ$.

## Going further

1. Dans un triangle rectangle en $A$ avec $\widehat{ABC} = 30^\circ$ et $AC = 1$, calculer $AB$.
2. En déduire la hauteur d'un triangle équilatéral de côté $1$.
