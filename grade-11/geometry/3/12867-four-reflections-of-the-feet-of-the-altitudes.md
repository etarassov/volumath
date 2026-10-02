---
id: "12867"
title: "Quatre symétriques des pieds des hauteurs"
grade: 11
theme: geometry
difficulty: 3
duration_min: 35
tags: [hauteur, symetrie-axiale, quadrilatere-inscrit, angle-inscrit, alignement, perimetre, chasse-aux-angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 novembre 2024"
  reference: "2025-10_Sujet-Test-1-2024-2025.pdf, test senior, exercice 1 ; corrigé 2025-10_Corrige-Test-1-2024-2025.pdf (on suit la première solution du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-1-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note $B'$ et $C'$ les pieds des hauteurs issues de $B$ et de $C$.

Soit $K$ et $L$ les symétriques du point $B'$ par rapport aux droites $(AB)$ et $(BC)$. Soit $M$ et $N$ les symétriques du point $C'$ par rapport aux droites $(AC)$ et $(BC)$.

![Le triangle ABC, les hauteurs [BB'] et [CC'], et les quatre symétriques K, L, M et N](12867-figure-1.svg)

Démontrer que $KL = MN$.

## Hints

1. Faites une grande figure et tracez les segments $[KL]$ et $[MN]$. Que remarquez-vous ? Introduisez aussi le pied $A'$ de la hauteur issue de $A$.
2. Montrez que les points $A$, $B$, $A'$ et $B'$ sont sur un même cercle, puis que $\widehat{CA'B'} = \widehat{CAB}$.
3. Comparez les angles $\widehat{BA'N}$ et $\widehat{CA'B'}$. Qu'en déduisez-vous pour les points $B'$, $A'$ et $N$ ?
4. Exprimez $MN$, puis $KL$, à l'aide des longueurs des côtés du triangle $A'B'C'$.

## Solution

On note $A'$ le pied de la hauteur issue de $A$. Comme les angles du triangle sont aigus, les trois pieds $A'$, $B'$ et $C'$ sont sur les côtés $[BC]$, $[CA]$ et $[AB]$, et distincts des sommets. On va montrer que $KL$ et $MN$ sont tous les deux égaux au périmètre du triangle $A'B'C'$.

### Un lemme sur les pieds de deux hauteurs

**Lemme.** On a $\widehat{CA'B'} = \widehat{CAB}$ et $\widehat{CB'A'} = \widehat{CBA}$.

*Preuve.* Les angles $\widehat{AA'B}$ et $\widehat{AB'B}$ sont droits, donc $A'$ et $B'$ sont sur le cercle de diamètre $[AB]$. Le quadrilatère $ABA'B'$ est convexe : c'est le triangle $ABC$ auquel on a coupé le coin $C$ par le segment $[A'B']$. Il est inscrit dans un cercle, donc ses angles opposés sont supplémentaires :

$$\widehat{BA'B'} + \widehat{B'AB} = 180^\circ \qquad \text{et} \qquad \widehat{AB'A'} + \widehat{A'BA} = 180^\circ.$$

Comme $A'$ est sur le segment $[BC]$, on a $\widehat{CA'B'} = 180^\circ - \widehat{BA'B'} = \widehat{B'AB} = \widehat{CAB}$. De même, comme $B'$ est sur le segment $[AC]$, $\widehat{CB'A'} = 180^\circ - \widehat{AB'A'} = \widehat{A'BA} = \widehat{CBA}$.

Le même raisonnement s'applique aux deux autres sommets. On obtient ainsi six égalités, que l'on va utiliser :

- au sommet $C$ (pieds $A'$ et $B'$) : $\widehat{CA'B'} = \widehat{CAB}$ et $\widehat{CB'A'} = \widehat{CBA}$ ;
- au sommet $B$ (pieds $A'$ et $C'$) : $\widehat{BA'C'} = \widehat{BAC}$ et $\widehat{BC'A'} = \widehat{BCA}$ ;
- au sommet $A$ (pieds $B'$ et $C'$) : $\widehat{AB'C'} = \widehat{ABC}$ et $\widehat{AC'B'} = \widehat{ACB}$.

### Les points B′, A′ et N sont alignés

