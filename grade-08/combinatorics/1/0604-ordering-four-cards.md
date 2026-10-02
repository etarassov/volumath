---
id: "0604"
title: "Quatre cartes à ordonner"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, ordre, cartes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 48, Coupe Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Un joueur dispose de quatre cartes distinctes. De combien de manières peut-il les ordonner ?

## Hints

1. Pose les cartes une par une, de gauche à droite, et demande-toi combien de choix tu as à chaque fois.
2. Une fois la première carte posée, il n'en reste que trois pour la deuxième place.
3. Chaque choix de la première carte peut être suivi de n'importe quel choix pour la suite : les nombres de possibilités se multiplient, ils ne s'additionnent pas.

## Solution

On place les cartes une par une, de la première à la dernière position.

- Pour la première position, les quatre cartes sont disponibles : $4$ choix.
- Une carte est posée, il en reste trois : $3$ choix pour la deuxième position.
- Il en reste deux : $2$ choix pour la troisième position.
- La dernière carte n'a plus le choix : $1$ seule possibilité.

Chaque façon de commencer se prolonge de toutes les façons possibles, donc les nombres de
choix se multiplient :

$$4 \times 3 \times 2 \times 1 = 24.$$

Le joueur peut ordonner ses quatre cartes de **24 manières**.

## Going further

Avec $n$ cartes distinctes, le même raisonnement donne $n \times (n-1) \times \ldots \times 2 \times 1$
manières. Ce nombre s'appelle la factorielle de $n$ et se note $n!$. Ainsi $4! = 24$, mais
déjà $10! = 3\,628\,800$.
