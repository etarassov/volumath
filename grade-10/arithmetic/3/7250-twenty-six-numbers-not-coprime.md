---
id: "7250"
title: "Vingt-six nombres entre 2 et 100"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [tiroirs, nombres premiers, PGCD, premiers entre eux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

On choisit $26$ entiers distincts parmi $2, 3, 4, \ldots, 100$.

Montrer qu'il y en a toujours deux qui ne sont pas premiers entre eux, c'est-à-dire deux dont le
$\mathrm{PGCD}$ est strictement supérieur à $1$.

## Hints

1. Deux nombres ne sont pas premiers entre eux exactement quand ils ont un diviseur premier
   commun.
2. Tout entier supérieur ou égal à $2$ a au moins un diviseur premier.
3. Fabrique un tiroir par nombre premier inférieur ou égal à $100$, et range chaque entier choisi
   dans le tiroir de son plus petit diviseur premier. Combien y a-t-il de tiroirs ?

## Solution

**Les tiroirs : les nombres premiers jusqu'à 100.**

Tout entier $m \geqslant 2$ possède au moins un diviseur premier ; notons $p(m)$ son **plus petit**
diviseur premier. Si $m \leqslant 100$, alors $p(m) \leqslant m \leqslant 100$.

Dressons la liste des nombres premiers inférieurs ou égaux à $100$ :
$$2,\ 3,\ 5,\ 7,\ 11,\ 13,\ 17,\ 19,\ 23,\ 29,\ 31,\ 37,\ 41,\ 43,\ 47,$$
$$53,\ 59,\ 61,\ 67,\ 71,\ 73,\ 79,\ 83,\ 89,\ 97 .$$

Comptons-les : la première ligne en contient $15$, la seconde $10$. Il y a donc exactement
$$25 \text{ nombres premiers inférieurs ou égaux à } 100 .$$

**Le principe des tiroirs.**

Fabriquons $25$ tiroirs, un par nombre premier de la liste. Rangeons chacun des $26$ entiers
choisis dans le tiroir de son plus petit diviseur premier.

Comme $26 > 25$, deux des entiers choisis, disons $m_1$ et $m_2$, tombent dans le même tiroir :
ils ont le même plus petit diviseur premier $p$.

**Conclusion.**

Le nombre premier $p$ divise à la fois $m_1$ et $m_2$, donc il divise leur $\mathrm{PGCD}$ :
$$\mathrm{PGCD}(m_1, m_2) \geqslant p \geqslant 2 > 1 .$$

**Les deux entiers $m_1$ et $m_2$ ne sont donc pas premiers entre eux.**

## Going further

Le nombre $26$ est le plus petit qui marche : avec $25$ entiers, on peut tout à fait éviter la
conclusion, en prenant les $25$ nombres premiers eux-mêmes
$$2,\ 3,\ 5,\ \ldots,\ 97 .$$
Deux nombres premiers distincts sont toujours premiers entre eux.

Ce n'est d'ailleurs pas le seul exemple : on peut remplacer chaque premier $p$ de la liste par
n'importe quelle puissance de $p$ restant inférieure ou égale à $100$, par exemple prendre $8$ au
lieu de $2$, ou $9$ au lieu de $3$.
