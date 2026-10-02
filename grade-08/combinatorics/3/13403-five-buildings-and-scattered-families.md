---
id: "13403"
title: "Cinq immeubles et des familles dispersées"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [raisonnement-par-l-absurde, denombrement, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve collège, exercice 3 (repris tel quel en exercice 10 de l'épreuve lycée) ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Un village compte $5$ immeubles. Dans ces immeubles habitent respectivement $5$, $15$, $25$, $35$ et $45$ personnes.

Chaque habitant a au moins deux membres de sa famille (sans se compter lui-même) parmi les habitants du village.

Montrer qu'au moins un habitant a un membre de sa famille qui habite dans le même immeuble que lui.

## Hints

1. Raisonne par l'absurde : suppose que deux membres d'une même famille n'habitent jamais dans le même immeuble.
2. Intéresse-toi au plus grand immeuble, celui de $45$ personnes. Où habitent les membres de la famille de chacun de ces $45$ habitants ?
3. Deux habitants du grand immeuble peuvent-ils avoir un parent en commun ?
4. Compte les personnes des autres immeubles qui ont un parent dans le grand immeuble, et compare avec le nombre d'habitants de ces autres immeubles.

## Solution

**On raisonne par l'absurde.** Supposons que deux membres d'une même famille n'habitent jamais dans le même immeuble, et cherchons une contradiction.

**Les habitants du grand immeuble.**

Appelons $G$ l'immeuble de $45$ habitants. Prenons un habitant $r$ de $G$. Il a au moins deux membres de sa famille dans le village, et d'après notre hypothèse, ils n'habitent pas dans $G$. Choisissons-en deux, que l'on appelle les « parents choisis » de $r$ : ils habitent dans les quatre autres immeubles.

**Deux habitants de $G$ n'ont jamais un parent choisi en commun.**

Si deux habitants $r$ et $s$ de $G$ avaient un même parent $p$, alors $r$ et $p$ seraient de la même famille, $s$ et $p$ aussi, donc $r$ et $s$ seraient de la même famille. Or $r$ et $s$ habitent tous les deux dans $G$, ce qui est exclu par notre hypothèse.

**On compte.**

Chacun des $45$ habitants de $G$ a donc deux parents choisis, et tous ces parents sont des personnes différentes. Cela fait au moins

$$2 \times 45 = 90$$

personnes différentes, qui habitent toutes en dehors de $G$. Mais les quatre autres immeubles n'ont en tout que

$$5 + 15 + 25 + 35 = 80$$

habitants. On ne peut pas loger $90$ personnes différentes parmi $80$ : c'est la contradiction cherchée.

**Conclusion.** L'hypothèse de départ est fausse : il existe au moins un habitant qui a un membre de sa famille dans son propre immeuble.

## Going further

Le résultat reste-t-il vrai si le plus grand immeuble n'a que $40$ habitants, les autres gardant $5$, $15$, $25$ et $35$ habitants ? Le raisonnement ci-dessus ne marche plus. Essaie de construire des familles de trois personnes, prises dans trois immeubles différents, qui couvrent tout le village.
