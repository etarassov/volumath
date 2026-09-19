---
id: "0912"
title: "La bissectrice qui partage le côté en deux parts égales"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [bissectrice, mediane, triangle-isocele, cas-d-egalite, symetrie-centrale]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 29, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle et $D$ est le point du côté $[BC]$ tel que $(AD)$ soit la bissectrice de
l'angle $\widehat{BAC}$.

Montrer que si $BD = DC$, alors $AB = AC$.

*Autrement dit : si la bissectrice issue de $A$ est aussi la médiane issue de $A$, le triangle
est isocèle en $A$.*

## Hints

1. Avec la seule figure de départ, les deux hypothèses restent loin l'une de l'autre : il faut
   ajouter quelque chose.
2. Prolonge le segment $[AD]$ au-delà de $D$ jusqu'au point $A'$ tel que $DA' = DA$. Le point
   $D$ est alors le milieu de deux segments à la fois.
3. Compare les triangles $BDA'$ et $CDA$. Que peux-tu en déduire sur $BA'$, et sur l'angle
   $\widehat{BA'D}$ ?
4. Le triangle $ABA'$ possède alors deux angles égaux. Lesquels ?

## Solution

**L'idée : replier le triangle autour du point $D$ pour amener les deux hypothèses côte à
côte.**

**La construction.** Soit $A'$ le point de la demi-droite $[AD)$, au-delà de $D$, tel que
$DA' = DA$. Le point $D$ est donc le milieu de $[AA']$, et il est aussi le milieu de $[BC]$.

**Étape 1. Deux triangles superposables.** Comparons les triangles $BDA'$ et $CDA$ :

- $BD = DC$, c'est l'hypothèse ;
- $DA' = DA$, par construction ;
- $\widehat{BDA'} = \widehat{CDA}$, car ces deux angles sont opposés par le sommet.

Ces triangles ont deux côtés égaux et l'angle compris égal : ils sont superposables. On en
déduit

$$BA' = CA \qquad \text{et} \qquad \widehat{BA'D} = \widehat{CAD}.$$

**Étape 2. La bissectrice entre en scène.** Par hypothèse,
$\widehat{CAD} = \widehat{BAD}$. En reportant dans l'égalité précédente :

$$\widehat{BA'D} = \widehat{BAD}.$$

Or $D$ est sur le segment $[AA']$, donc $\widehat{BA'D} = \widehat{BA'A}$ et
$\widehat{BAD} = \widehat{BAA'}$. Le triangle $ABA'$ a donc ses deux angles en $A$ et en $A'$
égaux : il est isocèle, et les deux côtés égaux sont ceux qui partent de $B$ :

$$BA = BA'.$$

**Conclusion.** En rassemblant les deux égalités,

$$AB = BA' = CA,$$

c'est-à-dire $AB = AC$ : le triangle $ABC$ est isocèle en $A$.

## Going further

La même construction sert souvent. L'utiliser pour démontrer que, dans un triangle $ABC$ de
médiane $[AD]$ issue de $A$,

$$AD < \frac{AB + AC}{2}.$$
