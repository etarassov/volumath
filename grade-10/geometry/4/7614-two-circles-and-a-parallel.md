---
id: "7614"
title: "Deux cercles et deux droites parallèles"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle, cocyclicite, angle-inscrit, chasse-aux-angles, droites-paralleles]
adapted_from: null
see_also: []
same_as: ["7823"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de fin de parcours"
  reference: "stage_ete_2013.pdf, chapitre VII « Test de fin de parcours », groupe A, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Deux cercles $\Gamma_1$ et $\Gamma_2$ se coupent en deux points $A$ et $B$.

Sur le cercle $\Gamma_2$, on choisit deux points $C$ et $D$ (autres que $A$ et $B$). La droite $(CA)$ recoupe le cercle $\Gamma_1$ en un point $E$, et la droite $(BD)$ recoupe le cercle $\Gamma_1$ en un point $F$.

![Le cercle Gamma-1 à gauche et le cercle Gamma-2 à droite, leurs points communs A et B, la corde [CD] du cercle de droite, et les points E et F sur le cercle de gauche](7614-figure-1.svg)

Démontrer que les droites $(CD)$ et $(EF)$ sont parallèles.

## Hints

1. La droite $(CE)$ coupe à la fois $(CD)$ et $(EF)$ : c'est une **sécante** aux deux droites qu'on veut montrer parallèles. Intéressez-vous donc aux angles $\widehat{ACD}$ et $\widehat{AEF}$.
2. Sur la figure, $A$ est entre $C$ et $E$. Donc l'angle $\widehat{ACD}$ est l'angle que fait $(CD)$ avec la sécante, et $\widehat{AEF}$ est l'angle que fait $(EF)$ avec la même sécante.
3. Les quatre points $A$, $E$, $F$, $B$ sont sur le cercle $\Gamma_1$ : que peut-on dire des angles opposés du quadrilatère $AEFB$ ?
4. Les quatre points $A$, $C$, $D$, $B$ sont sur le cercle $\Gamma_2$ : même question.
5. Attention au sens des demi-droites. Sur la figure, $B$ est entre $F$ et $D$ : quel lien y a-t-il alors entre $\widehat{ABF}$ et $\widehat{ABD}$ ?

## Solution

Tous les raisonnements ci-dessous se lisent sur la figure de l'énoncé.

**Rappel utilisé deux fois.** Si quatre points forment un quadrilatère convexe inscrit dans un cercle, alors ses angles opposés sont supplémentaires, c'est-à-dire que leur somme vaut $180°$.

**Étape 1 : dans le cercle $\Gamma_1$.**

Les points $A$, $E$, $F$, $B$ sont sur $\Gamma_1$ et forment, dans cet ordre, un quadrilatère convexe. Ses angles en $E$ et en $B$ sont opposés, donc

$$\widehat{AEF} + \widehat{ABF} = 180° .$$

Or, sur la figure, $B$ est situé **entre** $F$ et $D$. Les demi-droites $[BF)$ et $[BD)$ sont donc opposées, et les angles $\widehat{ABF}$ et $\widehat{ABD}$ sont supplémentaires :

$$\widehat{ABF} = 180° - \widehat{ABD} .$$

En reportant :

$$\widehat{AEF} = 180° - \widehat{ABF} = \widehat{ABD} .$$

**Étape 2 : dans le cercle $\Gamma_2$.**

Les points $D$, $C$, $A$, $B$ sont sur $\Gamma_2$ et forment, dans cet ordre, un quadrilatère convexe. Ses angles en $C$ et en $B$ sont opposés, donc

$$\widehat{DCA} + \widehat{ABD} = 180° , \qquad \text{c'est-à-dire} \qquad \widehat{ACD} = 180° - \widehat{ABD} .$$

**Étape 3 : recollement.**

En comparant les deux étapes :

$$\widehat{AEF} + \widehat{ACD} = \widehat{ABD} + \left(180° - \widehat{ABD}\right) = 180° .$$

**Étape 4 : conclusion.**

Comme $A$ est entre $C$ et $E$, la demi-droite $[CA)$ est la demi-droite $[CE)$, et la demi-droite $[EA)$ est la demi-droite $[EC)$. Autrement dit :

- $\widehat{ACD}$ est l'angle que la droite $(CD)$ fait avec la sécante $(CE)$, au point $C$ ;
- $\widehat{AEF}$ est l'angle que la droite $(EF)$ fait avec la même sécante $(CE)$, au point $E$ ;
- et sur la figure, $D$ et $F$ sont du **même côté** de la droite $(CE)$.

Supposons un instant que $(CD)$ et $(EF)$ ne soient pas parallèles : elles se couperaient alors en un point $M$, situé du côté de $D$ et $F$. On obtiendrait un triangle $CEM$ dont deux des angles, celui en $C$ et celui en $E$, seraient précisément $\widehat{ACD}$ et $\widehat{AEF}$. Leur somme vaudrait $180°$, ce qui ne laisse rien pour le troisième angle : impossible.

Les droites $(CD)$ et $(EF)$ sont donc **parallèles**.

## Going further

Le raisonnement ci-dessus est écrit pour la figure de l'énoncé. Si l'on déplace $C$ ou $D$ sur $\Gamma_2$, la figure change : $A$ peut ne plus être entre $C$ et $E$, $B$ peut ne plus être entre $F$ et $D$. Le résultat reste vrai, mais certaines égalités deviennent des supplémentaires, et inversement. C'est le point faible de toute chasse aux angles menée sur une figure.

Les olympiens utilisent pour cela les **angles orientés de droites**, mesurés modulo $180°$ : avec eux, les relations « angles opposés d'un quadrilatère inscrit » et « points alignés » s'écrivent d'une seule façon, valable pour toutes les figures à la fois, et la démonstration ci-dessus tient en deux lignes.

Un mot sur la structure du résultat : le point $A$ sert de charnière entre les deux cercles dans la première droite, et $B$ dans la seconde. C'est un motif qu'on retrouve souvent, sous le nom de *configuration des deux cercles sécants*.
