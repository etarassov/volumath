---
id: "0755"
title: "Le facteur commun caché"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [factorisation, facteur-commun, calcul-litteral]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 8"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers naturels tels que $a = 16$ et

$$ab + ac + 4b + 4c = 200.$$

Calcule $b + c$.

## Hints

1. On ne te demande ni $b$ ni $c$, seulement leur somme. Il faut donc faire apparaître $b + c$ dans l'égalité.
2. Regroupe les deux premiers termes, puis les deux derniers, et cherche un facteur commun dans chaque paquet.
3. Après ces deux regroupements, $b+c$ apparaît deux fois : mets-le à son tour en facteur.

## Solution

**On factorise le membre de gauche.**

Dans $ab + ac$, le facteur $a$ est commun ; dans $4b + 4c$, c'est le facteur $4$ :

$$ab + ac + 4b + 4c = a(b + c) + 4(b + c).$$

Maintenant $(b+c)$ est lui-même en facteur dans les deux morceaux :

$$a(b+c) + 4(b+c) = (a + 4)(b + c).$$

**On remplace $a$ par sa valeur.** Comme $a = 16$, on a $a + 4 = 20$, donc l'égalité de l'énoncé devient

$$20 \, (b + c) = 200,$$

d'où

$$b + c = \frac{200}{20} = 10.$$

**Vérification.** Prenons $b = 4$ et $c = 6$ (leur somme vaut bien $10$) :

$$16 \times 4 + 16 \times 6 + 4 \times 4 + 4 \times 6 = 64 + 96 + 16 + 24 = 200.$$

**Réponse.** $b + c = 10$.
