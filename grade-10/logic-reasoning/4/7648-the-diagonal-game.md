---
id: "7648"
title: "Le jeu des diagonales"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie gagnante, symetrie, polygone]
adapted_from: null
see_also: ["5304"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, TD de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « TD de stratégies de base » (Guillaume Conchon-Kerjan), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On dessine un polygone régulier à $2014$ côtés. Deux joueuses, Alice et Bérénice, tracent **à tour de rôle** une diagonale de ce polygone, avec la règle suivante :

> une diagonale que l'on trace ne doit couper aucune des diagonales déjà tracées, sauf éventuellement en un sommet du polygone.

Celle qui ne peut plus jouer a perdu. Alice commence.

Laquelle des deux joueuses possède une stratégie gagnante ?

## Hints

1. Une stratégie gagnante ne consiste presque jamais à calculer toutes les parties. Cherchez plutôt une façon de **copier** l'adversaire.
2. Pour copier, il faut une symétrie. Quelle diagonale Alice peut-elle tracer en premier pour couper le polygone en deux moitiés qui se ressemblent ?
3. Comme $2014$ est pair, il existe des diagonales qui joignent deux sommets diamétralement opposés.
4. Une fois cette diagonale tracée, où Bérénice est-elle obligée de jouer ? Et que fait Alice en réponse ?
5. Il reste un point à vérifier : la réponse d'Alice est-elle toujours **disponible** ?

## Solution

**Réponse : Alice, la première joueuse, possède une stratégie gagnante.**

**Le premier coup d'Alice.**

Comme $2014$ est pair, numérotons les sommets $S_1, S_2, \ldots, S_{2014}$ et traçons la **grande diagonale** $[S_1 S_{1008}]$, qui joint deux sommets diamétralement opposés.

Cette diagonale $\delta$ partage le polygone en deux moitiés, qui sont images l'une de l'autre par la symétrie d'axe $(S_1 S_{1008})$. Notons $\sigma$ cette symétrie.

**La suite : Alice copie.**

À partir de là, Alice joue ainsi :

> chaque fois que Bérénice trace une diagonale $d$, Alice trace la diagonale symétrique $\sigma(d)$.

Vérifions que c'est possible, et que cela gagne.

*Premier point : toute diagonale jouée après le premier coup est contenue dans une seule moitié.* En effet, une diagonale qui passerait d'une moitié à l'autre couperait $\delta$ ailleurs qu'en un sommet, ce qui est interdit.

*Deuxième point : la réponse d'Alice est toujours légale.* La position après chaque coup d'Alice est symétrique par rapport à $\delta$ : c'est vrai après son premier coup (seule $\delta$ est tracée, et $\sigma(\delta) = \delta$), et cela reste vrai après chaque paire de coups, puisque Alice ajoute exactement l'image du coup de Bérénice. Donc, quand Bérénice trace une diagonale $d$ qui ne coupe rien, son image $\sigma(d)$ ne coupe rien non plus : la symétrie transforme une figure en une figure identique.

*Troisième point : la réponse d'Alice est bien une diagonale nouvelle.* La diagonale $d$ jouée par Bérénice est contenue dans une moitié, et $\sigma(d)$ est contenue dans l'autre : ce sont deux diagonales différentes. Elles ne pourraient coïncider que si $d$ était portée par l'axe, c'est-à-dire si $d = \delta$, or $\delta$ est déjà tracée.

**Conclusion.**

Alice a donc toujours un coup à jouer juste après Bérénice. Comme la partie se termine forcément (il n'y a qu'un nombre fini de diagonales, et une au moins est tracée à chaque coup), c'est Bérénice qui se trouvera un jour sans coup possible.

**Alice gagne à coup sûr.**

## Going further

La **stratégie de copiage par symétrie** est l'une des trois ou quatre idées qui reviennent sans cesse dans les jeux à deux joueurs. Son schéma est toujours le même :

1. le premier joueur ramène la position à une position symétrique ;
2. il répond ensuite à chaque coup par son image ;
3. il a donc toujours un coup disponible, donc il ne peut pas être le premier bloqué.

Le point délicat, celui qu'on oublie presque toujours de vérifier, est le troisième point de la démonstration : il faut s'assurer que l'adversaire ne peut pas jouer un coup **identique à son propre symétrique**, ce qui priverait le copieur de réponse. Ici, cela ne peut pas arriver parce que l'unique diagonale invariante par $\sigma$ est $\delta$ elle-même, déjà tracée.

**Et avec un nombre impair de côtés ?** Avec $2015$ sommets il n'y a plus de grande diagonale joignant deux sommets opposés : l'axe de symétrie d'un polygone régulier à nombre impair de côtés passe par un sommet et par le milieu du côté opposé, ce qui n'est pas une diagonale. La stratégie s'effondre, et la question devient bien plus difficile.
