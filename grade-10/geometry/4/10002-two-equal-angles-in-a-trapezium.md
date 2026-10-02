---
id: "10002"
title: "Deux angles égaux dans un trapèze"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [angle inscrit, cocyclicite, trapeze, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 1 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi1.pdf, Exercices Juniors, exercice 2 ; corrigé 2017-10_ofm-2012-2013-envoi1-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi1.pdf"
---

## Statement

$ABCD$ est un trapèze dont les côtés $[AD]$ et $[BC]$ sont parallèles. On place un point $K$ sur le côté $[AB]$ et un point $L$ sur le côté $[CD]$.

![Le trapèze ABCD, avec les segments [AL], [DK], [BL] et [CK], et les deux angles égaux marqués en A et en D](10002-figure-1.svg)

Montrer que si les angles $\widehat{BAL}$ et $\widehat{CDK}$ sont égaux, alors les angles $\widehat{BLA}$ et $\widehat{CKD}$ sont égaux aussi.

## Hints

1. Comme $K$ est sur $[AB]$ et $L$ sur $[DC]$, l'hypothèse dit que le segment $[KL]$ est vu sous le même angle depuis $A$ et depuis $D$. Qu'en déduis-tu pour les quatre points $A$, $K$, $L$, $D$ ?
2. Écris que deux angles opposés du quadrilatère $AKLD$ ont pour somme $180°$, puis utilise les parallèles $(AD)$ et $(BC)$ : les points $K$, $B$, $C$, $L$ sont eux aussi sur un même cercle.
3. Dans ce second cercle, compare $\widehat{KBL}$ et $\widehat{KCL}$.
4. Les triangles $ABL$ et $DCK$ ont alors deux angles égaux.

## Solution

**Rappel : l'angle inscrit et les quadrilatères inscrits.** Deux points situés du même côté d'une droite $(KL)$ voient le segment $[KL]$ sous le même angle si et seulement s'ils sont sur un même cercle passant par $K$ et $L$. Et un quadrilatère convexe est inscrit dans un cercle si et seulement si deux de ses angles opposés ont pour somme $180°$.

### Premier cercle : $A$, $K$, $L$, $D$

Comme $K$ est sur $[AB]$, la demi-droite $[AB)$ est la demi-droite $[AK)$, donc $\widehat{BAL} = \widehat{KAL}$. De même, comme $L$ est sur $[DC]$, on a $\widehat{CDK} = \widehat{LDK}$. L'hypothèse s'écrit donc
$$\widehat{KAL} = \widehat{KDL} .$$
Le segment $[KL]$ traverse le trapèze d'un côté à l'autre, donc $A$ et $D$ sont du même côté de la droite $(KL)$. Ils voient $[KL]$ sous le même angle : **les points $A$, $K$, $L$, $D$ sont sur un même cercle.**

### Second cercle : $K$, $B$, $C$, $L$

Le quadrilatère $AKLD$ est inscrit, donc ses angles opposés en $K$ et en $D$ ont pour somme $180°$ :
$$\widehat{AKL} + \widehat{LDA} = 180° .$$
Comme $K$ est sur le segment $[AB]$, les angles $\widehat{AKL}$ et $\widehat{BKL}$ sont supplémentaires. On en déduit
$$\widehat{BKL} = 180° - \widehat{AKL} = \widehat{LDA} = \widehat{CDA} .$$

Les droites $(AD)$ et $(BC)$ sont parallèles, et $(CD)$ les coupe. Les angles $\widehat{CDA}$ et $\widehat{BCD}$ sont donc supplémentaires (ce sont deux angles intérieurs situés du même côté de la sécante). Ainsi
$$\widehat{BKL} + \widehat{BCL} = \widehat{CDA} + \widehat{BCD} = 180° .$$
Dans le quadrilatère convexe $KBCL$, les angles opposés en $K$ et en $C$ ont pour somme $180°$ : **les points $K$, $B$, $C$, $L$ sont sur un même cercle.**

### Les deux triangles

Dans ce second cercle, $B$ et $C$ sont du même côté de $(KL)$ et voient $[KL]$ sous le même angle :
$$\widehat{KBL} = \widehat{KCL} .$$

Notons $\alpha = \widehat{BAL} = \widehat{CDK}$ et $\beta = \widehat{KBL} = \widehat{KCL}$.

- Dans le triangle $ABL$, l'angle en $A$ vaut $\alpha$ et l'angle en $B$ est $\widehat{ABL} = \widehat{KBL} = \beta$.
- Dans le triangle $DCK$, l'angle en $D$ vaut $\alpha$ et l'angle en $C$ est $\widehat{DCK} = \widehat{LCK} = \beta$.

La somme des angles d'un triangle vaut $180°$, donc les troisièmes angles sont égaux :
$$\widehat{BLA} = 180° - \alpha - \beta = \widehat{CKD} .$$

**Conclusion.** Si $\widehat{BAL} = \widehat{CDK}$, alors $\widehat{BLA} = \widehat{CKD}$.

## Going further

La deuxième étape montre un fait utile à retenir : dans un trapèze de bases $(AD)$ et $(BC)$, si $A$, $K$, $L$, $D$ sont sur un cercle avec $K \in [AB]$ et $L \in [CD]$, alors $K$, $B$, $C$, $L$ sont aussi sur un cercle. Autrement dit, la droite $(KL)$ coupe le trapèze en deux quadrilatères qui sont inscrits tous les deux, ou aucun des deux.
