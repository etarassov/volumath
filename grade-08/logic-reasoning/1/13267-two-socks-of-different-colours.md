---
id: "13267"
title: "Deux chaussettes de couleurs différentes"
grade: 8
theme: logic-reasoning
difficulty: 1
duration_min: 5
tags: [pire-des-cas, tiroirs, raisonnement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices lycéens, exercice 10 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

J'ai $6$ chaussettes bleues et $6$ chaussettes rouges dans un tiroir. Je prends des chaussettes au hasard, sans regarder.

Combien dois-je en prendre, au minimum, pour être **sûr** d'avoir deux chaussettes de couleurs différentes ?

## Hints

1. Attention, on ne demande pas deux chaussettes de la même couleur.
2. Quelle est la pire malchance possible ? Combien de chaussettes peut-on prendre sans avoir encore les deux couleurs ?

## Solution

Il faut montrer deux choses : qu'un certain nombre de chaussettes ne suffit pas, et que le nombre suivant suffit.

**Six chaussettes ne suffisent pas.** Si j'en prends $6$ ou moins, il peut arriver qu'elles soient toutes bleues, puisqu'il y a $6$ chaussettes bleues. Je ne suis donc pas sûr d'avoir les deux couleurs.

**Sept chaussettes suffisent.** Si j'en prends $7$, elles ne peuvent pas être toutes bleues (il n'y en a que $6$), donc j'ai au moins une rouge. De même, elles ne peuvent pas être toutes rouges, donc j'ai au moins une bleue.

**Conclusion.** Il faut prendre au minimum $7$ chaussettes.

## Going further

Et pour être sûr d'avoir deux chaussettes de la **même** couleur ? Cette fois, $3$ suffisent : parmi trois chaussettes de deux couleurs possibles, deux ont forcément la même couleur.
