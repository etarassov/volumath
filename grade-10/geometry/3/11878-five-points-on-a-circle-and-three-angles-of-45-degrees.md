---
id: "11878"
title: "Cinq points sur un cercle et trois angles de 45°"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, angle-inscrit, angle-au-centre, corde, trigonometrie, pythagore]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 7 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Le corrigé utilise le théorème d'Al-Kashi et une disjonction de cas ; la solution ici calcule les arcs, ce qui montre que les deux sommes valent le carré du diamètre."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Les points $A$, $B$, $C$, $D$, $E$ sont placés dans cet ordre sur un cercle $\gamma$, de sorte que
$$\widehat{ABE} = \widehat{BEC} = \widehat{ECD} = 45°.$$
Montrer que
$$AB^2 + CE^2 = BE^2 + CD^2.$$

## Hints

1. Chaque angle de $45°$ est un angle inscrit. Quel arc intercepte-t-il, et que vaut l'angle au centre correspondant ?
2. Les cinq arcs $AB$, $BC$, $CD$, $DE$, $EA$ font le tour du cercle. Trois d'entre eux sont connus.
3. Exprimer la longueur d'une corde à l'aide du rayon et de l'angle au centre. Que vaut la somme des carrés de deux cordes dont les angles au centre ont pour somme $180°$ ?

## Solution

On note $O$ le centre de $\gamma$ et $R$ son rayon. On mesure un arc par son angle au centre.

**Rappels.**

- *Angle inscrit.* Un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc.
- *Longueur d'une corde.* Si $[PQ]$ est une corde et $\theta = \widehat{POQ}$, avec $0° < \theta \leqslant 180°$, alors $PQ = 2R \sin\dfrac{\theta}{2}$. En effet, le triangle $OPQ$ est isocèle en $O$, sa hauteur issue de $O$ coupe $[PQ]$ en son milieu $H$ et partage l'angle en $O$ en deux, et dans le triangle $OHP$ rectangle en $H$, $PH = R \sin\dfrac{\theta}{2}$.

**Étape 1 : trois arcs de $90°$.** Les points se suivent dans l'ordre $A$, $B$, $C$, $D$, $E$ sur le cercle.

- L'angle inscrit $\widehat{ABE}$ intercepte l'arc $EA$ qui ne contient pas $B$ : cet arc mesure $2 \times 45° = 90°$.
- L'angle $\widehat{BEC}$ intercepte l'arc $BC$ qui ne contient pas $E$ : il mesure $90°$.
- L'angle $\widehat{ECD}$ intercepte l'arc $DE$ qui ne contient pas $C$ : il mesure $90°$.

Les cinq arcs $AB$, $BC$, $CD$, $DE$, $EA$ font le tour du cercle, donc la somme des arcs $AB$ et $CD$ vaut $360° - 3 \times 90° = 90°$. On note $y$ la mesure de l'arc $CD$, avec $0° < y < 90°$ ; l'arc $AB$ mesure alors $90° - y$.

**Étape 2 : les angles au centre des quatre cordes.**

| corde | petit arc | angle au centre |
|---|---|---|
| $[AB]$ | $AB$ | $90° - y$ |
| $[CD]$ | $CD$ | $y$ |
| $[CE]$ | $C \to D \to E$ | $y + 90°$ |
| $[BE]$ | $E \to A \to B$ | $90° + (90° - y) = 180° - y$ |

Pour $[CE]$ et $[BE]$, on a pris l'arc qui ne dépasse pas $180°$ : l'autre arc de $B$ à $E$, qui passe par $C$ et $D$, mesure $180° + y$.

**Étape 3 : les longueurs.** On pose $t = \dfrac{y}{2}$, avec $0° < t < 45°$. Par le rappel :
$$AB = 2R \sin(45° - t), \qquad CE = 2R \sin(45° + t), \qquad BE = 2R \sin(90° - t), \qquad CD = 2R \sin t.$$
Dans un triangle rectangle, le sinus d'un angle aigu est le cosinus de l'autre, donc $\sin(90° - u) = \cos u$ pour $0° < u < 90°$. Ainsi $\sin(45° + t) = \cos(45° - t)$ et $\sin(90° - t) = \cos t$, et
$$AB^2 + CE^2 = 4R^2\left(\sin^2(45° - t) + \cos^2(45° - t)\right) = 4R^2,$$
$$BE^2 + CD^2 = 4R^2\left(\cos^2 t + \sin^2 t\right) = 4R^2.$$

**Conclusion.** Les deux sommes valent $4R^2$, le carré du diamètre, donc **$AB^2 + CE^2 = BE^2 + CD^2$**.

## Going further

On retiendra le fait derrière ce calcul : deux cordes d'un même cercle dont les angles au centre ont pour somme $180°$ peuvent être placées comme les deux côtés de l'angle droit d'un triangle inscrit dans un demi-cercle, et la somme de leurs carrés vaut donc le carré du diamètre.
