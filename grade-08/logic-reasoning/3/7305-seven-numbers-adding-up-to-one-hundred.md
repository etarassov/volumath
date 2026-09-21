---
id: "7305"
title: "Sept nombres dont la somme fait 100"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [entiers, somme, ordre, disjonction-de-cas]
adapted_from: null
see_also: ["8142"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En colle », stratégies de base, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On écrit sept entiers strictement positifs, **tous différents**, dont la somme vaut $100$.

Montrer qu'on peut toujours en choisir trois dont la somme vaut au moins $50$.

## Hints

1. Range d'abord les sept nombres du plus petit au plus grand : $a_1 < a_2 < \cdots < a_7$. Quels trois nombres vas-tu naturellement essayer de prendre ?
2. Prends les trois plus grands, $a_5$, $a_6$ et $a_7$. Il faut montrer que leur somme atteint $50$.
3. Essaie de couper le problème en deux : soit $a_5$ est grand, soit $a_5$ est petit. Où placer la frontière ?
4. Si $a_5$ est grand, les deux nombres $a_6$ et $a_7$ sont encore plus grands, et tu peux minorer directement la somme des trois.
5. Si $a_5$ est petit, ce sont les quatre premiers qui sont petits. Majore $a_1 + a_2 + a_3 + a_4$, et n'oublie pas que la somme totale vaut $100$.

## Solution

Rangeons les sept nombres dans l'ordre croissant :
$$a_1 < a_2 < a_3 < a_4 < a_5 < a_6 < a_7 .$$

Ils sont tous différents, donc ces inégalités sont **strictes** : chacun vaut au moins un de plus que le précédent. C'est la clé de tout ce qui suit.

Nous allons montrer que
$$a_5 + a_6 + a_7 \geqslant 50 .$$

Séparons deux cas selon la taille de $a_5$.

**Premier cas : $a_5 \geqslant 16$.**

Comme $a_6 > a_5$ et que ce sont des entiers, $a_6 \geqslant a_5 + 1 \geqslant 17$. De même $a_7 \geqslant a_6 + 1 \geqslant 18$. Donc
$$a_5 + a_6 + a_7 \geqslant 16 + 17 + 18 = 51 \geqslant 50 .$$

**Deuxième cas : $a_5 \leqslant 15$.**

Cette fois on regarde les quatre plus petits. Comme $a_4 < a_5 \leqslant 15$, on a $a_4 \leqslant 14$. De même $a_3 \leqslant 13$, puis $a_2 \leqslant 12$ et $a_1 \leqslant 11$. Donc
$$a_1 + a_2 + a_3 + a_4 \leqslant 11 + 12 + 13 + 14 = 50 .$$

Or la somme des sept nombres vaut $100$, donc
$$a_5 + a_6 + a_7 = 100 - (a_1 + a_2 + a_3 + a_4) \geqslant 100 - 50 = 50 .$$

**Conclusion.**

Dans les deux cas, les trois plus grands nombres ont une somme d'au moins $50$. On peut donc toujours en trouver trois dont la somme vaut au moins $50$.

**Remarque.** La valeur $50$ est la meilleure possible : avec $11, 12, 13, 14, 15, 16, 19$, dont la somme fait bien $100$, les trois plus grands donnent $15 + 16 + 19 = 50$ tout juste.

## Going further

1. Pourquoi l'énoncé a-t-il besoin de préciser que les sept entiers sont tous différents ? Trouve sept entiers strictement positifs, pas tous différents, de somme $100$, dont trois quelconques ont une somme inférieure à $50$.
2. Dans le premier cas, la frontière choisie était $16$. Que se passe-t-il si on la met à $15$ ? Et à $17$ ?
3. Même question avec **neuf** entiers distincts de somme $100$ : quel est le plus grand nombre $m$ tel qu'on puisse toujours en trouver trois de somme au moins $m$ ?
