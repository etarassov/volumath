---
id: "0914"
title: "Un triangle où B vaut deux fois C"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [bissectrice, triangle-isocele, cas-d-egalite, chasse-aux-angles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 32, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

Dans le triangle $ABC$, l'angle $\widehat{ABC}$ vaut le double de l'angle $\widehat{ACB}$.

La bissectrice de l'angle $\widehat{BAC}$ coupe le côté $[BC]$ en $D$, et on constate que

$$AB = CD.$$

Démontrer que $\widehat{BAC} = 72^\circ$.

## Hints

1. Pose $\gamma = \widehat{ACB}$. Alors $\widehat{ABC} = 2\gamma$ et
   $\widehat{BAC} = 180^\circ - 3\gamma$. Tout l'exercice consiste à démontrer que
   $\gamma = 36^\circ$.
2. L'hypothèse $AB = CD$ compare une longueur du « côté $B$ » et une longueur du « côté $C$ ».
   Pour les rapprocher, reporte la longueur $AB$ sur le côté $[AC]$ : place le point $F$ de
   $[AC]$ tel que $AF = AB$.
3. Pourquoi les triangles $ABD$ et $AFD$ sont-ils superposables ? Qu'obtient-on alors sur
   $DF$ et sur l'angle $\widehat{AFD}$ ?
4. Calcule les angles du triangle $DFC$. Tu trouveras qu'il est isocèle.
5. Écris alors $AC$ puis $BC$ comme des sommes, et compare-les.

## Solution

**L'idée : reporter $AB$ sur $[AC]$, ce qui coupe le triangle en morceaux dont les longueurs
se recollent.**

Posons $\gamma = \widehat{ACB}$. Alors $\widehat{ABC} = 2\gamma$ et, par la somme des angles,
$\widehat{BAC} = 180^\circ - 3\gamma$. La bissectrice partage cet angle en deux :

$$\widehat{BAD} = \widehat{DAC} = \frac{180^\circ - 3\gamma}{2}.$$

**La construction.** Dans le triangle $ABC$, l'angle $\widehat{ABC} = 2\gamma$ est plus grand
que l'angle $\widehat{ACB} = \gamma$. Comme le plus grand côté est opposé au plus grand angle,
$AC > AB$. On peut donc placer un point $F$ strictement à l'intérieur du côté $[AC]$ tel que

$$AF = AB.$$

**Étape 1. Les triangles $ABD$ et $AFD$ sont superposables.** En effet :

- $AB = AF$, par construction ;
- le côté $[AD]$ est commun ;
- $\widehat{BAD} = \widehat{FAD}$, car $(AD)$ est la bissectrice de $\widehat{BAC}$ et $F$ est
  sur $[AC]$.

Deux côtés et l'angle compris : les triangles sont superposables. Donc

$$DF = DB \qquad \text{et} \qquad \widehat{AFD} = \widehat{ABD} = 2\gamma.$$

**Étape 2. Le triangle $DFC$ est isocèle.** Les points $A$, $F$, $C$ sont alignés, donc

$$\widehat{DFC} = 180^\circ - \widehat{AFD} = 180^\circ - 2\gamma.$$

Dans le triangle $DFC$, la somme des angles donne

$$\widehat{FDC} = 180^\circ - \widehat{DFC} - \widehat{FCD} = 180^\circ - (180^\circ - 2\gamma) - \gamma = \gamma.$$

Les angles $\widehat{FDC}$ et $\widehat{FCD}$ sont égaux : le triangle $DFC$ est isocèle et

$$FC = FD.$$

**Étape 3. On recolle les longueurs.** D'après les étapes 1 et 2,

$$FC = FD = DB.$$

Le point $F$ est sur $[AC]$ et le point $D$ est sur $[BC]$, donc

$$AC = AF + FC = AB + DB,$$
$$BC = BD + DC = BD + AB \qquad \text{(car } DC = AB \text{ par hypothèse).}$$

Les deux membres de droite sont les mêmes, donc

$$AC = BC.$$

**Étape 4. On conclut.** Le triangle $ABC$ a donc deux côtés égaux, $CA = CB$, et les angles
opposés à ces côtés sont égaux :

$$\widehat{ABC} = \widehat{BAC}, \qquad \text{c'est-à-dire} \qquad 2\gamma = 180^\circ - 3\gamma.$$

Donc $5\gamma = 180^\circ$ et $\gamma = 36^\circ$, puis

$$\widehat{BAC} = 2\gamma = 72^\circ.$$

**Conclusion.** $\widehat{BAC} = 72^\circ$ (et le triangle est le fameux triangle d'or
$36^\circ$, $72^\circ$, $72^\circ$, celui du pentagone régulier).

## Going further

Vérifier la réciproque : dans le triangle d'angles $72^\circ$, $72^\circ$, $36^\circ$, la
bissectrice issue du sommet de l'angle $\widehat{BAC}$ vérifie-t-elle bien $AB = CD$ ?
