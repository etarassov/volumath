---
id: "0738"
title: "Un produit de fractions qui se télescope"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [fractions, produit, simplification, calcul-astucieux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 14, d'après Coupe Animath d'Automne 2020, P1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

Calculer le nombre

$$\frac{3}{2} \times \frac{4}{3} \times \frac{5}{4} \times \ldots \times \frac{29}{28} \times \frac{30}{29} .$$

## Hints

1. Surtout ne calcule rien pour l'instant : écris les quatre ou cinq premières fractions les unes à côté des autres et regarde les nombres qui apparaissent.
2. Le $3$ est en haut dans la première fraction et en bas dans la deuxième. Que peux-tu en faire ?
3. Une fois toutes les simplifications faites, que reste-t-il en haut, et que reste-t-il en bas ?

## Solution

**Un produit de fractions se simplifie avant d'être calculé.**

Multiplier ces fractions revient à multiplier tous les numérateurs entre eux et tous les dénominateurs entre eux :

$$\frac{3 \times 4 \times 5 \times \ldots \times 29 \times 30}{2 \times 3 \times 4 \times \ldots \times 28 \times 29} .$$

**Presque tout disparaît.**

En haut on trouve tous les entiers de $3$ à $30$, en bas tous les entiers de $2$ à $29$. Chaque entier de $3$ à $29$ figure une fois en haut et une fois en bas : on le simplifie.

Il reste $30$ en haut, et $2$ en bas.

**On conclut.**

$$\frac{3}{2} \times \frac{4}{3} \times \ldots \times \frac{30}{29} = \frac{30}{2} = 15 .$$

## Going further

Le même produit arrêté à $\dfrac{n+1}{n}$ vaut $\dfrac{n+1}{2}$. Le vérifier sur un exemple court, par exemple $\dfrac{3}{2} \times \dfrac{4}{3} \times \dfrac{5}{4}$.
