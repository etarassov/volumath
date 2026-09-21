---
id: "7253"
title: "Deux faces avec le même nombre d'arêtes"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [tiroirs, polyedre, extremum, geometrie dans l'espace]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 20"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Un polyèdre est dit **convexe** lorsque, pour deux points quelconques situés à l'intérieur, le
segment qui les relie est entièrement à l'intérieur : autrement dit, il n'a aucun creux.

Montrer que tout polyèdre convexe possède deux faces ayant le même nombre d'arêtes.

## Hints

1. Vérifie sur des exemples : le cube, le tétraèdre, la pyramide à base carrée, le prisme
   triangulaire.
2. Pour appliquer le principe des tiroirs, il faut borner le nombre de valeurs possibles. Combien
   d'arêtes une face peut-elle avoir, au minimum ? Au maximum ?
3. Le maximum n'est pas donné par l'énoncé : il faut aller le chercher. Prends la face qui a le
   **plus** d'arêtes et regarde ses voisines.
4. Une face à $k$ arêtes a combien de faces voisines ?

## Solution

**Prenons la face la plus riche.**

Parmi les faces du polyèdre, choisissons-en une, appelons-la $F$, qui possède le plus grand nombre
d'arêtes. Notons $k$ ce nombre. Comme une face est un polygone, $k \geqslant 3$.

**Les voisines de $F$.**

La face $F$ a $k$ arêtes. Chaque arête de $F$ est partagée avec exactement une autre face du
polyèdre, sa **voisine** le long de cette arête. Comme le polyèdre est convexe, deux faces
distinctes ne se rencontrent que le long d'une arête au plus, donc ces $k$ voisines sont toutes
différentes les unes des autres.

La face $F$ a donc exactement $k$ faces voisines, toutes distinctes de $F$ et distinctes entre
elles.

**Le principe des tiroirs.**

Chacune de ces $k$ voisines a un nombre d'arêtes compris entre $3$ (un triangle au minimum) et
$k$ (puisque $F$ a le maximum). Cela fait
$$k - 3 + 1 = k - 2$$
valeurs possibles.

On range $k$ faces dans $k-2$ tiroirs. Comme $k > k-2$, deux des voisines de $F$ ont le même
nombre d'arêtes.

**Le polyèdre possède donc bien deux faces ayant le même nombre d'arêtes.**

## Going further

L'argument donne même un peu plus : les deux faces trouvées sont toutes deux **voisines** d'une
même face.

Vérifions sur des exemples :

- le **cube** : toutes ses faces ont $4$ arêtes ;
- le **tétraèdre** : toutes ses faces ont $3$ arêtes ;
- la **pyramide à base carrée** : une face à $4$ arêtes et quatre faces à $3$ arêtes ;
- le **prisme triangulaire** : deux faces à $3$ arêtes et trois faces à $4$ arêtes.

Dans tous les cas, la conclusion est vraie, et largement.

Il existe un énoncé jumeau, qui se démontre de la même façon : tout polyèdre convexe possède
deux sommets d'où part le même nombre d'arêtes.
