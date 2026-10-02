---
id: "12220"
title: "Deux cercles et trois points alignés"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [bissectrice, angle inscrit, cocyclicite, cercle circonscrit, alignement, angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercices pour les candidats à la JBMO, exercice 2 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

Soit $ABC$ un triangle et $D$ le pied de la bissectrice de l'angle $\widehat{BAC}$, sur le côté $[BC]$. Soient $M$ et $N$ deux points du segment $[AD]$ tels que

$$\widehat{NBA} = \widehat{CBM}.$$

La droite $(BM)$ recoupe le cercle circonscrit au triangle $ACM$ en un point $E$, et la droite $(CN)$ recoupe le cercle circonscrit au triangle $ABN$ en un point $F$.

![Le triangle ABC, la bissectrice [AD], les cercles passant par A, C, M et par A, B, N, et les points E et F](12220-figure-1.svg)

Montrer que les points $A$, $E$ et $F$ sont alignés.

## Hints

1. Note $\alpha$ la moitié de l'angle $\widehat{BAC}$ et $\theta$ l'angle commun $\widehat{NBA} = \widehat{CBM}$. Avec le théorème de l'angle inscrit, calcule l'angle $\widehat{BEC}$ dans le premier cercle, puis l'angle $\widehat{BFC}$ dans le second.
2. Tu dois trouver deux angles égaux. Qu'en déduis-tu pour les quatre points $B$, $C$, $E$, $F$ ?
3. Pour montrer l'alignement, montre que les demi-droites $[FE)$ et $[FA)$ font le même angle avec $[FC)$.

## Solution

On note $\alpha = \widehat{BAD} = \widehat{DAC}$ la moitié de l'angle en $A$, et $\theta = \widehat{NBA} = \widehat{CBM}$.

On utilise deux fois le **théorème de l'angle inscrit** : si quatre points $W$, $X$, $Y$, $Z$ sont sur un même cercle, avec $W$ et $X$ du même côté de la droite $(YZ)$, alors $\widehat{YWZ} = \widehat{YXZ}$. On utilise aussi sa réciproque : si $W$ et $X$ sont du même côté de $(YZ)$ et que $\widehat{YWZ} = \widehat{YXZ}$, alors $W$, $X$, $Y$, $Z$ sont sur un même cercle.

On raisonne sur la figure. Les positions des points les uns par rapport aux autres (par exemple « $M$ est entre $B$ et $E$ ») sont celles que l'on voit sur la figure, et elles restent les mêmes quand on déplace les points.

**Étape 1. L'angle $\widehat{BEC}$.**

Les points $A$, $C$, $M$, $E$ sont sur un même cercle, et $A$ et $E$ sont du même côté de la droite $(MC)$. Donc $\widehat{MEC} = \widehat{MAC}$. Comme $M$ est sur $[AD]$, on a $\widehat{MAC} = \widehat{DAC} = \alpha$. Enfin $M$ est entre $B$ et $E$, donc les demi-droites $[EM)$ et $[EB)$ sont les mêmes, et

$$\widehat{BEC} = \widehat{MEC} = \alpha.$$

**Étape 2. L'angle $\widehat{BFC}$.**

De même, $A$, $B$, $N$, $F$ sont sur un même cercle, et $A$ et $F$ sont du même côté de $(BN)$. Donc $\widehat{BFN} = \widehat{BAN} = \widehat{BAD} = \alpha$. Comme $N$ est entre $C$ et $F$,

$$\widehat{BFC} = \widehat{BFN} = \alpha.$$

**Étape 3. Les points $B$, $C$, $E$, $F$ sont sur un même cercle.**

Les points $E$ et $F$ sont du même côté de la droite $(BC)$, celui de $A$, et ils voient le segment $[BC]$ sous le même angle $\alpha$. D'après la réciproque du théorème de l'angle inscrit, $B$, $C$, $E$, $F$ sont sur un même cercle.

**Étape 4. L'angle $\widehat{CFE}$.**

Dans ce nouveau cercle, $F$ et $B$ sont du même côté de la droite $(CE)$, donc $\widehat{CFE} = \widehat{CBE}$. Comme $E$ est sur la demi-droite $[BM)$,

$$\widehat{CFE} = \widehat{CBE} = \widehat{CBM} = \theta.$$

**Étape 5. L'angle $\widehat{CFA}$.**

Revenons au cercle qui passe par $A$, $B$, $N$, $F$. Les points $F$ et $B$ sont du même côté de la droite $(AN)$, donc $\widehat{NFA} = \widehat{NBA} = \theta$. Comme $N$ est entre $F$ et $C$, les demi-droites $[FN)$ et $[FC)$ sont les mêmes, et

$$\widehat{CFA} = \widehat{NFA} = \theta.$$

**Étape 6. Conclusion.**

Les demi-droites $[FE)$ et $[FA)$ font le même angle $\theta$ avec la demi-droite $[FC)$, et elles sont du même côté de la droite $(FC)$, car $E$ et $A$ le sont. Elles sont donc confondues.

**Les points $F$, $E$ et $A$ sont donc sur une même droite : $A$, $E$, $F$ sont alignés.**

## Going further

L'énoncé ne dit pas où sont les points, et la solution a lu leurs positions sur la figure. On peut vérifier à l'ordinateur, sur des milliers de triangles tirés au hasard, que ces positions ne changent jamais. Pour une preuve qui ne dépend d'aucune figure, on utilise les **angles orientés de droites**, qui se mesurent à $180°$ près : avec eux, le théorème de l'angle inscrit et sa réciproque s'écrivent sans condition « du même côté », et le même calcul marche dans tous les cas.

Remarque aussi que l'hypothèse « $[AD]$ est la bissectrice » n'a servi qu'aux étapes 1 et 2, pour avoir $\widehat{MAC} = \widehat{BAN}$.
