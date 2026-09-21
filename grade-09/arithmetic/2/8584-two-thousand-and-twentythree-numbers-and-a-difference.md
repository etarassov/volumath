---
id: "8584"
title: "Deux mille vingt-trois nombres et une différence"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [principe-des-tiroirs, divisibilite, reste, division-euclidienne]
adapted_from: null
see_also: ["4601"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Bérénice écrit $2023$ nombres entiers sur une feuille de papier.

Démontrer que, parmi ces $2023$ nombres, il en existe toujours deux dont la différence est
divisible par $2022$.

## Hints

1. Les nombres écrits peuvent être énormes, et on ne sait rien d'eux. Ce n'est donc pas la valeur des nombres qui compte, mais quelque chose de plus petit.
2. Quand on divise un entier par $2022$, combien de restes différents peut-on obtenir ?
3. Si deux nombres ont le même reste dans la division par $2022$, que peut-on dire de leur différence ?

## Solution

**Les tiroirs : les restes.** Divisons chacun des $2023$ nombres par $2022$ et regardons le
reste obtenu. Un reste dans la division par $2022$ est un entier compris entre $0$ et $2021$ :
il y a donc exactement $2022$ restes possibles.

**Le principe des tiroirs.** Bérénice a écrit $2023$ nombres et il n'y a que $2022$ restes
possibles. Deux de ses nombres ont donc le même reste. Appelons-les $a$ et $b$, et $r$ leur
reste commun :

$$a = 2022\,q + r \qquad \text{et} \qquad b = 2022\,q' + r ,$$

où $q$ et $q'$ sont des entiers.

**La différence.** En soustrayant,

$$a - b = 2022\,q + r - 2022\,q' - r = 2022\,(q - q') .$$

La différence $a - b$ est donc un multiple de $2022$.

**Conclusion.** Parmi les $2023$ nombres, il y en a toujours deux dont la différence est
divisible par $2022$.

## Going further

Le nombre $2023$ est le plus petit qui garantisse la conclusion : avec seulement $2022$
nombres, on peut prendre $0, 1, 2, \ldots, 2021$, qui ont tous des restes différents, et
aucune différence n'est alors divisible par $2022$.
