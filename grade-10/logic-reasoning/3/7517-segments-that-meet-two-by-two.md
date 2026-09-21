---
id: "7517"
title: "Des segments qui se rencontrent deux à deux"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [maximum, minimum, intervalles, principe-extremal, droite-reelle]
adapted_from: null
see_also: ["7627"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 12. La Muraille ne donne pas de solution pour cet exercice : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On se donne un nombre **fini** de segments sur une droite graduée. On suppose que deux segments quelconques, pris parmi eux, ont toujours au moins un point commun.

Montrer qu'il existe un point qui appartient à **tous** les segments à la fois.

## Hints

1. Un segment de la droite graduée s'écrit $[g\,;\,d]$ : il est entièrement déterminé par son extrémité gauche $g$ et son extrémité droite $d$.
2. Traduis « les segments $[g_1\,;\,d_1]$ et $[g_2\,;\,d_2]$ ont un point commun » par des inégalités entre $g_1, g_2, d_1, d_2$. Il y en a deux.
3. Parmi toutes les extrémités gauches, considère la plus à droite. Parmi toutes les extrémités droites, considère la plus à gauche. Pourquoi ces deux nombres existent-ils ?
4. Montre que le premier de ces deux nombres est plus petit que le second, puis conclus.

## Solution

**Étape 1. On écrit les segments.**

Notons les segments $[g_1\,;\,d_1], [g_2\,;\,d_2], \ldots, [g_n\,;\,d_n]$, avec $g_i \leqslant d_i$ pour chaque $i$.

Dire que deux segments $[g_i\,;\,d_i]$ et $[g_j\,;\,d_j]$ ont un point commun revient à dire que chacun commence avant que l'autre ne finisse :

$$g_i \leqslant d_j \qquad \text{et} \qquad g_j \leqslant d_i.$$

(En effet, s'ils n'ont aucun point commun, l'un est entièrement à gauche de l'autre, c'est-à-dire $d_i < g_j$ ou $d_j < g_i$.)

**Étape 2. On prend les extrémités extrêmes.**

Comme il y a un **nombre fini** de segments, on peut choisir

$$G = \text{la plus grande des extrémités gauches } g_1, \ldots, g_n,$$
$$D = \text{la plus petite des extrémités droites } d_1, \ldots, d_n.$$

C'est ici, et seulement ici, qu'on utilise que les segments sont en nombre fini : une liste infinie de nombres n'a pas forcément de plus grand élément.

Disons que $G = g_{i_0}$ et $D = d_{j_0}$.

**Étape 3. On montre que $G \leqslant D$.**

Les segments numéro $i_0$ et numéro $j_0$ ont un point commun. D'après l'étape 1, cela donne en particulier

$$g_{i_0} \leqslant d_{j_0}, \qquad \text{c'est-à-dire} \qquad G \leqslant D.$$

**Étape 4. Le point $G$ convient.**

Prenons un indice $i$ quelconque. Par définition de $G$ comme la **plus grande** extrémité gauche :

$$g_i \leqslant G.$$

Par définition de $D$ comme la **plus petite** extrémité droite :

$$D \leqslant d_i.$$

En rassemblant avec l'étape 3 :

$$g_i \;\leqslant\; G \;\leqslant\; D \;\leqslant\; d_i.$$

Donc $G$ appartient au segment $[g_i\,;\,d_i]$, et ce pour tout $i$.

**Conclusion.** Le point d'abscisse $G$ appartient à tous les segments.

## Going further

Tout point de $[G\,;\,D]$ convient d'ailleurs, et $[G\,;\,D]$ est exactement l'intersection de tous les segments.

L'hypothèse « nombre fini » est indispensable. Prenons, pour $n = 1, 2, 3, \ldots$, l'intervalle $I_n$ formé des réels $x$ tels que $0 < x \leqslant \tfrac1n$. Deux quelconques de ces intervalles se rencontrent, puisque le plus petit des deux est inclus dans l'autre. Et pourtant aucun point n'appartient à tous : aucun réel strictement positif n'est plus petit que tous les $\tfrac1n$. La démonstration s'effondre à l'étape 2, car les extrémités gauches de cette famille infinie n'ont pas de « plus grande ».

Ce résultat est le premier cas d'un théorème célèbre, le **théorème de Helly** : dans le plan, si des convexes en nombre fini se rencontrent **trois à trois**, alors ils ont tous un point commun. Sur la droite, trois à trois se ramène à deux à deux, ce qui est précisément notre énoncé.
