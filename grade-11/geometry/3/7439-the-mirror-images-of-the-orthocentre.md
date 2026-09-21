---
id: "7439"
title: "Les reflets de l'orthocentre"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [orthocentre, cercle-circonscrit, angle-inscrit, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique 2010, groupe des débutants, TD de géométrie"
  reference: "stage_ete_2010.pdf, groupe des débutants, TD de géométrie, exercice 5 ; repris dans stage_ete_2011.pdf, incontournable géométrie, premier TD, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et soit $H$ son orthocentre,
c'est-à-dire le point où se coupent ses trois hauteurs.

1. Montrer que le symétrique de $H$ par rapport à la droite $(BC)$ appartient au cercle
   circonscrit au triangle $ABC$.
2. Montrer que le symétrique de $H$ par rapport au **milieu** $A'$ du segment $[BC]$ appartient
   lui aussi à ce cercle.

## Hints

1. Pour les deux questions, un quadrilatère est inscriptible dès que deux de ses angles opposés
   ont pour somme $180°$. C'est le seul outil dont tu as besoin.
2. Commence par calculer l'angle $\widehat{BHC}$ en fonction de l'angle $\widehat{BAC}$. Appelle
   $E$ et $F$ les pieds des hauteurs issues de $B$ et de $C$, et regarde le quadrilatère $AFHE$ :
   deux de ses angles sont droits.
3. Question 1 : une symétrie conserve les angles, donc le symétrique $H_1$ de $H$ voit le segment
   $[BC]$ sous le même angle que $H$.
4. Question 2 : le symétrique $H_2$ de $H$ par rapport au milieu de $[BC]$ vérifie que $BHCH_2$
   est un parallélogramme. Que deviennent alors les angles en $B$ et en $C$ ?

## Solution

Notons $E$ le pied de la hauteur issue de $B$ (sur $(AC)$) et $F$ le pied de la hauteur issue de
$C$ (sur $(AB)$). Notons aussi $\alpha = \widehat{BAC}$.

### Le calcul préliminaire : l'angle $\widehat{BHC}$

Regardons le quadrilatère $AFHE$. Il a un angle droit en $F$ (car $(CF)$ est perpendiculaire à
$(AB)$) et un angle droit en $E$ (car $(BE)$ est perpendiculaire à $(AC)$). La somme de ses
quatre angles vaut $360°$, donc
$$\widehat{FHE} = 360° - 90° - 90° - \alpha = 180° - \alpha.$$

Or les angles $\widehat{FHE}$ et $\widehat{BHC}$ sont opposés par le sommet $H$ : ils sont donc
égaux. On retient
$$\widehat{BHC} = 180° - \alpha.$$

Comme le triangle est acutangle, $H$ est à l'intérieur du triangle, donc du même côté de $(BC)$
que $A$.

### Question 1 : le symétrique par rapport à $(BC)$

Notons $H_1$ le symétrique de $H$ par rapport à la droite $(BC)$.

Une symétrie axiale conserve les longueurs et les angles, et elle fixe $B$ et $C$ puisqu'ils sont
sur l'axe. Le triangle $BH_1C$ est donc l'image du triangle $BHC$, et
$$\widehat{BH_1C} = \widehat{BHC} = 180° - \alpha.$$

Par ailleurs $H$ est du même côté de $(BC)$ que $A$, donc $H_1$ est de l'autre côté : les points
$A$ et $H_1$ sont de part et d'autre de la droite $(BC)$. Le quadrilatère $ABH_1C$ est donc un
quadrilatère non croisé dont deux sommets opposés sont $A$ et $H_1$, et
$$\widehat{BAC} + \widehat{BH_1C} = \alpha + (180° - \alpha) = 180°.$$

Deux angles opposés de somme $180°$ : le quadrilatère $ABH_1C$ est inscriptible. Son cercle
circonscrit passe par $A$, $B$ et $C$, c'est donc **le** cercle circonscrit à $ABC$ (trois points
non alignés ne déterminent qu'un seul cercle).

**Le point $H_1$ est bien sur le cercle circonscrit à $ABC$.**

### Question 2 : le symétrique par rapport au milieu de $[BC]$

Notons $A'$ le milieu de $[BC]$ et $H_2$ le symétrique de $H$ par rapport à $A'$.

Dans le quadrilatère $BHCH_2$, les diagonales $[BC]$ et $[HH_2]$ ont le même milieu $A'$. C'est
donc un parallélogramme. Par conséquent
$$(BH) \parallel (CH_2) \qquad \text{et} \qquad (CH) \parallel (BH_2).$$

Or $(BH)$ est la hauteur issue de $B$, donc $(BH) \perp (AC)$. Comme $(CH_2)$ lui est parallèle,
$$(CH_2) \perp (AC),$$
c'est-à-dire $\widehat{ACH_2} = 90°$.

De la même façon, $(CH)$ est perpendiculaire à $(AB)$, et $(BH_2)$ lui est parallèle, donc
$$(BH_2) \perp (AB), \qquad \text{c'est-à-dire} \qquad \widehat{ABH_2} = 90°.$$

Dans le quadrilatère $ABH_2C$, les angles opposés en $B$ et en $C$ valent chacun $90°$ :
$$\widehat{ABH_2} + \widehat{ACH_2} = 90° + 90° = 180°.$$

Ce quadrilatère est donc inscriptible, et comme son cercle passe par $A$, $B$, $C$, c'est encore
le cercle circonscrit à $ABC$.

**Le point $H_2$ est lui aussi sur le cercle circonscrit à $ABC$.**

### Conclusion

Les deux symétriques annoncés sont sur le cercle circonscrit. On peut même dire mieux : puisque
$\widehat{ABH_2} = 90°$, le segment $[AH_2]$ est un diamètre de ce cercle.

## Going further

Déduire de la question 2 que la distance de $A$ à l'orthocentre vaut le double de la distance du
centre $O$ du cercle circonscrit au côté $[BC]$ :
$$AH = 2 \, OA'.$$
(Indication : dans le triangle $AHH_2$, que sont les points $O$ et $A'$ ?)
