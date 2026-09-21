---
id: "7264"
title: "Une différence écrite quatre fois"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [tiroirs, differences, denombrement, paires]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Principe des tiroirs », exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Sur un premier tableau, on écrit $20$ entiers distincts, tous compris entre $1$ et $64$.

Sur un second tableau, pour **chaque paire** de deux nombres distincts du premier tableau, on écrit
leur différence positive (le plus grand moins le plus petit). Les répétitions sont conservées : si
deux paires différentes donnent la même différence, ce nombre est écrit deux fois.

Montrer qu'un même nombre est écrit au moins quatre fois sur le second tableau.

## Hints

1. Combien de nombres y a-t-il en tout sur le second tableau ? Compte les paires.
2. Quelles valeurs une différence peut-elle prendre ? Trouve le plus petit et le plus grand cas
   possible.
3. Compare le nombre d'inscriptions au nombre de valeurs possibles, comme dans le principe des
   tiroirs, mais en version « au moins quatre ».
4. Raisonne par l'absurde : suppose qu'aucune valeur n'apparaisse quatre fois.

## Solution

**Combien de nombres sur le second tableau ?**

Chaque paire de deux nombres distincts du premier tableau donne exactement une inscription. Le
nombre de paires que l'on peut former avec $20$ nombres vaut
$$\binom{20}{2} = \frac{20 \times 19}{2} = 190 .$$

Il y a donc **$190$ nombres écrits** sur le second tableau, en comptant les répétitions.

**Combien de valeurs possibles ?**

Une différence est un entier strictement positif. Les deux nombres sont compris entre $1$ et $64$,
donc leur différence vaut au plus
$$64 - 1 = 63 .$$

Une valeur écrite est donc un entier compris entre $1$ et $63$ : il y a au plus **$63$ valeurs
possibles**.

**Le comptage.**

Raisonnons par l'absurde et supposons qu'aucune valeur ne soit écrite quatre fois ou plus. Chaque
valeur est alors écrite au plus $3$ fois.

Le nombre total d'inscriptions serait alors au plus
$$63 \times 3 = 189 .$$

Or il y a $190$ inscriptions, et $190 > 189$. Contradiction.

**Conclusion.**

Une des valeurs est donc écrite au moins quatre fois.

**Un même nombre apparaît bien au moins quatre fois sur le second tableau.**

## Going further

La marge est mince : $190$ contre $189$. Un seul nombre de moins sur le premier tableau et
l'argument s'effondre, puisque $19$ nombres ne donnent que
$\binom{19}{2} = 171 < 189$ inscriptions.

Le raisonnement ne dit pas non plus **quelle** valeur se répète, ni où la chercher. On peut
d'ailleurs remarquer que la valeur $1$ est souvent un bon candidat, car avec $20$ nombres dans
$\{1, \ldots, 64\}$ il est difficile d'éviter les nombres consécutifs, mais ce n'est pas ce que
l'énoncé demande de prouver.

Une variante de l'énoncé consiste à écrire les différences **avec leur signe**, dans les deux
sens : il y a alors $20 \times 19 = 380$ inscriptions, pour $126$ valeurs possibles (les entiers
non nuls de $-63$ à $63$), et $126 \times 3 = 378 < 380$ conclut de la même façon.
