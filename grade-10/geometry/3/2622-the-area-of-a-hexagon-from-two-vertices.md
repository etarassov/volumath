---
id: "2622"
title: "L'aire d'un hexagone connaissant deux sommets"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [hexagone-regulier, diagonale, aire, triangle-equilateral, distance]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, AMC Preparation"
  reference: "Handout-632-751.pdf, 2006 AMC 12 B, problème 16"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-632-751.pdf"
---

## Statement

$ABCDEF$ est un hexagone régulier. Dans un repère orthonormé, ses sommets $A$ et $C$ ont pour coordonnées
$$A(0\,;\,0) \qquad \text{et} \qquad C(7\,;\,1).$$

Quelle est l'aire de cet hexagone ?

## Hints

1. Attention : $A$ et $C$ ne sont **pas** deux sommets voisins. $[AC]$ est une petite diagonale de l'hexagone.
2. Regarde le triangle $ABC$. Que valent $AB$ et $BC$ ? Et que vaut l'angle $\widehat{ABC}$, qui est un angle de l'hexagone régulier ?
3. Dans ce triangle isocèle, trace la hauteur issue de $B$. Elle coupe $[AC]$ en son milieu et partage l'angle en deux. Tu obtiens deux triangles avec un angle de $60°$.
4. Tu devrais trouver $AC = c\sqrt{3}$, où $c$ est le côté de l'hexagone. Calcule $AC^2$ avec les coordonnées, et souviens-toi qu'un hexagone régulier se découpe en six triangles équilatéraux.

## Solution

**Étape 1 : la petite diagonale d'un hexagone régulier.**

Notons $c$ le côté de l'hexagone. Les sommets $A$ et $C$ sont séparés par le sommet $B$ : le segment $[AC]$ est donc une **petite diagonale**, pas un côté.

Regardons le triangle $ABC$. Il est isocèle en $B$, avec $AB = BC = c$, et l'angle $\widehat{ABC}$ est un angle de l'hexagone régulier, donc il mesure
$$\frac{(6-2)\times 180°}{6} = 120° .$$

Traçons la hauteur issue de $B$ : dans un triangle isocèle, elle coupe $[AC]$ en son milieu $M$ et partage l'angle $\widehat{ABC}$ en deux angles de $60°$. Dans le triangle rectangle $ABM$, rectangle en $M$ :
$$AM = AB \times \sin\left(\widehat{ABM}\right) = c \sin(60°) = c\,\frac{\sqrt3}{2} .$$

Donc
$$AC = 2\,AM = c\sqrt{3}, \qquad \text{d'où} \qquad AC^2 = 3c^2 .$$

**Étape 2 : la valeur de $AC^2$.**

Avec les coordonnées données,
$$AC^2 = (7 - 0)^2 + (1 - 0)^2 = 49 + 1 = 50 .$$

En reportant dans l'étape 1 :
$$3c^2 = 50, \qquad \text{donc} \qquad c^2 = \frac{50}{3} .$$

**Étape 3 : l'aire de l'hexagone.**

Un hexagone régulier de côté $c$ se découpe, en joignant son centre à ses six sommets, en **six triangles équilatéraux de côté $c$**. L'aire d'un triangle équilatéral de côté $c$ vaut $\dfrac{c^2\sqrt3}{4}$, donc
$$\mathcal{A} = 6 \times \frac{c^2\sqrt3}{4} = \frac{3\sqrt3}{2}\,c^2 .$$

En remplaçant $c^2$ par $\dfrac{50}{3}$ :
$$\mathcal{A} = \frac{3\sqrt3}{2} \times \frac{50}{3} = \frac{50\sqrt3}{2} = 25\sqrt{3} .$$

$$\boxed{\text{L'aire de l'hexagone vaut } 25\sqrt{3} \approx \text{43,3} .}$$

**Remarque.** On n'a jamais eu besoin de savoir où se trouvent les quatre autres sommets, ni de quel côté de $(AC)$ est placé $B$. Seule la longueur $AC$ compte, et elle suffit à fixer la taille de l'hexagone.

## Going further

La relation $AC = c\sqrt3$ est à connaître : dans un hexagone régulier, la petite diagonale vaut $\sqrt3$ fois le côté, tandis que la grande diagonale, celle qui joint deux sommets opposés comme $[AD]$, vaut exactement $2c$. Ces deux relations permettent de retrouver le côté à partir de n'importe quelle diagonale mesurée sur le dessin.
