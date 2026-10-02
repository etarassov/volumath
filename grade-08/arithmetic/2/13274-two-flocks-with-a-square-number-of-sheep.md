---
id: "13274"
title: "Les moutons de Noémie et de Tristan"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [carre-parfait, parite, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 4 (aussi exercice 11 des lycéens) ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Noémie et Tristan sont bergers. Chacun possède un nombre de moutons qui est un carré parfait, c'est-à-dire un entier de la forme $n^2 = n \times n$ avec $n$ entier positif ou nul. On note $a^2$ le nombre de moutons de Noémie et $b^2$ celui de Tristan.

En comptant tous leurs moutons ensemble, ils trouvent que $97 \leqslant a^2 + b^2 \leqslant 108$. On sait de plus que :

1. Noémie a strictement plus de moutons que Tristan ;
2. chacun d'eux a au moins $2$ moutons ;
3. le nombre total de moutons $a^2 + b^2$ est impair.

Combien de moutons chacun possède-t-il ?

## Hints

1. Écris la liste de tous les carrés parfaits jusqu'à $108$.
2. Noémie a plus de la moitié du total. Quels carrés sont alors possibles pour elle ?
3. Si la somme de deux nombres est impaire, l'un est pair et l'autre impair. Traite chaque valeur possible de $a^2$, et n'oublie pas de vérifier qu'il n'y a pas d'autre réponse.

## Solution

Les carrés parfaits jusqu'à $108$ sont

$$0,\ 1,\ 4,\ 9,\ 16,\ 25,\ 36,\ 49,\ 64,\ 81,\ 100.$$

**Les valeurs possibles de $a^2$.** Comme $b^2 < a^2$, on a $97 \leqslant a^2 + b^2 < 2a^2$, donc $a^2$ est plus grand que la moitié de $97$, qui vaut 48,5. Et $a^2 \leqslant 108$. Donc $a^2$ vaut $49$, $64$, $81$ ou $100$.

**Les valeurs possibles de $b^2$.** On a $97 - a^2 \leqslant b^2 \leqslant 108 - a^2$, puis $2 \leqslant b^2 < a^2$. Enfin, comme $a^2 + b^2$ est impair, $b^2$ n'a pas la même parité que $a^2$. Traitons les quatre cas.

- $a^2 = 49$ (impair). Il faudrait $48 \leqslant b^2 \leqslant 59$ et $b^2 < 49$, donc $b^2 = 48$, qui n'est pas un carré. Impossible.
- $a^2 = 64$ (pair). Il faudrait $b^2$ impair avec $33 \leqslant b^2 \leqslant 44$. Les carrés impairs sont $1, 9, 25, 49, 81$ : aucun ne convient. Impossible.
- $a^2 = 81$ (impair). Il faut $b^2$ pair avec $16 \leqslant b^2 \leqslant 27$. Le seul carré pair dans cet intervalle est $16$. Alors $a^2 + b^2 = 97$, qui est bien impair et entre $97$ et $108$, avec $16 < 81$ et $16 \geqslant 2$. Cela convient.
- $a^2 = 100$ (pair). Il faudrait $b^2$ impair avec $2 \leqslant b^2 \leqslant 8$. Les carrés impairs voisins sont $1$, trop petit, et $9$, trop grand. Impossible.

**Conclusion.** Il y a une seule possibilité : Noémie a $81$ moutons et Tristan en a $16$.
