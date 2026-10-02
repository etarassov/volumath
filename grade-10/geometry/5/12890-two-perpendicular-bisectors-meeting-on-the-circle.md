---
id: "12890"
title: "Deux médiatrices qui se coupent sur le cercle"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [quadrilatere-inscrit, mediatrice, triangles-isometriques, angle-inscrit, trapeze, parallelogramme, cercle-circonscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test junior, exercice 4, et test senior, exercice 5 (le même problème) ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (on suit la première solution ; on justifie en plus le sens des vecteurs AF et DE)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère inscrit dans un cercle $\Gamma$, tel que $AC < BD < AD$ et $\widehat{DBA} < 90^\circ$.

Soit $E$ le point de la parallèle à $(AB)$ passant par $D$ tel que $DE = AC$, et tel que les points $E$ et $C$ sont de part et d'autre de la droite $(AD)$.

Soit $F$ le point de la parallèle à $(CD)$ passant par $A$ tel que $AF = BD$, et tel que les points $F$ et $C$ sont de part et d'autre de la droite $(AD)$.

![Le quadrilatère ABCD inscrit dans le cercle, le segment [DE] parallèle à (AB), le segment [AF] parallèle à (CD), et le segment [EF]](12890-figure-1.svg)

Montrer que les médiatrices des segments $[BC]$ et $[EF]$ se coupent en un point du cercle $\Gamma$.

## Hints

1. Comparez les triangles $FAC$ et $BDE$ : quels côtés sont égaux ? Comparez ensuite les angles $\widehat{FAC}$ et $\widehat{BDE}$.
2. Soit $M$ le point du cercle situé sur la médiatrice de $[BC]$, sur l'arc qui contient $A$ et $D$. Il suffit de montrer que $ME = MF$.
3. Montrez que les triangles $EBM$ et $FCM$ sont isométriques.

## Solution

### Rappels

- **Angles inscrits.** Deux angles inscrits dans un cercle qui interceptent le même arc sont égaux. Par exemple, si $B$ et $C$ sont sur le cercle, du même côté de la corde $[AD]$, alors $\widehat{ABD} = \widehat{ACD}$.
- **Trapèze.** Dans un trapèze, deux angles qui ont pour côté commun un côté non parallèle ont pour somme $180^\circ$. Une diagonale fait des angles alternes-internes égaux avec les deux bases.
- **Triangles isométriques.** Si deux triangles ont un angle égal compris entre deux côtés égaux deux à deux, ils sont isométriques : leurs autres côtés et leurs autres angles sont égaux.

Les hypothèses $AC < BD < AD$ et $\widehat{DBA} < 90^\circ$ servent à fixer la figure : les points sont placés comme sur la figure de l'énoncé, et on lit les positions sur cette figure.

### Le sens des vecteurs AF et DE

Soit $F'$ le point tel que $\overrightarrow{AF'} = \overrightarrow{CD}$. Alors $ACDF'$ est un parallélogramme, ses diagonales $[AD]$ et $[CF']$ ont le même milieu, donc $C$ et $F'$ sont symétriques par rapport au milieu de $[AD]$ et sont de part et d'autre de la droite $(AD)$. Le point $F$, sur la droite $(AF')$ et du côté opposé à $C$, est donc sur la demi-droite $[AF')$ : **les vecteurs $\overrightarrow{AF}$ et $\overrightarrow{CD}$ ont le même sens**, et $ACDF$ est un trapèze de bases $[AF]$ et $[CD]$.