Le point $N$ est le symétrique de $C'$ par rapport à la droite $(BC)$, qui contient $A'$ et $B$. La symétrie conserve les angles, donc

$$\widehat{BA'N} = \widehat{BA'C'} = \widehat{BAC} = \widehat{CA'B'}.$$

Le point $C'$ est du même côté de $(BC)$ que $A$, donc $N$ est de l'autre côté. Le point $B'$, lui, est du même côté que $A$.

Prolongeons la demi-droite $[A'B')$ au-delà de $A'$ : on obtient une demi-droite $[A'P)$, de l'autre côté de $(BC)$. Les angles $\widehat{BA'P}$ et $\widehat{CA'B'}$ sont opposés par le sommet, donc égaux. Les demi-droites $[A'P)$ et $[A'N)$ sont du même côté de $(BC)$ et font le même angle avec $[A'B)$ : elles sont confondues.

Donc **$B'$, $A'$ et $N$ sont alignés, et $A'$ est entre $B'$ et $N$.**

### Les points M, B′ et A′ sont alignés

On recommence au point $B'$. Le point $M$ est le symétrique de $C'$ par rapport à la droite $(AC)$, qui contient $A$ et $B'$, donc

$$\widehat{AB'M} = \widehat{AB'C'} = \widehat{ABC} = \widehat{CB'A'}.$$

Le point $C'$ est du même côté de $(AC)$ que $B$, donc $M$ est de l'autre côté, alors que $A'$ est du même côté que $B$. Le même raisonnement, avec des angles opposés par le sommet, montre que **$M$, $B'$ et $A'$ sont alignés, et $B'$ est entre $M$ et $A'$.**

### Calcul de MN

Les quatre points $M$, $B'$, $A'$, $N$ sont donc alignés, dans cet ordre, et

$$MN = MB' + B'A' + A'N.$$

Une symétrie conserve les longueurs, et elle laisse fixes les points de son axe. Comme $B'$ est sur $(AC)$, on a $MB' = C'B'$. Comme $A'$ est sur $(BC)$, on a $A'N = A'C'$. Donc

$$MN = B'C' + A'B' + C'A'.$$

### Calcul de KL

On fait de même avec $K$ et $L$, en échangeant les rôles de $B$ et de $C$.

- $K$ est le symétrique de $B'$ par rapport à $(AB)$ : $\widehat{AC'K} = \widehat{AC'B'} = \widehat{ACB} = \widehat{BC'A'}$. Comme $K$ et $A'$ sont de part et d'autre de $(AB)$, les points $K$, $C'$, $A'$ sont alignés, avec $C'$ entre $K$ et $A'$.
- $L$ est le symétrique de $B'$ par rapport à $(BC)$ : $\widehat{CA'L} = \widehat{CA'B'} = \widehat{CAB} = \widehat{BA'C'}$. Comme $L$ et $C'$ sont de part et d'autre de $(BC)$, les points $C'$, $A'$, $L$ sont alignés, avec $A'$ entre $C'$ et $L$.

Ainsi $K$, $C'$, $A'$, $L$ sont alignés dans cet ordre, et, avec $KC' = B'C'$ et $A'L = A'B'$,

$$KL = KC' + C'A' + A'L = B'C' + C'A' + A'B'.$$

### Conclusion

Les longueurs $KL$ et $MN$ sont toutes les deux égales au périmètre du triangle $A'B'C'$. Donc **$KL = MN$.**

## Going further

1. Montrez que les droites $(AA')$, $(BB')$ et $(CC')$ sont les bissectrices des angles du triangle $A'B'C'$. (Utilisez les six égalités du lemme.)
2. Soit $P$ un point du segment $[BC]$, et $P_1$, $P_2$ ses symétriques par rapport à $(AB)$ et $(AC)$. Pour $Q$ sur $[CA]$ et $R$ sur $[AB]$, comparez le périmètre du triangle $PQR$ à la longueur $P_1 P_2$. Montrez ensuite que, parmi tous les triangles qui ont un sommet sur chaque côté de $ABC$, le triangle $A'B'C'$ a le plus petit périmètre (c'est le problème de Fagnano ; remarquez que le triangle $AP_1P_2$ est isocèle en $A$, avec un angle au sommet égal à $2\,\widehat{BAC}$).
