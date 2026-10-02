---
id: "12875"
title: "Un pentagone, un cercle tangent en M et trois droites concourantes"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [pentagone, tangente, angle-inscrit, cocyclicite, chasse-aux-angles, parallelisme, rotation, vecteurs, parallelogramme, droites-concourantes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 janvier 2025"
  reference: "2025-10_Sujet-Test-2-2024-2025.pdf, test senior, exercice 6 ; corrigé 2025-10_Corrige-Test-2-2024-2025.pdf (on suit les étapes 1 et 2 du corrigé et sa construction des points R et S ; le parallélisme de (KL) et (AB), puis la conclusion, sont obtenus ici par un calcul vectoriel, à la place du théorème de Thalès et des axes radicaux)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-2-2024-2025.pdf"
---

## Statement

Soit $ABCDE$ un pentagone convexe, et $M$ le milieu du segment $[AB]$. On suppose que :

- le segment $[AB]$ est tangent en $M$ au cercle circonscrit au triangle $CME$ ;
- le point $D$ est à la fois sur le cercle circonscrit au triangle $AME$ et sur le cercle circonscrit au triangle $BMC$.

Soit $K$ le point d'intersection des droites $(AD)$ et $(ME)$, et $L$ le point d'intersection des droites $(BD)$ et $(MC)$. Soit $P$ et $Q$ deux points du segment $[EC]$ tels que

$$\widehat{PDC} = \widehat{EDQ} = \widehat{ADB}.$$

![Le pentagone ABCDE, le cercle passant par C, M et E, tangent à [AB] en M, et les points K, L, P et Q](12875-figure-1.svg)

Montrer que les droites $(KP)$, $(LQ)$ et $(MD)$ sont concourantes.

## Hints

1. Avec le théorème de l'angle inscrit et l'angle entre une tangente et une corde, montrez que $\widehat{BDC} = \widehat{MEC}$ et $\widehat{ADE} = \widehat{MCE}$.
2. Montrez que $D$, $E$, $K$, $P$ sont sur un même cercle, puis que $(KP)$ est parallèle à $(MC)$. De même, $(LQ)$ est parallèle à $(ME)$.
3. Soit $R$ le point d'intersection de $(DA)$ et $(MC)$, et $S$ celui de $(DB)$ et $(ME)$. Montrez que $R$ et $S$ sont sur le cercle circonscrit au triangle $CDE$, puis que $(RS)$ est parallèle à $(AB)$.
4. Calculez avec des vecteurs depuis le point $D$ pour montrer que $(KL)$ est parallèle à $(AB)$. Enfin, si $X$ est le point d'intersection de $(KP)$ et $(LQ)$, quelle est la nature du quadrilatère $MKXL$ ?

## Solution

On note $\theta = \widehat{ADB}$. On utilise les positions des points que l'on lit sur la figure : par exemple, $K$ est sur les segments $[AD]$ et $[ME]$, et $L$ sur les segments $[BD]$ et $[MC]$.

### Deux rappels

**Angle inscrit.** Soit $X$ et $Y$ deux points, et $Z$ et $W$ deux points situés du même côté de la droite $(XY)$. Les quatre points $X$, $Y$, $Z$, $W$ sont sur un même cercle si et seulement si $\widehat{XZY} = \widehat{XWY}$.

**Angle entre une tangente et une corde.** Soit $\omega$ un cercle, $M$ et $X$ deux points de $\omega$, et $T$ un point de la tangente à $\omega$ en $M$. Si $Y$ est un point de $\omega$ situé de l'autre côté de la droite $(MX)$ que $T$, alors $\widehat{XMT} = \widehat{MYX}$.

*Preuve, dans le cas où le centre $O$ de $\omega$ est du même côté de $(MX)$ que $Y$.* L'angle au centre vaut $\widehat{MOX} = 2\,\widehat{MYX}$. Le triangle $OMX$ est isocèle en $O$, donc $\widehat{OMX} = 90^\circ - \widehat{MYX}$. La tangente est perpendiculaire au rayon $[OM]$, donc $\widehat{XMT} = 90^\circ - \widehat{OMX} = \widehat{MYX}$. Les autres cas se traitent de la même façon.

### Deux égalités d'angles

On applique le second rappel au cercle circonscrit au triangle $CME$, dont $(AB)$ est la tangente en $M$ :

$$\widehat{BMC} = \widehat{MEC} \qquad \text{et} \qquad \widehat{AME} = \widehat{MCE}.$$

Le point $D$ est sur le cercle qui passe par $B$, $M$ et $C$, du même côté que $M$ de la droite $(BC)$, qui est un côté du pentagone. De même, $D$ est sur le cercle qui passe par $A$, $M$ et $E$, du même côté que $M$ de la droite $(AE)$. D'après le premier rappel, $\widehat{BDC} = \widehat{BMC}$ et $\widehat{ADE} = \widehat{AME}$. Donc

$$(1) \qquad \widehat{BDC} = \widehat{MEC} \qquad \text{et} \qquad (2) \qquad \widehat{ADE} = \widehat{MCE}.$$

### Deux angles en D

Comme le pentagone est convexe, les demi-droites issues de $D$ se suivent dans l'ordre $[DE)$, $[DA)$, $[DB)$, $[DC)$.

Soit $r$ la rotation de centre $D$ et d'angle $\theta$ qui tourne dans le sens qui va de $[DC)$ vers $[DE)$. Comme $\widehat{PDC} = \theta$ et que $P$ est sur $[EC]$, elle envoie la demi-droite $[DC)$ sur $[DP)$. Comme $\widehat{BDA} = \theta$, elle envoie $[DB)$ sur $[DA)$. Une rotation conserve les angles, donc $\widehat{ADP} = \widehat{BDC}$.

De même, la rotation de centre $D$ et d'angle $\theta$ qui tourne dans l'autre sens envoie $[DE)$ sur $[DQ)$ et $[DA)$ sur $[DB)$. Donc $\widehat{BDQ} = \widehat{ADE}$.

### Deux quadrilatères inscrits

Comme $K$ est sur $[DA]$ et sur $[EM]$, et $P$ sur $[EC]$, on obtient avec $(1)$ :

$$\widehat{KDP} = \widehat{ADP} = \widehat{BDC} = \widehat{MEC} = \widehat{KEP}.$$

Les points $D$ et $E$ sont du même côté de $(KP)$, donc **$D$, $E$, $K$ et $P$ sont sur un même cercle**.

De même, $L$ est sur $[DB]$ et sur $[CM]$, et $Q$ sur $[CE]$, donc avec $(2)$ :

$$\widehat{LDQ} = \widehat{BDQ} = \widehat{ADE} = \widehat{MCE} = \widehat{LCQ}.$$

Les points $D$ et $C$ sont du même côté de $(LQ)$, donc **$D$, $Q$, $L$ et $C$ sont sur un même cercle**.

### Les droites (KP) et (LQ)

Dans le cercle qui passe par $D$, $E$, $K$, $P$, avec $P$ et $D$ du même côté de $(EK)$, puis avec $(2)$ :

$$\widehat{EPK} = \widehat{EDK} = \widehat{EDA} = \widehat{MCE} = \widehat{ECM}.$$

Les droites $(PK)$ et $(CM)$ coupent la droite $(EC)$ en $P$ et en $C$, sous des angles correspondants égaux, et $K$, $M$ sont du même côté de $(EC)$. Donc **$(KP)$ est parallèle à $(MC)$**.

De même, dans le cercle qui passe par $D$, $Q$, $L$, $C$, puis avec $(1)$ :

$$\widehat{CQL} = \widehat{CDL} = \widehat{CDB} = \widehat{MEC} = \widehat{CEM},$$

donc **$(LQ)$ est parallèle à $(ME)$**.

### Deux points R et S, et une parallèle à (AB)

Soit $R$ le point d'intersection des droites $(DA)$ et $(MC)$, et $S$ celui des droites $(DB)$ et $(ME)$. Sur la figure, $A$ est entre $D$ et $R$, et $M$ entre $R$ et $C$ ; de même, $B$ est entre $D$ et $S$, et $M$ entre $S$ et $E$.

- Avec $(1)$ : $\widehat{SDC} = \widehat{BDC} = \widehat{MEC} = \widehat{SEC}$. Comme $D$ et $E$ sont du même côté de $(SC)$, le point $S$ est sur le cercle $\Gamma$ circonscrit au triangle $CDE$.
- Avec $(2)$ : $\widehat{RDE} = \widehat{ADE} = \widehat{MCE} = \widehat{RCE}$. Comme $D$ et $C$ sont du même côté de $(RE)$, le point $R$ est aussi sur $\Gamma$.

Dans le cercle $\Gamma$, avec $R$ et $E$ du même côté de $(CS)$, puis avec la tangente :

$$\widehat{CRS} = \widehat{CES} = \widehat{CEM} = \widehat{BMC}.$$

Les droites $(RS)$ et $(MB)$ coupent la droite $(RC)$ en $R$ et en $M$ sous des angles correspondants égaux, et $S$, $B$ sont du même côté de $(RC)$. Donc **$(RS)$ est parallèle à $(AB)$**.

### La droite (KL) est parallèle à (AB)

À partir d'ici, on calcule avec des vecteurs, sans plus regarder la figure. On pose $\vec r = \overrightarrow{DR}$ et $\vec s = \overrightarrow{DS}$, qui ne sont pas colinéaires.

Comme $A$ est sur $[DR]$, $B$ sur $[DS]$ et $(AB)$ parallèle à $(RS)$, le théorème de Thalès donne un réel $t$, avec $0 < t < 1$, tel que $\overrightarrow{DA} = t\,\vec r$ et $\overrightarrow{DB} = t\,\vec s$. Alors

$$\overrightarrow{DM} = \frac{1}{2}\left(\overrightarrow{DA} + \overrightarrow{DB}\right) = \frac{t}{2}\,\vec r + \frac{t}{2}\,\vec s.$$

Le point $K$ est sur la droite $(DR)$ : il existe un réel $\alpha$ tel que $\overrightarrow{DK} = \alpha\,\vec r$. Il est aussi sur la droite $(SM)$ : il existe un réel $\lambda$ tel que $\overrightarrow{DK} = \overrightarrow{DS} + \lambda\,\overrightarrow{SM}$, avec $\overrightarrow{SM} = \overrightarrow{DM} - \overrightarrow{DS} = \frac{t}{2}\,\vec r + \left(\frac{t}{2} - 1\right)\vec s$. Donc

$$\alpha\,\vec r = \frac{\lambda t}{2}\,\vec r + \left(1 + \lambda\left(\frac{t}{2} - 1\right)\right)\vec s.$$

Comme $\vec r$ et $\vec s$ ne sont pas colinéaires, on peut identifier les coefficients : $\alpha = \lambda t/2$ et $1 + \lambda(t/2 - 1) = 0$. Donc $\lambda = 2/(2 - t)$, puis $\alpha = t/(2 - t)$.

Le point $L$ est défini de la même façon, en échangeant les rôles de $R$ et $S$ (il est sur $(DS)$ et sur $(RM)$). Le même calcul donne $\overrightarrow{DL} = \alpha\,\vec s$, avec la même valeur de $\alpha$. Par conséquent,

$$\overrightarrow{KL} = \overrightarrow{DL} - \overrightarrow{DK} = \alpha\,(\vec s - \vec r) = \alpha\,\overrightarrow{RS},$$

et **$(KL)$ est parallèle à $(RS)$, donc à $(AB)$**. On retiendra aussi que, avec $k = \alpha/t = 1/(2 - t)$,

$$\overrightarrow{DK} = k\,\overrightarrow{DA} \qquad \text{et} \qquad \overrightarrow{DL} = k\,\overrightarrow{DB}.$$

### Conclusion

Les droites $(KP)$ et $(LQ)$ sont parallèles à $(MC)$ et à $(ME)$, qui ne sont pas parallèles entre elles. Elles se coupent donc en un unique point $X$.

Soit $Y$ le point tel que $\overrightarrow{MY} = \overrightarrow{MK} + \overrightarrow{ML}$. Alors $\overrightarrow{KY} = \overrightarrow{ML}$, donc $Y$ est sur la parallèle à $(ML) = (MC)$ qui passe par $K$, c'est-à-dire sur $(KP)$. De même, $\overrightarrow{LY} = \overrightarrow{MK}$, donc $Y$ est sur la parallèle à $(MK) = (ME)$ qui passe par $L$, c'est-à-dire sur $(LQ)$. Donc $Y = X$ : le quadrilatère $MKXL$ est un parallélogramme, et

$$\overrightarrow{DX} = \overrightarrow{DM} + \overrightarrow{MK} + \overrightarrow{ML} = \overrightarrow{DK} + \overrightarrow{DL} - \overrightarrow{DM}.$$

D'après la partie précédente, $\overrightarrow{DK} + \overrightarrow{DL} = k\left(\overrightarrow{DA} + \overrightarrow{DB}\right) = 2k\,\overrightarrow{DM}$. Donc

$$\overrightarrow{DX} = (2k - 1)\,\overrightarrow{DM},$$

et le point $X$ est sur la droite $(DM)$. **Les droites $(KP)$, $(LQ)$ et $(MD)$ sont concourantes en $X$.**

## Going further

1. Déduisez du parallélisme de $(KL)$ et $(AB)$ que $\widehat{MLK} = \widehat{MEC}$, puis que les points $E$, $K$, $L$ et $C$ sont sur un même cercle.
2. Montrez que les points $K$, $L$, $P$ et $Q$ sont, eux aussi, sur un même cercle.
