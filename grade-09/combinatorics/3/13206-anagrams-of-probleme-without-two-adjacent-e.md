---
id: "13206"
title: "Les anagrammes de PROBLEME sans deux E côte à côte"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [denombrement, anagrammes, permutations, principe-multiplicatif]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 6 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Une anagramme du mot PROBLEME est un mot (qui a un sens ou non) formé avec exactement les mêmes $8$ lettres : P, R, O, B, L, M et deux fois la lettre E.

Combien y a-t-il d'anagrammes de PROBLEME dans lesquelles les deux lettres E ne sont pas côte à côte ?

Par exemple, RPOELBEM convient, mais POREEBML ne convient pas.

## Hints

1. Mets d'abord de côté les deux E, et range les six autres lettres P, R, O, B, L, M. De combien de façons ?
2. Une fois ces six lettres rangées, où peut-on glisser un E ? Compte les « trous » : entre deux lettres, mais aussi au début et à la fin.
3. Pour que les deux E ne se touchent pas, il faut les mettre dans deux trous différents. Combien de paires de trous ?

## Solution

**On range d'abord les six lettres différentes.** Les lettres P, R, O, B, L, M sont toutes différentes. Pour les ranger en file, on a $6$ choix pour la première, puis $5$ pour la deuxième, et ainsi de suite :

$$6 \times 5 \times 4 \times 3 \times 2 \times 1 = 720 \text{ façons.}$$

**On glisse ensuite les deux E.** Une fois les six lettres rangées, il y a $7$ places où l'on peut glisser un E : avant la première lettre, entre deux lettres voisines ($5$ places) et après la dernière.

- Si les deux E sont glissés à la même place, ils se retrouvent côte à côte, ce qui est interdit.
- Si on les glisse à deux places différentes, il y a au moins une des six lettres entre eux, donc ils ne se touchent pas.

Il faut donc choisir $2$ places parmi les $7$. Les deux E sont identiques, donc seul compte l'ensemble des deux places : $\frac{7 \times 6}{2} = 21$ façons.

**Chaque anagramme est obtenue une seule fois.** Une anagramme qui convient donne, quand on efface ses deux E, un seul rangement des six lettres, et les places des E sont alors connues. On ne compte donc rien deux fois.

**Conclusion.** Il y a $720 \times 21 = 15\,120$ anagrammes de PROBLEME sans deux E côte à côte.

## Going further

Vérifie le résultat en comptant autrement : il y a en tout $\frac{8 \times 7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1}{2} = 20\,160$ anagrammes. Combien d'entre elles ont leurs deux E collés ? (Pense au bloc « EE » comme à une seule lettre.)
