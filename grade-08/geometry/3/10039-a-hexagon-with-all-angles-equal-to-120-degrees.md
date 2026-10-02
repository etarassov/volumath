---
id: "10039"
title: "Un hexagone dont tous les angles valent 120°"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [hexagone, triangle-equilateral, somme-des-angles, longueurs]
adapted_from: null
see_also: ["7142"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (même idée que le corrigé, avec un calcul plus direct des côtés du grand triangle)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Soit $ABCDEF$ un hexagone convexe dont les six angles sont tous égaux à $120°$.

![Un hexagone ABCDEF dont les six angles valent 120° et dont les côtés n'ont pas tous la même longueur](10039-figure-1.svg)

Montrer que $AB + BC = DE + EF$.

## Hints

1. Prolonge le côté $[AB]$ au-delà de $B$ et le côté $[DC]$ au-delà de $C$. Que vaut l'angle entre chaque prolongement et le côté $[BC]$ ?
2. Le petit triangle obtenu a des angles particuliers. Que peux-tu dire de ses côtés ?
3. Fais la même chose aux côtés $[DE]$ et $[FA]$. Les trois droites $(AB)$, $(CD)$ et $(EF)$ forment un grand triangle. Calcule ses côtés avec les côtés de l'hexagone.

## Solution

### Étape 1 : trois petits triangles équilatéraux

On prolonge le côté $[AB]$ au-delà de $B$, et le côté $[DC]$ au-delà de $C$. L'angle de l'hexagone en $B$ vaut $120°$, donc l'angle entre le prolongement et $[BC]$ vaut $180° - 120° = 60°$. De même en $C$. Les deux prolongements font avec $[BC]$ des angles de $60°$ du même côté, donc ils se coupent en un point $X$, et le triangle $XBC$ a deux angles de $60°$. Son troisième angle vaut $180° - 60° - 60° = 60°$ : le triangle $XBC$ est équilatéral, et
$$BX = CX = BC .$$

De la même façon :

- les prolongements de $[CD]$ au-delà de $D$ et de $[FE]$ au-delà de $E$ se coupent en un point $Y$, et le triangle $YDE$ est équilatéral, donc $DY = EY = DE$ ;
- les prolongements de $[EF]$ au-delà de $F$ et de $[BA]$ au-delà de $A$ se coupent en un point $Z$, et le triangle $ZFA$ est équilatéral, donc $FZ = AZ = FA$.

### Étape 2 : le grand triangle

Les points $Z$, $A$, $B$, $X$ sont sur la droite $(AB)$, dans cet ordre. Les points $X$, $C$, $D$, $Y$ sont sur la droite $(CD)$, et les points $Y$, $E$, $F$, $Z$ sur la droite $(EF)$. Le triangle $XYZ$ a donc pour angles les angles des trois petits triangles équilatéraux, $60°$ chacun : il est équilatéral.

Calculons deux de ses côtés :
$$ZX = ZA + AB + BX = FA + AB + BC ,$$
$$ZY = ZF + FE + EY = FA + EF + DE .$$

### Conclusion

Comme $XYZ$ est équilatéral, $ZX = ZY$, donc $FA + AB + BC = FA + EF + DE$. En retirant $FA$ des deux côtés, on obtient
$$AB + BC = DE + EF .$$

## Going further

- Le troisième côté donne $XY = BC + CD + DE$. En comparant avec $ZX$, on trouve aussi $AB + FA = CD + DE$.
- Réciproquement, choisis des longueurs $AB = 3$, $BC = 1$ et $CD = 2$ (en cm). Peux-tu toujours compléter en un hexagone convexe dont les six angles valent $120°$ ? Combien de choix as-tu pour $DE$ ?
