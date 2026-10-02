---
id: "0605"
title: "Calculer a − c sans connaître a, b et c"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [calcul-litteral, equation, astuce]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 7"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Calculez $a - c$, sachant que $a + b = 21$ et que $b + c = 7$.

## Hints

1. Essaie d'abord avec des nombres : prends $b = 1$, calcule $a$ et $c$, puis $a - c$. Recommence avec $b = 5$. Que remarques-tu ?
2. Tu ne peux pas trouver $a$, ni $b$, ni $c$ séparément : il y a trois inconnues et seulement deux informations. Mais ce n'est pas ce qu'on demande.
3. Que se passe-t-il si tu soustrais la deuxième égalité de la première ?

## Solution

On ne peut pas retrouver $a$, $b$ et $c$ séparément : par exemple $a = 20$, $b = 1$, $c = 6$
conviennent, mais aussi $a = 16$, $b = 5$, $c = 2$. Dans les deux cas pourtant,
$a - c = 14$. Voici pourquoi.

Soustrayons la deuxième égalité de la première :

$$(a + b) - (b + c) = 21 - 7.$$

À gauche, le $b$ s'ajoute puis se retranche, il disparaît :

$$a + b - b - c = a - c.$$

Donc

$$a - c = 21 - 7 = 14.$$

**Réponse : $a - c = 14$**, quelles que soient les valeurs de $a$, $b$ et $c$ qui vérifient
les deux égalités de départ.
