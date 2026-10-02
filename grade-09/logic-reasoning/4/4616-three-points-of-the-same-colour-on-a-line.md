---
id: "4616"
title: "Trois points de même couleur alignés"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [couleurs, milieu, cas, demonstration]
adapted_from: null
see_also: ["7716"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 8 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

On peint tous les points d'une droite, chacun en noir ou en blanc. On ne sait pas comment : le
coloriage peut être aussi irrégulier qu'on veut.

Montrer qu'il existe toujours trois points de la même couleur tels que l'un soit le milieu du
segment formé par les deux autres.

## Hints

1. Munis la droite d'une graduation : chaque point est repéré par un nombre. Le milieu de deux
   points d'abscisses $u$ et $v$ a pour abscisse $\dfrac{u+v}{2}$.
2. Commence par deux points de la même couleur. Pourquoi peut-on toujours en trouver deux ?
3. Appelle $A$ et $B$ ces deux points, de même couleur, et place trois points supplémentaires :
   le milieu $C$ de $[AB]$, puis le symétrique $D$ de $B$ par rapport à $A$, et le symétrique
   $E$ de $A$ par rapport à $B$.
4. Sépare en deux cas : ou bien $C$, $D$, $E$ sont tous les trois de l'autre couleur, ou bien
   l'un d'eux est de la couleur de $A$ et $B$. Examine chacun.

## Solution

**Mise en place.**

Graduons la droite. Il y a une infinité de points et seulement deux couleurs, donc il existe
certainement deux points de la même couleur : appelons-les $A$ et $B$, et disons qu'ils sont
noirs (le raisonnement serait identique avec du blanc).

Notons $a$ et $b$ leurs abscisses, et posons $d = b - a$, la distance orientée de $A$ à $B$.
Plaçons trois points supplémentaires :

- $C$, le milieu de $[AB]$, d'abscisse $a + \dfrac{d}{2}$ ;
- $D$, le symétrique de $B$ par rapport à $A$, d'abscisse $a - d$ ;
- $E$, le symétrique de $A$ par rapport à $B$, d'abscisse $a + 2d$.

Les cinq points se succèdent dans l'ordre $D$, $A$, $C$, $B$, $E$ : le point $C$ est au milieu de
$[AB]$, tandis que $D$ et $E$ sont rejetés d'une longueur $d$ de part et d'autre.

**Premier cas : l'un des trois points $C$, $D$, $E$ est noir.**

- Si $C$ est noir : les points $A$, $C$, $B$ sont noirs, et $C$ est le milieu de $[AB]$. C'est
  gagné.
- Si $D$ est noir : les points $D$, $A$, $B$ sont noirs, et $A$ est le milieu de $[DB]$, puisque
  $D$ est le symétrique de $B$ par rapport à $A$. C'est gagné.
- Si $E$ est noir : les points $A$, $B$, $E$ sont noirs, et $B$ est le milieu de $[AE]$. C'est
  gagné.

**Second cas : aucun des trois n'est noir.**

Alors $C$, $D$ et $E$ sont tous les trois blancs. Regardons leurs abscisses :
$$D : a - d, \qquad C : a + \frac{d}{2}, \qquad E : a + 2d .$$

Le milieu de $[DE]$ a pour abscisse
$$\frac{(a - d) + (a + 2d)}{2} = \frac{2a + d}{2} = a + \frac{d}{2} ,$$
c'est-à-dire exactement l'abscisse de $C$.

Donc $D$, $C$, $E$ sont trois points blancs et $C$ est le milieu de $[DE]$. C'est encore gagné.

**Conclusion.** Dans tous les cas, on trouve trois points de la même couleur dont l'un est le
milieu du segment formé par les deux autres. Le résultat est vrai quel que soit le coloriage.

## Going further

Autrement dit : quelle que soit la façon de colorier les nombres en deux couleurs, on trouve
toujours trois nombres $u$, $v$, $w$ de la même couleur en progression arithmétique, c'est-à-dire
tels que $v - u = w - v$.

Avec quatre nombres en progression arithmétique au lieu de trois, le résultat reste vrai, mais la
démonstration devient beaucoup plus difficile : c'est un cas particulier du théorème de van der
Waerden.
