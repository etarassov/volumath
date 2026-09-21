---
id: "7021"
title: "La droite des deux milieux d'un trapèze"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [trapeze, theoreme de thales, concours de droites]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, lundi 25 octobre (géométrie), exercices d'échauffement, exercice 2 ; repris en 2012 (stage_junior_2012.pdf, exercices d'échauffement, exercice 2)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soit $ABCD$ un trapèze : les droites $(AB)$ et $(CD)$ sont parallèles. On note $M$ le milieu
de $[AB]$, $N$ le milieu de $[CD]$, et $\Delta$ la droite $(MN)$.

![Le trapèze ABCD, les milieux M de [AB] et N de [CD], et la droite Delta qui les joint](7021-figure-1.svg)

Montrer que les trois droites $\Delta$, $(AD)$ et $(BC)$ sont concourantes ou parallèles.

## Hints

1. Il y a deux situations à traiter : celle où $(AD)$ et $(BC)$ se coupent, et celle où elles
   sont parallèles.
2. Premier cas : appelle $S$ le point d'intersection de $(AD)$ et $(BC)$, et trace la droite
   $(SM)$. Où coupe-t-elle $(CD)$ ?
3. Utilise le théorème de Thalès dans la configuration formée par $S$ et les deux parallèles.
4. Second cas : si $(AD)$ et $(BC)$ sont parallèles, quelle est la nature du quadrilatère
   $ABCD$ ?

## Solution

**Premier cas : $(AD)$ et $(BC)$ se coupent.**

Appelons $S$ leur point d'intersection. Traçons la droite $(SM)$ et appelons $P$ le point où
elle coupe la droite $(CD)$. Nous allons montrer que $P$ est le milieu de $[CD]$, autrement
dit que $P = N$.

Les droites $(AB)$ et $(CD)$ sont parallèles, et les points $S$, $A$, $D$ sont alignés, tout
comme $S$, $B$, $C$ et $S$, $M$, $P$. Le théorème de Thalès, appliqué dans le triangle $SDP$
coupé par la parallèle passant par $A$ et $M$, donne
$$\frac{SA}{SD} = \frac{SM}{SP} = \frac{AM}{DP} .$$
Appliqué dans le triangle $SCP$ coupé par la parallèle passant par $B$ et $M$, il donne
$$\frac{SB}{SC} = \frac{SM}{SP} = \frac{BM}{CP} .$$

Les deux rapports du milieu sont le même, $\dfrac{SM}{SP}$. Donc
$$\frac{AM}{DP} = \frac{BM}{CP} .$$
Or $M$ est le milieu de $[AB]$, donc $AM = BM$. On en déduit
$$DP = CP,$$
c'est-à-dire que $P$ est le milieu de $[CD]$ : $P = N$.

La droite $(SM)$ passe donc par $N$ : c'est la droite $\Delta$. Elle passe par $S$, donc
$\Delta$, $(AD)$ et $(BC)$ se coupent bien toutes les trois en $S$.

**Second cas : $(AD)$ et $(BC)$ sont parallèles.**

Alors $ABCD$ a ses côtés opposés deux à deux parallèles : c'est un **parallélogramme**.

Traçons la parallèle à $(AD)$ passant par $M$, et appelons $P$ son point d'intersection avec
$(CD)$. Alors $DPMA$ a ses côtés opposés parallèles : c'est un parallélogramme, donc
$$DP = MA .$$
De même $CPMB$ est un parallélogramme, donc $CP = MB$.

Comme $MA = MB$, on obtient $DP = CP$ : le point $P$ est le milieu de $[CD]$, donc $P = N$.

La droite $(MN)$, c'est-à-dire $\Delta$, est donc la parallèle à $(AD)$ passant par $M$ : les
trois droites $\Delta$, $(AD)$ et $(BC)$ sont parallèles.

**Conclusion.** Dans les deux cas, les droites $\Delta$, $(AD)$ et $(BC)$ sont concourantes ou
parallèles.

## Going further

Les deux cas se ressemblent beaucoup, et ce n'est pas un hasard : en géométrie projective, des
droites parallèles sont des droites qui se coupent « à l'infini ». Dans ce langage, l'énoncé
se dit d'un seul coup : les trois droites sont toujours concourantes.
