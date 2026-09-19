---
id: "0607"
title: "Les mots de la langue aayyaa"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, puissances, mots]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 50, Coupe Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Les mots de la langue *aayyaa* sont les successions de $1$ à $10$ caractères qui sont soit
des $a$, soit des $y$. Déterminer le nombre de mots de cette langue.

## Hints

1. Compte d'abord les mots d'une seule lettre, puis ceux de deux lettres, puis ceux de trois lettres. Tu devrais reconnaître une suite de nombres familière.
2. Pour écrire un mot de $k$ lettres, tu choisis chaque lettre indépendamment des autres, et tu as deux possibilités à chaque fois.
3. Additionne ensuite les dix nombres obtenus. Tu peux aussi remarquer que $2 + 4 = 6 = 8 - 2$, puis $2 + 4 + 8 = 14 = 16 - 2$, et deviner la règle.

## Solution

**Les mots d'une longueur fixée.** Un mot de $k$ lettres se construit en choisissant sa
première lettre ($a$ ou $y$ : deux possibilités), puis sa deuxième (deux possibilités
encore), et ainsi de suite jusqu'à la $k$-ième. Les choix sont indépendants, donc le nombre
de mots de $k$ lettres est

$$\underbrace{2 \times 2 \times \ldots \times 2}_{k \text{ facteurs}} = 2^k.$$

**Le total.** La langue contient les mots de $1$ à $10$ lettres, donc au total

$$2^1 + 2^2 + 2^3 + \ldots + 2^{10} = 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 + 1024.$$

En additionnant au fur et à mesure : $2$, $6$, $14$, $30$, $62$, $126$, $254$, $510$,
$1022$, puis $2046$.

**Réponse : la langue *aayyaa* compte $2046$ mots.**

## Going further

Les totaux successifs $2, 6, 14, 30, 62, \ldots$ valent chacun $2$ de moins qu'une puissance
de $2$ : $4-2$, $8-2$, $16-2$, $32-2$… La raison est que si on note
$S = 2 + 4 + \ldots + 2^{10}$, alors $2S = 4 + 8 + \ldots + 2^{11}$, et en soustrayant
tout se simplifie sauf deux termes : $2S - S = 2^{11} - 2$. Donc
$S = 2^{11} - 2 = 2048 - 2 = 2046$.
