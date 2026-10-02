---
id: "7139"
title: "Deux hauteurs, puis deux autres"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [cocyclicite, cercle-de-diametre, angle-inscrit, paralleles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Vendredi : test final », débutants, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus.

On note $A'$ le pied de la hauteur issue de $A$ dans le triangle $ABC$, puis $A''$ le pied
de la hauteur issue de $A'$ dans le triangle $A'AC$.

De même, on note $B'$ le pied de la hauteur issue de $B$ dans le triangle $ABC$, puis $B''$
le pied de la hauteur issue de $B'$ dans le triangle $B'BC$.

Montrer que les droites $(A''B'')$ et $(AB)$ sont parallèles.

## Hints

1. Commence par situer les quatre points. Sur quelle droite se trouve $A'$ ? et $A''$ ? et
   $B'$ ? et $B''$ ?
2. Les angles $\widehat{AA'B}$ et $\widehat{AB'B}$ sont droits. Que peux-tu en déduire sur
   les quatre points $A$, $B$, $A'$, $B'$ ?
3. Recommence le même raisonnement avec $A'$, $B'$, $A''$, $B''$ : quel segment est vu sous
   un angle droit depuis $A''$ et depuis $B''$ ?
4. Il reste à relier les angles en $C$ des trois triangles $ABC$, $A'B'C$ et $A''B''C$.

## Solution

**Où sont les points ?** Faisons l'inventaire.

- $A'$ est le pied de la hauteur issue de $A$ : il est sur $(BC)$, et $(AA') \perp (BC)$.
- $A''$ est le pied de la hauteur issue de $A'$ dans le triangle $A'AC$, donc il est sur le
  côté $(AC)$, et $(A'A'') \perp (AC)$.
- $B'$ est le pied de la hauteur issue de $B$ : il est sur $(AC)$, et $(BB') \perp (AC)$.
- $B''$ est le pied de la hauteur issue de $B'$ dans le triangle $B'BC$, donc il est sur le
  côté $(BC)$, et $(B'B'') \perp (BC)$.

Retenons deux choses : **$A''$ et $B'$ sont tous deux sur la droite $(AC)$**, et **$A'$ et
$B''$ sont tous deux sur la droite $(BC)$**.

**Premier cercle : $A$, $B$, $A'$, $B'$.** Les angles $\widehat{AA'B}$ et $\widehat{AB'B}$
sont droits. Les points $A'$ et $B'$ voient donc le segment $[AB]$ sous un angle droit : ils
sont sur le cercle de diamètre $[AB]$.

Les quatre points $A$, $B$, $A'$, $B'$ sont donc cocycliques. Dans le quadrilatère inscrit
$ABA'B'$, l'angle extérieur en $A'$ est égal à l'angle intérieur opposé, ce qui s'écrit

$$\widehat{CA'B'} = \widehat{CAB} . \qquad (1)$$

**Deuxième cercle : $A'$, $B'$, $A''$, $B''$.**

- Comme $(A'A'') \perp (AC)$ et que $B'$ est sur $(AC)$, on a $\widehat{A'A''B'} = 90^\circ$.
- Comme $(B'B'') \perp (BC)$ et que $A'$ est sur $(BC)$, on a $\widehat{A'B''B'} = 90^\circ$.

Les points $A''$ et $B''$ voient donc le segment $[A'B']$ sous un angle droit : ils sont sur
le cercle de diamètre $[A'B']$, et les quatre points $A'$, $B'$, $A''$, $B''$ sont
cocycliques.

Le même argument d'angle extérieur, cette fois dans le quadrilatère inscrit $A'B'B''A''$ et
vu depuis $C$, donne

$$\widehat{CA''B''} = \widehat{CA'B'} . \qquad (2)$$

**On conclut.** En combinant $(1)$ et $(2)$ :

$$\widehat{CA''B''} = \widehat{CAB} .$$

Or $A''$ est sur la droite $(AC)$. Les angles $\widehat{CA''B''}$ et $\widehat{CAB}$ sont
donc deux angles correspondants formés par la sécante $(AC)$ avec les droites $(A''B'')$ et
$(AB)$. Étant égaux, les deux droites sont parallèles.

$$(A''B'') \ \parallel \ (AB) .$$

## Going further

La droite $(A'B')$ joignant deux pieds de hauteurs s'appelle un côté du **triangle
orthique** de $ABC$, et l'égalité $(1)$ est un résultat classique : le triangle orthique
« retourne » les angles du triangle de départ.

L'exercice montre que le procédé peut se répéter : à partir de $A'B'C$ on fabrique
$A''B''C$, qui a les mêmes angles retournés une seconde fois, donc les mêmes que $ABC$. Les
trois triangles $ABC$, $A''B''C$, et tous ceux qu'on obtiendrait en continuant, sont
semblables entre eux et emboîtés les uns dans les autres.

L'hypothèse « les trois angles sont aigus » sert à garantir que tous les pieds de hauteurs
tombent bien **à l'intérieur** des côtés. Avec un triangle obtusangle, la figure change et il
faut reprendre le raisonnement avec des angles orientés.
