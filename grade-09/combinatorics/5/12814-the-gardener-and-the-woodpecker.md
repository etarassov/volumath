---
id: "12814"
title: "Le jardinier et le pivert"
grade: 9
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [jeu, strategie, grille, coloriage, majoration, minoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test junior, exercice 4, et test EGMO, exercice 8 (le même énoncé) ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Un jardinier et un pivert jouent dans leur jardin, qui a la forme d'une grille de $2022 \times 2022$ cases. Deux cases sont voisines si elles ont un côté ou un sommet en commun. Au départ, chaque case abrite un arbre de taille $0$. Ensuite, à chaque tour de jeu :

- le jardinier choisit une case ; l'arbre de cette case et ceux de toutes les cases voisines (de quatre à neuf cases en tout) grandissent de $1$ ;
- puis le pivert choisit quatre cases ; les arbres de ces cases diminuent de $1$ (un arbre de taille $0$ reste de taille $0$).

Un arbre est dit resplendissant si sa taille vaut au moins $10^6$.

Trouver le plus grand entier $A$ tel que le jardinier puisse s'assurer, en un nombre fini de tours et quoi que fasse le pivert, d'avoir au moins $A$ arbres resplendissants.

## Hints

1. Découpez la grille en blocs de $3 \times 3$ cases. Combien y a-t-il de blocs ?
2. Côté jardinier : s'il joue toujours au centre d'un bloc, et le même nombre de fois dans chaque bloc, tous les arbres grandissent de la même quantité. Combien d'arbres le pivert peut-il, au plus, empêcher de devenir resplendissants s'il a très peu de temps par arbre ?
3. Côté pivert : cherchez, dans chaque bloc, quatre cases telles qu'un coup du jardinier ne touche jamais plus de quatre de ces cases dans toute la grille.
4. Numérotez les lignes et les colonnes de $1$ à $2022$, et regardez les cases dont le numéro de ligne et le numéro de colonne ne sont pas des multiples de $3$.

## Solution

La réponse : $A = 5 \times 674^2 = 2\,271\,380$.

Comme $2022 = 3 \times 674$, la grille se découpe en $N = 674^2$ blocs de $3 \times 3$ cases, qui ne se chevauchent pas. Il y a donc $9N$ cases. Notons $m = 10^6$. On va montrer deux choses :

- le pivert peut empêcher qu'il y ait plus de $5N$ arbres resplendissants ;
- le jardinier peut obtenir au moins $5N$ arbres resplendissants.

### Le pivert empêche plus de 5N arbres resplendissants

Numérotons les lignes et les colonnes de $1$ à $2022$, et colorions en noir chaque case dont le numéro de ligne **et** le numéro de colonne ne sont pas des multiples de $3$. Dans chaque bloc, il y a $2 \times 2 = 4$ cases noires, donc $4N$ cases noires en tout, et $5N$ cases blanches.

Un coup du jardinier touche les cases d'un carré de $3 \times 3$ cases (ou d'un rectangle plus petit au bord de la grille). Parmi trois lignes consécutives, une seule a un numéro multiple de $3$ ; le carré touche donc au plus $2$ lignes et $2$ colonnes de numéros non multiples de $3$, donc **au plus $4$ cases noires**.

Stratégie du pivert : après chaque coup du jardinier, il choisit les cases noires qui viennent de grandir (au plus quatre), et complète avec des cases quelconques s'il en faut. Ainsi, après chaque tour, tous les arbres noirs sont revenus à la taille $0$, et pendant un tour ils ne dépassent jamais $1$. Aucun arbre noir n'est jamais resplendissant : il y a toujours au plus $5N$ arbres resplendissants. Donc $A \leq 5N$.

### Le jardinier obtient 5N arbres resplendissants

Posons $k = (4N + 1)\,m$. Stratégie du jardinier : il joue $k$ fois au centre de chaque bloc, dans l'ordre qu'il veut, soit $kN$ tours en tout. Un coup au centre d'un bloc fait grandir exactement les neuf arbres de ce bloc. Comme les blocs recouvrent la grille sans se chevaucher, **chaque arbre grandit exactement $k$ fois**.

Pendant ces $kN$ tours, le pivert donne en tout au plus $4kN$ coups de bec. Chaque coup de bec fait baisser un arbre de $1$ au plus. Un arbre qui a reçu $c$ coups de bec a donc, à la fin, une taille au moins égale à $k - c$.

Supposons qu'à la fin, au moins $4N + 1$ arbres ne soient pas resplendissants. Chacun a une taille au plus $m - 1$, donc a reçu au moins $k - (m - 1)$ coups de bec. Au total,

$$4kN \geq (4N + 1)(k - m + 1),$$

ce qui donne, en développant et en simplifiant, $k \leq (4N + 1)(m - 1)$. C'est faux, puisque $k = (4N + 1)\,m$.

Donc au plus $4N$ arbres ne sont pas resplendissants, et au moins $9N - 4N = 5N$ arbres sont resplendissants à la fin. Donc $A \geq 5N$.

### Conclusion

**Le plus grand entier cherché est $A = 5 \times 674^2 = 2\,271\,380$.**

*Remarque.* La réponse ne change pas si l'on compte les arbres qui ont été resplendissants à un moment quelconque, au lieu de ceux qui le sont en même temps : avec la stratégie du pivert, les arbres noirs ne dépassent jamais la taille $1$.
