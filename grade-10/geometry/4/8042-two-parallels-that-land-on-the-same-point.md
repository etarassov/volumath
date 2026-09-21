---
id: "8042"
title: "Deux parallèles qui tombent sur le même point"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [thales, trapeze, paralleles, point de concours, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe B : géométrie, lundi 21 matin (Martin Rakovsky), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soit $ABCD$ un trapèze avec $(AB)$ parallèle à $(CD)$ et $AB < CD$.

Soit $P$ un point du segment $[BC]$.

- La parallèle à $(AP)$ passant par $C$ coupe $[AD]$ en un point $Q$.
- La parallèle à $(DP)$ passant par $B$ coupe $[AD]$ en un point $Q'$.

Montrer que $Q = Q'$, c'est-à-dire que ces deux points sont confondus.

![Le trapèze ABCD, le point P sur [BC], et les deux constructions qui aboutissent au même point de [AD]](8042-figure-1.svg)

## Hints

1. Les côtés $[AD]$ et $[BC]$ ne sont pas parallèles, puisque $AB < CD$. Que se passe-t-il si
   l'on prolonge les droites $(AD)$ et $(BC)$ ?
2. Appelle $S$ leur point d'intersection. Écris le théorème de Thalès pour le couple de
   parallèles $(AP)$ et $(CQ)$ dans la configuration de sommet $S$.
3. Fais la même chose pour $(DP)$ et $(BQ')$, puis pour $(AB)$ et $(CD)$.
4. Tu obtiens trois égalités de produits. Compare-les.

## Solution

**On fabrique un point de rencontre.** Comme $(AB)$ et $(CD)$ sont parallèles avec
$AB \neq CD$, le trapèze n'est pas un parallélogramme, donc les droites $(AD)$ et $(BC)$ ne
sont pas parallèles : elles se coupent en un point que nous appelons $S$.

Tous les points qui nous intéressent sont sur l'une de ces deux droites :

- $A$, $Q$, $Q'$ et $D$ sont sur la droite $(SA)$ ;
- $B$, $P$ et $C$ sont sur la droite $(SB)$.

**Premier Thalès : $(AP) \parallel (CQ)$.** Les droites $(SA)$ et $(SB)$ sont coupées par les
deux parallèles $(AP)$ et $(QC)$ — la première passe par $A$ et $P$, la seconde par $Q$ et
$C$. Le théorème de Thalès donne

$$(\star) \qquad \frac{SA}{SQ} = \frac{SP}{SC}, \qquad \text{d'où} \qquad SA \times SC = SP \times SQ .$$

**Deuxième Thalès : $(DP) \parallel (BQ')$.** De la même façon, avec $D$ et $Q'$ sur la droite
$(SA)$ et $P$ et $B$ sur la droite $(SB)$ :

$$(\star\star) \qquad \frac{SD}{SQ'} = \frac{SP}{SB}, \qquad \text{d'où} \qquad SD \times SB = SP \times SQ' .$$

**Troisième Thalès : $(AB) \parallel (CD)$.** C'est l'hypothèse de départ :

$$(\star\star\star) \qquad \frac{SA}{SD} = \frac{SB}{SC}, \qquad \text{d'où} \qquad SA \times SC = SD \times SB .$$

**On rassemble.** D'après $(\star)$ et $(\star\star\star)$ :

$$SP \times SQ = SA \times SC = SD \times SB ,$$

et d'après $(\star\star)$, ce dernier produit vaut $SP \times SQ'$. Donc

$$SP \times SQ = SP \times SQ' .$$

Comme $P \neq S$, le nombre $SP$ n'est pas nul, et on peut simplifier :

$$SQ = SQ' .$$

**On conclut.** Les points $Q$ et $Q'$ sont tous deux sur le segment $[AD]$, donc sur la
demi-droite issue de $S$ qui contient $A$ et $D$. Sur une demi-droite, un point est déterminé
par sa distance à l'origine. De $SQ = SQ'$ on tire donc

$$Q = Q' .$$

## Going further

Remarquons ce qui a rendu la démonstration facile : les trois égalités de Thalès s'écrivent
toutes sous la forme « produit de deux longueurs issues de $S$ ». Écrites en fractions, elles
paraissent parler de choses différentes ; écrites en produits, elles se recollent d'un coup.
Prendre le temps de mettre plusieurs relations sous la même forme avant de les comparer est
souvent le pas décisif.

Cette quantité $SX \times SY$, quand $X$ et $Y$ sont alignés avec $S$ sur un même cercle,
s'appelle la puissance du point $S$ par rapport à ce cercle. Ici il n'y a pas de cercle, mais
la mécanique de calcul est la même.
