---
id: "13211"
title: "Un carré coincé dans un losange très allongé"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [losange, carre, thales, aire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices communs, exercice 12 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf. L'énoncé original ne dit pas comment le carré est placé ; on l'indique, et la preuve de cette position est esquissée dans « Pour aller plus loin »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Soit $MNPQ$ un losange de centre $O$ dont la diagonale $[MP]$ mesure $180$.

Un carré $ABCD$ de côté $18$ est placé dans ce losange, avec un sommet sur chaque côté : $A \in [MN]$, $B \in [NP]$, $C \in [PQ]$ et $D \in [QM]$. On admet que ce carré a le même centre $O$ que le losange, et que ses côtés sont parallèles aux diagonales du losange.

Quelle est l'aire du losange $MNPQ$ ?

## Hints

1. Les diagonales d'un losange se coupent en leur milieu et sont perpendiculaires. Que vaut $OM$ ?
2. Le sommet $A$ est à quelle distance de la droite $(MP)$ ? Et de la droite $(NQ)$ ?
3. Place $H$, le pied de la perpendiculaire à $(MP)$ issue de $A$. Dans le triangle $OMN$, regarde les droites $(AH)$ et $(ON)$.
4. Le théorème de Thalès donne $ON$. L'aire d'un losange vaut le produit de ses diagonales divisé par $2$.

## Solution

**Ce qu'on sait sur le losange.** Ses diagonales $[MP]$ et $[NQ]$ se coupent en leur milieu $O$ et sont perpendiculaires. Donc $OM = 90$, et l'aire du losange vaut $\frac{MP \times NQ}{2} = 90 \times NQ$. Il reste à trouver $NQ = 2\,ON$.

**Où se trouve le sommet $A$.** Le carré a pour centre $O$ et ses côtés sont parallèles aux diagonales du losange. Le centre d'un carré de côté $18$ est à distance $9$ de chacun de ses côtés. Donc le sommet $A$ est à distance $9$ de la droite $(MP)$ et à distance $9$ de la droite $(NQ)$.

Soit $H$ le pied de la perpendiculaire à $(MP)$ issue de $A$, et $K$ le pied de la perpendiculaire à $(NQ)$ issue de $A$. Alors $AH = 9$ et $AK = 9$. Le quadrilatère $OHAK$ a trois angles droits, c'est un rectangle, donc $OH = KA = 9$. Le point $H$ est sur $[OM]$, donc $HM = 90 - 9 = 81$.

**Le théorème de Thalès.** Dans le triangle $OMN$, le point $A$ est sur $[MN]$, le point $H$ est sur $[MO]$, et les droites $(AH)$ et $(ON)$ sont parallèles (toutes deux perpendiculaires à $(OM)$). Donc

$$\frac{MH}{MO} = \frac{HA}{ON}, \qquad \frac{81}{90} = \frac{9}{ON}, \qquad ON = \frac{9 \times 90}{81} = 10.$$

**L'aire.** On a $NQ = 2 \times 10 = 20$, donc l'aire du losange vaut $\frac{180 \times 20}{2} = 1800$.

**Conclusion.** L'aire du losange $MNPQ$ vaut $1800$.

## Going further

Pourquoi le carré est-il forcément placé ainsi ? Voici l'idée en deux temps.

- Les côtés $(MN)$ et $(PQ)$ sont parallèles, et $O$ est à égale distance des deux. Le milieu de $[AC]$ est donc sur la parallèle à ces deux droites qui passe par $O$. De même, le milieu de $[BD]$ est sur la parallèle à $(NP)$ et $(QM)$ passant par $O$. Ces deux parallèles ne se coupent qu'en $O$, et les diagonales d'un carré ont le même milieu : le centre du carré est $O$.
- En repère, avec $O$ à l'origine, $M(0\,;90)$ et $N(-n\,;0)$, on écrit $A(u\,;v)$ sur $(MN)$, et $B(-v\,;u)$, qui est l'image de $A$ par le quart de tour de centre $O$, sur $(NP)$. En soustrayant les deux équations de droite, on trouve $(u+v)\left(\frac{1}{90} - \frac{1}{n}\right) = 0$. Ici $n \neq 90$ (si le losange était un carré de diagonale $180$, un carré placé de cette façon aurait un côté d'au moins $90$), donc $v = -u$ : le sommet $A$ est sur une bissectrice des diagonales, et c'est exactement la position admise.
