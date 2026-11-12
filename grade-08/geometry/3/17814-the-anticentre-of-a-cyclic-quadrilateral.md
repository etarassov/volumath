---
id: "17814"
title: "L'anticentre d'un quadrilatère inscrit"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [quadrilatere-inscrit, orthocentre, hauteur, parallelogramme, mediatrice, symetrie-centrale]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 10, p.43 ; solution p.43. La question 1 reprend la partie utile du théorème 17 du cours (p.41), qui définit l'anticentre."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe dont les quatre sommets sont sur un cercle de centre $O$. On note $Q$ et $S$ les milieux des côtés $[BC]$ et $[DA]$, et $G$ le milieu du segment $[QS]$. Soit $M$ le symétrique de $O$ par rapport au point $G$.

1. Montrer que la droite perpendiculaire à $(BC)$ passant par $S$ passe par $M$. Montrer de même que la droite perpendiculaire à $(AD)$ passant par $Q$ passe par $M$.
2. On suppose que les droites $(AD)$ et $(BC)$ se coupent en un point $X$. Montrer que la droite $(XM)$ est perpendiculaire à la droite $(QS)$.

## Hints

1. Les segments $[QS]$ et $[OM]$ ont le même milieu $G$. Quelle est la nature du quadrilatère $SOQM$ ?
2. Le centre $O$ est à la même distance de $B$ et de $C$. Que représente la droite $(OQ)$ pour le segment $[BC]$ ?
3. Pour la question 2, regardez le triangle $XQS$. Les droites $(XQ)$ et $(XS)$ sont des droites que vous connaissez déjà.
4. Dans le triangle $XQS$, que sont les deux droites de la question 1 ?

## Solution

**1. Un parallélogramme.** Les diagonales $[QS]$ et $[OM]$ du quadrilatère $SOQM$ ont le même milieu $G$. Ce quadrilatère est donc un parallélogramme, et ses côtés opposés sont parallèles :

$$(SM) \parallel (OQ) \qquad \text{et} \qquad (QM) \parallel (OS) .$$

Le centre $O$ est à la même distance de $B$ et de $C$, donc il est sur la médiatrice de $[BC]$. Le milieu $Q$ est aussi sur cette médiatrice. La droite $(OQ)$ est donc la médiatrice de $[BC]$ : elle est perpendiculaire à $(BC)$.

Comme $(SM)$ est parallèle à $(OQ)$, elle est elle aussi perpendiculaire à $(BC)$. **La perpendiculaire à $(BC)$ passant par $S$ est la droite $(SM)$ : elle passe par $M$.**

De la même façon, $(OS)$ est la médiatrice de $[AD]$, donc $(OS) \perp (AD)$, et $(QM) \parallel (OS)$ donne $(QM) \perp (AD)$. **La perpendiculaire à $(AD)$ passant par $Q$ passe aussi par $M$.**

**2. Un orthocentre.** Regardons le triangle $XQS$.

- Les points $X$ et $Q$ sont tous les deux sur la droite $(BC)$, donc $(XQ) = (BC)$.
- Les points $X$ et $S$ sont tous les deux sur la droite $(AD)$, donc $(XS) = (AD)$.

D'après la question 1 :

- la droite qui passe par $S$ et qui est perpendiculaire à $(XQ)$ passe par $M$ : c'est la hauteur du triangle $XQS$ issue de $S$ ;
- la droite qui passe par $Q$ et qui est perpendiculaire à $(XS)$ passe par $M$ : c'est la hauteur issue de $Q$.

Le point $M$ est donc le point commun à deux hauteurs du triangle $XQS$ : c'est son orthocentre. Les trois hauteurs d'un triangle se coupent en un même point, donc la hauteur issue de $X$ passe aussi par $M$. Cette hauteur est perpendiculaire au côté opposé $[QS]$.

**Conclusion : la droite $(XM)$ est perpendiculaire à $(QS)$.**

## Going further

Notons aussi $P$ et $R$ les milieux de $[AB]$ et $[CD]$. Les segments $[PR]$ et $[QS]$ ont le même milieu $G$, car $PQRS$ est un parallélogramme (ses côtés sont parallèles aux diagonales de $ABCD$). Le raisonnement de la question 1 montre alors que les quatre perpendiculaires menées du milieu de chaque côté au côté opposé passent toutes par $M$. Ce point s'appelle l'**anticentre** du quadrilatère inscrit.

Quand les diagonales de $ABCD$ sont perpendiculaires, l'anticentre est le point d'intersection des diagonales.
