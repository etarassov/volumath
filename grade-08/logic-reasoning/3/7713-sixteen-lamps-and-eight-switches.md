---
id: "7713"
title: "Seize ampoules et huit interrupteurs"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, tableau, allume eteint]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mardi 19 matin (François Lo Jacomo), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Seize ampoules sont disposées en carré : quatre par ligne et quatre par colonne.

Il y a un interrupteur par ligne et un interrupteur par colonne, soit huit interrupteurs en tout. Actionner un interrupteur change l'état des **quatre** ampoules de sa ligne (ou de sa colonne) : celles qui étaient allumées s'éteignent, et celles qui étaient éteintes s'allument.

Au départ, une seule ampoule est allumée, les quinze autres sont éteintes.

Peut-on, en actionnant des interrupteurs, arriver à tout éteindre ?

## Hints

1. Essaie sur un dessin, avec un quadrillage $4 \times 4$ et des croix pour les ampoules allumées. Tu n'y arriveras pas : cherche donc plutôt à expliquer pourquoi.
2. Suis le **nombre total d'ampoules allumées** dans le carré, et regarde comment il varie quand on actionne un interrupteur.
3. Un interrupteur agit sur quatre ampoules. Si $k$ d'entre elles étaient allumées, combien y en a-t-il d'allumées après ?
4. Calcule la variation du nombre total d'ampoules allumées, en fonction de $k$. Que remarques-tu ?

## Solution

**Non, c'est impossible.**

**L'idée : le nombre d'ampoules allumées reste toujours impair.**

**Ce que fait un interrupteur.** Actionnons un interrupteur quelconque. Il agit sur quatre ampoules. Notons $k$ le nombre de ces quatre ampoules qui étaient allumées ; il y en avait donc $4 - k$ éteintes. Après le basculement, ce sont ces $4-k$ ampoules qui sont allumées, et les $k$ autres qui sont éteintes.

Le nombre total d'ampoules allumées dans tout le carré varie donc de

$$(4 - k) - k = 4 - 2k .$$

Or $4 - 2k$ est un nombre **pair**, quel que soit $k$.

**Ce qui ne change jamais.** Comme chaque manipulation fait varier le nombre d'ampoules allumées d'un nombre pair, la **parité** de ce nombre ne change jamais. Au départ, une seule ampoule est allumée : ce nombre est impair. Il restera donc impair pour toujours, quelle que soit la suite d'interrupteurs actionnés.

**On conclut.** Si l'on parvenait à tout éteindre, le nombre d'ampoules allumées vaudrait $0$, qui est pair. C'est impossible.

**Conclusion : on ne peut jamais éteindre les seize ampoules.**

## Going further

Le raisonnement ne se sert jamais du fait que le carré est $4 \times 4$ : il se sert seulement du fait que chaque interrupteur agit sur un nombre **pair** d'ampoules. Il marche donc à l'identique pour un carré $6 \times 6$, ou pour un rectangle $4 \times 10$.

En revanche, avec un carré $3 \times 3$, chaque interrupteur agit sur trois ampoules et l'argument tombe. Essaie : sauras-tu tout éteindre en partant d'une seule ampoule allumée ?
