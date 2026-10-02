---
id: "7102"
title: "Onze nombres et une somme égale à 21"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [tiroirs, paires, entiers, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Test initial », exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

On choisit onze nombres entiers **différents** parmi $1, 2, 3, \ldots, 20$.

Montrer que, parmi les onze nombres choisis, il y en a toujours deux dont la somme vaut
exactement $21$.

## Hints

1. Cherche d'abord toutes les paires de nombres de $1$ à $20$ dont la somme fait $21$.
   Combien y en a-t-il ?
2. Ces paires ne se chevauchent pas : chaque nombre de $1$ à $20$ appartient à une seule
   d'entre elles. On a donc rangé les vingt nombres dans un petit nombre de boîtes.
3. Tu choisis onze nombres et il y a moins de onze boîtes. Que se passe-t-il forcément ?

## Solution

**Les paires qui font 21.** Rangeons les nombres de $1$ à $20$ par paires de somme $21$ :

$$\{1, 20\}, \quad \{2, 19\}, \quad \{3, 18\}, \quad \ldots, \quad \{10, 11\}.$$

Il y a exactement **dix** telles paires : la première contient $1$, la deuxième contient $2$,
et ainsi de suite jusqu'à la dixième qui contient $10$. Chaque nombre de $1$ à $20$ apparaît
dans une paire et une seule. En effet, si l'on se donne un nombre $k$ entre $1$ et $20$, son
partenaire est $21 - k$, qui est lui aussi entre $1$ et $20$, et il n'y en a pas d'autre.

**Le rangement.** Voyons ces dix paires comme dix boîtes, et plaçons chacun des onze nombres
choisis dans la boîte qui lui correspond.

Nous avons onze nombres à ranger dans dix boîtes. Si chaque boîte recevait au plus un
nombre, nous aurions rangé au plus dix nombres. Or nous en avons onze. Donc **une boîte au
moins reçoit deux nombres.**

**Conclusion.** Ces deux nombres sont les deux éléments d'une même paire, et leur somme vaut
$21$ par construction. Parmi onze nombres choisis entre $1$ et $20$, il y en a donc toujours
deux dont la somme est $21$.

## Going further

Le résultat est optimal : avec **dix** nombres on peut échouer. Il suffit de prendre
$1, 2, 3, \ldots, 10$ : deux d'entre eux font au plus $9 + 10 = 19 < 21$. On a bien choisi
un nombre dans chaque boîte, et jamais deux dans la même.
