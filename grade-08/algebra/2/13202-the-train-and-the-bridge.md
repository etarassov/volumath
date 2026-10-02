---
id: "13202"
title: "La longueur du train et le pont"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [vitesse, mise-en-equation, distance]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 2 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Un train roule à vitesse constante.

- Il met $7$ secondes à passer devant un poteau planté au bord de la voie : entre le moment où l'avant du train arrive au poteau et le moment où l'arrière du train le dépasse, il s'écoule $7$ secondes.
- Il traverse ensuite un pont de $870$ mètres : entre le moment où l'avant du train arrive sur le pont et le moment où l'arrière du train quitte le pont, il s'écoule $37$ secondes.

Quelle est la longueur du train, en mètres ?

## Hints

1. Suis l'avant du train. Pendant les $7$ secondes du poteau, quelle distance parcourt-il ?
2. Pendant les $37$ secondes du pont, l'avant du train parcourt la longueur du pont, et encore autre chose. Quoi ?
3. Que parcourt l'avant du train pendant les $37 - 7 = 30$ secondes de différence ?

## Solution

Notons $L$ la longueur du train en mètres et suivons l'avant du train.

**Devant le poteau.** Quand l'arrière du train passe le poteau, l'avant est déjà $L$ mètres plus loin. En $7$ secondes, l'avant du train parcourt donc exactement $L$ mètres.

**Sur le pont.** Quand l'arrière du train quitte le pont, l'avant a parcouru tout le pont, puis encore la longueur du train. En $37$ secondes, l'avant parcourt donc $870 + L$ mètres.

**On compare.** La vitesse est constante. Pendant les $37 - 7 = 30$ secondes de plus, l'avant du train parcourt $(870 + L) - L = 870$ mètres. Il roule donc à

$$\frac{870}{30} = 29 \text{ mètres par seconde.}$$

En $7$ secondes, il parcourt $7 \times 29 = 203$ mètres, et c'est la longueur du train.

**Vérification.** En $37$ secondes, il parcourt $37 \times 29 = 1073$ mètres, et on a bien $870 + 203 = 1073$.

**Conclusion.** Le train mesure $203$ mètres.
