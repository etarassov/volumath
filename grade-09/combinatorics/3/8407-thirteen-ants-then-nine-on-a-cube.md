---
id: "8407"
title: "Treize fourmis, puis neuf, sur un cube"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, cube, distance, aretes, sommets]
adapted_from: null
see_also: ["8413"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de collège, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On considère un cube dont chaque arête mesure $1$. On pose des fourmis **sur les arêtes** de ce cube. Une fourmi posée sur un sommet est considérée comme se trouvant sur chacune des trois arêtes qui partent de ce sommet.

Les fourmis ne circulent que le long des arêtes. On appelle **distance entre deux fourmis** la longueur du plus court chemin qui mène de l'une à l'autre en ne passant que par les arêtes.

![Un cube et ses arêtes](8407-figure-1.svg)

1. On pose $13$ fourmis sur le cube. Montrer qu'il existe deux fourmis dont la distance est inférieure ou égale à $1$.
2. On pose seulement $9$ fourmis sur le cube. Montrer que, là encore, il existe deux fourmis dont la distance est inférieure ou égale à $1$.

## Hints

1. Compte d'abord les arêtes d'un cube. Puis compte ses sommets.
2. Pour la question 1, il y a plus de fourmis que d'arêtes. Que se passe-t-il alors ?
3. Pour la question 2, il n'y a que $9$ fourmis : les arêtes ne peuvent plus servir de tiroirs. Il faut des tiroirs moins nombreux. Le cube a $8$ sommets.
4. À quel sommet du cube une fourmi donnée est-elle la plus proche ? Et à quelle distance maximale se trouve-t-elle de ce sommet ?
5. Si deux fourmis ont le même sommet le plus proche, fais-les se rejoindre en passant par ce sommet.

## Solution

Dans toute la solution, $d(P, Q)$ désigne la distance entre deux points $P$ et $Q$ du cube, au sens de l'énoncé : la longueur du plus court chemin le long des arêtes.

### Question 1 : treize fourmis

Un cube possède $12$ arêtes.

Il y a $13$ fourmis et chacune se trouve sur (au moins) une arête. Comme $13 > 12$, le **principe des tiroirs** donne deux fourmis situées sur une même arête.

Or une arête mesure $1$, donc deux points d'une même arête sont reliés par un bout d'arête de longueur au plus $1$.

Ces deux fourmis sont donc à distance inférieure ou égale à $1$.

### Question 2 : neuf fourmis

Cette fois $9 \leqslant 12$, et deux fourmis peuvent parfaitement être sur douze arêtes différentes. Il faut donc d'autres tiroirs, et il en faut moins de $9$. Un cube possède $8$ **sommets** : ce seront eux.

**On associe à chaque fourmi un sommet.**

Soit $F$ une fourmi. Elle se trouve sur une arête, dont les deux extrémités sont deux sommets du cube. Notons $S(F)$ celui des deux dont elle est la plus proche (si elle est pile au milieu de l'arête, on en choisit un des deux au hasard).

Comme l'arête mesure $1$ et que $F$ est plus proche de $S(F)$ que de l'autre extrémité,

$$d\big(F, S(F)\big) \leqslant \frac{1}{2}.$$

**On applique le principe des tiroirs.**

Il y a $9$ fourmis et seulement $8$ sommets. Deux fourmis différentes $F$ et $G$ ont donc le même sommet associé :

$$S(F) = S(G) = S.$$

**On conclut.**

Il existe un chemin le long des arêtes qui va de $F$ à $G$ en passant par $S$ : d'abord de $F$ à $S$, puis de $S$ à $G$. Sa longueur vaut

$$d(F, S) + d(S, G) \leqslant \frac{1}{2} + \frac{1}{2} = 1.$$

La distance de $F$ à $G$, qui est la longueur du plus **court** chemin, est donc inférieure ou égale à $1$.

Il existe bien deux fourmis à distance au plus $1$.

## Going further

Le résultat reste vrai avec seulement $8$ fourmis, mais le raisonnement ci-dessus ne suffit plus : avec $8$ fourmis et $8$ sommets, rien n'oblige deux fourmis à partager le même sommet le plus proche. C'est l'objet de l'exercice n° 8413, nettement plus difficile.

En revanche, avec $7$ fourmis, c'est faux : on peut placer $7$ fourmis deux à deux à distance strictement supérieure à $1$.
