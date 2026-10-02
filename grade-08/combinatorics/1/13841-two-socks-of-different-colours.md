---
id: "13841"
title: "Deux chaussettes de couleurs différentes"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 5
tags: [pire-des-cas, principe-des-tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 10 (aussi sujet senior, exercice 5) ; réponse 75 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Savinien a dans un tiroir $56$ chaussettes noires, $63$ chaussettes jaunes et $74$ chaussettes
rouges. Il les sort une par une, sans regarder.

Combien doit-il en sortir au minimum pour être sûr d'avoir deux chaussettes de couleurs
différentes ?

## Hints

1. Imagine que Savinien n'a vraiment pas de chance. Combien de chaussettes peut-il sortir sans
   jamais avoir deux couleurs différentes ?
2. Avec quelle couleur peut-il tenir le plus longtemps ?

## Solution

**$74$ chaussettes ne suffisent pas.** Il se peut que Savinien sorte d'abord les $74$ chaussettes
rouges. Il a alors $74$ chaussettes, toutes de la même couleur.

**$75$ chaussettes suffisent.** Si $75$ chaussettes étaient toutes de la même couleur, il y aurait
au moins $75$ chaussettes de cette couleur dans le tiroir. Or aucune couleur n'en a plus de $74$.
Donc parmi $75$ chaussettes, il y en a forcément deux de couleurs différentes.

**Il doit en sortir au minimum $75$.**
