---
id: "17823"
title: "Un triangle isocèle d'angle 20° et AD = BC"
grade: 8
theme: geometry
difficulty: 4
duration_min: 30
tags: [triangle-isocele, triangle-equilateral, cas-d-egalite, chasse-aux-angles, construction-auxiliaire]
adapted_from: null
see_also: ["7524"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mercredi matin (Vincent Jugé), exercice 1 (JBMO 2002, liste courte, G3), p.61 ; solution p.61. La solution imprimée contient deux coquilles : « le triangle ABC est donc équilatéral » au lieu de ABE, et « BCD » au lieu de BDC dans la dernière ligne."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, avec $\widehat{BAC} = 20^\circ$. Soit $D$ le point du segment $[AC]$ tel que $AD = BC$.

Calculer l'angle $\widehat{BDC}$.

## Hints

1. Calculez les angles du triangle $ABC$. Remarquez que $80^\circ - 20^\circ = 60^\circ$ : un triangle équilatéral se cache peut-être quelque part.
2. Construisez le point $E$ tel que le triangle $ABE$ soit équilatéral, avec $E$ de l'autre côté de la droite $(AB)$ par rapport à $C$. Que vaut l'angle $\widehat{EAC}$ ?
3. Comparez les triangles $EAD$ et $ACB$ : deux côtés égaux et l'angle compris entre eux.
4. Le triangle $EBD$ est isocèle. Calculez ses angles.

## Solution

**Les angles du triangle.** Le triangle $ABC$ est isocèle en $A$ et $\widehat{BAC} = 20^\circ$, donc

$$\widehat{ABC} = \widehat{ACB} = \frac{180^\circ - 20^\circ}{2} = 80^\circ .$$

**Étape 1 : un triangle équilatéral.** Construisons le point $E$ tel que le triangle $ABE$ soit équilatéral, avec $E$ de l'autre côté de la droite $(AB)$ par rapport à $C$. Alors $EA = EB = AB$, et

$$\widehat{EAC} = \widehat{EAB} + \widehat{BAC} = 60^\circ + 20^\circ = 80^\circ .$$

Comme $D$ est sur $[AC]$, on a aussi $\widehat{EAD} = 80^\circ$.

**Étape 2 : deux triangles égaux.** Comparons les triangles $EAD$ et $ACB$ :

- $AE = AB = CA$ ;
- $AD = CB$, par définition de $D$ ;
- l'angle compris entre ces deux côtés vaut $80^\circ$ dans les deux triangles : $\widehat{EAD} = \widehat{ACB} = 80^\circ$.

Ces deux triangles sont donc égaux. On en déduit

$$ED = AB, \qquad \widehat{AED} = \widehat{CAB} = 20^\circ, \qquad \widehat{ADE} = \widehat{CBA} = 80^\circ .$$

**Étape 3 : le triangle $EBD$.** On a $EB = AB$ (triangle équilatéral) et $ED = AB$ (étape 2), donc $EB = ED$ : le triangle $EBD$ est isocèle en $E$. Les points $D$ et $B$ sont du même côté de la droite $(EA)$, et $\widehat{AED} = 20^\circ$ est plus petit que $\widehat{AEB} = 60^\circ$. La demi-droite $[ED)$ est donc entre $[EA)$ et $[EB)$, et

$$\widehat{BED} = \widehat{AEB} - \widehat{AED} = 60^\circ - 20^\circ = 40^\circ .$$

Les deux angles à la base du triangle $EBD$ valent donc

$$\widehat{EDB} = \widehat{EBD} = \frac{180^\circ - 40^\circ}{2} = 70^\circ .$$

**Étape 4 : l'angle cherché.** Les points $A$, $D$, $C$ sont alignés, et autour de $D$, d'un même côté de la droite $(AC)$, on rencontre dans l'ordre les demi-droites $[DA)$, $[DE)$, $[DB)$, $[DC)$. Les trois angles qu'elles forment font un angle plat :

$$\widehat{ADE} + \widehat{EDB} + \widehat{BDC} = 180^\circ, \qquad \text{donc} \qquad \widehat{BDC} = 180^\circ - 80^\circ - 70^\circ = 30^\circ .$$

**Conclusion : $\widehat{BDC} = 30^\circ$.**

## Going further

On peut vérifier ce résultat autrement : dans le triangle $ABD$, on trouve $\widehat{ADB} = 180^\circ - 30^\circ = 150^\circ$, donc $\widehat{ABD} = 180^\circ - 150^\circ - 20^\circ = 10^\circ$. La droite $(BD)$ coupe donc l'angle $\widehat{ABC} = 80^\circ$ en $10^\circ$ et $70^\circ$.

Ce triangle isocèle d'angle au sommet $20^\circ$ est la source de nombreux problèmes célèbres, dont le plus connu est le « problème de Langley » (1922). Dans presque tous, l'idée est la même : faire apparaître un triangle équilatéral bien placé.
