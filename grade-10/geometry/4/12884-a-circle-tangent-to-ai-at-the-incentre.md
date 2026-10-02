---
id: "12884"
title: "Un cercle tangent à (AI) en I"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-inscrit, bissectrice, tangente, angle-inscrit, quadrilatere-inscrit, triangles-semblables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test EGMO, exercice 8 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (même début que la première solution ; à la fin, une seule paire de triangles semblables, API et BQI, remplace les deux paires du corrigé, et on évite le théorème de l'angle tangentiel)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle et $I$ le centre de son cercle inscrit. On note $\omega$ le cercle qui passe par $B$ et qui est tangent à la droite $(AI)$ au point $I$. Le cercle $\omega$ recoupe le segment $[AB]$ au point $P$ et le segment $[BC]$ au point $Q$. La droite $(QI)$ coupe la droite $(AC)$ au point $R$.

![Le triangle ABC, le cercle ω passant par B, P, I et Q, la droite (AI) tangente à ω en I, la droite (QI) qui coupe [AC] en R, et le segment [PI] en pointillés](12884-figure-1.svg)

Montrer que $AR \times BQ = PI^2$.

## Hints

1. La droite $(BI)$ est la bissectrice de l'angle $\widehat{PBQ}$. Que peut-on en déduire pour les longueurs $IP$ et $IQ$ ?
2. Montrez que la tangente $(AI)$ est parallèle à $(PQ)$.
3. Montrez que les triangles $API$ et $ARI$ sont isométriques. Il reste à montrer que $AP \times BQ = PI \times IQ$.
4. Cherchez deux triangles semblables : comparez les angles des triangles $API$ et $BQI$.

## Solution

On note $\widehat{A} = 2\alpha$ et $\widehat{B} = 2\beta$. Comme $I$ est le centre du cercle inscrit, les droites $(AI)$ et $(BI)$ sont les bissectrices des angles $\widehat{A}$ et $\widehat{B}$ : $\widehat{PAI} = \widehat{IAR} = \alpha$ et $\widehat{PBI} = \widehat{IBQ} = \beta$.

### Deux rappels sur les cercles

- **L'angle inscrit.** Soit $U$ et $V$ deux points d'un cercle. Quand $M$ parcourt l'un des deux arcs d'extrémités $U$ et $V$, l'angle $\widehat{UMV}$ ne change pas : on dit qu'il s'appuie sur l'autre arc. Il vaut la moitié de l'angle au centre correspondant. Par conséquent, deux angles inscrits égaux interceptent des cordes de même longueur.
- **Le quadrilatère inscrit.** Si $BPIQ$ est un quadrilatère dont les quatre sommets sont sur un cercle, ses angles opposés ont pour somme $180^\circ$ : $\widehat{BPI} + \widehat{BQI} = 180^\circ$.

### IP = IQ et (AI) est parallèle à (PQ)

Les angles inscrits $\widehat{PBI}$ et $\widehat{IBQ}$ du cercle $\omega$ sont égaux à $\beta$. Ils interceptent donc des cordes de même longueur :

$$IP = IQ.$$

Soit $O$ le centre de $\omega$. Les points $O$ et $I$ sont tous les deux à égale distance de $P$ et de $Q$, donc la droite $(OI)$ est la médiatrice de $[PQ]$ : elle est perpendiculaire à $(PQ)$. La tangente $(AI)$ en $I$ est perpendiculaire au rayon $(OI)$. Les droites $(AI)$ et $(PQ)$ sont perpendiculaires à la même droite, donc

$$(AI) \parallel (PQ).$$

Sur la figure, le vecteur $\overrightarrow{QP}$ a le même sens que $\overrightarrow{IA}$.

### Les triangles API et ARI sont isométriques

- Les droites $(IA)$ et $(QP)$ sont parallèles et la droite $(PI)$ les coupe : les angles alternes-internes sont égaux, $\widehat{PIA} = \widehat{IPQ}$.
- Le triangle $IPQ$ est isocèle en $I$, donc $\widehat{IPQ} = \widehat{IQP}$.
- La droite $(QR)$ coupe les deux parallèles en $Q$ et en $I$, et $I$ est entre $Q$ et $R$ : les angles correspondants sont égaux, $\widehat{IQP} = \widehat{RIA}$.

Donc $\widehat{PIA} = \widehat{RIA}$. Les triangles $API$ et $ARI$ ont le côté $[AI]$ en commun, et les angles adjacents à ce côté égaux ($\widehat{PAI} = \widehat{RAI} = \alpha$ et $\widehat{PIA} = \widehat{RIA}$). Ils sont donc isométriques, et

$$AR = AP.$$

Il reste à montrer que $AP \times BQ = PI^2$, c'est-à-dire, puisque $IQ = PI$, que $AP \times BQ = PI \times IQ$.

### Deux triangles semblables

On compare les triangles $API$ et $IQB$.

- **L'angle en $I$ du triangle $API$.** On a vu que $\widehat{PIA} = \widehat{IPQ}$. Les angles inscrits $\widehat{IPQ}$ et $\widehat{IBQ}$ s'appuient sur le même arc $IQ$ du cercle $\omega$, donc $\widehat{PIA} = \widehat{IBQ} = \beta$.
- **L'angle en $P$ du triangle $API$.** Comme $P$ est sur le segment $[AB]$, $\widehat{API} = 180^\circ - \widehat{BPI}$. Comme $BPIQ$ est inscrit dans $\omega$, $180^\circ - \widehat{BPI} = \widehat{BQI}$. Donc $\widehat{API} = \widehat{IQB}$.

Les triangles $API$ et $IQB$ ont donc deux angles égaux : l'angle en $I$ de $API$ est égal à l'angle en $B$ de $IQB$ (tous les deux valent $\beta$), et l'angle en $P$ de $API$ est égal à l'angle en $Q$ de $IQB$. Ils sont semblables, avec les sommets dans l'ordre $A \leftrightarrow I$, $P \leftrightarrow Q$, $I \leftrightarrow B$. Leurs côtés sont proportionnels :

$$\frac{AP}{IQ} = \frac{PI}{QB}, \qquad \text{donc} \qquad AP \times QB = PI \times IQ.$$

### Conclusion

$$AR \times BQ = AP \times BQ = PI \times IQ = PI \times PI = PI^2.$$

## Going further

1. Montrez que $AI^2 = AP \times AB$. (Le triangle $API$ est semblable au triangle $AIB$.)
2. Montrez que les trois points $P$, $Q$ et $R$ sont sur un même cercle de centre $I$.
