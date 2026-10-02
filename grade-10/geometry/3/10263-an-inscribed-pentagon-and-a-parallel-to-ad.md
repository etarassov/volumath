---
id: "10263"
title: "Un pentagone inscrit et une parallèle à (AD)"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [pentagone, angle-inscrit, triangles-semblables, triangle-isocele, paralleles, chasse-aux-angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 1 (géométrie)"
  reference: "2023-11_Sujet-envoi-1-2023-2024.pdf, Exercices Juniors, exercice 5 (repris en Exercices Seniors, exercice 13) ; corrigé 2023-04_Corrige-envoi-1-2023-2024.pdf (le corrigé montre que EPCQ est inscriptible par la réciproque de l'angle inscrit ; ici on passe par deux paires de triangles semblables, ce qui évite d'avoir à placer C et E par rapport à (PQ))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/11/Sujet-envoi-1-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-11_Sujet-envoi-1-2023-2024.pdf"
---

## Statement

Soit $ABCDE$ un pentagone convexe dont les cinq sommets sont sur un même cercle, et tel que $AB = BD$.

Soit $P$ le point d'intersection des droites $(EB)$ et $(AC)$, et $Q$ le point d'intersection des droites $(BC)$ et $(DE)$.

Montrer que les droites $(PQ)$ et $(AD)$ sont parallèles.

![Le pentagone ABCDE inscrit dans un cercle, ses diagonales, et le segment [PQ] en bleu](10263-figure-1.svg)

## Hints

1. Traduisez $AB = BD$ en une égalité d'angles, puis faites circuler cet angle sur le cercle : montrez que $\widehat{ACB} = \widehat{BED}$.
2. Comparez les triangles $BCP$ et $BEQ$. Qu'en déduit-on pour les longueurs $BP$, $BE$, $BC$, $BQ$ ?
3. Comparez ensuite les triangles $BPQ$ et $BCE$, et calculez l'angle $\widehat{QPC}$.

## Solution

*Rappels.*

- *Angles inscrits.* Si $X$, $Y$, $U$, $V$ sont sur un même cercle et si $U$ et $V$ sont du même côté de la droite $(XY)$, alors $\widehat{XUY} = \widehat{XVY}$. Si un quadrilatère convexe est inscrit dans un cercle, ses angles opposés ont pour somme $180°$.
- *Triangles semblables.* Deux triangles qui ont deux angles égaux sont semblables, et leurs côtés sont proportionnels. Deux triangles qui ont un angle égal compris entre des côtés proportionnels sont semblables.

Comme le pentagone est convexe, chaque côté laisse les trois autres sommets d'un même côté, et deux diagonales qui n'ont pas d'extrémité commune se coupent à l'intérieur du pentagone. En particulier $P$ est à l'intérieur des deux segments $[AC]$ et $[BE]$.

On note $x = \widehat{ACB}$ et $y = \widehat{BAC}$.

**Étape 1 : faire circuler l'angle.** Les points $C$ et $D$ sont du même côté de $(AB)$, donc $\widehat{ACB} = \widehat{ADB}$. Le triangle $ABD$ est isocèle en $B$, donc $\widehat{ADB} = \widehat{BAD}$. Les points $A$ et $E$ sont du même côté de la diagonale $(BD)$, donc $\widehat{BAD} = \widehat{BED}$. Ainsi

$$\widehat{ACB} = \widehat{ADB} = \widehat{BAD} = \widehat{BED} = x.$$

**Étape 2 : où est $Q$.** Le quadrilatère $BCDE$ est convexe et inscrit, donc $\widehat{BCD} = 180° - \widehat{BED} = 180° - x$. Depuis $D$, la demi-droite $[DB)$ est à l'intérieur de l'angle $\widehat{CDE}$, et $[DA)$ aussi, donc $\widehat{CDE} > \widehat{BDA} = x$. Par conséquent

$$\widehat{BCD} + \widehat{CDE} > 180°.$$

Les droites $(BC)$ et $(ED)$ ne sont donc pas parallèles. Leur point commun $Q$ n'est pas sur le segment $[BC]$, car la droite $(ED)$ laisse $B$ et $C$ du même côté, ni sur $[ED]$, pour la même raison. Si $Q$ était du même côté de $(CD)$ que $B$ et $E$, alors $B$ serait entre $C$ et $Q$, et $E$ entre $D$ et $Q$ : le triangle $QCD$ aurait en $C$ et en $D$ les angles $\widehat{BCD}$ et $\widehat{CDE}$, dont la somme dépasse $180°$, ce qui est impossible. Donc $Q$ est de l'autre côté de $(CD)$ : le point $C$ est entre $B$ et $Q$, et $D$ est entre $E$ et $Q$.

**Étape 3 : une première paire de triangles semblables.** Comparons les triangles $BCP$ et $BEQ$. Ils ont le même angle en $B$, car $P$ est sur $[BE]$ et $C$ sur $[BQ]$. De plus $\widehat{BCP} = \widehat{BCA} = x$ et $\widehat{BEQ} = \widehat{BED} = x$, puisque $Q$ est sur la demi-droite $[ED)$. Les deux triangles sont semblables, donc

$$\frac{BC}{BE} = \frac{BP}{BQ}, \qquad \text{c'est-à-dire} \qquad \frac{BP}{BC} = \frac{BQ}{BE}.$$

**Étape 4 : une seconde paire.** Les triangles $BPQ$ et $BCE$ ont le même angle en $B$, compris entre des côtés proportionnels d'après l'étape 3. Ils sont semblables, et $\widehat{BQP} = \widehat{BEC}$. Les points $A$ et $E$ sont du même côté de $(BC)$, donc $\widehat{BEC} = \widehat{BAC} = y$. Comme $C$ est sur $[QB]$, on obtient $\widehat{PQC} = \widehat{PQB} = y$.

**Étape 5 : l'angle en $P$.** Dans le triangle $PCQ$, l'angle en $C$ vaut $\widehat{PCQ} = 180° - \widehat{ACB} = 180° - x$, car $P$ est sur $[CA]$ et $C$ est entre $B$ et $Q$. Donc

$$\widehat{QPC} = 180° - (180° - x) - y = x - y.$$

D'autre part, dans le quadrilatère convexe $ABCD$, la diagonale $[AC]$ est à l'intérieur de l'angle $\widehat{BAD}$, donc

$$\widehat{CAD} = \widehat{BAD} - \widehat{BAC} = x - y.$$

**Étape 6 : conclusion.** Les droites $(PQ)$ et $(AD)$ sont coupées par la sécante $(AC)$. Les points $Q$ et $D$ sont du même côté de $(AC)$ : en effet $B$ et $Q$ sont de part et d'autre de $(AC)$ puisque $C$ est entre eux, et $B$ et $D$ aussi, puisque les diagonales $[AC]$ et $[BD]$ se coupent. Enfin $P$ est entre $A$ et $C$, donc les demi-droites $[PC)$ et $[AC)$ vont dans le même sens. Les angles $\widehat{QPC}$ et $\widehat{DAC}$ sont donc correspondants, et ils sont égaux. **Les droites $(PQ)$ et $(AD)$ sont parallèles.**

*Remarques.*

- L'égalité $BP \times BE = BC \times BQ$ de l'étape 3 dit exactement que les points $E$, $P$, $C$, $Q$ sont sur un même cercle (c'est la puissance du point $B$). Le corrigé de la source part de là : il montre que $EPCQ$ est inscriptible, puis $\widehat{EQP} = \widehat{ECP} = \widehat{ECA} = \widehat{EDA}$, et conclut avec les angles correspondants sur la sécante $(ED)$.
- L'hypothèse $AB = BD$ ne sert qu'à l'étape 1.
