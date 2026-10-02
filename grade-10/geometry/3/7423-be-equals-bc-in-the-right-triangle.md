---
id: "7423"
title: "BE = BC dans le triangle rectangle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-rectangle, bissectrice, chasse-aux-angles, isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : géométrie"
  reference: "stage_ete_2011.pdf, « Troisième période », incontournable géométrie, test, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $C$. On note $K$ le pied de la hauteur issue de $C$, c'est-à-dire
le projeté orthogonal de $C$ sur $(AB)$.

Dans le triangle $ACK$, on trace la bissectrice issue de $C$ ; elle coupe le côté $[AK]$ en un
point $E$.

Montrer que $BE = BC$.

## Hints

1. Fais une figure. Pour montrer que $BE = BC$, il suffit de montrer que le triangle $BEC$ est
   isocèle en $B$, donc que $\widehat{BEC} = \widehat{BCE}$.
2. Pose $\alpha = \widehat{BEC}$ et exprime tous les angles de la figure en fonction de $\alpha$.
   Commence par $\widehat{AEC}$, qui est le supplémentaire de $\alpha$... ou bien travaille
   directement dans le triangle $ECK$, rectangle en $K$.
3. Le point clé : $\widehat{ACE} = \widehat{ECK}$ parce que $(CE)$ est une bissectrice. Et
   $\widehat{ACB} = 90°$, ce qui permet de relier $\widehat{BCE}$ à $\widehat{ACE}$.

## Solution

**Mise en place.**

Le point $E$ est sur le segment $[AK]$, donc entre $A$ et $K$, et $K$ est entre $A$ et $B$.

Posons
$$\alpha = \widehat{CEB}.$$

**Premier calcul d'angle.**

Les points $A$, $E$, $K$, $B$ sont alignés dans cet ordre. Les angles $\widehat{CEA}$ et
$\widehat{CEB}$ sont donc supplémentaires :
$$\widehat{CEK} = \widehat{CEB} = \alpha,$$
car $K$ et $B$ sont du même côté de $E$.

Le triangle $ECK$ est rectangle en $K$ (puisque $(CK) \perp (AB)$). La somme de ses angles vaut
$180°$, donc
$$\widehat{ECK} = 90° - \alpha.$$

**Deuxième calcul d'angle.**

La droite $(CE)$ est la bissectrice de l'angle $\widehat{ACK}$, donc
$$\widehat{ACE} = \widehat{ECK} = 90° - \alpha.$$

**Troisième calcul d'angle.**

L'angle $\widehat{ACB}$ est droit, et la demi-droite $[CE)$ est à l'intérieur de cet angle
(puisque $E$ est entre $A$ et $B$). Donc
$$\widehat{ACE} + \widehat{ECB} = 90°,$$
d'où
$$\widehat{ECB} = 90° - \widehat{ACE} = 90° - (90° - \alpha) = \alpha.$$

**Conclusion.**

Dans le triangle $BEC$, on a trouvé
$$\widehat{BEC} = \alpha = \widehat{BCE}.$$

Ce triangle a donc deux angles égaux : il est isocèle en $B$, et les côtés opposés à ces deux
angles sont de même longueur :
$$\boxed{BE = BC}.$$

## Going further

Sur la même figure, la bissectrice issue de $C$ dans le triangle $BCK$ coupe $[KB]$ en un point
$F$. Que peut-on dire de $AF$ ? Et que vaut l'angle $\widehat{ECF}$ ?
