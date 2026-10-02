---
id: "10235"
title: "Le milieu de [AB] est le centre du cercle MNK"
grade: 9
theme: geometry
difficulty: 5
duration_min: 60
tags: [droite-des-milieux, triangle-isocele, symetrie-axiale, symetrie-centrale, cercle-de-diametre, mediatrice, parallelogramme, cercle-circonscrit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 1 (géométrie)"
  reference: "2021-11_Sujet-envoi-1.pdf, Exercices Juniors, exercice 8 ; corrigé 2021-12_corrige-envoi-1.pdf (preuve directe, sans les conjugués isogonaux du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/11/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-11_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB < BC$ et $AB < CA$. On note $D$ le milieu du segment $[AB]$. Soit $P$ un point à l'intérieur du triangle tel que

$$\widehat{CAP} = \widehat{CBP} = \widehat{ACB}.$$

On note $M$ et $N$ les projetés orthogonaux du point $P$ sur les droites $(BC)$ et $(AC)$. La droite $d_1$ parallèle à $(AC)$ passant par $M$ et la droite $d_2$ parallèle à $(BC)$ passant par $N$ se coupent en un point $K$.

Montrer que $D$ est le centre du cercle circonscrit au triangle $MNK$.

![Le triangle ABC, le point P, ses projetés M et N, les droites d1 et d2 qui se coupent en K, et le milieu D de [AB]](10235-figure-1.svg)

## Hints

1. Il suffit de montrer que les trois longueurs $DM$, $DN$ et $DK$ sont égales. Le point $D$ est un milieu : pensez au théorème de la droite des milieux.
2. Tracez la parallèle à $(BC)$ passant par $P$ ; elle coupe $[AC]$ en un point $E$. Montrez que le triangle $APE$ est isocèle en $P$, et déduisez-en que $N$ est le milieu de $[AE]$, puis que $DN = \frac{BE}{2}$.
3. Dans le quadrilatère $PECB$, les côtés $[PE]$ et $[BC]$ sont parallèles et les angles en $B$ et en $C$ sont égaux. Avec la symétrie par rapport à la médiatrice de $[BC]$, montrez que $BE = PC$. Le même raisonnement donne $DM = \frac{PC}{2}$.
4. Les points $M$ et $N$ sont aussi sur le cercle de diamètre $[PC]$, dont le centre $Q$ est le milieu de $[PC]$. Comparez les positions de $D$ et de $Q$ sur la médiatrice de $[MN]$, puis utilisez le parallélogramme $CMKN$.

## Solution

*Rappels.*

- *Droite des milieux.* Dans un triangle $XYZ$, le segment qui joint les milieux de $[XY]$ et de $[XZ]$ mesure la moitié de $YZ$.
- *Triangle isocèle.* Dans un triangle isocèle en $X$, la hauteur issue de $X$ est aussi la médiane : son pied est le milieu du troisième côté.
- *Cercle de diamètre.* Si $\widehat{XUY} = 90°$, le point $U$ est sur le cercle de diamètre $[XY]$, dont le centre est le milieu de $[XY]$.
- *Médiatrice.* Un point est à la même distance de $X$ et de $Y$ si et seulement s'il est sur la médiatrice de $[XY]$.

On note $\gamma = \widehat{ACB}$. Il s'agit de montrer que $DM = DN = DK$.

Le point $N$ est bien sur le segment $[AC]$ : dans le triangle $APC$, l'angle en $A$ vaut $\gamma$, qui est aigu, et l'angle en $C$ est plus petit que $\gamma$ car $P$ est à l'intérieur du triangle. De même, $M$ est sur le segment $[BC]$.

![Les points E et F, les segments [BE] et [DN] en rouge, les segments [AF] et [DM] en pointillés](10235-figure-2.svg)

**Étape 1 : $N$ est le milieu de $[AE]$.** La parallèle à $(BC)$ passant par $P$ coupe le segment $[AC]$ en un point $E$, situé entre $A$ et $C$ puisque $P$ est à l'intérieur du triangle. Les droites $(EP)$ et $(CB)$ sont parallèles et coupées par la sécante $(AC)$, donc les angles correspondants sont égaux :

$$\widehat{AEP} = \widehat{ACB} = \gamma.$$

Dans le triangle $APE$, on a donc $\widehat{PAE} = \widehat{PAC} = \gamma = \widehat{PEA}$. Ce triangle a deux angles égaux, il est isocèle en $P$. Le pied de la hauteur issue de $P$, c'est-à-dire le point $N$, est donc le milieu de $[AE]$.

**Étape 2 : $BE = PC$.** Soit $\Delta$ la médiatrice de $[BC]$, et regardons la symétrie par rapport à $\Delta$. Elle échange $B$ et $C$. Elle garde la droite $(BC)$, et elle garde chacun des deux côtés de cette droite.

- La droite $(PE)$ est parallèle à $(BC)$, donc perpendiculaire à $\Delta$ : la symétrie la garde.
- La demi-droite $[BP)$ part de $B$ et fait l'angle $\gamma$ avec $[BC)$, du côté de $A$. Son image part de $C$ et fait l'angle $\gamma$ avec $[CB)$, du même côté. Comme $\widehat{BCA} = \gamma$, cette image est la demi-droite $[CA)$.

Le point $P$ est le point commun de $[BP)$ et de $(PE)$. Son image est donc le point commun de $[CA)$ et de $(PE)$, qui est $E$. La symétrie envoie ainsi $P$ sur $E$ et $C$ sur $B$. Une symétrie conserve les longueurs, donc

$$PC = EB.$$

**Étape 3 : $DN = DM = \frac{PC}{2}$.** Dans le triangle $ABE$, $D$ est le milieu de $[AB]$ et $N$ celui de $[AE]$. Par la droite des milieux et l'étape 2 :

$$DN = \frac{BE}{2} = \frac{PC}{2}.$$

On refait les étapes 1 et 2 en échangeant les rôles de $A$ et de $B$. La parallèle à $(AC)$ passant par $P$ coupe $[BC]$ en $F$. Le triangle $BPF$ est isocèle en $P$ (ses angles en $B$ et en $F$ valent $\gamma$), donc $M$ est le milieu de $[BF]$. La symétrie par rapport à la médiatrice de $[AC]$ envoie $P$ sur $F$, donc $AF = PC$. La droite des milieux dans le triangle $BAF$ donne

$$DM = \frac{AF}{2} = \frac{PC}{2}.$$

![Le cercle de diamètre [PC], son centre Q, le milieu Z de [MN], et les segments [MN], [CK], [QD]](10235-figure-3.svg)

**Étape 4 : $D$ et $Q$ sont symétriques par rapport à $Z$.** Soit $Q$ le milieu de $[PC]$. Les angles $\widehat{PNC}$ et $\widehat{PMC}$ sont droits, donc $N$ et $M$ sont sur le cercle de diamètre $[PC]$ :

$$QN = QM = \frac{PC}{2}.$$

Les points $D$ et $Q$ sont donc tous les deux à la distance $\frac{PC}{2}$ de $M$ et de $N$. En particulier, ils sont tous les deux sur la médiatrice de $[MN]$. Soit $Z$ le milieu de $[MN]$ ; cette médiatrice est la perpendiculaire à $(MN)$ en $Z$. Pour un point $X$ de cette droite, le triangle $XZM$ est rectangle en $Z$, et Pythagore donne $XZ^2 = XM^2 - ZM^2$. Avec $XM = \frac{PC}{2}$ pour $X = D$ comme pour $X = Q$ :

$$DZ = QZ.$$

Deux points d'une même droite passant par $Z$, à la même distance de $Z$, sont soit confondus, soit symétriques par rapport à $Z$. Or $D \neq Q$ : le point $Q$, milieu de $[PC]$ avec $P$ à l'intérieur du triangle, est lui aussi à l'intérieur du triangle, alors que $D$ est sur le côté $[AB]$. Donc **$Z$ est le milieu de $[QD]$**.

**Étape 5 : $DK = \frac{PC}{2}$.** Dans le quadrilatère $CMKN$, on a $(MK) = d_1 \parallel (AC) = (CN)$ et $(NK) = d_2 \parallel (BC) = (CM)$. C'est un parallélogramme. Ses diagonales $[CK]$ et $[MN]$ ont le même milieu, qui est $Z$.

La symétrie de centre $Z$ envoie donc $C$ sur $K$ (étape 5) et $Q$ sur $D$ (étape 4). Elle conserve les longueurs, donc

$$DK = QC = \frac{PC}{2}.$$

**Conclusion.** On a montré que $DM = DN = DK = \frac{PC}{2}$. Le point $D$ est à la même distance des trois sommets du triangle $MNK$ : **$D$ est le centre du cercle circonscrit au triangle $MNK$**, et le rayon de ce cercle est $\frac{PC}{2}$.

*Remarques.*

- L'hypothèse $AB < BC$ et $AB < CA$ dit que $\gamma$ est le plus petit angle du triangle. Elle sert seulement à ce que le point $P$ existe : il faut $\gamma < \widehat{CAB}$ et $\gamma < \widehat{CBA}$ pour que les demi-droites $[AP)$ et $[BP)$ entrent dans le triangle.
- Le cercle circonscrit à $MNK$ est l'image du cercle de diamètre $[PC]$ par la symétrie de centre $Z$, ce qui explique qu'ils aient le même rayon.
- Le corrigé officiel passe par une autre idée, plus difficile : $P$ est l'orthocentre du triangle $MNK$ (car $(PM) \perp (BC)$ et $(BC) \parallel (NK)$, et de même pour $(PN)$), puis il utilise des « conjugués isogonaux ». Les correcteurs signalent qu'une preuve directe était possible ; c'est celle-ci.
