---
id: "0704"
title: "Un 9 au début, un 9 à la fin"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, chiffres, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 8"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Combien y a-t-il de nombres de dix chiffres qui commencent par le chiffre $9$ et qui se terminent aussi par le chiffre $9$ ?

## Hints

1. Sur les dix chiffres du nombre, combien sont déjà imposés par l'énoncé ? Combien restent libres ?
2. Chaque chiffre libre peut valoir $0$, $1$, $2$, ..., $9$. Cela fait combien de possibilités pour chacun ?
3. Ici, il n'y a pas à se demander si le nombre commence par $0$ : le premier chiffre est déjà fixé.

## Solution

Un nombre de dix chiffres s'écrit

$$\overline{c_1 c_2 c_3 c_4 c_5 c_6 c_7 c_8 c_9 c_{10}}$$

L'énoncé impose $c_1 = 9$ et $c_{10} = 9$. Ces deux chiffres ne laissent donc aucun choix.

Les huit autres chiffres, $c_2, c_3, \ldots, c_9$, sont libres : chacun peut prendre l'une des $10$ valeurs $0, 1, 2, \ldots, 9$, sans aucune contrainte.

Pour construire un nombre convenable, on choisit $c_2$ ($10$ façons), puis $c_3$ ($10$ façons), et ainsi de suite jusqu'à $c_9$. Chaque nouveau choix se combine avec tous les précédents, donc le nombre total est

$$\underbrace{10 \times 10 \times \cdots \times 10}_{8 \text{ facteurs}} = 10^8 = 100\,000\,000$$

Remarquons au passage qu'il n'y a pas de piège avec le $0$ : le premier chiffre vaut $9$, donc le nombre a bien dix chiffres dans tous les cas.

**Réponse : il y en a $10^8 = 100\,000\,000$, soit cent millions.**

## Going further

Vérifie le raisonnement sur un cas assez petit pour être compté à la main ou avec une calculatrice : les nombres de quatre chiffres qui commencent et finissent par $9$ sont $9009$, $9019$, ..., $9999$. La formule prévoit $10^2 = 100$, et c'est bien ce que l'on trouve.
