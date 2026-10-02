---
id: "7524"
title: "Un angle de 30° caché dans un triangle isocèle"
grade: 10
theme: geometry
difficulty: 5
duration_min: 45
tags: [triangle-isocele, rotation, triangle-equilateral, angle-inscrit, cercle-circonscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 71 (une étoile ; solution p. 250, résolue par Florent Noisette). L'erratum publié (stage_ete_2012_errata.pdf) corrige une coquille de cette solution (« c'est donc un triangle équilatéral »)."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $A$, avec $\widehat{BAC} = 100°$.

Le point $D$ est sur la droite $(AB)$, du côté où $B$ est entre $A$ et $D$, et il vérifie

$$AD = BC.$$

![Le triangle isocèle ABC et le point D sur la droite (AB), avec AD = BC](7524-figure-1.svg)

Montrer que $\widehat{ADC} = 30°$.

## Hints

1. Commence par calculer tous les angles du triangle $ABC$.
2. Le nombre $30°$ vaut la moitié de $60°$, et $60°$ fait penser au triangle équilatéral. Essaie de construire un triangle équilatéral sur la figure.
3. Fais tourner le point $C$ de $60°$ autour de $A$, **vers** le côté $[AB)$, et appelle $O$ le point obtenu. L'angle $\widehat{BAC}$ de $100°$ se coupe alors en $60°$ et $40°$. Quelle est la nature du triangle $AOC$ ?
4. Compare le triangle $AOD$ et le triangle $BAC$ : regarde $OA$, $AD$, et l'angle entre eux.
5. Si tu trouves que $OA = OC = OD$, que représente $O$ pour le triangle $ACD$ ?

## Solution

**Étape 1. Les angles du triangle $ABC$.**

Le triangle est isocèle en $A$ et $\widehat{BAC} = 100°$, donc

$$\widehat{ABC} = \widehat{ACB} = \frac{180° - 100°}{2} = 40°.$$

**Étape 2. On construit un point auxiliaire.**

Soit $O$ l'image de $C$ par la rotation de centre $A$ et d'angle $60°$ qui rapproche la demi-droite $[AC)$ de la demi-droite $[AB)$. Comme $\widehat{BAC} = 100° > 60°$, la demi-droite $[AO)$ reste à l'intérieur de l'angle $\widehat{BAC}$, qu'elle coupe en deux parts :

$$\widehat{CAO} = 60° \qquad \text{et} \qquad \widehat{OAB} = 100° - 60° = 40°.$$

Par construction $AO = AC$ et $\widehat{OAC} = 60°$ : le triangle $AOC$ est isocèle avec un angle de $60°$ au sommet, c'est donc un **triangle équilatéral**. En particulier

$$OA = OC = AC.$$

**Étape 3. Le triangle $AOD$ est superposable au triangle $BAC$.**

Le point $D$ est sur la demi-droite $[AB)$, donc $\widehat{OAD} = \widehat{OAB} = 40°$.

Comparons maintenant les triangles $AOD$ et $BAC$ :

- $AO = AC = AB$ (triangle équilatéral, puis triangle isocèle) ;
- $AD = BC$ (hypothèse) ;
- $\widehat{OAD} = 40° = \widehat{ABC}$, l'angle compris entre les deux côtés correspondants.

Les triangles $AOD$ et $BAC$ ont donc deux côtés égaux et l'angle compris égal : ils sont superposables. Par conséquent

$$OD = AC.$$

**Étape 4. $O$ est le centre du cercle circonscrit au triangle $ACD$.**

En rassemblant :

$$OA = OC = AC \quad \text{(étape 2)}, \qquad OD = AC \quad \text{(étape 3)}.$$

Donc $OA = OC = OD$ : le point $O$ est à la même distance des trois points $A$, $C$ et $D$. C'est le centre du cercle circonscrit au triangle $ACD$.

**Étape 5. L'angle inscrit.**

Dans ce cercle, l'angle au centre qui intercepte la corde $[AC]$ est $\widehat{AOC} = 60°$, puisque le triangle $AOC$ est équilatéral.

Le point $D$ est sur ce cercle, et il se trouve du **même côté** de la droite $(AC)$ que le centre $O$ : il est donc sur le grand arc $AC$. L'angle inscrit $\widehat{ADC}$ vaut alors la moitié de l'angle au centre :

$$\widehat{ADC} = \frac{60°}{2} = 30°.$$

**Conclusion.** $\widehat{ADC} = 30°$.

## Going further

On peut aussi vérifier le résultat par le calcul, ce qui rassure mais n'explique rien. Prenons $AB = AC = 1$. La loi des sinus dans $ABC$ donne $BC = 2\sin(50°) \approx \text{1,532}$, donc $AD \approx \text{1,532}$. Dans le triangle $ACD$ on connaît $AC = 1$, $AD \approx \text{1,532}$ et l'angle $\widehat{CAD} = 100°$ ; la loi des cosinus donne $CD \approx \text{1,970}$, puis la loi des sinus donne $\sin \widehat{ADC} = \frac{AC \sin 100°}{CD} \approx \text{0,5}$, soit bien $30°$.

Les problèmes de ce genre, où une figure toute simple cache une valeur d'angle inattendue, s'appellent des **problèmes d'angles adventices**. Le plus célèbre est le « problème de Langley » : dans un triangle isocèle d'angle au sommet $20°$, on trace deux céviennes faisant $50°$ et $60°$ avec la base, et on demande un angle qui vaut $20°$. Comme ici, la solution passe par la construction d'un triangle équilatéral bien placé.
