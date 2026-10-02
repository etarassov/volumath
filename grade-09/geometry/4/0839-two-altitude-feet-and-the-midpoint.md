---
id: "0839"
title: "Les deux pieds de hauteur et le milieu"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [hauteur, milieu, mediatrice, similitude]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, exercice 28"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABC$ est un triangle qui n'a pas d'angle droit en $A$. Les points $B'$ et $C'$ sont les pieds des hauteurs issues de $B$ et de $C$ : le point $B'$ est sur la droite $(AC)$ et le point $C'$ est sur la droite $(AB)$. Le point $M$ est le milieu de $[BC]$.

![Le triangle ABC, les hauteurs [BB'] et [CC'], le milieu M de [BC] et le segment [B'C']](0839-figure-1.svg)

1. Démontrer que $MB' = MC'$.
2. Démontrer que si $(AM)$ est perpendiculaire à $(B'C')$, alors le triangle $ABC$ est isocèle en $A$.

## Hints

1. Question 1 : dans le triangle $BB'C$, l'angle en $B'$ est droit et $M$ est le milieu de l'hypoténuse $[BC]$. Que sais-tu de la médiane issue du sommet de l'angle droit ?
2. Question 1, autre façon de le dire : les points $B'$ et $C'$ sont sur le cercle de diamètre $[BC]$.
3. Question 2 : l'égalité $MB' = MC'$ signifie que $M$ est sur la médiatrice de $[B'C']$. Or la médiatrice de $[B'C']$ est perpendiculaire à $(B'C')$, et par le point $M$ il ne passe qu'une seule perpendiculaire à $(B'C')$.
4. Question 2 : une fois obtenue l'égalité $AB' = AC'$, compare les triangles rectangles $ABB'$ et $ACC'$. Que partagent-ils au sommet $A$ ?

## Solution

### 1. Les longueurs $MB'$ et $MC'$

La hauteur issue de $B$ est perpendiculaire à $(AC)$, et $B'$ est sur $(AC)$ : le triangle $BB'C$ est donc rectangle en $B'$. Son hypoténuse est $[BC]$, et $M$ en est le milieu. Or, dans un triangle rectangle, la médiane issue du sommet de l'angle droit vaut la moitié de l'hypoténuse (le milieu de l'hypoténuse est le centre du cercle circonscrit). Donc

$$MB' = \frac{BC}{2}.$$

De la même façon, le triangle $BC'C$ est rectangle en $C'$, d'hypoténuse $[BC]$, donc

$$MC' = \frac{BC}{2}.$$

Ainsi

$$MB' = MC' = \frac{BC}{2}.$$

Autrement dit, les deux pieds $B'$ et $C'$ sont sur le cercle de diamètre $[BC]$.

### 2. Si $(AM) \perp (B'C')$

Supposons que $(AM)$ soit perpendiculaire à $(B'C')$.

**La droite $(AM)$ est la médiatrice de $[B'C']$.** D'après la question 1, $MB' = MC'$ : le point $M$ est donc sur la médiatrice de $[B'C']$. Cette médiatrice est une droite qui passe par $M$ et qui est perpendiculaire à $(B'C')$. Mais par le point $M$ il ne passe qu'une seule droite perpendiculaire à $(B'C')$. Comme $(AM)$ est elle aussi une droite passant par $M$ et perpendiculaire à $(B'C')$, ces deux droites sont confondues : $(AM)$ **est** la médiatrice de $[B'C']$.

Le point $A$ est sur cette droite, donc il est à égale distance de $B'$ et de $C'$ :

$$AB' = AC'.$$

**Deux triangles rectangles semblables.** Comparons les triangles $ABB'$ et $ACC'$ :

- le premier est rectangle en $B'$, le second est rectangle en $C'$ ;
- leurs angles de sommet $A$ sont égaux. Si l'angle $\widehat{A}$ du triangle est aigu, les deux pieds tombent sur les côtés et ces angles valent tous les deux $\widehat{A}$ ; s'il est obtus, les deux pieds tombent à l'extérieur des côtés et ces angles valent tous les deux $180° - \widehat{A}$. Dans les deux cas ils sont égaux.

Les triangles $ABB'$ et $ACC'$ ont donc deux angles égaux deux à deux : ils sont semblables, avec la correspondance $A \leftrightarrow A$, $B \leftrightarrow C$, $B' \leftrightarrow C'$. D'où

$$\frac{AB}{AC} = \frac{AB'}{AC'}.$$

**On conclut.** Comme $AB' = AC'$, le rapport de droite vaut $1$, donc $\dfrac{AB}{AC} = 1$, c'est-à-dire

$$AB = AC.$$

Le triangle $ABC$ est bien isocèle en $A$.

**Pourquoi l'énoncé écarte l'angle droit en $A$.** Si $\widehat{A} = 90°$, les deux hauteurs issues de $B$ et de $C$ sont portées par les côtés $[BA]$ et $[CA]$, donc $B' = C' = A$ : le segment $[B'C']$ n'existe pas et la question 2 n'a plus de sens.

## Going further

Démontrer la réciproque de la question 2 : si le triangle $ABC$ est isocèle en $A$, alors $(AM)$ est perpendiculaire à $(B'C')$.

Indication : la figure est alors symétrique par rapport à la droite $(AM)$. Que deviennent $B'$ et $C'$ dans cette symétrie ?
