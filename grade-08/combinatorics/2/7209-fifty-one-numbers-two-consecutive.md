---
id: "7209"
title: "Cinquante et un nombres, deux qui se suivent"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [tiroirs, entiers, paires]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 matin (Cindy Hua), principe des tiroirs, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On choisit $51$ nombres parmi les entiers $1, 2, 3, \ldots, 100$, tous différents.

Montrer qu'il y en a forcément deux qui se suivent, c'est-à-dire deux nombres choisis dont la
différence vaut $1$.

## Hints

1. Essaie de choisir $50$ nombres sans jamais en prendre deux qui se suivent. Y arrives-tu ?
   Combien peux-tu en prendre au maximum de cette façon ?
2. Range les cent entiers en paquets, de sorte que deux nombres d'un même paquet se suivent.
   Combien de paquets faut-il ?
3. Cinquante paquets, cinquante et un nombres choisis.

## Solution

**Les paquets.**

Rangeons les entiers de $1$ à $100$ en cinquante paquets de deux nombres qui se suivent :
$$\{1 , 2\}, \quad \{3 , 4\}, \quad \{5 , 6\}, \quad \ldots, \quad \{99 , 100\} .$$

Chaque entier de $1$ à $100$ appartient à exactement un de ces paquets, et il y a bien
$100 / 2 = 50$ paquets.

**Le principe des tiroirs.**

On choisit $51$ nombres, et il n'y a que $50$ paquets. Comme $51 > 50$, deux des nombres choisis
tombent forcément dans le même paquet.

**Conclusion.**

Deux nombres d'un même paquet se suivent, puisque chaque paquet est de la forme
$\{2k-1,\ 2k\}$.

**Parmi les $51$ nombres choisis, il y en a donc toujours deux qui se suivent.**

## Going further

Le nombre $51$ est le plus petit qui marche : avec $50$ nombres, on peut éviter la conclusion, en
prenant par exemple tous les nombres impairs
$$1, 3, 5, \ldots, 99 .$$
Il y en a exactement $50$, et deux d'entre eux diffèrent toujours d'au moins $2$.
