---
id: "7909"
title: "Deux triangles rectangles sur la même hypoténuse"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-rectangle, cercle, mediane, triangle-isocele, angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 12 et « Éliminatoires lycéens », exercice 4 (énoncé p. 22, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

$ABC$ et $ABD$ sont deux triangles rectangles, le premier en $C$, le second en $D$. Les points $C$ et $D$ ne sont pas du même côté de la droite $(AB)$. On note $E$ le milieu de $[AB]$.

Sachant que $\widehat{BAC} = 14°$ et $\widehat{BAD} = 17°$, calculer la mesure de l'angle $\widehat{CED}$.

![Les deux triangles rectangles ABC et ABD, de part et d'autre de la droite (AB), et le milieu E de [AB]](7909-figure-1.svg)

## Hints

1. Dans un triangle rectangle, que peut-on dire de la médiane issue de l'angle droit ? Compare $EC$ et $EA$.
2. Le triangle $EAC$ est donc isocèle. Que vaut l'angle $\widehat{ECA}$ ?
3. Dans le triangle $EAC$, calcule l'angle $\widehat{AEC}$, puis l'angle $\widehat{CEB}$ qui le complète.
4. Fais la même chose de l'autre côté avec $D$, puis additionne.

## Solution

**La réponse : $\widehat{CED} = 62°$.**

**Étape 1 : $E$ est à la même distance de $A$, de $B$ et de $C$.**

Dans un triangle rectangle, la médiane issue du sommet de l'angle droit mesure la moitié de l'hypoténuse. Dans le triangle $ABC$, rectangle en $C$, la médiane issue de $C$ est $[CE]$, donc

$$EC = \frac{AB}{2} = EA = EB .$$

De même, dans le triangle $ABD$, rectangle en $D$ :

$$ED = \frac{AB}{2} = EA = EB .$$

**Étape 2 : l'angle $\widehat{CEB}$.**

Comme $EA = EC$, le triangle $AEC$ est isocèle en $E$, donc ses angles à la base sont égaux :

$$\widehat{ECA} = \widehat{EAC} = \widehat{BAC} = 14° .$$

La somme des angles du triangle $AEC$ vaut $180°$, donc

$$\widehat{AEC} = 180° - 14° - 14° = 152° .$$

Or $A$, $E$ et $B$ sont alignés, donc les angles $\widehat{AEC}$ et $\widehat{CEB}$ sont supplémentaires :

$$\widehat{CEB} = 180° - 152° = 28° = 2 \times 14° .$$

**Étape 3 : l'angle $\widehat{BED}$.**

Exactement le même raisonnement avec $D$ à la place de $C$ donne

$$\widehat{BED} = 2 \times 17° = 34° .$$

**Étape 4 : on additionne.**

Les points $C$ et $D$ sont de part et d'autre de la droite $(AB)$, donc la demi-droite $[EB)$ passe à l'intérieur de l'angle $\widehat{CED}$. Les deux angles s'ajoutent :

$$\widehat{CED} = \widehat{CEB} + \widehat{BED} = 28° + 34° = 62° .$$

**Conclusion.** $\widehat{CED} = \boxed{62°}$.

## Going further

Ce qu'on vient de faire, c'est le **théorème de l'angle au centre** en action : $C$ et $D$ sont sur le cercle de diamètre $[AB]$, de centre $E$. L'angle au centre $\widehat{CEB}$ vaut le double de l'angle inscrit $\widehat{CAB}$ qui intercepte le même arc. Remarque que la réponse ne dépend pas de la longueur $AB$.
