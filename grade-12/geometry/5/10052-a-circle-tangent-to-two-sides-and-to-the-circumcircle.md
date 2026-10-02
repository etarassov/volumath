---
id: "10052"
title: "Un cercle tangent à deux côtés et au cercle circonscrit"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [hors-programme, theoreme de pascal, cercles tangents, cercle circonscrit, cercle inscrit, bissectrice, droites concourantes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf (même méthode que le corrigé, le théorème de Pascal ; l'homothétie du corrigé est remplacée par un argument avec deux triangles isocèles. L'énoncé original oublie l'hypothèse AB ≠ AC : si AB = AC, alors F = M et la droite (FM) n'existe pas)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB \neq AC$, et $\Gamma$ son cercle circonscrit. Soit $M$ le milieu de l'arc $BC$ de $\Gamma$ qui ne contient pas $A$.

Un cercle $\mathcal{C}$ est tangent à la demi-droite $[AB)$ en $D$, à la demi-droite $[AC)$ en $E$, et tangent intérieurement à $\Gamma$ en $F$.

![Le triangle ABC, son cercle circonscrit, et en tirets le cercle tangent aux demi-droites issues de A qui portent les côtés AB et AC, en D et E et tangent intérieurement au cercle circonscrit en F ; le point M est le milieu de l'arc BC](10052-figure-1.svg)

Montrer que les droites $(DE)$, $(BC)$ et $(FM)$ sont concourantes.

## Hints

1. Soit $M_C$ le milieu de l'arc $AB$ qui ne contient pas $C$. Montre que les points $F$, $D$, $M_C$ sont alignés. Pour cela, compare les triangles isocèles $KFD$ et $OFX$, où $K$ et $O$ sont les centres des cercles et $X$ le second point d'intersection de $(FD)$ avec $\Gamma$.
2. De même, $F$, $E$ et le milieu $M_B$ de l'arc $AC$ qui ne contient pas $B$ sont alignés. Les droites $(AM)$, $(BM_B)$, $(CM_C)$ sont les trois bissectrices du triangle : elles passent par le centre $I$ du cercle inscrit.
3. Applique le théorème de Pascal à l'hexagone $ABM_BFM_CC$.
4. Applique-le ensuite à l'hexagone $AMFM_BBC$.

## Solution

**Rappel : le théorème de Pascal.** Soient $P_1$, $P_2$, $P_3$, $P_4$, $P_5$, $P_6$ six points distincts d'un même cercle, placés dans n'importe quel ordre sur le cercle. On regarde les « côtés opposés » de l'hexagone $P_1P_2P_3P_4P_5P_6$ : les droites $(P_1P_2)$ et $(P_4P_5)$, puis $(P_2P_3)$ et $(P_5P_6)$, puis $(P_3P_4)$ et $(P_6P_1)$. Si chacune de ces trois paires de droites se coupe en un point, alors ces trois points sont alignés. C'est un théorème de géométrie projective, qu'on admet ici.

On note $O$ et $R$ le centre et le rayon de $\Gamma$, $K$ et $r$ ceux de $\mathcal{C}$, et $I$ le centre du cercle inscrit dans $ABC$. On note $M_B$ le milieu de l'arc $AC$ qui ne contient pas $B$, et $M_C$ le milieu de l'arc $AB$ qui ne contient pas $C$.

### Étape 1 : les milieux des arcs et les bissectrices

Les arcs $BM$ et $MC$ sont égaux, donc les angles inscrits $\widehat{BAM}$ et $\widehat{MAC}$ aussi : la droite $(AM)$ est la bissectrice issue de $A$. De même, $(BM_B)$ et $(CM_C)$ sont les bissectrices issues de $B$ et de $C$. Ces trois droites passent par $I$.

### Étape 2 : quelques positions

Deux cercles tangents intérieurement en $F$ ont leurs centres alignés avec $F$ : les points $O$, $K$, $F$ sont alignés, et $K$ est sur le segment $[OF]$. Le cercle $\mathcal{C}$ est à l'intérieur de $\Gamma$ et ne le touche qu'en $F$.

- $F$ n'est pas $A$. Sinon $A$ serait sur $\mathcal{C}$ et sur sa tangente $(AB)$, donc $A = D$, et de même $A = E$ : le cercle aurait deux tangentes différentes au même point.
- $F$ n'est pas $B$. Sinon $B$ serait sur $\mathcal{C}$ et sur $(AB)$, donc $B = D$. Les cercles $\mathcal{C}$ et $\Gamma$, tangents en $B$, auraient la même tangente en $B$, à savoir $(AB)$. Mais $(AB)$ recoupe $\Gamma$ en $A$, elle n'est pas tangente à $\Gamma$. De même, $F \neq C$.
- $D \neq F$, car $F$ n'est pas sur $(AB)$ ($\Gamma$ ne coupe $(AB)$ qu'en $A$ et $B$). Donc $D$ est strictement à l'intérieur de $\Gamma$. De même pour $E$.
- Le cercle $\mathcal{C}$ est tout entier d'un même côté de sa tangente $(AB)$, celui du point $E$, donc celui de $C$. En particulier, $F$ est du côté de $C$ par rapport à $(AB)$. De même, $F$ est du côté de $B$ par rapport à $(AC)$.

### Étape 3 : les points $F$, $D$, $M_C$ sont alignés

La droite $(FD)$ recoupe $\Gamma$ en un point $X$, et $D$ est entre $F$ et $X$, car $D$ est à l'intérieur de $\Gamma$. Les demi-droites $[FK)$ et $[FO)$ sont les mêmes, ainsi que $[FD)$ et $[FX)$, donc $\widehat{KFD} = \widehat{OFX}$.

Le triangle $KFD$ est isocèle en $K$, et le triangle $OFX$ est isocèle en $O$. Ils ont le même angle à la base en $F$, donc
$$\widehat{KDF} = \widehat{KFD} = \widehat{OFX} = \widehat{OXF} .$$
Ce sont des angles correspondants pour les droites $(KD)$ et $(OX)$ coupées par $(FX)$, donc $(KD) \parallel (OX)$. Or $(KD) \perp (AB)$, car un rayon est perpendiculaire à la tangente. Donc $(OX)$ est la perpendiculaire à $(AB)$ passant par $O$, c'est-à-dire la médiatrice de $[AB]$ : $XA = XB$, et $X$ est le milieu de l'un des deux arcs $AB$.

Le point $D$ de $(AB)$ est entre $F$ et $X$, donc $X$ et $F$ sont de part et d'autre de $(AB)$. D'après l'étape 2, $X$ est du côté opposé à $C$ : c'est le milieu de l'arc $AB$ qui ne contient pas $C$. Ainsi $X = M_C$, et **$F$, $D$, $M_C$ sont alignés**.

De la même façon, **$F$, $E$, $M_B$ sont alignés**, et $F$ est différent de $M_B$ et de $M_C$.

### Étape 4 : $F$ est différent de $M$

Supposons $F = M$. Les points $O$, $K$, $M$ sont alignés (étape 2). Le centre $K$ est à la même distance des deux demi-droites $[AB)$ et $[AC)$, donc il est sur la bissectrice $(AM)$. Comme $K \neq M$ ($K$ est à l'intérieur de $\Gamma$), la droite $(KM)$ contient à la fois $O$ et $A$. Donc $O$ est sur $(AM)$. Mais $(OM)$ est la médiatrice de $[BC]$, car $MB = MC$ et $OB = OC$. Le point $A$ serait sur cette médiatrice, et on aurait $AB = AC$, ce qui est exclu. Donc $F \neq M$.

En particulier, la droite $(FM)$ n'est pas parallèle à $(BC)$ : la seule droite passant par $M$ et parallèle à $(BC)$ est la tangente à $\Gamma$ en $M$, qui ne recoupe pas $\Gamma$. On note $J$ le point d'intersection de $(FM)$ et $(BC)$.

### Étape 5 : les points $D$, $I$, $E$ sont alignés

Les six points $A$, $B$, $M_B$, $F$, $M_C$, $C$ sont distincts et sur $\Gamma$. Le théorème de Pascal pour l'hexagone $A\,B\,M_B\,F\,M_C\,C$ porte sur les paires de droites suivantes :

- $(AB)$ et $(FM_C)$, qui se coupent en $D$ (étape 3) ;
- $(BM_B)$ et $(M_CC)$, qui se coupent en $I$ (étape 1) ;
- $(M_BF)$ et $(CA)$, qui se coupent en $E$ (étape 3).

Donc **$D$, $I$, $E$ sont alignés**.

### Étape 6 : les points $I$, $J$, $E$ sont alignés

Les six points $A$, $M$, $F$, $M_B$, $B$, $C$ sont distincts (étape 4) et sur $\Gamma$. Pour l'hexagone $A\,M\,F\,M_B\,B\,C$ :

- $(AM)$ et $(M_BB)$ se coupent en $I$ ;
- $(MF)$ et $(BC)$ se coupent en $J$ ;
- $(FM_B)$ et $(CA)$ se coupent en $E$.

Le théorème de Pascal donne : **$I$, $J$, $E$ sont alignés**.

### Conclusion

Le point $I$ n'est pas sur $(AC)$, donc $I \neq E$. D'après l'étape 5, $I$ est sur la droite $(DE)$, donc $(IE) = (DE)$. D'après l'étape 6, $J$ est sur $(IE)$, donc sur $(DE)$. Comme $J$ est aussi sur $(BC)$ et sur $(FM)$, **les trois droites $(DE)$, $(BC)$ et $(FM)$ passent par $J$ : elles sont concourantes.**

## Going further

- Le cercle $\mathcal{C}$ s'appelle le cercle mixtilinéaire inscrit associé à $A$. L'étape 5 montre un résultat classique : le centre $I$ du cercle inscrit est sur $(DE)$. Comme $AD = AE$ et que $(AI)$ est la bissectrice, $I$ est même le milieu de $[DE]$.
- Que se passe-t-il quand $AB = AC$ ? Dessine la figure : le point $F$ est alors en $M$, et $(DE)$ est parallèle à $(BC)$.
