---
id: "0731"
title: "Les ailes de chauve-souris"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, rectangle, triangle, thales, symetrie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 6, d'après AMC 2016"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

Le rectangle $DEFA$ de la figure suivante a pour côtés $DA = 3$ et $DE = 4$. Les points $C$ et $B$ sont sur le côté $[DA]$ et le partagent en trois morceaux égaux : $DC = CB = BA = 1$.

Les deux triangles noirs sont dessinés en joignant $C$ à $E$ et à $F$, et $B$ à $E$ et à $F$.

![Le rectangle DEFA avec deux triangles noirs qui se croisent, en forme d'ailes de chauve-souris](0731-figure-1.svg)

Quelle est l'aire de la figure noire en forme d'ailes de chauve-souris ?

## Hints

1. Les deux ailes sont deux triangles qui se touchent en un seul point : celui où les segments $[CF]$ et $[BE]$ se croisent. Appelle-le $Z$.
2. Pour calculer l'aire de l'aile de gauche, le triangle $CEZ$, il faut savoir où se trouve $Z$. La figure est symétrique : par rapport à quelle droite ?
3. Cette symétrie échange $C$ et $B$, ainsi que $E$ et $F$, donc elle échange les segments $[CF]$ et $[BE]$. Le point $Z$ est donc sur l'axe de symétrie : sa distance à $(DE)$ vaut $\text{1,5}$.
4. Pour la hauteur de $Z$, applique le théorème de Thalès dans le triangle rectangle formé par $B$, $E$ et le coin situé juste sous $B$.
5. Une fois $Z$ connu, remarque que le segment $[CZ]$ partage le triangle $CEB$ en deux morceaux : le triangle $CEZ$ et le triangle $CZB$. Ces deux-là ont la même base $[CB]$.

## Solution

**On nomme le point de croisement.**

Les deux ailes sont les triangles $CEZ$ et $BFZ$, où $Z$ est le point où les segments $[CF]$ et $[BE]$ se croisent. Tout revient à savoir où se trouve $Z$.

**Où est $Z$ horizontalement.**

La figure est symétrique par rapport à la droite verticale qui passe par le milieu de $[DA]$ : cette symétrie échange $D$ et $A$, $E$ et $F$, et aussi $C$ et $B$, puisque $DC = BA = 1$. Elle échange donc le segment $[CF]$ et le segment $[BE]$, et par conséquent elle laisse leur point de croisement à sa place. Autrement dit, $Z$ est sur l'axe de symétrie : sa distance au côté $[DE]$ vaut

$$\frac{3}{2} = \text{1,5} .$$

**À quelle hauteur est $Z$.**

Appelons $K$ le point du côté $[EF]$ situé juste sous $B$, et $L$ le point de $[EF]$ situé juste sous $Z$. Le triangle $EKB$ est rectangle en $K$, avec

$$EK = 2 \quad \text{(distance de $E$ à $B$ à l'horizontale)} \qquad \text{et} \qquad KB = 4 .$$

Le point $Z$ est sur le côté $[EB]$ de ce triangle, et la droite $(ZL)$ est parallèle à $(KB)$, puisque toutes deux sont verticales. Le théorème de Thalès donne alors

$$\frac{ZL}{KB} = \frac{EL}{EK} = \frac{\text{1,5}}{2} = \frac{3}{4} ,$$

donc

$$ZL = \frac{3}{4} \times 4 = 3 .$$

Le point $Z$ est donc à la hauteur $3$ au-dessus de $[EF]$, c'est-à-dire à la distance $4 - 3 = 1$ du côté $[DA]$.

**L'aire d'une aile.**

Le point $Z$ est sur le segment $[EB]$, donc le segment $[CZ]$ partage le triangle $CEB$ en deux : le triangle $CEZ$, qui est l'aile, et le triangle $CZB$.

Ces deux triangles ont tous les deux pour base $[CB]$, de longueur $1$, portée par la droite $(DA)$ :

- le triangle $CEB$ a pour sommet $E$, qui est à la distance $4$ de $(DA)$, donc son aire vaut $\dfrac{1 \times 4}{2} = 2$ ;
- le triangle $CZB$ a pour sommet $Z$, qui est à la distance $1$ de $(DA)$, donc son aire vaut $\dfrac{1 \times 1}{2} = \text{0,5}$.

L'aire de l'aile de gauche vaut donc

$$2 - \text{0,5} = \text{1,5} .$$

**On conclut.**

Par symétrie, l'aile de droite a la même aire. Les deux ailes ont ensemble une aire de

$$2 \times \text{1,5} = 3 .$$

Comme le rectangle a une aire de $3 \times 4 = 12$, les ailes en occupent exactement le quart.
