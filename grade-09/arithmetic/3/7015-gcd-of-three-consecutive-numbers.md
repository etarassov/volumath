---
id: "7015"
title: "Le PGCD de tous les produits de trois entiers consécutifs"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [pgcd, entiers consecutifs, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique après-midi (Antoine Taveneaux), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

On considère tous les nombres de la forme
$$i \times (i+1) \times (i+2), \qquad \text{où } i \text{ est un entier} \geq 1 .$$
Les premiers sont $6$, $24$, $60$, $120$, $210$, …

Quel est le plus grand entier qui divise **tous** ces nombres à la fois ?

## Hints

1. Calcule les premiers termes et cherche leur PGCD. Cela donne une **borne supérieure** pour
   la réponse.
2. Pour la borne inférieure, il faut montrer qu'un certain nombre divise tous les termes, sans
   exception. Parmi trois entiers consécutifs, combien sont pairs ? Combien sont multiples de
   $3$ ?
3. Attention : savoir qu'un nombre est à la fois multiple de $2$ et de $3$ ne donne le
   multiple de $6$ que parce que $2$ et $3$ sont premiers entre eux.

## Solution

**Une borne supérieure.**

Pour $i = 1$, le produit vaut
$$1 \times 2 \times 3 = 6 .$$
Le nombre cherché divise ce terme-là comme tous les autres, donc il divise $6$ : il vaut au
plus $6$.

**Tous les termes sont des multiples de $6$.**

Prenons trois entiers consécutifs $i$, $i+1$, $i+2$.

- **Parmi trois entiers consécutifs, au moins un est pair.** En effet, les entiers alternent
  pair, impair, pair, impair… donc sur trois de suite on en rencontre au moins un pair.
  Le produit est donc divisible par $2$.
- **Parmi trois entiers consécutifs, exactement un est multiple de $3$.** En effet, les restes
  dans la division par $3$ se suivent en tournant : $0, 1, 2, 0, 1, 2, \ldots$ Sur trois
  entiers de suite, on rencontre donc les trois restes, dont le reste $0$.
  Le produit est donc divisible par $3$.

Le produit est ainsi divisible par $2$ et par $3$. Comme $2$ et $3$ sont **premiers entre
eux**, il est divisible par leur produit $6$.

**Conclusion.** Tous ces nombres sont divisibles par $6$, et $6$ est l'un d'eux. Le plus grand
diviseur commun est donc exactement $\boxed{6}$.

## Going further

Le même argument montre que le produit de $k$ entiers consécutifs est toujours divisible par
$k!$. Pour $k = 3$ cela redonne $6$, et l'on vient de voir que $6$ est optimal.

Une façon élégante de le dire : le produit de $k$ entiers consécutifs divisé par $k!$ est un
coefficient binomial, donc un entier.
