---
id: "12065"
title: "Deux cercles par A et T : le point K est à égale distance de A et de T"
grade: 11
theme: geometry
difficulty: 5
duration_min: 50
tags: [cercle-circonscrit, symetrie-axiale, mediatrice, bissectrice, milieu-d-arc, produit-scalaire, angle-inscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, deuxième jour du test de sélection pour l'OIM 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice 6 ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice 6 ; le corrigé écrit « nécessairement s(M) = X » sans justification, alors que le cercle coupe la médiatrice en deux points : c'est l'hypothèse « X à l'intérieur du triangle » qui exclut l'autre point, ce que la solution ci-dessous démontre ; résultat vérifié par ordinateur sur de nombreuses figures"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

Soit $ABC$ un triangle et $\omega$ son cercle circonscrit. On note $M$ et $N$ les milieux respectifs des côtés $[AB]$ et $[AC]$, et $T$ le milieu de l'arc $BC$ de $\omega$ qui ne contient pas $A$.

Le cercle circonscrit au triangle $AMT$ rencontre la médiatrice de $[AC]$ en un point $X$, et le cercle circonscrit au triangle $ANT$ rencontre la médiatrice de $[AB]$ en un point $Y$. On suppose que $X$ et $Y$ sont à l'intérieur du triangle $ABC$.

Les droites $(MN)$ et $(XY)$ se coupent en un point $K$. Montrer que $KA = KT$.

![Le triangle ABC et son cercle circonscrit, les cercles circonscrits à AMT et à ANT en pointillés, les médiatrices de [AB] et de [AC] en gris, et les droites (MN) et (XY) qui se coupent en K](12065-figure-1.svg)

## Hints

1. Notez $O$ le centre de $\omega$, $\ell$ la médiatrice de $[AT]$ et $s$ la symétrie axiale d'axe $\ell$. Pourquoi $O$ est-il sur $\ell$ ? Pourquoi $s$ transforme-t-elle le cercle circonscrit à $AMT$ en lui-même ?
2. La droite $(AT)$ est la bissectrice de l'angle $\widehat{BAC}$. Montrez que $s$ transforme la droite $(AB)$ en une droite parallèle à $(AC)$. Un repère d'origine le milieu de $[AT]$ aide.
3. Déduisez-en que $s$ transforme la médiatrice de $[AB]$ en la médiatrice de $[AC]$. Sur quelles lignes se trouve alors le point $s(M)$ ?
4. Le cercle circonscrit à $AMT$ peut couper la médiatrice de $[AC]$ en deux points. Supposez que $X$ n'est pas $s(M)$, et montrez que $[TX]$ serait alors un diamètre de ce cercle. Pourquoi est-ce impossible pour un point situé à l'intérieur du triangle ?

## Solution

**Notations.** Notons $O$ le centre de $\omega$, $\gamma$ le cercle circonscrit à $AMT$ et $\gamma'$ le cercle circonscrit à $ANT$. Notons $m_B$ la médiatrice de $[AB]$ et $m_C$ la médiatrice de $[AC]$. Elles passent toutes les deux par $O$, puisque $OA = OB = OC$. La médiatrice $m_B$ est la perpendiculaire à $(AB)$ passant par $M$ et par $O$, et $m_C$ est la perpendiculaire à $(AC)$ passant par $N$ et par $O$.

Enfin, notons $\ell$ la médiatrice de $[AT]$ et $s$ la symétrie axiale d'axe $\ell$. Elle échange $A$ et $T$. Comme $KA = KT$ signifie exactement que $K$ est sur $\ell$, il s'agit de montrer que $s(K) = K$.

**Étape 1 : ce que $s$ laisse en place.** Comme $OA = OT$, le point $O$ est sur $\ell$, donc $s(O) = O$. Le centre de $\gamma$ est à égale distance de $A$ et de $T$, qui sont sur $\gamma$ : il est donc sur $\ell$, et $s$ le laisse en place. Une symétrie transforme un cercle en le cercle de même rayon centré en l'image du centre. Donc $s(\gamma) = \gamma$. De même, $s(\gamma') = \gamma'$.

**Étape 2 : la droite $(AT)$ est la bissectrice de l'angle $\widehat{BAC}$.** Les angles inscrits $\widehat{BAT}$ et $\widehat{TAC}$ interceptent les arcs $BT$ et $TC$ de $\omega$, qui ont la même longueur puisque $T$ est le milieu de l'arc $BC$. D'après le théorème de l'angle inscrit, ces deux angles sont égaux. Notons $\theta$ leur valeur commune. Comme $2\theta = \widehat{BAC} < 180°$, on a $0° < \theta < 90°$.

**Étape 3 : $s$ transforme la droite $(AB)$ en une parallèle à $(AC)$.** Prenons un repère orthonormé dont l'origine est le milieu de $[AT]$ et dont l'axe des abscisses est la droite $(AT)$, orienté de $A$ vers $T$. Dans ce repère, $\ell$ est l'axe des ordonnées, et la symétrie $s$ envoie le point $(x\,;\,y)$ sur le point $(-x\,;\,y)$. Elle transforme donc un vecteur de coordonnées $(p\,;\,q)$ en le vecteur $(-p\,;\,q)$.

