---
id: "0708"
title: "Cinquante pièces à retourner"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 49, envoi POFM 2020-2021"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Cinquante pièces sont posées en ligne droite. Chaque pièce a une face noire et une face blanche. Au départ, les cinquante pièces montrent toutes leur face noire.

Une opération consiste à choisir deux pièces voisines et à les retourner toutes les deux : chacune des deux montre alors son autre face.

Est-il possible qu'après un certain nombre d'opérations, il y ait exactement vingt-cinq pièces qui montrent leur face blanche ?

## Hints

1. Prends seulement quatre ou cinq pièces et joue un peu. Note à chaque fois combien de pièces sont blanches.
2. Une opération retourne deux pièces à la fois. Trois cas seulement sont possibles : les deux étaient noires, les deux étaient blanches, ou l'une de chaque. De combien le nombre de pièces blanches change-t-il dans chaque cas ?
3. Dans les trois cas, le changement est de $+2$, $0$ ou $-2$. Qu'est-ce qui ne bouge donc jamais ?

## Solution

**Étape 1. L'effet d'une opération.**

Appelons $b$ le nombre de pièces qui montrent leur face blanche. Une opération retourne deux pièces voisines. Trois cas sont possibles :

- les deux pièces étaient noires : elles deviennent blanches, donc $b$ augmente de $2$ ;
- les deux pièces étaient blanches : elles deviennent noires, donc $b$ diminue de $2$ ;
- l'une était noire et l'autre blanche : elles échangent leurs rôles, donc $b$ ne change pas.

Dans tous les cas, $b$ change de $+2$, de $-2$ ou de $0$, c'est-à-dire d'une quantité **paire**.

**Étape 2. L'invariant.**

Comme $b$ ne varie que par sauts pairs, la parité de $b$ ne change jamais.

Au départ toutes les pièces sont noires, donc $b = 0$, qui est pair. Donc :

> à tout moment, le nombre de pièces blanches est pair.

**Étape 3. Conclusion.**

$25$ est impair. Ce nombre ne peut donc jamais être atteint.

**Réponse : non, on ne peut pas obtenir exactement vingt-cinq pièces blanches.**

## Going further

Et si l'on voulait $24$ pièces blanches ? C'est possible : il suffit de retourner les pièces $1$ et $2$, puis $3$ et $4$, et ainsi de suite jusqu'aux pièces $23$ et $24$, soit douze opérations.

Plus généralement, on peut obtenir n'importe quel nombre pair de pièces blanches entre $0$ et $50$, et rien d'autre.
