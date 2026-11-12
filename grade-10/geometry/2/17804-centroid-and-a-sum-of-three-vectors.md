---
id: "17804"
title: "Le centre de gravité et une somme de trois vecteurs"
grade: 10
theme: geometry
difficulty: 2
duration_min: 15
tags: [vecteurs, centre-de-gravite, mediane, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie (mardi après-midi, vecteurs et transformations), exercice 1, p.32 ; solution p.32"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle. Son centre de gravité est le point où se coupent ses trois médianes.

Montrer qu'un point $G$ est le centre de gravité du triangle $ABC$ si et seulement si

$$\overrightarrow{GA} + \overrightarrow{GB} + \overrightarrow{GC} = \overrightarrow{0} .$$

## Hints

1. Avec la relation de Chasles, écrivez $\overrightarrow{GB}$ et $\overrightarrow{GC}$ en passant par le point $A$.
2. L'égalité de l'énoncé revient à $\overrightarrow{AG} = \frac{1}{3}\left(\overrightarrow{AB} + \overrightarrow{AC}\right)$. Combien de points $G$ la vérifient ?
3. Soit $A'$ le milieu de $[BC]$. Écrivez $\overrightarrow{AA'}$ à l'aide de $\overrightarrow{AB}$ et $\overrightarrow{AC}$, et comparez avec $\overrightarrow{AG}$.

## Solution

**Étape 1 : une autre écriture de l'égalité.** Avec la relation de Chasles, $\overrightarrow{GB} = \overrightarrow{GA} + \overrightarrow{AB}$ et $\overrightarrow{GC} = \overrightarrow{GA} + \overrightarrow{AC}$. L'égalité

$$\overrightarrow{GA} + \overrightarrow{GB} + \overrightarrow{GC} = \overrightarrow{0}$$

s'écrit donc $3\,\overrightarrow{GA} + \overrightarrow{AB} + \overrightarrow{AC} = \overrightarrow{0}$, c'est-à-dire

$$\overrightarrow{AG} = \frac{1}{3}\left(\overrightarrow{AB} + \overrightarrow{AC}\right) .$$

Le triangle étant donné, le vecteur de droite est fixé. Il existe donc **un seul point** qui vérifie l'égalité de l'énoncé. Appelons-le $K$.

**Étape 2 : $K$ est sur la médiane issue de $A$.** Soit $A'$ le milieu de $[BC]$. Alors $\overrightarrow{BA'} = \overrightarrow{A'C}$, et

$$2\,\overrightarrow{AA'} = \left(\overrightarrow{AB} + \overrightarrow{BA'}\right) + \left(\overrightarrow{AC} + \overrightarrow{CA'}\right) = \overrightarrow{AB} + \overrightarrow{AC},$$

car $\overrightarrow{BA'} + \overrightarrow{CA'} = \overrightarrow{0}$. Donc

$$\overrightarrow{AK} = \frac{1}{3}\left(\overrightarrow{AB} + \overrightarrow{AC}\right) = \frac{2}{3}\,\overrightarrow{AA'} .$$

Les vecteurs $\overrightarrow{AK}$ et $\overrightarrow{AA'}$ sont colinéaires : le point $K$ est sur la droite $(AA')$, la médiane issue de $A$.

**Étape 3 : les deux autres médianes.** L'égalité de l'énoncé ne change pas quand on échange les rôles de $A$, $B$ et $C$. Le même calcul, fait en partant de $B$ puis de $C$, montre que $K$ est aussi sur la médiane issue de $B$ et sur la médiane issue de $C$.

Le point $K$ est donc sur les trois médianes : c'est le centre de gravité du triangle.

**Conclusion.** Le seul point qui vérifie $\overrightarrow{GA} + \overrightarrow{GB} + \overrightarrow{GC} = \overrightarrow{0}$ est le centre de gravité. Autrement dit :

- si $G$ est le centre de gravité, alors $G = K$, donc il vérifie l'égalité ;
- si $G$ vérifie l'égalité, alors $G = K$, donc c'est le centre de gravité.

## Going further

L'étape 2 redonne au passage un résultat connu : le centre de gravité est situé aux deux tiers de chaque médiane, en partant du sommet.
