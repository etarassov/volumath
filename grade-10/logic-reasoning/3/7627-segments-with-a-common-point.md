---
id: "7627"
title: "Des segments qui se rencontrent deux à deux"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [principe extremal, segments, intersection, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 12 (deux étoiles ; solution chapitre XI, résolue par Louis Charnavel)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On trace sur une droite graduée un nombre **fini** de segments. On suppose que, **deux à deux**, ces segments ont toujours au moins un point commun.

Démontrer qu'il existe alors un point qui appartient à **tous** les segments à la fois.

*Un segment est ici un intervalle $[a\,;b]$ avec $a \leqslant b$, extrémités comprises.*

## Hints

1. Faites un dessin avec trois ou quatre segments qui se coupent deux à deux, et cherchez le point commun à tous. Où se trouve-t-il ?
2. Le point commun se trouve souvent à une extrémité de l'un des segments. Laquelle, et de quel segment ?
3. Considérez le segment dont l'extrémité **droite** est la plus à gauche de toutes. Il n'y en a qu'un nombre fini, donc un tel segment existe.
4. Montrez que cette extrémité droite appartient à tous les autres segments.

## Solution

Notons les segments $[a_1\,;b_1], [a_2\,;b_2], \ldots, [a_N\,;b_N]$, où $a_i \leqslant b_i$ pour chaque $i$.

**Le choix du bon point.**

Les nombres $b_1, b_2, \ldots, b_N$ sont en nombre fini : l'un d'eux est donc le plus petit. Quitte à renuméroter les segments, supposons que ce soit $b_1$ :

$$b_1 \leqslant b_i \qquad \text{pour tout } i .$$

Autrement dit, $[a_1\,;b_1]$ est le segment dont l'extrémité droite est la plus à gauche. Nous allons montrer que le point $b_1$ convient.

**$b_1$ appartient à tous les segments.**

Soit $[a_i\,;b_i]$ un segment quelconque de la famille. Par hypothèse, il a un point commun avec $[a_1\,;b_1]$ : appelons $x$ ce point. Alors

$$a_1 \leqslant x \leqslant b_1 \qquad \text{et} \qquad a_i \leqslant x \leqslant b_i .$$

De la première ligne on tire $x \leqslant b_1$, et de la seconde $a_i \leqslant x$. En les combinant :

$$a_i \leqslant x \leqslant b_1 , \qquad \text{donc} \qquad a_i \leqslant b_1 .$$

Par ailleurs, le choix de $b_1$ donne $b_1 \leqslant b_i$. On a donc

$$a_i \leqslant b_1 \leqslant b_i ,$$

c'est-à-dire exactement $b_1 \in [a_i\,;b_i]$.

**Conclusion.** Le point $b_1$ appartient à tous les segments de la famille : il existe donc bien un point commun à tous.

## Going further

Le tour de force est de **ne pas chercher** le point commun au hasard, mais de deviner où il doit se trouver : à l'extrémité droite la plus à gauche. C'est un exemple du **principe extrémal** : pour démontrer une existence, on commence par considérer l'objet le plus grand, ou le plus petit, ou le plus à gauche, et on montre qu'il a la propriété voulue.

**Les hypothèses sont-elles nécessaires ?**

- *Segments fermés.* Avec des intervalles ouverts, c'est faux. Les intervalles $]0\,;1[$ et $]1\,;2[$ ne se coupent déjà pas, mais on peut faire pire : la famille infinie $]0\,;\tfrac1k[$ pour $k = 1, 2, 3, \ldots$ est formée d'intervalles qui se coupent deux à deux, sans point commun à tous.
- *Nombre fini.* C'est cette hypothèse qui garantit l'existence d'un plus petit $b_i$, et elle est indispensable : les segments $[k\,;+\infty[$ pour $k$ entier se coupent deux à deux sans avoir de point commun à tous.

Ce résultat est le cas le plus simple du **théorème de Helly**. En dimension $2$, il s'énonce ainsi : si des convexes du plan, en nombre fini, ont un point commun **trois à trois**, alors ils ont tous un point commun. Remarquez qu'il faut passer de « deux à deux » à « trois à trois » : en dimension $1$, deux suffisent.
