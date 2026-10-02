---
id: "12207"
title: "Colorier les parties à trois éléments de {1, …, 7}"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [coloriage, ensembles, parite, cycle-impair, construction, minimum, tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2015"
  reference: "2017-10_ofm-2014-2015-test-janvier.pdf, exercice commun, exercice 4 ; corrigé 2017-10_ofm-2014-2015-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-janvier.pdf"
---

## Statement

On considère toutes les parties à trois éléments de l'ensemble $\{1, 2, 3, 4, 5, 6, 7\}$, par exemple $\{1, 2, 5\}$ ou $\{3, 6, 7\}$. Il y en a $35$.

On veut donner une couleur à chacune de ces parties, de sorte que **deux parties qui n'ont aucun élément en commun aient des couleurs différentes**. Par exemple, $\{1, 2, 3\}$ et $\{4, 5, 6\}$ doivent avoir des couleurs différentes, alors que $\{1, 2, 3\}$ et $\{3, 4, 5\}$ peuvent avoir la même couleur.

Quel est le plus petit nombre de couleurs qui permet d'y arriver ?

## Hints

1. Il faut deux choses : montrer qu'un certain nombre de couleurs ne suffit pas, puis donner un coloriage qui marche avec une couleur de plus.
2. Avec deux couleurs : si une suite de parties est telle que chacune est disjointe de la suivante, les couleurs doivent alterner. Que se passe-t-il si la suite revient à son point de départ après un nombre **impair** de pas ?
3. Essaie de construire une telle boucle de $7$ parties, en partant de $\{1, 2, 3\}$, $\{4, 5, 6\}$, puis une partie disjointe de $\{4, 5, 6\}$, etc.
4. Pour un coloriage avec trois couleurs : deux parties qui contiennent chacune au moins deux éléments de $\{1, 2, 3\}$ ont forcément un élément commun. Pourquoi ?

## Solution

**Réponse : il faut $3$ couleurs.**

On dira que deux parties sont **disjointes** si elles n'ont aucun élément en commun.

**Étape 1. Deux couleurs ne suffisent pas.**

Considérons la suite de $7$ parties, qui revient à son point de départ :

$$\{1, 2, 3\},\ \{4, 5, 6\},\ \{1, 2, 7\},\ \{3, 4, 6\},\ \{1, 5, 7\},\ \{2, 3, 6\},\ \{4, 5, 7\},\ \text{puis à nouveau } \{1, 2, 3\}.$$

On vérifie que chaque partie est disjointe de la suivante, y compris la dernière, $\{4, 5, 7\}$, et la première, $\{1, 2, 3\}$.

Supposons qu'on n'ait que deux couleurs, rouge et bleu, et que $\{1, 2, 3\}$ soit rouge. Chaque partie doit avoir une couleur différente de la suivante, donc les couleurs alternent : rouge, bleu, rouge, bleu, rouge, bleu, rouge. La septième partie, $\{4, 5, 7\}$, est donc rouge, comme $\{1, 2, 3\}$, alors que ces deux parties sont disjointes. C'est impossible.

Le problème vient de ce que la boucle a un nombre **impair** de parties. Avec une seule couleur, c'est encore plus impossible, puisque $\{1, 2, 3\}$ et $\{4, 5, 6\}$ doivent déjà être de couleurs différentes. **Il faut donc au moins $3$ couleurs.**

**Étape 2. Trois couleurs suffisent.**

On colorie chaque partie ainsi :

- en **bleu**, les parties qui contiennent au moins deux éléments de $\{1, 2, 3\}$ ;
- en **vert**, les parties qui ne sont pas bleues et qui contiennent au moins deux éléments de $\{4, 5, 6\}$ ;
- en **rouge**, toutes les autres.

Vérifions que deux parties de même couleur ont toujours un élément commun.

- *Deux parties bleues.* Chacune contient au moins deux des trois nombres $1, 2, 3$. Cela fait au moins $4$ choix parmi seulement $3$ nombres, donc un même nombre est choisi deux fois : il est dans les deux parties.
- *Deux parties vertes.* Même raisonnement avec $4, 5, 6$.
- *Deux parties rouges.* Une partie rouge contient au plus un élément de $\{1, 2, 3\}$ et au plus un élément de $\{4, 5, 6\}$. Comme elle a trois éléments, le troisième ne peut être que $7$. Toutes les parties rouges contiennent donc $7$, et deux parties rouges ont $7$ en commun.

Deux parties disjointes ne sont donc jamais de la même couleur.

**Conclusion : le nombre minimum de couleurs est $3$.**

## Going further

Avec les parties à $k$ éléments de $\{1, 2, \ldots, n\}$ (où $n \geqslant 2k$), le nombre minimum de couleurs est $n - 2k + 2$. Le coloriage se généralise facilement : la couleur numéro $i$, pour $i = 1, \ldots, n - 2k + 1$, reçoit les parties dont le plus petit élément est $i$, et la dernière couleur reçoit les parties contenues dans $\{n - 2k + 2, \ldots, n\}$, un ensemble de $2k - 1$ nombres où deux parties à $k$ éléments se rencontrent toujours. Ici, $n = 7$ et $k = 3$ donnent bien $3$. Montrer qu'on ne peut pas faire mieux est beaucoup plus difficile : c'est un théorème de László Lovász (1978).
