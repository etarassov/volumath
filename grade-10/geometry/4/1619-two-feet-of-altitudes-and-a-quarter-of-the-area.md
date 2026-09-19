---
id: "1619"
title: "Un quart de l'aire, et l'angle cherché"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [cercle, angle-inscrit, triangles-semblables, rapport-daires, cosinus]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 2"
  reference: "Handout-2015-1715.pdf, problème 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2015-1715.pdf"
---

## Statement

On considère un cercle de diamètre $[AB]$ et un point $C$ situé à l'extérieur de ce cercle.

La droite $(AC)$ coupe le cercle en $A$ et en un second point $D$ ; la droite $(BC)$ le coupe
en $B$ et en un second point $M$. On se place dans la configuration de la figure, où $D$
appartient au segment $[AC]$ et $M$ au segment $[BC]$.

On suppose que
$$\text{aire}(DCM) = \frac14 \times \text{aire}(ACB) .$$

Déterminer la mesure de l'angle $\widehat{CBD}$.

![Le cercle de diamètre [AB], le point C à l'extérieur, et les deux points D et M](1619-figure-1.svg)

## Hints

1. $[AB]$ est un diamètre et $D$ est sur le cercle. Que peux-tu dire de l'angle $\widehat{ADB}$ ? Et de $\widehat{AMB}$ ?
2. Les triangles $BDC$ et $AMC$ sont donc rectangles. Dans chacun, exprime le cosinus de l'angle en $C$ à l'aide de deux longueurs.
3. Tu obtiens $\dfrac{CD}{CB} = \dfrac{CM}{CA} = \cos\widehat{ACB}$. Les triangles $CDM$ et $CBA$ ont un angle commun et deux côtés proportionnels : que peux-tu en conclure ?
4. Pour deux triangles semblables de rapport $k$, le rapport des aires vaut $k^2$. Utilise l'hypothèse sur les aires.

## Solution

**L'idée : $D$ et $M$ sont les pieds de deux hauteurs du triangle $ABC$. Le petit triangle
$CDM$ est semblable au grand triangle $CBA$, avec pour rapport le cosinus de l'angle en $C$.**

**Étape 1. Deux angles droits.**

Le point $D$ appartient au cercle de diamètre $[AB]$, donc le triangle $ADB$ est rectangle en
$D$ : $\widehat{ADB} = 90°$. Comme $D$ est sur le segment $[AC]$, on a aussi
$$\widehat{BDC} = 180° - \widehat{ADB} = 90° .$$

De même, $M$ est sur le cercle de diamètre $[AB]$, donc $\widehat{AMB} = 90°$, et comme $M$
est sur $[BC]$,
$$\widehat{AMC} = 90° .$$

Autrement dit, $(BD)$ et $(AM)$ sont les hauteurs du triangle $ABC$ issues de $B$ et de $A$.

**Étape 2. Deux rapports égaux.**

Notons $\gamma = \widehat{ACB}$ l'angle du triangle en $C$.

Dans le triangle $BDC$, rectangle en $D$, l'angle en $C$ vaut $\gamma$ (c'est le même angle,
puisque $D$ est sur $[AC]$). Le cosinus est le quotient du côté adjacent par l'hypoténuse :
$$\cos\gamma = \frac{CD}{CB} .$$

Dans le triangle $AMC$, rectangle en $M$, l'angle en $C$ vaut encore $\gamma$, donc
$$\cos\gamma = \frac{CM}{CA} .$$

Par conséquent
$$\frac{CD}{CB} = \frac{CM}{CA} = \cos\gamma .$$

**Étape 3. Deux triangles semblables.**

Les triangles $CDM$ et $CBA$ ont l'angle $\widehat{C}$ en commun, et les côtés qui l'encadrent
sont proportionnels dans le même rapport $\cos\gamma$ :
$$\frac{CD}{CB} = \frac{CM}{CA} = \cos\gamma .$$

Ils sont donc **semblables**, de rapport $k = \cos\gamma$.

**Étape 4. Utiliser l'hypothèse sur les aires.**

Pour deux triangles semblables de rapport $k$, le rapport des aires vaut $k^2$. Donc
$$\frac{\text{aire}(DCM)}{\text{aire}(ACB)} = \cos^2\gamma .$$

L'hypothèse donne alors
$$\cos^2 \gamma = \frac14 .$$

L'angle $\gamma$ est l'un des angles aigus du triangle $BDC$, rectangle en $D$, donc
$0° < \gamma < 90°$ et $\cos\gamma > 0$. Il reste
$$\cos\gamma = \frac12, \qquad\text{donc}\qquad \gamma = \widehat{ACB} = 60° .$$

**Étape 5. Conclure.**

Dans le triangle $BDC$, rectangle en $D$, la somme des angles donne
$$\widehat{CBD} = 90° - \gamma = 90° - 60° = 30° .$$

**Conclusion : $\widehat{CBD} = 30°$.**

**Contrôle sur la figure.** Sur le dessin, on a pris $A(-1\,;0)$, $B(1\,;0)$ et
$C \approx (\text{0,577}\,;\ \text{1,577})$. On trouve $D(0\,;1)$ et
$M \approx (\text{0,866}\,;\ \text{0,5})$, puis $CD = 1$, $CB = 2$, donc
$\cos\gamma = \frac12$ : l'angle en $C$ vaut bien $60°$, et l'angle $\widehat{CBD}$ mesure
$30°$.

## Going further

Le résultat ne dépend pas de la forme du triangle : toute position de $C$ donnant un angle de
$60°$ en $C$ convient, et il y en a une infinité. C'est le signe que l'hypothèse sur les aires
ne contrôle qu'une seule grandeur, l'angle $\gamma$.

Le triangle $CDM$ de cette figure, obtenu en joignant deux pieds de hauteur, s'appelle un
**triangle orthique partiel**. La relation « rapport de similitude $= |\cos\gamma|$ » est un
outil classique en géométrie du triangle.
