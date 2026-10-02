---
id: "10073"
title: "Une hauteur et une bissectrice dans le triangle HLM"
grade: 8
theme: geometry
difficulty: 4
duration_min: 45
tags: [hauteur, bissectrice, mediane, droite-des-milieux, parallelogramme, triangle-isocele, symetrie-axiale, triangle-equilateral]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 1 (géométrie)"
  reference: "2018-10_envoi_1_2018-2019_v3.pdf, Exercices communs, exercice 4 ; corrigé 2018-11_corrige-envoi-1.pdf (le corrigé montre que L est le milieu de [AC], puis utilise le théorème de la bissectrice et calcule des angles ; ici on montre AB = BC avec un parallélogramme, puis on utilise la symétrie d'axe (BL) pour obtenir que H est le milieu de [BC])"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/envoi_1_2018-2019_v3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-10_envoi_1_2018-2019_v3.pdf"
---

## Statement

Soit $ABC$ un triangle. On note $H$ le pied de la hauteur issue de $A$, $L$ le pied de la bissectrice issue de $B$, et $M$ le milieu du côté $[AB]$.

On suppose que, dans le triangle $HLM$, la droite $(AH)$ est une hauteur et la droite $(BL)$ est une bissectrice.

Montrer que, dans le triangle $HLM$, la droite $(CM)$ est une médiane.

## Hints

1. La droite $(AH)$ passe par $H$ : c'est la hauteur issue de $H$ dans le triangle $HLM$. Que peux-tu dire des droites $(ML)$ et $(BC)$ ? Déduis-en où se trouve $L$ sur $[AC]$.
2. La bissectrice issue de $B$ coupe $[AC]$ en son milieu. Prolonge $[BL]$ au-delà de $L$ jusqu'au point $L'$ tel que $LL' = BL$. Quelle est la nature du quadrilatère $ABCL'$ ? Montre que $BA = BC$.
3. La droite $(BL)$ est alors un axe de symétrie du triangle $ABC$. Elle est aussi la bissectrice de l'angle $\widehat{MLH}$. Où la symétrie d'axe $(BL)$ envoie-t-elle le point $M$ ?
4. Le triangle $ABC$ est en fait équilatéral. Que sont alors les points $H$, $L$ et $M$ ?

## Solution

### Étape 1 : le point $L$ est le milieu de $[AC]$

La droite $(AH)$ contient le sommet $H$ du triangle $HLM$, donc c'est la hauteur issue de $H$ : elle est perpendiculaire à $(ML)$. Elle est aussi perpendiculaire à $(BC)$, par définition de $H$. Deux droites perpendiculaires à une même droite sont parallèles, donc
$$(ML) \parallel (BC) .$$
Dans le triangle $ABC$, la droite qui passe par le milieu $M$ de $[AB]$ et qui est parallèle à $(BC)$ coupe $[AC]$ en son milieu. Le point $L$ est sur cette droite et sur $(AC)$, donc **$L$ est le milieu de $[AC]$**.

### Étape 2 : le triangle $ABC$ est isocèle en $B$

Soit $L'$ le point de la demi-droite $[BL)$, au-delà de $L$, tel que $LL' = BL$. Les diagonales $[AC]$ et $[BL']$ du quadrilatère $ABCL'$ ont le même milieu $L$, donc **$ABCL'$ est un parallélogramme**. Ainsi $(AL') \parallel (BC)$ et $AL' = BC$.

Les points $A$ et $C$ sont de part et d'autre de la droite $(BL')$, puisque le segment $[AC]$ la coupe en $L$. Les droites parallèles $(AL')$ et $(BC)$, coupées par $(BL')$, forment donc des angles alternes-internes égaux :
$$\widehat{AL'B} = \widehat{L'BC} .$$
Or $(BL')$ est la bissectrice de l'angle $\widehat{ABC}$, donc $\widehat{L'BC} = \widehat{ABL'}$. Ainsi $\widehat{AL'B} = \widehat{ABL'}$ : le triangle $ABL'$ a deux angles égaux, il est isocèle en $A$, et $AB = AL'$. Avec $AL' = BC$, on obtient
$$BA = BC .$$

### Étape 3 : le point $H$ est le milieu de $[BC]$

Les points $B$ et $L$ sont tous les deux à égale distance de $A$ et de $C$, donc la droite $(BL)$ est la médiatrice de $[AC]$. La symétrie $s$ d'axe $(BL)$ laisse fixes $B$ et $L$, et elle échange $A$ et $C$.

Le point $M$ est le milieu de $[BA]$, donc $s(M)$ est le milieu de $[s(B)\,s(A)] = [BC]$. On note $N$ ce milieu.

Dans le triangle $HLM$, la droite $(BL)$ passe par le sommet $L$ : c'est la bissectrice de l'angle $\widehat{MLH}$. Une bissectrice est l'axe de symétrie de son angle, donc $s$ envoie la demi-droite $[LM)$ sur la demi-droite $[LH)$. Mais $s$ envoie aussi $[LM)$ sur $[LN)$, puisque $s(L) = L$ et $s(M) = N$. Donc $[LH)$ et $[LN)$ sont la même demi-droite.

Les points $H$ et $N$ sont sur cette demi-droite et sur la droite $(BC)$. Elle ne coupe $(BC)$ qu'en un point, car $L$ n'est pas sur $(BC)$. Donc **$H = N$ : le pied de la hauteur issue de $A$ est le milieu de $[BC]$**.

### Étape 4 : conclusion

La droite $(AH)$ est perpendiculaire à $[BC]$ et passe par son milieu : c'est la médiatrice de $[BC]$, donc $AB = AC$. Avec $BA = BC$, **le triangle $ABC$ est équilatéral**, et $H$, $L$, $M$ sont les milieux de ses trois côtés.

Dans le triangle $ABC$, la droite qui joint les milieux $M$ et $H$ de $[AB]$ et de $[BC]$ est parallèle à $(AC)$, et l'on a vu que $(ML) \parallel (BC)$. Le quadrilatère $CHML$ a donc ses côtés opposés parallèles : c'est un parallélogramme. Ses diagonales $[CM]$ et $[HL]$ se coupent en leur milieu.

La droite $(CM)$ passe donc par le sommet $M$ du triangle $HLM$ et par le milieu du côté opposé $[HL]$ : **dans le triangle $HLM$, la droite $(CM)$ est une médiane.**

## Going further

- Vérifie la réciproque : dans un triangle équilatéral $ABC$, la droite $(AH)$ est une hauteur du triangle $HLM$ et la droite $(BL)$ en est une bissectrice.
- On garde seulement la première hypothèse, $(AH)$ hauteur du triangle $HLM$. Montre que $BA = BC$, et donne un exemple de triangle qui n'est pas équilatéral.
- Une autre preuve de l'étape 3. Montre que $LH = LC$, car $L$ est le milieu de l'hypoténuse du triangle $AHC$ rectangle en $H$. Calcule alors les angles $\widehat{MLA}$ et $\widehat{HLC}$ en fonction de l'angle $\widehat{ACB}$, et déduis-en que cet angle vaut $60°$.
