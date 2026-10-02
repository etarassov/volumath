---
id: "11201"
title: "Un diamètre de la Terre les pieds dans l'eau"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, aire, symetrie-centrale, sphere]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Juniors, exercice 2 ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

On considère la Terre comme une boule parfaite. Un **diamètre** de la Terre est un segment qui
passe par le centre de la Terre et dont les deux extrémités sont à la surface.

Les sept dixièmes de la surface de la Terre sont recouverts par l'océan.

Montrer qu'il existe un diamètre de la Terre dont **les deux extrémités** sont dans l'océan.

## Hints

1. Les deux extrémités d'un diamètre sont symétriques l'une de l'autre par rapport au centre
   $O$ de la Terre.
2. Remplace chaque point de l'océan par son symétrique par rapport à $O$. Tu obtiens un
   « océan retourné ». Quelle part de la surface couvre-t-il ?
3. L'océan et l'océan retourné couvrent chacun $\frac{7}{10}$ de la surface. Peuvent-ils ne
   pas se chevaucher du tout ?

## Solution

**Retourner l'océan.**

Appelons $O$ le centre de la Terre. Les deux extrémités d'un diamètre sont symétriques l'une de
l'autre par rapport à $O$.

Notons $S$ la partie de la surface couverte par l'océan, et $S'$ la partie obtenue en prenant le
symétrique par rapport à $O$ de chaque point de $S$. La symétrie centrale ne change pas les
aires, donc $S'$ couvre, elle aussi, les sept dixièmes de la surface de la Terre.

**Les deux parties se chevauchent.**

Si $S$ et $S'$ n'avaient aucun point commun, leurs aires s'ajouteraient, et elles couvriraient
ensemble
$$\frac{7}{10} + \frac{7}{10} = \frac{14}{10}$$
de la surface de la Terre. C'est impossible, car $\frac{14}{10} > 1$ : on ne peut pas couvrir
plus que toute la surface.

Il existe donc un point $P$ qui est à la fois dans $S$ et dans $S'$.

**Le diamètre cherché.**

Appelons $P'$ le symétrique de $P$ par rapport à $O$.

- $P$ est dans $S$ : le point $P$ est dans l'océan.
- $P$ est dans $S'$ : cela veut dire que $P$ est le symétrique d'un point de l'océan. Ce point
  de l'océan est forcément $P'$, car le symétrique de $P'$ est $P$. Donc $P'$ est dans l'océan.

Le segment $[PP']$ passe par $O$ : c'est un diamètre de la Terre.

**Conclusion : le diamètre $[PP']$ a ses deux extrémités dans l'océan.**

## Going further

Le raisonnement marche dès que l'océan couvre **strictement plus de la moitié** de la surface.
Avec exactement la moitié, ce n'est plus vrai : si l'océan couvrait tout l'hémisphère Nord sans
l'équateur, aucun diamètre n'aurait ses deux extrémités dans l'océan.
