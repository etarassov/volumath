---
id: "3808"
title: "Le dragon à deux têtes et celui à trois têtes"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [proportionnalite, vitesse, comparaison, unites]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 3 (réponse dans Handout-4188-3921.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Trois bonds d'un dragon à deux têtes couvrent exactement la même distance que cinq bonds d'un dragon à trois têtes.

Par ailleurs, pendant que le dragon à deux têtes fait quatre bonds, le dragon à trois têtes en fait sept.

Lequel des deux dragons se déplace le plus vite ? Justifie.

## Hints

1. Les deux dragons ne font pas des bonds de la même longueur, et ils ne bondissent pas au même rythme. Il faut comparer les deux à la fois.
2. Pour comparer des vitesses, le plus simple est de regarder quelle distance chacun parcourt **pendant la même durée**.
3. Cherche un nombre de bonds du dragon à deux têtes qui soit à la fois un multiple de $3$ (pour utiliser la première information) et un multiple de $4$ (pour utiliser la seconde).

## Solution

**L'idée : choisir une durée bien pratique, et comparer les distances parcourues pendant cette durée.**

**Étape 1. On choisit une durée.**

Appelons $T$ le temps que met le dragon à deux têtes pour faire $4$ bonds. Pendant ce temps $T$, le dragon à trois têtes fait $7$ bonds.

Prenons la durée $3 \times T$. Pendant cette durée :

- le dragon à deux têtes fait $3 \times 4 = 12$ bonds ;
- le dragon à trois têtes fait $3 \times 7 = 21$ bonds.

Le nombre $12$ a été choisi parce qu'il est un multiple de $3$, ce qui va permettre d'utiliser la première information.

**Étape 2. On traduit les distances dans la même unité.**

Trois bonds du dragon à deux têtes valent cinq bonds du dragon à trois têtes. Prenons comme unité de longueur **un bond du dragon à trois têtes**.

Alors $3$ bonds du dragon à deux têtes valent $5$ unités, donc $12$ bonds, c'est-à-dire $4$ fois plus, valent

$$4 \times 5 = 20 \text{ unités}.$$

**Étape 3. On compare.**

Pendant la durée $3T$ :

- le dragon à deux têtes parcourt $20$ unités ;
- le dragon à trois têtes parcourt $21$ unités.

Comme $21 > 20$, c'est le dragon à trois têtes qui va le plus loin dans le même temps.

**Conclusion.** Le dragon à trois têtes se déplace plus vite. Sa vitesse vaut $\dfrac{21}{20}$ de celle de l'autre, soit $5\ \%$ de plus.

## Going further

1. Reprends le problème si, pendant que le dragon à deux têtes fait quatre bonds, le dragon à trois têtes n'en fait que six. Qui gagne alors ?
2. Pour quel nombre de bonds du dragon à trois têtes (pendant quatre bonds de l'autre) les deux dragons iraient-ils exactement à la même vitesse ?
