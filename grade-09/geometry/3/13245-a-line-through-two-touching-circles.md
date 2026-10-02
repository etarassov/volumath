---
id: "13245"
title: "Une droite à travers deux cercles accolés"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [cercle, thales, pythagore, angle-droit, corde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 19 ; réponse (640) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soient $P$, $Q$, $R$ trois points tels que $Q$ soit le milieu de $[PR]$, avec $PQ = 20$.

Une droite passant par $P$ recoupe le cercle de diamètre $[PQ]$ en un point $A$, et coupe le cercle de diamètre $[QR]$ en deux points $B$ et $C$. On suppose que $B$ est le milieu de $[AC]$.

Déterminer la valeur de $PB^2$.

## Hints

1. Note $O$ le centre du cercle de diamètre $[QR]$. Que vaut l'angle $\widehat{PAQ}$ ? Trace aussi la perpendiculaire à la droite issue de $O$ ; note $M$ son pied.
2. Où se trouve $M$ par rapport à la corde $[BC]$ ? Compare $PA$ et $PM$ avec le théorème de Thalès.
3. Pose $h = MB = MC$ et exprime $PA$, $PB$, $PM$ en fonction de $h$.
4. Calcule $OM^2$ de deux façons avec le théorème de Pythagore.

## Solution

Notons $O$ le centre du cercle de diamètre $[QR]$, de rayon $10$, et $d$ la droite. On a $PO = PQ + QO = 30$.

**Deux pieds de perpendiculaires.**

- Le point $A$ est sur le cercle de diamètre $[PQ]$, donc le triangle $PAQ$ est rectangle en $A$ : $A$ est le pied de la perpendiculaire à $d$ issue de $Q$.
- Notons $M$ le pied de la perpendiculaire à $d$ issue de $O$. La perpendiculaire à une corde passant par le centre coupe la corde en son milieu, donc $M$ est le milieu de $[BC]$. Notons $h = MB = MC$.

Les droites $(QA)$ et $(OM)$ sont toutes deux perpendiculaires à $d$, donc parallèles. Dans le triangle $POM$, le théorème de Thalès donne $\frac{PA}{PM} = \frac{PQ}{PO} = \frac{20}{30} = \frac{2}{3}$.

**On place les points sur la droite.** Posons $PM = 3u$, de sorte que $PA = 2u$. Le point $A$ est avant $M$ en partant de $P$. Notons $B$ le plus proche de $P$ des deux points du cercle : $PB = 3u - h$ et $PC = 3u + h$. (Si l'on avait appelé $B$ le plus éloigné, $B$ ne pourrait pas être entre $A$ et $C$.) Comme $B$ est le milieu de $[AC]$,

$$PB = \frac{PA + PC}{2}, \qquad \text{soit} \qquad 3u - h = \frac{2u + 3u + h}{2}.$$

En multipliant par $2$ : $6u - 2h = 5u + h$, donc $u = 3h$. Ainsi $PA = 6h$, $PB = 8h$, $PM = 9h$ et $PC = 10h$.

**Deux fois le théorème de Pythagore.** Dans le triangle $POM$ rectangle en $M$, $OM^2 = PO^2 - PM^2 = 900 - 81h^2$. Dans le triangle $OMB$ rectangle en $M$, $OM^2 = OB^2 - MB^2 = 100 - h^2$. Donc

$$900 - 81h^2 = 100 - h^2, \qquad 80h^2 = 800, \qquad h^2 = 10.$$

**Conclusion.** $PB^2 = (8h)^2 = 64 \times 10 = 640$.
