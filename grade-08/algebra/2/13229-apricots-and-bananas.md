---
id: "13229"
title: "Abricots et bananes"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [mise-en-equation, proportionnalite, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 2 ; réponse (40) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Cédric a acheté des abricots et des bananes. Emmanuel, dans le même magasin, a acheté trois fois plus d'abricots et trois fois moins de bananes que Cédric, et il a payé $50\,\%$ plus cher que lui.

Chacun a dépensé un nombre entier non nul d'euros pour les bananes, et de même pour les abricots. Aucun des deux n'a dépensé plus de $30$ euros au total.

Quelle somme ont-ils payée à eux deux ?

## Hints

1. Note $A$ et $B$ les sommes dépensées par Cédric pour les abricots et pour les bananes. Combien Emmanuel a-t-il dépensé pour chaque fruit ?
2. Traduis « $50\,\%$ plus cher » par une équation, puis débarrasse-toi des fractions.
3. Tu dois trouver $9A = 7B$. Avec la limite de $30$ euros, combien de valeurs de $A$ restent possibles ?

## Solution

**Mise en équation.** Notons $A$ et $B$ les sommes, en euros, dépensées par Cédric pour les abricots et pour les bananes. Emmanuel paie les mêmes prix : il dépense $3A$ pour les abricots et $\frac{B}{3}$ pour les bananes. Payer $50\,\%$ plus cher, c'est payer $\frac{3}{2}$ fois plus, donc

$$3A + \frac{B}{3} = \frac{3}{2}\,(A + B).$$

En multipliant par $6$ : $18A + 2B = 9A + 9B$, c'est-à-dire $9A = 7B$.

**Les valeurs possibles.** On a $B = \frac{9A}{7}$, donc la dépense de Cédric vaut $A + B = \frac{16A}{7}$. Elle ne dépasse pas $30$ euros, donc $16A \leqslant 210$, soit $A \leqslant 13$.

De plus $B$ est un entier, donc $9A$ est un multiple de $7$. Parmi $A = 1, 2, \ldots, 13$, seul $A = 7$ convient : les autres valeurs donnent $9A$ égal à $9, 18, 27, 36, 45, 54$ ou à $72, 81, 90, 99, 108, 117$, et aucun de ces nombres n'est divisible par $7$.

Donc $A = 7$ et $B = 9$. On vérifie le reste de l'énoncé : Emmanuel dépense $3 \times 7 = 21$ euros d'abricots et $9 : 3 = 3$ euros de bananes, des nombres entiers, soit $24$ euros, au plus $30$. Et $24 = \frac{3}{2} \times 16$ : il a bien payé $50\,\%$ de plus que les $16$ euros de Cédric.

**Conclusion.** À eux deux, ils ont payé $16 + 24 = 40$ euros.
