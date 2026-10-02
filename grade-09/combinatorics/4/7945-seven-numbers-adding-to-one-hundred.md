---
id: "7945"
title: "Sept nombres qui font cent"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [entiers-distincts, encadrement, raisonnement-par-l-absurde, ordre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 6, niveau 1 (énoncé p. 280 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On se donne sept entiers strictement positifs, deux à deux distincts, dont la somme vaut $100$.

Montrer qu'on peut en trouver trois dont la somme est au moins $50$.

## Hints

1. Range les sept nombres dans l'ordre décroissant. Lesquels vas-tu choisir pour faire une grande somme ?
2. Raisonne par l'absurde : suppose que les trois plus grands ont une somme inférieure ou égale à $49$. Que vaut alors la somme des quatre autres ?
3. Les nombres sont **distincts** et rangés dans l'ordre décroissant : si le quatrième vaut $n$, que peut-on dire du cinquième, du sixième, du septième ?
4. Majore la somme des quatre derniers en fonction du quatrième, puis minore la somme des trois premiers, toujours en fonction du quatrième.

## Solution

**Mise en place.**

Rangeons les sept nombres dans l'ordre **strictement décroissant** :

$$a_1 > a_2 > a_3 > a_4 > a_5 > a_6 > a_7 \ge 1 ,$$

avec $a_1 + a_2 + \cdots + a_7 = 100$.

Ce sont les trois plus grands, $a_1$, $a_2$, $a_3$, qui ont la meilleure chance d'avoir une grande somme. Raisonnons par l'absurde en supposant

$$a_1 + a_2 + a_3 \le 49 .$$

**Étape 1 : les quatre derniers pèsent alors beaucoup.**

Comme le total vaut $100$,

$$a_4 + a_5 + a_6 + a_7 = 100 - (a_1+a_2+a_3) \ge 100 - 49 = 51 .$$

**Étape 2 : mais ils ne peuvent pas peser autant.**

Les nombres sont des entiers deux à deux distincts et rangés dans l'ordre décroissant, donc chacun vaut au moins $1$ de moins que le précédent :

$$a_5 \le a_4 - 1 , \qquad a_6 \le a_4 - 2 , \qquad a_7 \le a_4 - 3 .$$

En additionnant,

$$a_4 + a_5 + a_6 + a_7 \le 4a_4 - 6 .$$

Avec l'étape 1, cela donne $4a_4 - 6 \ge 51$, donc $4a_4 \ge 57$, donc

$$a_4 \ge \frac{57}{4} = 14{,}25 , \qquad \text{et comme } a_4 \text{ est entier,} \qquad a_4 \ge 15 .$$

**Étape 3 : les trois premiers sont alors très grands.**

Toujours parce que les nombres sont des entiers distincts et décroissants :

$$a_3 \ge a_4 + 1 \ge 16 , \qquad a_2 \ge a_4 + 2 \ge 17 , \qquad a_1 \ge a_4 + 3 \ge 18 .$$

D'où

$$a_1 + a_2 + a_3 \ge 16 + 17 + 18 = 51 .$$

**Étape 4 : la contradiction.**

Nous avions supposé $a_1 + a_2 + a_3 \le 49$, et nous obtenons $a_1+a_2+a_3 \ge 51$. C'est impossible.

**Conclusion.** L'hypothèse de départ était absurde : les trois plus grands des sept nombres ont toujours une somme d'au moins $50$.

## Going further

La borne $50$ est-elle la meilleure possible ? Prenons $22, 19, 16, 13, 11, 10, 9$ : la somme vaut $100$, les nombres sont distincts, et les trois plus grands font $22+19+16 = 57$. Essaie de construire un exemple où les trois plus grands font exactement $50$, puis demande-toi si l'on pourrait descendre plus bas.
