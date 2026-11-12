---
id: "22066"
title: "Combien de milieux au minimum ?"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [geometrie-combinatoire, milieu, coordonnees, principe-extremal, construction, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », 4. Entraînement de fin de parcours, exercice 4 (p. 243, solution p. 244-245 ; l'énoncé de la source ne précise pas n ≥ 2, alors que la réponse 2n − 3 n'a pas de sens pour n = 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geq 2$ un entier. On place $n$ points distincts dans le plan. Pour chaque paire de ces points, on colorie en bleu le milieu du segment qui les joint. Si plusieurs segments ont le même milieu, ce point bleu ne compte qu'une fois.

Quel est le plus petit nombre possible de points bleus ?

## Hints

1. Essayez avec $3$, puis $4$ points. Placez-les d'abord sur une droite, régulièrement espacés.
2. Prenez le point situé le plus à gauche. Combien de milieux différents forme-t-il avec les autres points ? Et le point situé le plus à droite ?
3. Dans un repère, l'abscisse du milieu de $[AB]$ est la moyenne des abscisses de $A$ et de $B$. Choisissez le repère pour que deux des points n'aient jamais la même abscisse.

## Solution

La réponse est $2n - 3$.

**Un outil : l'abscisse d'un milieu.** Dans un repère, soient $A$ d'abscisse $a$, $B$ d'abscisse $b$, et $M$ le milieu de $[AB]$, d'abscisse $m$. La translation qui envoie $A$ sur $M$ envoie aussi $M$ sur $B$, puisque $M$ est à mi-chemin entre $A$ et $B$. Une translation décale toutes les abscisses du même nombre, donc $m - a = b - m$, c'est-à-dire
$$m = \frac{a + b}{2}.$$

**Étape 1 : on peut n'avoir que $2n - 3$ points bleus.** On place les $n$ points sur l'axe des abscisses, aux abscisses $0, 1, 2, \ldots, n - 1$. Le milieu des points d'abscisses $i$ et $j$, avec $i < j$, est sur cet axe, à l'abscisse $\frac{i + j}{2}$.

La somme $i + j$ vaut au moins $0 + 1 = 1$ et au plus $(n - 2) + (n - 1) = 2n - 3$. Elle prend toutes les valeurs entières entre les deux : une somme $s \leq n - 1$ s'obtient avec $0 + s$, et une somme $s \geq n$ avec $(s - n + 1) + (n - 1)$. Les points bleus sont donc exactement les points d'abscisses
$$\frac{1}{2}, \quad \frac{2}{2}, \quad \frac{3}{2}, \quad \ldots, \quad \frac{2n - 3}{2},$$
ce qui fait $2n - 3$ points bleus.

**Étape 2 : il y a toujours au moins $2n - 3$ points bleus.**

*On choisit bien le repère.* Chaque paire de points définit une droite. Il n'y a qu'un nombre fini de paires, donc un nombre fini de directions de droites. On choisit l'axe des ordonnées dans une direction différente de toutes celles-là, et l'axe des abscisses perpendiculaire. Deux points de même abscisse seraient sur une même droite parallèle à l'axe des ordonnées, ce qui est exclu. Les $n$ points ont donc des abscisses toutes différentes. On les nomme $P_1, P_2, \ldots, P_n$ de gauche à droite, avec des abscisses $x_1 < x_2 < \cdots < x_n$.

On note $M$ le milieu de $[P_1 P_n]$, d'abscisse $c = \frac{x_1 + x_n}{2}$.

*Le point le plus à gauche.* Les milieux de $[P_1 P_2]$, $[P_1 P_3]$, …, $[P_1 P_n]$ ont pour abscisses $\frac{x_1 + x_2}{2}, \frac{x_1 + x_3}{2}, \ldots, \frac{x_1 + x_n}{2}$. Ces abscisses sont toutes différentes, donc ce sont $n - 1$ points bleus différents. Le dernier est $M$, et tous les autres ont une abscisse strictement plus petite que $c$, car $x_i < x_n$ pour $i < n$.

*Le point le plus à droite.* De même, les milieux de $[P_1 P_n]$, $[P_2 P_n]$, …, $[P_{n-1} P_n]$ sont $n - 1$ points bleus différents. Le premier est $M$, et tous les autres ont une abscisse strictement plus grande que $c$, car $x_j > x_1$ pour $j > 1$.

*On compte.* Les deux groupes ont $M$ en commun, et aucun autre point : en dehors de $M$, le premier groupe est à gauche de l'abscisse $c$ et le second à droite. Il y a donc au moins
$$(n - 1) + (n - 1) - 1 = 2n - 3$$
points bleus.

**Conclusion.** Il y a toujours au moins $2n - 3$ points bleus, et $n$ points régulièrement espacés sur une droite en donnent exactement $2n - 3$. Le nombre minimal est $2n - 3$.

## Going further

1. Avec $3$ points qui ne sont pas alignés, combien y a-t-il de points bleus ? Est-ce en accord avec la réponse ?
2. Quel est le plus grand nombre possible de points bleus ? Indication : placez les points sur une droite, aux abscisses $1, 2, 4, 8, \ldots$
