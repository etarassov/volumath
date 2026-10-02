---
id: "11220"
title: "Les clowns et leurs douze couleurs"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [double-comptage, maximum, construction, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf (le corrigé écrit « de 4 pour les Ci » au lieu de « de 4 pour les Di »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

Dans un cirque, il y a plusieurs clowns. Pour se maquiller, chaque clown utilise **au moins $5$
couleurs**, choisies parmi $12$ couleurs possibles. Une même couleur est utilisée par **au plus
$20$ clowns**. Enfin, deux clowns n'utilisent jamais exactement les mêmes couleurs.

Combien peut-il y avoir de clowns, au maximum ?

## Hints

1. Compte de deux façons le nombre de couples (clown, couleur), où la couleur est l'une de celles
   qu'utilise le clown.
2. Chaque clown fournit au moins $5$ couples. Chaque couleur en fournit au plus $20$. Qu'en
   déduis-tu sur le nombre de clowns ?
3. Pour atteindre la borne, chaque clown doit utiliser exactement $5$ couleurs, et chaque couleur
   doit servir à exactement $20$ clowns. Range les $12$ couleurs autour d'une horloge, choisis un
   motif de $5$ couleurs et fais-le tourner.

## Solution

La réponse est $48$ clowns.

**Étape 1. Il y a au plus $48$ clowns.**

Notons $n$ le nombre de clowns. Comptons les couples (clown, couleur) formés d'un clown et de l'une
des couleurs qu'il utilise. Appelons $N$ le nombre de ces couples.

- Compté clown par clown : chaque clown utilise au moins $5$ couleurs, donc il apparaît dans au
  moins $5$ couples. Ainsi $N \geqslant 5n$.
- Compté couleur par couleur : chacune des $12$ couleurs est utilisée par au plus $20$ clowns, donc
  elle apparaît dans au plus $20$ couples. Ainsi $N \leqslant 12 \times 20 = 240$.

On en déduit $5n \leqslant 240$, donc $n \leqslant 48$.

**Étape 2. On peut avoir $48$ clowns.**

Numérotons les couleurs de $1$ à $12$ et plaçons-les comme les heures sur une horloge : après $12$,
on revient à $1$.

Un clown va recevoir $4$ couleurs qui se suivent sur l'horloge, puis, après un **saut**, une
cinquième couleur. Si les quatre premières sont $i$, $i + 1$, $i + 2$, $i + 3$, la cinquième est
$i + 3 + s$, où le saut $s$ vaut $1$, $2$, $3$ ou $4$ (on compte toujours sur l'horloge). Par
exemple, en partant de $i = 1$ :

| Saut $s$ | $1$ | $2$ | $3$ | $4$ |
|:---:|:---:|:---:|:---:|:---:|
| Couleurs du clown | $1, 2, 3, 4, 5$ | $1, 2, 3, 4, 6$ | $1, 2, 3, 4, 7$ | $1, 2, 3, 4, 8$ |

En partant de $i = 10$ avec le saut $4$, on obtient les couleurs $10$, $11$, $12$, $1$ et $5$.

Il y a $12$ départs possibles $i$ et $4$ sauts possibles $s$, ce qui donne $12 \times 4 = 48$
clowns. Vérifions les trois conditions.

*Chaque clown utilise $5$ couleurs.* C'est le cas, et elles sont bien différentes, car le saut est
au plus $4$ : la cinquième couleur $i + 3 + s$ est au plus $7$ crans après $i$, donc elle ne retombe
pas sur $i$, $i + 1$, $i + 2$ ou $i + 3$.

*Deux clowns n'ont jamais les mêmes couleurs.* Regardons les $7$ couleurs qu'un clown n'utilise
pas. Sur l'horloge, elles forment deux blocs de couleurs qui se suivent : les $s - 1$ couleurs
sautées, entre $i + 3$ et $i + 3 + s$, et les $8 - s$ couleurs situées après $i + 3 + s$ et avant
$i$. Selon le saut, ces deux blocs ont pour longueurs :

| Saut $s$ | $1$ | $2$ | $3$ | $4$ |
|:---:|:---:|:---:|:---:|:---:|
| Blocs non utilisés | $0$ et $7$ | $1$ et $6$ | $2$ et $5$ | $3$ et $4$ |

En regardant les couleurs d'un clown, on lit donc son saut $s$. De plus, le grand bloc (de longueur
$8 - s$) se termine juste avant la couleur $i$, donc on lit aussi le départ $i$. Deux clowns
différents ont un départ ou un saut différent, donc ils n'ont pas les mêmes couleurs.

*Chaque couleur est utilisée par exactement $20$ clowns.* Fixons une couleur $c$ et un saut $s$.
La couleur $c$ est utilisée par le clown de départ $i$ lorsque $c$ est l'une des couleurs $i$,
$i + 1$, $i + 2$, $i + 3$ ou $i + 3 + s$, c'est-à-dire pour exactement $5$ départs $i$ : $i = c$,
$c - 1$, $c - 2$, $c - 3$ ou $c - 3 - s$. Avec les $4$ sauts possibles, la couleur $c$ est utilisée
par $4 \times 5 = 20$ clowns.

**Conclusion : il peut y avoir au maximum $48$ clowns.**
