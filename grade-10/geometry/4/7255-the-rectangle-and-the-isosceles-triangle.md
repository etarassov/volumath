---
id: "7255"
title: "Le rectangle et le triangle isocèle caché"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [cocyclicite, rectangle, angle droit, cercle de diametre, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Géométrie : chasse aux angles », exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

$ABCD$ est un rectangle. Soit $P$ le milieu du côté $[AB]$, et soit $Q$ le point de la droite
$(PD)$ tel que les droites $(CQ)$ et $(PD)$ soient perpendiculaires.

Montrer que le triangle $BQC$ est isocèle en $B$.

## Hints

1. Fais une figure. Le point $Q$ est le pied de la perpendiculaire abaissée de $C$ sur $(PD)$.
2. Pour montrer que $BQ = BC$, on peut montrer que le triangle $BQC$ a deux angles égaux, ou bien
   trouver un cercle de centre $B$ passant par $Q$ et $C$.
3. L'angle $\widehat{DQC}$ est droit. Quel autre angle droit vois-tu dans la figure ? Cela devrait
   te donner quatre points cocycliques.
4. Prolonge $(DP)$ : elle recoupe la droite $(CB)$ en un point $R$. Que peux-tu dire de $B$ dans
   le triangle $DRC$ ?

## Solution

**Le point $R$.**

Notons $R$ le point d'intersection de la droite $(DP)$ avec la droite $(CB)$. Ce point existe
bien. En effet, $(CB)$ est perpendiculaire à $(AB)$, donc parallèle à $(AD)$ ; si $(DP)$ lui était
parallèle, $(DP)$ serait parallèle à $(AD)$, donc confondue avec $(AD)$ puisque les deux passent
par $D$, et $P$ serait sur $(AD)$, c'est-à-dire $P = A$. Or $P$ est le milieu de $[AB]$, donc
$P \neq A$.

**$B$ est le milieu de $[RC]$.**

Dans le rectangle, $(AD)$ et $(BC)$ sont parallèles. La droite $(DR)$ coupe $(AD)$ en $D$ et
$(BC)$ en $R$, et elle coupe la droite $(AB)$ en $P$.

Regardons les triangles $PAD$ et $PBR$. Les angles $\widehat{APD}$ et $\widehat{BPR}$ sont opposés
par le sommet, donc égaux. Les angles $\widehat{PAD}$ et $\widehat{PBR}$ sont tous les deux
droits. Les deux triangles sont donc semblables. Comme $PA = PB$ ($P$ est le milieu de $[AB]$),
ils sont même isométriques, et
$$BR = AD .$$

Or $AD = BC$, puisque $ABCD$ est un rectangle. Donc
$$BR = BC ,$$
et comme $R$ et $C$ sont de part et d'autre de $B$ sur la droite $(BC)$ (le point $R$ est du côté
opposé à $C$, car $P$ est entre $A$ et $B$), le point $B$ est bien le **milieu du segment
$[RC]$**.

**Le triangle $RQC$ est rectangle en $Q$.**

Par hypothèse, $(CQ) \perp (PD)$. Or $Q$ appartient à $(PD)$, qui est aussi la droite $(DR)$, donc
$Q$ appartient à $(RQ)$ et
$$\widehat{RQC} = 90^\circ .$$

**Conclusion.**

Dans un triangle rectangle, le milieu de l'hypoténuse est le centre du cercle circonscrit : il est
donc à égale distance des trois sommets.

Ici le triangle $RQC$ est rectangle en $Q$, son hypoténuse est $[RC]$, et $B$ en est le milieu.
Donc
$$BQ = BR = BC .$$

**Le triangle $BQC$ est donc isocèle en $B$.**

## Going further

Le point $Q$ décrit un cercle lorsque le rectangle se déforme : comme $\widehat{DQC} = 90^\circ$,
le point $Q$ est toujours sur le cercle de diamètre $[DC]$.

L'exercice se résout aussi sans introduire $R$, par une chasse aux angles : les points $D$, $Q$,
$C$ et le milieu de $[DC]$ jouent alors le rôle principal. Mais l'astuce du point $R$ a le mérite
de transformer une égalité de longueurs en un simple « milieu de l'hypoténuse ».
