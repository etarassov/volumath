---
id: "0751"
title: "L'équation cachée dans un long calcul"
grade: 8
theme: algebra
difficulty: 1
duration_min: 5
tags: [equation, priorites-operatoires, calcul]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Résous l'équation

$$\left(3 \times \left(47 \times 5 - \frac{2475}{11}\right) + 2x\right) \times 2 = 160.$$

## Hints

1. L'équation a l'air longue, mais regarde bien : une seule lettre apparaît, et une seule fois. Tout le reste n'est que des nombres.
2. Commence par calculer le morceau sans lettre, c'est-à-dire $47 \times 5 - \dfrac{2475}{11}$.
3. Une fois ce morceau remplacé par sa valeur, il ne reste plus qu'une équation toute simple.

## Solution

**On nettoie d'abord ce qui ne contient pas de lettre.**

$$47 \times 5 = 235 \qquad \text{et} \qquad \frac{2475}{11} = 225,$$

donc

$$47 \times 5 - \frac{2475}{11} = 235 - 225 = 10.$$

En multipliant par $3$ :

$$3 \times \left(47 \times 5 - \frac{2475}{11}\right) = 3 \times 10 = 30.$$

**Il reste une équation courte.** L'équation de départ s'écrit maintenant

$$(30 + 2x) \times 2 = 160.$$

On divise les deux membres par $2$ :

$$30 + 2x = 80.$$

On enlève $30$ des deux côtés :

$$2x = 50,$$

puis on divise par $2$ :

$$x = 25.$$

**Vérification.** Avec $x = 25$ : $3 \times 10 + 2 \times 25 = 30 + 50 = 80$, et $80 \times 2 = 160$. C'est bien le résultat demandé.

**Réponse.** $x = 25$.
