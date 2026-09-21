---
id: "7729"
title: "Au plus un ennemi dans son propre groupe"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe de l extremum, minimum, graphe, partage en deux groupes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans un groupe fini de personnes, certaines paires de personnes sont ennemies. L'inimitié est réciproque : si $X$ est l'ennemi de $Y$, alors $Y$ est l'ennemi de $X$. On suppose que **chaque personne a au plus trois ennemis**.

Montrer qu'on peut séparer tout le monde en deux groupes de telle sorte que **chaque personne ait au plus un ennemi dans son propre groupe**.

## Hints

1. Il n'y a qu'un nombre fini de façons de séparer les gens en deux groupes. Parmi toutes ces façons, choisis-en une qui rende une certaine quantité la plus petite possible.
2. La bonne quantité à minimiser est le nombre de paires d'ennemis qui se retrouvent **dans le même groupe**. Appelons-les les paires internes.
3. Suppose que, dans cette répartition, une personne a au moins deux ennemis dans son propre groupe. Que se passe-t-il si tu la change de groupe ?
4. Elle a au plus trois ennemis en tout. Si elle en a $k$ dans son groupe, combien en a-t-elle au plus dans l'autre ? Compare les deux nombres.

## Solution

**L'idée : prendre la répartition qui laisse le moins de paires d'ennemis dans un même groupe, et montrer que personne n'y a deux ennemis chez soi.**

**Une répartition minimale existe.** Il y a un nombre fini de personnes, donc un nombre fini de façons de les séparer en deux groupes. Pour chacune, comptons les **paires internes** : les paires d'ennemis dont les deux membres sont dans le même groupe. Parmi un nombre fini de nombres entiers, il y en a un plus petit : choisissons donc une répartition qui minimise le nombre de paires internes, et notons $I$ ce nombre.

**Montrons que personne n'a deux ennemis chez soi.** Supposons par l'absurde qu'une personne $X$ ait au moins deux ennemis dans son propre groupe. Notons $k$ le nombre d'ennemis de $X$ dans son groupe, de sorte que

$$k \geqslant 2 .$$

Comme $X$ a au plus trois ennemis en tout, le nombre de ses ennemis dans l'autre groupe est au plus

$$3 - k .$$

**On déménage $X$.** Changeons $X$ de groupe, sans toucher à personne d'autre. Regardons comment le nombre de paires internes évolue.

- Les paires d'ennemis dont $X$ ne fait pas partie ne changent pas de statut : elles restent internes ou externes comme avant.
- Les paires contenant $X$ : celles qui étaient internes deviennent externes, il y en avait $k$ ; celles qui étaient externes deviennent internes, il y en avait au plus $3 - k$.

Le nouveau nombre de paires internes vaut donc au plus

$$I - k + (3 - k) = I - (2k - 3) .$$

Comme $k \geqslant 2$, on a $2k - 3 \geqslant 1 > 0$, donc le nouveau nombre de paires internes est **strictement plus petit** que $I$.

**La contradiction.** Cela contredit le fait que $I$ était le plus petit possible.

**Conclusion : dans une répartition minimisant le nombre de paires internes, chaque personne a au plus un ennemi dans son propre groupe. Une telle répartition existe toujours.**

## Going further

Le calcul montre exactement où passe la limite : le déménagement fait gagner $2k-3$, ce qui est positif dès que $k \geqslant 2$. Si l'on remplaçait « au plus trois ennemis » par « au plus $2p+1$ ennemis », le même raisonnement donnerait « au plus $p$ ennemis dans son propre groupe ».

Remarque aussi que la démonstration donne un **algorithme** : pars d'une répartition quelconque et, tant que quelqu'un a deux ennemis chez lui, fais-le déménager. Le nombre de paires internes diminue strictement à chaque fois, donc le procédé s'arrête forcément, et quand il s'arrête la condition est remplie.
