---
id: "8627"
title: "Deux nombres dont la différence est divisible par 2022"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [tiroirs, restes, division-euclidienne, divisibilite]
adapted_from: null
see_also: []
same_as: ["4601"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 11 ; le corrigé imprimé annonce 2021 tiroirs au lieu de 2022, la conclusion reste correcte"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Bérénice a écrit $2023$ nombres entiers sur une feuille de papier.

Démontrer que, parmi ces $2023$ nombres, il en existe deux dont la différence est divisible par $2022$.

## Hints

1. Sur un exemple plus petit : si Bérénice écrit trois entiers, pourquoi deux d'entre eux ont-ils forcément une différence paire ?
2. La parité, c'est le reste dans la division par $2$. Généralise : quel reste va-t-il falloir regarder ici ?
3. Combien de restes différents une division par $2022$ peut-elle donner ? Attention à ne pas oublier le reste $0$.
4. Si deux entiers ont le même reste dans la division par $2022$, que vaut leur différence ?

## Solution

**Les tiroirs : les restes.** Effectuons la division euclidienne de chacun des $2023$ nombres par $2022$. Le reste obtenu est un entier $r$ vérifiant $0 \leqslant r < 2022$ : il y a donc exactement

$$2022 \text{ restes possibles} : \quad 0, 1, 2, \ldots, 2021 .$$

Fabriquons un tiroir par reste, et rangeons chaque nombre de Bérénice dans le tiroir de son reste.

**Le principe des tiroirs.** Nous avons $2023$ nombres pour $2022$ tiroirs. Comme $2023 > 2022$, l'un des tiroirs contient au moins deux nombres : il existe deux nombres $a$ et $b$ de la feuille ayant **le même reste** dans la division par $2022$.

**La conclusion.** Écrivons ces deux nombres

$$a = 2022\,q_1 + r \qquad \text{et} \qquad b = 2022\,q_2 + r ,$$

avec le même reste $r$. Alors

$$a - b = 2022\,q_1 + r - 2022\,q_2 - r = 2022\,(q_1 - q_2) ,$$

qui est bien un multiple de $2022$.

**Conclusion.** Parmi les $2023$ nombres, deux au moins ont une différence divisible par $2022$.

## Going further

Le nombre $2023$ n'a rien de magique : l'énoncé général dit que parmi $n+1$ entiers quelconques, deux ont toujours une différence divisible par $n$.

Et la borne est optimale : avec seulement $n$ entiers, cela peut échouer. Prends par exemple $0, 1, 2, \ldots, n-1$ : leurs différences deux à deux sont toutes comprises entre $1$ et $n-1$ en valeur absolue, donc aucune n'est un multiple non nul de $n$.
