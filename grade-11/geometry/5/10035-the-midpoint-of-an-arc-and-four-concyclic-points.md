---
id: "10035"
title: "Le milieu d'un arc et quatre points cocycliques"
grade: 11
theme: geometry
difficulty: 5
duration_min: 50
tags: [cercle circonscrit, bissectrice, milieu d'un arc, points cocycliques, equation de cercle, reperes, somme et produit des racines]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices du groupe A, exercice 8 (précision ajoutée à l'énoncé : AB ≠ AC, sinon la bissectrice passe par I et l'un des points D, E est confondu avec I) ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé utilise une inversion de centre I ; la solution est refaite ici dans un repère, avec l'équation d'un cercle et la somme et le produit des racines d'un trinôme)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$. On note $P$ le milieu de l'arc $BC$ du cercle circonscrit qui contient $A$. On suppose que la bissectrice de l'angle $\widehat{BAC}$ coupe le cercle de diamètre $[PC]$ en deux points $D$ et $E$. Soit $F$ le symétrique de $E$ par rapport à la droite $(BC)$, et $I$ le milieu de $[BC]$.

![Le triangle ABC et son cercle circonscrit, le point P, le cercle de diamètre [PC] en tirets, la bissectrice issue de A qui le coupe en D et E, et le symétrique F de E](10035-figure-1.svg)

Montrer que les points $B$, $D$, $F$, $I$ sont sur un même cercle.

## Hints

1. Prends un repère d'origine $I$ dans lequel $B(-1\,;\,0)$ et $C(1\,;\,0)$. Où sont le centre du cercle circonscrit et le point $P$ ?
2. La bissectrice issue de $A$ recoupe le cercle circonscrit en un point de la médiatrice de $[BC]$. Lequel ?
3. Écris l'équation d'un cercle qui passe par $B$ et par $I$. Il reste un seul nombre inconnu. Quelle condition sur $D$ et $F$ dit qu'ils sont sur le même de ces cercles ?
4. Les ordonnées de $D$ et de $E$ sont les deux solutions d'une équation du second degré. Utilise leur somme et leur produit.

## Solution

**Rappel : l'angle inscrit.** Un angle inscrit dans un cercle vaut la moitié de l'angle au centre qui intercepte le même arc.

### Étape 1 : le repère

On prend un repère orthonormé d'origine $I$ dans lequel $B(-1\,;\,0)$ et $C(1\,;\,0)$, et où $A$ a une ordonnée positive. Soit $\Omega$ le cercle circonscrit et $O$ son centre. Le point $O$ est sur la médiatrice de $[BC]$, qui est l'axe des ordonnées.

Le point $P$ est sur $\Omega$ et vérifie $PB = PC$, donc il est aussi sur l'axe des ordonnées. Cet axe passe par $O$ et coupe $\Omega$ en deux points diamétralement opposés : $P(0\,;\,p)$, sur l'arc qui contient $A$, avec $p > 0$, et $Q(0\,;\,q)$, sur l'autre arc, avec $q < 0$.

Le segment $[PQ]$ est un diamètre de $\Omega$ et $B$ est sur $\Omega$, donc le triangle $PBQ$ est rectangle en $B$. Avec $\overrightarrow{BP}(1\,;\,p)$ et $\overrightarrow{BQ}(1\,;\,q)$, on obtient $\overrightarrow{BP} \cdot \overrightarrow{BQ} = 0$, c'est-à-dire
$$1 + pq = 0 . \qquad (1)$$

### Étape 2 : la bissectrice passe par $Q$

