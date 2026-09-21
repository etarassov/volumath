---
id: "7233"
title: "Six oiseaux sur les arbres d'un hexagone"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, coloriage, hexagone]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Avancés », mardi 24 matin (Martin Rakovsky), invariants, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Six arbres sont plantés aux six sommets d'un hexagone régulier. Sur chaque arbre se pose un
oiseau, soit un oiseau par arbre.

Chaque minute, **deux** oiseaux s'envolent en même temps, et chacun des deux va se poser sur
l'un des deux arbres voisins du sien (chaque oiseau choisit indépendamment son arbre d'arrivée,
à gauche ou à droite).

1. Peut-on, au bout d'un certain nombre de minutes, avoir les six oiseaux réunis sur un même
   arbre ?
2. Même question avec $2018$ arbres disposés en cercle et un oiseau par arbre.

## Hints

1. Numérote les arbres $1, 2, 3, 4, 5, 6$ en tournant. Que devient la somme des numéros des
   arbres occupés quand un oiseau se déplace ?
2. Chaque oiseau qui bouge change son numéro de $+1$ ou de $-1$. Deux oiseaux bougent à chaque
   minute. De combien la somme totale varie-t-elle ?
3. Compare la somme de départ et la somme d'arrivée. Regarde leur parité.
4. Pour $2018$ arbres, refais le même calcul avec les numéros $1$ à $2018$.

## Solution

**La quantité à surveiller.**

Numérotons les arbres de $1$ à $6$ en tournant autour de l'hexagone. À chaque instant, associons
à chaque oiseau le numéro de l'arbre sur lequel il se trouve, et notons $S$ la somme de ces six
numéros.

Au départ, il y a un oiseau par arbre, donc
$$S = 1 + 2 + 3 + 4 + 5 + 6 = 21 .$$

**L'effet d'un déplacement.**

Quand un oiseau passe d'un arbre à un arbre voisin, son numéro augmente de $1$ ou diminue de $1$.
(Entre l'arbre $6$ et l'arbre $1$, le numéro change de $5$ ou de $-5$ — retenons simplement que
dans tous les cas la variation est un nombre **impair**.)

À chaque minute, deux oiseaux bougent : la variation de $S$ est donc la somme de **deux nombres
impairs**, c'est-à-dire un nombre **pair**.

**L'invariant.**

La parité de $S$ ne change donc jamais. Comme $S = 21$ au départ, un nombre impair :

**à tout instant, la somme $S$ est impaire.**

**1. Les six oiseaux sur un même arbre.**

Si les six oiseaux étaient tous sur l'arbre numéro $k$, on aurait
$$S = 6k ,$$
un nombre pair. C'est impossible.

**Non, les six oiseaux ne peuvent jamais se retrouver sur un même arbre.**

**2. Avec $2018$ arbres.**

Numérotons les arbres de $1$ à $2018$. La somme de départ vaut
$$S = 1 + 2 + \cdots + 2018 = \frac{2018 \times 2019}{2} = 1009 \times 2019 .$$
C'est le produit de deux nombres impairs, donc $S$ est impair.

Le même raisonnement s'applique : à chaque minute, deux oiseaux bougent, donc $S$ varie d'un
nombre pair et reste impair.

Si les $2018$ oiseaux étaient tous sur l'arbre $k$, on aurait $S = 2018k$, un nombre pair.
Impossible.

**Non, là non plus.**

## Going further

Le raisonnement s'adapte à tout nombre **pair** d'arbres $2m$ : la somme initiale vaut
$m(2m+1)$ et la somme finale $2mk$. Il faut donc que $m(2m+1)$ soit pair, c'est-à-dire que $m$
soit pair. Pour $m = 3$ (l'hexagone) et $m = 1009$ (les $2018$ arbres), $m$ est impair et c'est
impossible.

Avec $8$ arbres en revanche ($m = 4$), la somme de départ vaut $36$, qui est paire, et
l'argument de parité ne dit plus rien du tout : il faudrait chercher un autre invariant, ou bien
trouver une suite de déplacements qui réussit.
