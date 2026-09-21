---
id: "7227"
title: "Deux cercles sécants et deux droites parallèles"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [cocyclicite, angle inscrit, paralleles, deux cercles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 4 ; repris dans Poly_final_CJ18.pdf, mardi 23 matin (Linda Gutsche), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Deux cercles $\Gamma_1$ et $\Gamma_2$ se coupent en deux points distincts $A$ et $B$.

Sur $\Gamma_1$, on choisit deux points $C$ et $D$, différents de $A$ et de $B$. La droite $(BC)$
recoupe $\Gamma_2$ en un point $C'$, et la droite $(AD)$ recoupe $\Gamma_2$ en un point $D'$.

Montrer que les droites $(CD)$ et $(C'D')$ sont parallèles.

## Hints

1. Fais une figure. Pour montrer que deux droites sont parallèles, cherche deux angles
   alternes-internes égaux, ou deux angles correspondants égaux, le long d'une sécante bien
   choisie.
2. Quelle droite coupe à la fois $(CD)$ et $(C'D')$ ? Il y en a deux commodes : $(BC)$ et $(AD)$.
3. Les quatre points $A$, $B$, $C$, $D$ sont sur $\Gamma_1$ : que peux-tu dire de deux angles
   opposés du quadrilatère qu'ils forment ?
4. Les quatre points $A$, $B$, $C'$, $D'$ sont sur $\Gamma_2$ : même question.

## Solution

Plaçons-nous dans la configuration où $A$, $B$, $C$, $D$ sont dans cet ordre sur $\Gamma_1$ et où
$A$, $B$, $C'$, $D'$ sont dans cet ordre sur $\Gamma_2$. Les autres cas se traitent de la même
façon, en remplaçant « angles supplémentaires » par « angles égaux ».

**Dans le premier cercle.**

Les points $A$, $B$, $C$, $D$ sont cocycliques sur $\Gamma_1$, donc les angles opposés du
quadrilatère $ABCD$ sont supplémentaires :
$$\widehat{BCD} = 180^\circ - \widehat{BAD} .$$

**Dans le second cercle.**

Les points $A$, $B$, $C'$, $D'$ sont cocycliques sur $\Gamma_2$, donc de même
$$\widehat{BC'D'} = 180^\circ - \widehat{BAD'} .$$

**Le lien entre les deux.**

Les points $A$, $D$, $D'$ sont alignés, sur la droite $(AD)$, avec $A$ entre $D$ et $D'$ dans
notre configuration. Les angles $\widehat{BAD}$ et $\widehat{BAD'}$ sont donc supplémentaires :
$$\widehat{BAD'} = 180^\circ - \widehat{BAD} .$$

En reportant :
$$\widehat{BC'D'} = 180^\circ - (180^\circ - \widehat{BAD}) = \widehat{BAD} ,$$
et d'autre part
$$\widehat{BCD} = 180^\circ - \widehat{BAD} .$$

**La conclusion.**

Considérons la sécante $(BC)$, qui porte les points $B$, $C$ et $C'$. Elle coupe la droite $(CD)$
en $C$ et la droite $(C'D')$ en $C'$. Les deux angles
$$\widehat{BCD} = 180^\circ - \widehat{BAD} \qquad \text{et} \qquad
\widehat{BC'D'} = \widehat{BAD}$$
sont supplémentaires. Ce sont des angles situés du même côté de la sécante : ils sont
supplémentaires exactement lorsque les deux droites sont parallèles.

**Les droites $(CD)$ et $(C'D')$ sont donc parallèles.**

## Going further

Comme souvent en chasse aux angles, la difficulté n'est pas le raisonnement mais la
**configuration** : selon la position des points, les mêmes angles sont tantôt égaux, tantôt
supplémentaires, et la figure change d'allure.

Les mathématiciens ont inventé pour cela les **angles orientés de droites**, qui se calculent
modulo $180^\circ$ : avec eux, la démonstration ci-dessus s'écrit en trois lignes et couvre tous
les cas d'un coup.
