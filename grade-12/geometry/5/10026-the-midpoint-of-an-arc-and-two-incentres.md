---
id: "10026"
title: "Le milieu d'un arc et deux centres de cercles inscrits"
grade: 12
theme: geometry
difficulty: 5
duration_min: 75
tags: [cercle inscrit, angle inscrit, chasse aux angles, triangles semblables, puissance-d-un-point, alignement, quadrilatere inscrit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 1 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-1.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2013-2014-envoi-1-solutions.pdf (le corrigé utilise des angles orientés et une homothétie ; la solution est refaite ici avec des triangles semblables, en justifiant l'ordre des points)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-1.pdf"
---

## Statement

Un cercle $\omega$ passe par les sommets $B$ et $C$ d'un triangle $ABC$, et recoupe les côtés $[AB]$ et $[AC]$ en des points $D$ et $E$ différents des sommets. Les segments $[CD]$ et $[BE]$ se coupent en un point $O$. On note $M$ le centre du cercle inscrit dans le triangle $ADE$, et $N$ le centre du cercle inscrit dans le triangle $ODE$.

![Le triangle ABC, le cercle ω passant par B, C, D, E, les segments [CD] et [BE] qui se coupent en O, les points M et N, et le point F au milieu du petit arc DE](10026-figure-1.svg)

Montrer que le milieu $F$ du plus petit des deux arcs $DE$ du cercle $\omega$ est sur la droite $(MN)$.

## Hints

1. Note $\theta = \widehat{FDE}$. Note aussi $2x$ et $2y$ les angles en $D$ et en $E$ du triangle $ADE$, $2\beta = \widehat{BED}$ et $2\gamma = \widehat{CDE}$. Montre que $\widehat{DBE} = 2\theta$, puis que $\beta = x - \theta$ et $\gamma = y - \theta$.
2. Les angles $\widehat{FDM}$ et $\widehat{NED}$ sont donc égaux, ainsi que $\widehat{MEF}$ et $\widehat{NDE}$. Trace le cercle $\Gamma$ qui passe par $D$, $M$, $E$. Les droites $(DF)$ et $(EF)$ le recoupent en $P$ et en $Q$. Montre que $FP = FQ$.
3. Compare les triangles $NDE$ et $MPQ$, puis les triangles $FDN$ et $FPM$.

## Solution

**Trois rappels.**

- **Angles inscrits.** Un angle inscrit dans un cercle vaut la moitié de l'arc qu'il intercepte, c'est-à-dire de l'arc compris entre ses deux côtés, qui ne contient pas son sommet. C'est le théorème de l'angle au centre. En particulier, deux angles inscrits qui interceptent le même arc sont égaux, et deux arcs égaux ont des cordes égales.
- **Cordes qui se coupent.** Si deux cordes $[UV]$ et $[ST]$ d'un cercle se coupent en un point $K$, alors $KU \times KV = KS \times KT$. En effet, les triangles $KUS$ et $KTV$ ont des angles opposés par le sommet égaux en $K$, et $\widehat{KUS} = \widehat{VUS} = \widehat{VTS} = \widehat{KTV}$, deux angles inscrits qui interceptent le même arc $VS$. Ils sont donc semblables, d'où $\dfrac{KU}{KT} = \dfrac{KS}{KV}$.
- **Triangles semblables.** Deux triangles qui ont deux angles égaux sont semblables. Deux triangles qui ont un angle égal compris entre deux côtés proportionnels sont semblables.

On pose $\widehat{ADE} = 2x$, $\widehat{AED} = 2y$, $\widehat{BED} = 2\beta$ et $\widehat{CDE} = 2\gamma$.

Les points $D$ et $E$ sont à l'intérieur des côtés $[AB]$ et $[AC]$, donc $BCED$ est un quadrilatère convexe inscrit dans $\omega$. Ses diagonales $[CD]$ et $[BE]$ se coupent en $O$, qui est à l'intérieur des deux segments. Ainsi $\widehat{ODE} = \widehat{CDE} = 2\gamma$ et $\widehat{OED} = \widehat{BED} = 2\beta$.

Le centre $M$ du cercle inscrit est sur les bissectrices du triangle $ADE$, donc $\widehat{MDE} = x$ et $\widehat{MED} = y$. De même, $\widehat{NDE} = \gamma$ et $\widehat{NED} = \beta$.

### Étape 1 : où est $F$, et l'angle $\theta$

Le point $D$ est strictement entre $A$ et $B$, donc $A$ et $B$ sont de part et d'autre de la droite $(DE)$. De même pour $A$ et $C$. L'arc $DE$ de $\omega$ qui ne contient ni $B$ ni $C$ est donc du côté de $A$.

L'angle inscrit $\widehat{DBE}$ intercepte cet arc, et il est plus petit que $\widehat{ABC}$, car la demi-droite $[BE)$ est à l'intérieur de l'angle $\widehat{ABC}$. De même, $\widehat{DCE}$ intercepte le même arc et $\widehat{DCE} < \widehat{ACB}$. Comme $\widehat{DBE} = \widehat{DCE}$, on obtient $2\,\widehat{DBE} < \widehat{ABC} + \widehat{ACB} < 180°$. L'arc vaut le double de $\widehat{DBE}$, donc il mesure moins de $180°$ : **c'est le plus petit des deux arcs $DE$**, et le point $F$ est sur cet arc, du côté de $A$ par rapport à $(DE)$.

Comme $F$ est le milieu de l'arc, les arcs $DF$ et $FE$ sont égaux, donc $FD = FE$. On pose $\theta = \widehat{FDE} = \widehat{FED}$. L'angle $\widehat{FDE}$ intercepte l'arc $FE$, qui est la moitié de l'arc $DE$, alors que $\widehat{DBE}$ et $\widehat{DCE}$ interceptent tout l'arc $DE$. Donc
$$\widehat{DBE} = \widehat{DCE} = 2\theta .$$

### Étape 2 : $\beta = x - \theta$ et $\gamma = y - \theta$

Dans le triangle $DBE$, l'angle $\widehat{ADE}$ est un angle extérieur en $D$, car $A$ est sur le prolongement de $[BD]$. Il est égal à la somme des deux angles intérieurs qui ne sont pas en $D$ :
$$2x = \widehat{ADE} = \widehat{DBE} + \widehat{BED} = 2\theta + 2\beta .$$
De même, dans le triangle $EDC$, l'angle extérieur en $E$ donne $2y = \widehat{AED} = \widehat{DCE} + \widehat{CDE} = 2\theta + 2\gamma$. D'où $\beta = x - \theta$ et $\gamma = y - \theta$.

En particulier $\theta < x$ et $\theta < y$. Le point $F$ est du même côté de $(DE)$ que $M$, avec $\widehat{FDE} < \widehat{MDE}$ et $\widehat{FED} < \widehat{MED}$ : **$F$ est à l'intérieur du triangle $DME$**, et
$$\widehat{FDM} = x - \theta = \beta, \qquad \widehat{FEM} = y - \theta = \gamma .$$

### Étape 3 : le cercle $\Gamma$ et les points $P$, $Q$

Soit $\Gamma$ le cercle qui passe par $D$, $M$, $E$. Le point $F$ est à l'intérieur du triangle $DME$, donc à l'intérieur de $\Gamma$. La droite $(DF)$ recoupe $\Gamma$ en un point $P$, et $F$ est entre $D$ et $P$. En partant de $D$, la demi-droite $[DF)$ sort du triangle en un point du côté $[ME]$, avant d'atteindre $P$. Donc $D$ et $P$ sont de part et d'autre de $(ME)$ : $P$ est sur l'arc $ME$ de $\Gamma$ qui ne contient pas $D$. De même, la droite $(EF)$ recoupe $\Gamma$ en un point $Q$ de l'arc $DM$ qui ne contient pas $E$, et $F$ est entre $E$ et $Q$. Sur $\Gamma$, les cinq points sont donc dans l'ordre $D$, $Q$, $M$, $P$, $E$.

Les cordes $[DP]$ et $[EQ]$ de $\Gamma$ se coupent en $F$, donc $FD \times FP = FE \times FQ$. Comme $FD = FE$, on obtient $FP = FQ$.

Les triangles $FDE$ et $FPQ$ ont des angles égaux en $F$, opposés par le sommet, et $\dfrac{FD}{FP} = \dfrac{FE}{FQ}$. Ils sont donc semblables, et
$$\frac{DE}{PQ} = \frac{FD}{FP} . \qquad (1)$$

### Étape 4 : les triangles $NDE$ et $MPQ$ sont semblables

Dans $\Gamma$, avec l'ordre $D$, $Q$, $M$, $P$, $E$ :

- $\widehat{MPQ}$ et $\widehat{MEQ}$ interceptent le même arc $MQ$, donc $\widehat{MPQ} = \widehat{MEQ} = \widehat{MEF} = \gamma$, car $Q$ est sur la demi-droite $[EF)$ ;
- $\widehat{MQP}$ et $\widehat{MDP}$ interceptent le même arc $MP$, donc $\widehat{MQP} = \widehat{MDP} = \widehat{MDF} = \beta$.

Le triangle $MPQ$ a donc les angles $\gamma$ en $P$ et $\beta$ en $Q$, comme le triangle $NDE$ a les angles $\gamma$ en $D$ et $\beta$ en $E$. Ces deux triangles sont semblables, $N$ correspondant à $M$, $D$ à $P$ et $E$ à $Q$. Avec $(1)$ :
$$\frac{DN}{PM} = \frac{DE}{PQ} = \frac{FD}{FP}, \qquad \text{donc} \qquad \frac{DN}{DF} = \frac{PM}{PF} . \qquad (2)$$

### Étape 5 : les triangles $FDN$ et $FPM$ sont semblables

Le point $N$ est à l'intérieur du triangle $ODE$, donc de l'autre côté de $(DE)$ par rapport à $A$ et à $F$. Les angles $\widehat{FDE} = \theta$ et $\widehat{EDN} = \gamma$ sont adjacents, de somme $\theta + \gamma = y < 90°$, donc $\widehat{FDN} = \theta + \gamma$.

Dans $\Gamma$, les angles $\widehat{DPM}$ et $\widehat{DEM}$ interceptent le même arc $DM$, celui qui contient $Q$. Comme $F$ est entre $D$ et $P$, la demi-droite $[PF)$ est la demi-droite $[PD)$, et
$$\widehat{FPM} = \widehat{DPM} = \widehat{DEM} = y = \theta + \gamma = \widehat{FDN} .$$
Avec $(2)$, les triangles $FDN$ et $FPM$ ont un angle égal compris entre deux côtés proportionnels. Ils sont semblables, $D$ correspondant à $P$ et $N$ à $M$. En particulier
$$\widehat{DFN} = \widehat{PFM} .$$

### Étape 6 : l'alignement

Les angles $\widehat{NDF} = \theta + \gamma$ et $\widehat{FDM} = \beta$ sont adjacents, et leur somme vaut $\theta + \gamma + \beta = x + \gamma = \dfrac{1}{2}\left(\widehat{ADE} + \widehat{EDC}\right) = \dfrac{1}{2}\,\widehat{ADC} < 90°$. La demi-droite $[DF)$ est donc à l'intérieur de l'angle $\widehat{NDM}$ : les points $N$ et $M$ sont de part et d'autre de la droite $(DF)$, qui est aussi la droite $(DP)$.

Soit $N'$ le symétrique de $N$ par rapport à $F$. La symétrie de centre $F$ envoie la demi-droite $[FD)$ sur la demi-droite $[FP)$ et $N$ sur $N'$, donc $\widehat{PFN'} = \widehat{DFN} = \widehat{PFM}$. Le point $N'$ est de l'autre côté de $(DP)$ par rapport à $N$, donc du même côté que $M$. Les demi-droites $[FN')$ et $[FM)$ font le même angle avec $[FP)$, du même côté de la droite $(DP)$ : elles sont confondues.

**Conclusion.** Le point $M$ est sur la demi-droite $[FN')$, qui prolonge le segment $[NF]$ au-delà de $F$. Les points $N$, $F$, $M$ sont donc alignés : le milieu $F$ du petit arc $DE$ est sur la droite $(MN)$.

## Going further

- Le corrigé termine plus vite avec une homothétie. Comme $FP = FQ$ et $FD = FE$, les droites $(PQ)$ et $(DE)$ sont parallèles. Les triangles $NDE$ et $MPQ$ ont alors leurs côtés deux à deux parallèles, et l'homothétie de centre $F$ qui envoie $D$ sur $P$ et $E$ sur $Q$ envoie aussi $N$ sur $M$. Le centre $F$, le point $N$ et son image $M$ sont alignés.
- Le corrigé donne aussi une solution par le calcul : on exprime la tangente de l'angle entre $(FM)$ et $(DE)$ avec la loi des sinus dans les triangles $MDF$ et $MEF$, puis on vérifie que l'angle entre $(FN)$ et $(DE)$ a la même tangente.
