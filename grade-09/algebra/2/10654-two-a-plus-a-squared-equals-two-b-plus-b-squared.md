---
id: "10654"
title: "Si 2a + a² = 2b + b² et a est entier, b l'est aussi"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [identite-remarquable, factorisation, equation-produit, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 2 (repris mot pour mot en exercice 10 des Seniors) ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soient $a$ et $b$ deux réels tels que

$$2a + a^2 = 2b + b^2$$

Montrer que si $a$ est un entier (positif ou négatif), alors $b$ est aussi un entier.

## Hints

1. Ajoute $1$ aux deux membres. Reconnais-tu une identité remarquable ?
2. Deux nombres qui ont le même carré sont égaux ou opposés.

## Solution

En ajoutant $1$ aux deux membres, l'égalité devient

$$a^2 + 2a + 1 = b^2 + 2b + 1, \qquad \text{c'est-à-dire} \qquad (a + 1)^2 = (b + 1)^2$$

Donc $(a + 1)^2 - (b + 1)^2 = 0$, et en factorisant,

$$(a + 1 - b - 1)(a + 1 + b + 1) = (a - b)(a + b + 2) = 0$$

Un produit est nul seulement si l'un des facteurs est nul. Donc $b = a$ ou $b = -a - 2$.

Si $a$ est un entier, alors $a$ et $-a - 2$ sont tous les deux des entiers. Dans les deux cas, $b$ est un entier.

**Conclusion : on a toujours $b = a$ ou $b = -a - 2$, donc $b$ est un entier dès que $a$ en est un.**

## Going further

Pour $a = 3$, quelles sont les valeurs possibles de $b$ ? Vérifie-les dans l'égalité de départ.