La bissectrice issue de $A$ traverse le segment $[BC]$. Elle recoupe donc $\Omega$ en un point $Q'$ situé de l'autre côté de $(BC)$, sur l'arc $BC$ qui ne contient pas $A$. Les angles inscrits $\widehat{BAQ'}$ et $\widehat{Q'AC}$ sont égaux, donc les angles au centre $\widehat{BOQ'}$ et $\widehat{Q'OC}$ sont égaux. Les triangles $BOQ'$ et $Q'OC$ ont alors un angle égal compris entre deux côtés égaux au rayon : ils sont superposables, et $Q'B = Q'C$. Le point $Q'$ est donc sur la médiatrice de $[BC]$, sur $\Omega$, du côté opposé à $A$ : c'est $Q$.

La bissectrice est donc la droite $(AQ)$. Comme $AB \neq AC$, le point $A$ n'est pas sur l'axe des ordonnées, et la droite $(AQ)$ n'est pas cet axe. Elle n'est pas non plus parallèle à $(BC)$, car $A$ est au-dessus et $Q$ au-dessous. Elle a donc une équation de la forme
$$x = m(y - q) \qquad \text{avec } m \neq 0 .$$

### Étape 3 : le cercle de diamètre $[PC]$

Son centre est le milieu $\left(\frac{1}{2}\,;\,\frac{p}{2}\right)$ de $[PC]$, et le carré de son rayon vaut $\frac{PC^2}{4} = \frac{1 + p^2}{4}$. Son équation $\left(x - \frac{1}{2}\right)^2 + \left(y - \frac{p}{2}\right)^2 = \frac{1 + p^2}{4}$ s'écrit, après développement,
$$x^2 + y^2 = x + py . \qquad (2)$$

**Les points $D$ et $E$ ne sont pas sur $(BC)$.** Avec $y = 0$, l'équation (2) donne $x^2 = x$, donc les seuls points du cercle sur $(BC)$ sont $I$ et $C$.

- Le point $I(0\,;\,0)$ n'est pas sur la bissectrice, car $0 = m(0 - q)$ est faux ($m \neq 0$ et $q \neq 0$).
- Le point $C$ n'est pas sur la bissectrice : sinon la droite $(AQ)$ couperait $\Omega$ en trois points distincts $A$, $Q$, $C$, ce qui est impossible.

Le point $C(1\,;\,0)$ est sur la droite d'équation $x = m(y - q)$ si et seulement si $1 = -mq$. On a donc aussi $mq + 1 \neq 0$.

### Étape 4 : les cercles qui passent par $B$ et $I$

Pour un point $M(x\,;\,y)$ avec $y \neq 0$, on pose
$$g(M) = \frac{x^2 + y^2 + x}{y} .$$
Si deux points $M$ et $N$ hors de $(BC)$ vérifient $g(M) = g(N)$, alors ils vérifient tous les deux l'équation
$$x^2 + y^2 + x - g(M)\,y = 0, \quad \text{soit} \quad \left(x + \frac{1}{2}\right)^2 + \left(y - \frac{g(M)}{2}\right)^2 = \frac{1 + g(M)^2}{4} .$$
C'est l'équation d'un cercle, et ce cercle passe par $B(-1\,;\,0)$ et par $I(0\,;\,0)$. Les quatre points $B$, $I$, $M$, $N$ sont alors sur ce cercle.

Notons $D(d_x\,;\,d_y)$ et $E(e_x\,;\,e_y)$. Alors $F(e_x\,;\,-e_y)$, et
$$g(F) = \frac{e_x^2 + e_y^2 + e_x}{-e_y} = -g(E) .$$
Il suffit donc de montrer que
$$g(D) + g(E) = 0 .$$

### Étape 5 : le calcul

Les points $D$ et $E$ vérifient (2), donc $d_x^2 + d_y^2 + d_x = 2d_x + p\,d_y$, et
$$g(D) = \frac{2d_x}{d_y} + p .$$
Ils sont aussi sur la bissectrice, donc $d_x = m(d_y - q)$ et $\dfrac{d_x}{d_y} = m - \dfrac{mq}{d_y}$. Le même calcul vaut pour $E$, et en additionnant :
$$g(D) + g(E) = 4m + 2p - 2mq\left(\frac{1}{d_y} + \frac{1}{e_y}\right) = 4m + 2p - 2mq \times \frac{d_y + e_y}{d_y\,e_y} .$$

Cherchons les ordonnées des points communs à la bissectrice et au cercle. On remplace $x$ par $m(y - q)$ dans (2) :
$$m^2(y - q)^2 + y^2 - m(y - q) - py = 0 ,$$
$$(m^2 + 1)\,y^2 - (2m^2 q + m + p)\,y + mq(mq + 1) = 0 .$$
Les points $D$ et $E$ sont distincts et sur une droite non parallèle à $(BC)$, donc $d_y \neq e_y$ : ce sont les deux solutions de cette équation du second degré. D'après les relations entre les coefficients et les racines,
$$d_y + e_y = \frac{2m^2 q + m + p}{m^2 + 1} \qquad \text{et} \qquad d_y\,e_y = \frac{mq(mq + 1)}{m^2 + 1} .$$
Le produit n'est pas nul, d'après l'étape 3. Donc
$$2mq \times \frac{d_y + e_y}{d_y\,e_y} = \frac{2(2m^2 q + m + p)}{mq + 1} ,$$
et
$$g(D) + g(E) = \frac{(4m + 2p)(mq + 1) - 2(2m^2 q + m + p)}{mq + 1} = \frac{2m + 2pmq}{mq + 1} = \frac{2m(1 + pq)}{mq + 1} .$$
D'après (1), $1 + pq = 0$, donc $g(D) + g(E) = 0$.

**Conclusion.** On a $g(D) = -g(E) = g(F)$. D'après l'étape 4, les points $B$, $D$, $F$, $I$ sont sur un même cercle.

## Going further

- Le calcul ne dépend pas de celui des deux points qu'on appelle $D$. Donc $B$, $E$, $I$ et le symétrique de $D$ par rapport à $(BC)$ sont aussi sur un même cercle.
- Le corrigé utilise une inversion de centre $I$ qui échange $B$ et $C$, et $P$ et $Q$. Elle transforme le cercle de diamètre $[PC]$ en la droite $(BQ)$, et ramène le problème à un lemme sur un cercle de centre $Q$.