De même, soit $E'$ le point tel que $\overrightarrow{DE'} = \overrightarrow{BA}$. Alors $BAE'D$ est un parallélogramme, de diagonales $[BE']$ et $[AD]$, donc $E'$ et $B$ sont de part et d'autre de $(AD)$. Comme $B$ et $C$ sont du même côté de $(AD)$, le point $E$ est sur la demi-droite $[DE')$ : **les vecteurs $\overrightarrow{DE}$ et $\overrightarrow{BA}$ ont le même sens**, et $BDEA$ est un trapèze de bases $[DE]$ et $[AB]$.

### Les triangles FAC et BDE sont isométriques

- Dans le trapèze $ACDF$, le côté $[AC]$ n'est pas parallèle aux bases, donc $\widehat{FAC} + \widehat{ACD} = 180^\circ$.
- Dans le trapèze $BDEA$, le côté $[BD]$ n'est pas parallèle aux bases, donc $\widehat{BDE} + \widehat{DBA} = 180^\circ$.
- Les angles inscrits $\widehat{ACD}$ et $\widehat{ABD}$ interceptent le même arc $AD$, donc $\widehat{ACD} = \widehat{ABD}$.

Par conséquent

$$\widehat{FAC} = 180^\circ - \widehat{ACD} = 180^\circ - \widehat{ABD} = \widehat{BDE}.$$

Les triangles $FAC$ et $BDE$ ont donc un angle égal, en $A$ et en $D$, compris entre des côtés égaux : $AF = DB$ et $AC = DE$. Ils sont isométriques, avec les sommets dans l'ordre $F \leftrightarrow B$, $A \leftrightarrow D$, $C \leftrightarrow E$. On en tire

$$FC = BE \qquad \text{et} \qquad \widehat{AFC} = \widehat{DBE}.$$

### Le point M

Soit $M$ le point d'intersection de la médiatrice de $[BC]$ avec le cercle $\Gamma$ qui est sur l'arc $BC$ contenant $A$ et $D$. Sur la figure, $M$ est sur l'arc $AD$ qui ne contient ni $B$ ni $C$. Comme $M$ est sur la médiatrice de $[BC]$, on a $MB = MC$.

Il reste à montrer que $ME = MF$ : alors $M$ sera aussi sur la médiatrice de $[EF]$.

### Les triangles EBM et FCM sont isométriques

On a déjà $EB = FC$ et $BM = CM$. Comparons les angles $\widehat{EBM}$ et $\widehat{FCM}$. Sur la figure, la demi-droite $[BM)$ est entre $[BE)$ et $[BD)$, et la demi-droite $[CM)$ est entre $[CF)$ et $[CD)$. Donc

$$\widehat{EBM} = \widehat{EBD} - \widehat{MBD} \qquad \text{et} \qquad \widehat{FCM} = \widehat{FCD} - \widehat{MCD}.$$

- D'après l'isométrie, $\widehat{EBD} = \widehat{AFC}$. Dans le trapèze $ACDF$, la diagonale $[FC]$ fait des angles alternes-internes égaux avec les bases, donc $\widehat{AFC} = \widehat{FCD}$. Ainsi $\widehat{EBD} = \widehat{FCD}$.
- Les angles inscrits $\widehat{MBD}$ et $\widehat{MCD}$ interceptent le même arc $MD$, donc $\widehat{MBD} = \widehat{MCD}$.

Par différence, $\widehat{EBM} = \widehat{FCM}$. Les triangles $EBM$ et $FCM$ ont un angle égal compris entre des côtés égaux, ils sont isométriques, et

$$ME = MF.$$

### Conclusion

Le point $M$ vérifie $MB = MC$ et $ME = MF$ : il est sur la médiatrice de $[BC]$ et sur la médiatrice de $[EF]$. Comme il est sur le cercle $\Gamma$, **les deux médiatrices se coupent en un point du cercle $\Gamma$.**

## Going further

1. Montrez que les droites $(BE)$ et $(CF)$ se coupent en un point du cercle $\Gamma$. (Comparez les angles $\widehat{EBD}$ et $\widehat{FCD}$.)
2. Les triangles $EBM$ et $FCM$ sont isométriques. Montrez qu'une rotation de centre $M$ envoie $B$ sur $C$ et $E$ sur $F$.
