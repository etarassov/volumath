---
id: "0631"
title: "Deux reports dans un triangle isocèle"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [angles, triangle-isocele, calcul-dangles, angles-plats]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 52, section « Angles », USA 1977"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB = AC$ et $\widehat{BAC} = 80°$.

On place trois points :

- $D$ sur le côté $[BC]$,
- $E$ sur le côté $[CA]$, tel que $CE = CD$,
- $F$ sur le côté $[AB]$, tel que $BF = BD$.

Déterminer la mesure de l'angle $\widehat{EDF}$.

## Hints

1. Commence par les deux angles à la base du triangle $ABC$. Combien mesurent-ils ?
2. Le triangle $CDE$ a deux côtés égaux. Que peux-tu dire de ses angles ? Tu connais déjà son angle en $C$.
3. Fais la même chose avec le triangle $BDF$.
4. Les points $B$, $D$ et $C$ sont alignés. Que vaut la somme des trois angles $\widehat{BDF}$, $\widehat{FDE}$ et $\widehat{EDC}$ ?

## Solution

**Les angles à la base.**

Le triangle $ABC$ est isocèle en $A$, donc ses angles à la base sont égaux :

$$\widehat{ABC} = \widehat{ACB} = \frac{180° - 80°}{2} = 50°.$$

**Le triangle $CDE$.**

Il est isocèle en $C$, puisque $CE = CD$. Son angle au sommet est $\widehat{DCE} = \widehat{ACB} = 50°$, car $E$ est sur $[CA]$ et $D$ sur $[CB]$ : c'est le même angle. Ses deux angles à la base sont donc égaux et valent

$$\widehat{CDE} = \widehat{CED} = \frac{180° - 50°}{2} = 65°.$$

**Le triangle $BDF$.**

Il est isocèle en $B$, puisque $BF = BD$, et son angle au sommet est $\widehat{DBF} = \widehat{ABC} = 50°$. De la même façon :

$$\widehat{BDF} = \widehat{BFD} = \frac{180° - 50°}{2} = 65°.$$

**On se place en $D$.**

Les points $B$, $D$, $C$ sont alignés dans cet ordre, et $E$, $F$ sont du même côté de la droite $(BC)$. Les trois angles $\widehat{BDF}$, $\widehat{FDE}$ et $\widehat{EDC}$ se succèdent donc autour de $D$ et remplissent exactement le demi-tour :

$$\widehat{BDF} + \widehat{FDE} + \widehat{EDC} = 180°.$$

D'où

$$\widehat{FDE} = 180° - 65° - 65° = 50°.$$

**Conclusion.** L'angle $\widehat{EDF}$ mesure $50°$.

Remarque : le résultat ne dépend pas de l'endroit où l'on place $D$ sur $[BC]$. On peut le glisser où l'on veut, l'angle $\widehat{EDF}$ reste égal à $50°$.

## Going further

1. Reprends le calcul sans supposer que le triangle est isocèle : $ABC$ est un triangle quelconque, $D \in [BC]$, $E \in [CA]$ avec $CE = CD$, et $F \in [AB]$ avec $BF = BD$. Démontre que
$$\widehat{EDF} = 90° - \frac{\widehat{A}}{2}.$$
Retrouve ensuite le résultat de l'exercice.
2. Pour quel triangle l'angle $\widehat{EDF}$ vaut-il $60°$ ?
3. L'angle $\widehat{EDF}$ peut-il être droit ? obtus ?
