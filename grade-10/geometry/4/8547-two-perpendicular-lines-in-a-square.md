---
id: "8547"
title: "Deux droites perpendiculaires dans un carré"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [carre, triangles-semblables, theoreme-de-thales, perpendiculaires]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Entraînement de fin de parcours » du Groupe B, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

$ABCD$ est un carré et $P$ est un point du segment $[BC]$, distinct de $B$ et de $C$.

On note $M$ le point d'intersection des droites $(CD)$ et $(AP)$, et $N$ le point
d'intersection des droites $(AB)$ et $(DP)$.

Démontrer que les droites $(NC)$ et $(BM)$ sont perpendiculaires.

## Hints

1. Fais une figure. Les points $M$ et $N$ sortent du carré : $M$ est au-delà de $C$ sur la droite $(DC)$, et $N$ au-delà de $B$ sur la droite $(AB)$.
2. Utilise le théorème de Thalès deux fois, avec le point $P$ comme sommet : une fois avec les parallèles $(CM)$ et $(BA)$, une fois avec les parallèles $(BN)$ et $(CD)$.
3. Tu obtiens deux rapports. Multiplie-les : le produit $CM \times BN$ devrait être remarquable.
4. Note $a$ le côté du carré. Tu disposes alors de deux triangles rectangles, l'un en $C$ et l'autre en $B$, dont les côtés sont proportionnels. Que peux-tu en déduire sur leurs angles ?

## Solution

Notons $a$ la longueur du côté du carré, de sorte que $AB = BC = CD = DA = a$.

**Premier emploi de Thalès.** Les droites $(CM)$ et $(BA)$ sont parallèles (ce sont les
droites $(DC)$ et $(AB)$), et les droites $(AM)$ et $(BC)$ se coupent en $P$. Le théorème de
Thalès dans cette configuration donne

$$\frac{CM}{BA} = \frac{PC}{PB}, \qquad \text{donc} \qquad CM = a \times \frac{PC}{PB} .$$

**Second emploi de Thalès.** De même, les droites $(BN)$ et $(CD)$ sont parallèles, et les
droites $(DN)$ et $(CB)$ se coupent en $P$. Donc

$$\frac{BN}{CD} = \frac{PB}{PC}, \qquad \text{donc} \qquad BN = a \times \frac{PB}{PC} .$$

**Le produit.** En multipliant les deux égalités, les rapports se simplifient :

$$CM \times BN = a^2 \times \frac{PC}{PB} \times \frac{PB}{PC} = a^2 = BC^2 .$$

Autrement dit,

$$\frac{CM}{CB} = \frac{BC}{BN} . \qquad (\star)$$

**Deux triangles semblables.** Considérons les triangles $MCB$ et $CBN$.

- Le triangle $MCB$ est rectangle en $C$, car $M$ est sur la droite $(DC)$ et
  $(DC) \perp (CB)$.
- Le triangle $CBN$ est rectangle en $B$, car $N$ est sur la droite $(AB)$ et
  $(AB) \perp (BC)$.

Ces deux triangles rectangles ont leurs côtés de l'angle droit proportionnels, d'après
$(\star)$ : $\dfrac{MC}{CB} = \dfrac{CB}{BN}$. Ils sont donc semblables, avec la
correspondance $M \leftrightarrow C$, $C \leftrightarrow B$, $B \leftrightarrow N$.

En particulier,

$$\widehat{CMB} = \widehat{BCN} .$$

**On conclut.** Dans le triangle $MCB$, rectangle en $C$, les deux angles aigus sont
complémentaires :

$$\widehat{CMB} + \widehat{MBC} = 90° .$$

En remplaçant $\widehat{CMB}$ par $\widehat{BCN}$ :

$$\widehat{BCN} + \widehat{MBC} = 90° .$$

Appelons $X$ le point d'intersection des droites $(NC)$ et $(BM)$. Dans le triangle $XBC$,
l'angle en $C$ est $\widehat{BCN}$ et l'angle en $B$ est $\widehat{MBC}$. La somme des angles
donne

$$\widehat{BXC} = 180° - \left(\widehat{BCN} + \widehat{MBC}\right) = 180° - 90° = 90° .$$

Les droites $(NC)$ et $(BM)$ sont donc perpendiculaires.