La demi-droite $[AT)$ est à l'intérieur de l'angle $\widehat{BAC}$, donc $B$ et $C$ sont de part et d'autre de la droite $(AT)$. Orientons l'axe des ordonnées de façon que $B$ soit du côté des ordonnées positives. Le vecteur unitaire de même sens que $\overrightarrow{AB}$ fait un angle $\theta$ avec l'axe des abscisses : il a pour coordonnées $(\cos\theta\,;\,\sin\theta)$. Celui de même sens que $\overrightarrow{AC}$ fait un angle $\theta$ de l'autre côté : il a pour coordonnées $(\cos\theta\,;\,-\sin\theta)$.

L'image par $s$ du vecteur $(\cos\theta\,;\,\sin\theta)$ est $(-\cos\theta\,;\,\sin\theta)$, qui est l'opposé de $(\cos\theta\,;\,-\sin\theta)$. La droite $s(AB)$ a donc un vecteur directeur colinéaire à celui de $(AC)$ : elle est parallèle à $(AC)$.

**Étape 4 : $s$ échange les deux médiatrices.** La droite $m_B$ passe par $O$ et elle est perpendiculaire à $(AB)$. Une symétrie conserve les angles droits, et $s(O) = O$. Donc $s(m_B)$ passe par $O$ et elle est perpendiculaire à $s(AB)$, c'est-à-dire à $(AC)$ d'après l'étape 3. C'est exactement $m_C$. Ainsi $s(m_B) = m_C$, et, en appliquant $s$ une seconde fois, $s(m_C) = m_B$.

**Étape 5 : $X = s(M)$.** Le point $M$ est sur $\gamma$ et sur $m_B$. D'après les étapes 1 et 4, le point $s(M)$ est sur $\gamma$ et sur $m_C$. Le point $X$ est aussi sur $\gamma$ et sur $m_C$, mais une droite peut couper un cercle en deux points : il faut donc montrer que $X$ est bien $s(M)$.

Supposons au contraire que $X \neq s(M)$, et notons $Z = s(X)$. Alors $Z$ est sur $s(\gamma) = \gamma$ et sur $s(m_C) = m_B$, et $Z \neq M$. De plus $Z \neq A$, car $A$ n'est pas sur la médiatrice de $[AB]$.

Les points $M$ et $Z$ sont deux points distincts de $m_B$, donc la droite $(MZ)$ est $m_B$, qui est perpendiculaire à $(AB) = (AM)$. Le triangle $AMZ$ est donc rectangle en $M$. Le milieu de son hypoténuse $[AZ]$ est à égale distance de ses trois sommets : c'est le centre du cercle passant par $A$, $M$ et $Z$. Or ces trois points sont sur $\gamma$, et il ne passe qu'un seul cercle par trois points non alignés. Donc $[AZ]$ est un diamètre de $\gamma$.

Appliquons $s$ : elle laisse $\gamma$ et son centre en place, et elle envoie $A$ sur $T$ et $Z$ sur $X$. Donc $[TX]$ est aussi un diamètre de $\gamma$. Le point $A$ est sur $\gamma$, et il est distinct de $T$ et de $X$, donc l'angle $\widehat{TAX}$ est droit (un point d'un cercle voit un diamètre sous un angle droit). Ainsi

$$\overrightarrow{AX} \cdot \overrightarrow{AT} = 0 .$$

C'est impossible pour un point $X$ intérieur au triangle. En effet, un tel point s'écrit $\overrightarrow{AX} = u\,\overrightarrow{AB} + v\,\overrightarrow{AC}$ avec $u > 0$ et $v > 0$. D'après l'étape 2,

$$\overrightarrow{AB} \cdot \overrightarrow{AT} = AB \times AT \times \cos\theta > 0 \qquad \text{et} \qquad \overrightarrow{AC} \cdot \overrightarrow{AT} = AC \times AT \times \cos\theta > 0 ,$$

donc $\overrightarrow{AX} \cdot \overrightarrow{AT} = u\,\overrightarrow{AB} \cdot \overrightarrow{AT} + v\,\overrightarrow{AC} \cdot \overrightarrow{AT} > 0$.

Cette contradiction montre que $X = s(M)$. Le même raisonnement, en échangeant les rôles de $B$ et $C$, de $M$ et $N$, de $\gamma$ et $\gamma'$, montre que $Y = s(N)$.

**Étape 6 : conclusion.** La symétrie $s$ envoie $M$ sur $X$ et $N$ sur $Y$. Elle transforme donc la droite $(MN)$ en la droite $(XY)$, et la droite $(XY)$ en la droite $(MN)$.

Le point $K$ est sur $(MN)$ et sur $(XY)$. Son image $s(K)$ est donc sur $(XY)$ et sur $(MN)$. Or ces deux droites se coupent en un seul point, $K$. Donc $s(K) = K$, ce qui signifie que $K$ est sur l'axe $\ell$, la médiatrice de $[AT]$.

**Conclusion.** Le point $K$ est sur la médiatrice de $[AT]$, donc $KA = KT$.

**Remarque.** L'hypothèse « $X$ et $Y$ sont à l'intérieur du triangle » sert uniquement à choisir le bon point : l'étape 5 montre que l'autre point commun de $\gamma$ et de $m_C$, s'il existe, est le point de $\gamma$ diamétralement opposé à $T$.

## Going further

1. On suppose que $AB = AC$. Montrer que les droites $(MN)$ et $(XY)$ sont alors parallèles ou confondues, de sorte que le point $K$ n'existe pas.
2. Montrer que les droites $(MX)$ et $(NY)$ sont parallèles, et que $MN = XY$.
