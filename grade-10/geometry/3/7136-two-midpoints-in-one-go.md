---
id: "7136"
title: "Deux milieux d'un seul coup"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [vecteurs, thales, milieu, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Exercices d'échauffement », exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soit $ABC$ un triangle et soit $D$ un point du segment $[AB]$, distinct de $A$ et de $B$.
La parallèle à $(BC)$ passant par $D$ coupe $[AC]$ en $E$.

Les droites $(CD)$ et $(BE)$ se coupent en $J$. La droite $(AJ)$ coupe $[BC]$ en $M$ et
$[DE]$ en $N$.

Montrer que $M$ est le milieu de $[BC]$ et que $N$ est le milieu de $[DE]$.

## Hints

1. Prends $A$ comme origine et pose $\vec b = \vec{AB}$, $\vec c = \vec{AC}$. Ces deux
   vecteurs ne sont pas colinéaires.
2. Comme $(DE)$ est parallèle à $(BC)$, le théorème de Thalès donne
   $\vec{AD} = k\,\vec b$ et $\vec{AE} = k\,\vec c$ pour un même nombre $k$ avec
   $0 < k < 1$. Justifie-le.
3. Écris que $J$ est sur $(CD)$, puis qu'il est sur $(BE)$, et identifie les coefficients.
4. Le vecteur $\vec{AJ}$ que tu obtiendras aura une forme très particulière. Regarde-la bien
   avant de conclure.

## Solution

**Le repère.** Posons $\vec b = \vec{AB}$ et $\vec c = \vec{AC}$. Ces deux vecteurs ne sont
pas colinéaires, donc tout vecteur s'écrit d'une seule manière $x\vec b + y\vec c$ : on peut
identifier les coefficients.

Comme $(DE)$ est parallèle à $(BC)$, le théorème de Thalès dans le triangle $ABC$ donne

$$\frac{AD}{AB} = \frac{AE}{AC} .$$

En notant $k$ cette valeur commune, avec $0 < k < 1$, on a donc

$$\vec{AD} = k\,\vec b, \qquad \vec{AE} = k\,\vec c .$$

**Où est $J$ ?** Le point $J$ est sur $(CD)$, donc il existe un nombre $t$ tel que

$$\vec{AJ} = \vec{AC} + t\,\vec{CD} = \vec c + t(k\vec b - \vec c) = tk\,\vec b + (1-t)\,\vec c .$$

Il est aussi sur $(BE)$, donc il existe un nombre $s$ tel que

$$\vec{AJ} = \vec{AB} + s\,\vec{BE} = \vec b + s(k\vec c - \vec b) = (1-s)\,\vec b + sk\,\vec c .$$

En identifiant les coefficients :

$$tk = 1 - s \qquad \text{et} \qquad 1 - t = sk .$$

De la première, $s = 1 - tk$. En reportant dans la seconde :

$$1 - t = k(1 - tk) = k - tk^2 ,$$

donc $1 - k = t - tk^2 = t(1-k)(1+k)$. Comme $k \neq 1$, on peut simplifier par $1-k$ et
obtenir

$$t = \frac{1}{1+k} .$$

**La forme de $\vec{AJ}$.** On en tire $1 - t = \dfrac{k}{1+k}$ et $tk = \dfrac{k}{1+k}$,
d'où

$$\vec{AJ} = \frac{k}{1+k}\,\vec b + \frac{k}{1+k}\,\vec c = \frac{k}{1+k}\left(\vec b + \vec c\right).$$

**Le point $M$.** Soit $M_0$ le milieu de $[BC]$. Alors

$$\vec{AM_0} = \frac{\vec b + \vec c}{2} .$$

Les vecteurs $\vec{AJ}$ et $\vec{AM_0}$ sont donc colinéaires : la droite $(AJ)$ passe par
$M_0$. Comme elle coupe $[BC]$ en $M$ et qu'une droite ne coupe $(BC)$ qu'en un point,
$M = M_0$ : **$M$ est le milieu de $[BC]$.**

**Le point $N$.** Un point de la droite $(DE)$ s'écrit

$$\vec{AD} + u\,\vec{DE} = k\vec b + u(k\vec c - k\vec b) = k(1-u)\,\vec b + ku\,\vec c .$$

Il est sur la droite $(AJ)$, c'est-à-dire de la forme $\lambda(\vec b + \vec c)$, exactement
lorsque

$$k(1-u) = ku, \qquad \text{c'est-à-dire} \qquad u = \frac12 .$$

**$N$ est donc le milieu de $[DE]$.**

## Going further

Il y a plus simple pour $N$ une fois $M$ connu. La droite $(AM)$ coupe $[DE]$ en $N$, et
$(DE)$ est parallèle à $(BC)$ : le théorème de Thalès dans le triangle $ABM$ donne
$\frac{DN}{BM} = \frac{AD}{AB} = k$, et dans le triangle $ACM$ il donne $\frac{NE}{MC} = k$.
Comme $BM = MC$, on obtient $DN = NE$.

La configuration de cet exercice (un quadrilatère $DBCE$, ses deux diagonales, et la droite
qui joint l'intersection des côtés à l'intersection des diagonales) s'appelle un
**quadrilatère complet**. Elle a une propriété générale, dite de **division harmonique**, dont
l'exercice est le cas particulier où deux des côtés sont parallèles.
