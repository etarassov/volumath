---
id: "17809"
title: "Le triangle des pieds des hauteurs"
grade: 9
theme: geometry
difficulty: 3
duration_min: 40
tags: [hauteur, orthocentre, triangle-orthique, triangles-semblables, bissectrice, thales]
adapted_from: null
see_also: ["8132", "10038"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 4, p.38 ; solution p.38-39. Le triangle est supposé ici à angles aigus, et la solution publiée utilise des triangles semblables au lieu du cercle de diamètre [AH]."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ ses angles. Soient $D$, $E$, $F$ les pieds des hauteurs issues de $A$, $B$, $C$, et $H$ l'orthocentre, le point commun aux trois hauteurs.

1. Calculer les angles du triangle $AEF$, puis ceux du triangle $DEF$, en fonction de $\widehat{A}$, $\widehat{B}$, $\widehat{C}$.
2. Montrer que les droites $(DA)$, $(EB)$ et $(FC)$ sont les bissectrices des angles du triangle $DEF$. Qu'est-ce que le point $H$ pour le triangle $DEF$ ? Que peut-on dire des droites $(AB)$ et $(AC)$ ?
3. Soient $P$ et $Q$ les pieds des perpendiculaires menées de $D$ aux droites $(AB)$ et $(AC)$. Montrer que la droite $(PQ)$ est parallèle à la droite $(EF)$.

## Hints

1. Dans le triangle $ABE$, rectangle en $E$, exprimez $AE$ à l'aide de $AB$ et du cosinus de $\widehat{A}$. Faites de même pour $AF$ dans le triangle $ACF$.
2. Comparez les triangles $AEF$ et $ABC$ : un angle commun et des côtés proportionnels.
3. Le même raisonnement en $C$ donne $\widehat{CED}$. Alors $\widehat{DEF}$ est ce qui reste de l'angle plat en $E$.
4. Pour la question 2, comparez $\widehat{FEB}$ et $\widehat{BED}$, sachant que $(EB)$ est perpendiculaire à $(AC)$.
5. Pour la question 3, les droites $(HF)$ et $(DP)$ sont toutes les deux perpendiculaires à $(AB)$. Pensez au théorème de Thalès dans le triangle $ADP$.

## Solution

Comme les trois angles sont aigus, les pieds des hauteurs sont sur les côtés eux-mêmes, et $H$ est à l'intérieur du triangle.

**1. Les angles de $AEF$.** Le triangle $ABE$ est rectangle en $E$, donc $AE = AB \cos \widehat{A}$. De même, le triangle $ACF$ est rectangle en $F$, donc $AF = AC \cos \widehat{A}$. Ainsi

$$\frac{AE}{AB} = \frac{AF}{AC} = \cos \widehat{A} .$$

Les triangles $AEF$ et $ABC$ ont le même angle en $A$, et les côtés qui forment cet angle sont proportionnels ($E$ correspond à $B$, $F$ correspond à $C$). Ils sont donc semblables, et

$$\widehat{AEF} = \widehat{B}, \qquad \widehat{AFE} = \widehat{C}, \qquad \widehat{EAF} = \widehat{A} .$$

**Les angles de $DEF$.** Le même raisonnement au sommet $C$ (avec $CD = CA \cos \widehat{C}$ et $CE = CB \cos \widehat{C}$) montre que le triangle $CDE$ est semblable à $CAB$, avec $\widehat{CED} = \widehat{B}$. Au sommet $B$, on trouve de même $\widehat{BFD} = \widehat{C}$ et $\widehat{BDF} = \widehat{A}$, et au sommet $C$, $\widehat{CDE} = \widehat{A}$.

Les points $A$, $E$, $C$ sont alignés, donc

$$\widehat{DEF} = 180^\circ - \widehat{AEF} - \widehat{CED} = 180^\circ - 2\widehat{B} .$$

De même $\widehat{EFD} = 180^\circ - 2\widehat{C}$ et $\widehat{FDE} = 180^\circ - 2\widehat{A}$. (La somme fait bien $540^\circ - 2 \times 180^\circ = 180^\circ$.)

**2. Les bissectrices.** La droite $(EB)$ est perpendiculaire à $(AC)$, donc

$$\widehat{FEB} = 90^\circ - \widehat{AEF} = 90^\circ - \widehat{B}, \qquad \widehat{BED} = 90^\circ - \widehat{CED} = 90^\circ - \widehat{B} .$$

Ces deux angles sont égaux : $(EB)$ est la bissectrice de l'angle $\widehat{DEF}$. De la même façon, $(FC)$ est la bissectrice de $\widehat{EFD}$ et $(DA)$ celle de $\widehat{FDE}$.

Les trois bissectrices d'un triangle se coupent au centre de son cercle inscrit. Ici elles se coupent en $H$, puisque ce sont les hauteurs de $ABC$. **Le point $H$ est le centre du cercle inscrit dans le triangle $DEF$.**

La droite $(AC)$ passe par $E$ et elle est perpendiculaire à la bissectrice $(EB)$ : c'est la bissectrice de l'angle extérieur du triangle $DEF$ en $E$. De même, $(AB)$ est la bissectrice de l'angle extérieur en $F$. Le point $A$ est donc à la fois sur la bissectrice intérieure en $D$ et sur les bissectrices extérieures en $E$ et en $F$. Un tel point est à la même distance des trois droites $(DE)$, $(EF)$, $(FD)$ : c'est le centre d'un cercle tangent aux trois côtés, situé hors du triangle, appelé **cercle exinscrit**. De même, $B$ et $C$ sont les centres des deux autres cercles exinscrits du triangle $DEF$.

**3. Le parallélisme.** Les droites $(HF)$ et $(DP)$ sont toutes les deux perpendiculaires à $(AB)$, donc parallèles. Dans le triangle $ADP$, le point $H$ est sur $[AD]$ et $F$ sur $[AP]$, et $(HF) \parallel (DP)$. Le théorème de Thalès donne

$$\frac{AF}{AP} = \frac{AH}{AD} .$$

De même, $(HE)$ et $(DQ)$ sont perpendiculaires à $(AC)$, et dans le triangle $ADQ$ :

$$\frac{AE}{AQ} = \frac{AH}{AD} .$$

Donc $\frac{AF}{AP} = \frac{AE}{AQ}$. Les points $A$, $F$, $P$ d'une part et $A$, $E$, $Q$ d'autre part sont alignés dans le même ordre. D'après la réciproque du théorème de Thalès, **les droites $(EF)$ et $(PQ)$ sont parallèles.**
