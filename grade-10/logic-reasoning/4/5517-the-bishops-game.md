---
id: "5517"
title: "Le jeu des fous"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [strategie-gagnante, symetrie, echiquier, jeu, invariant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 13 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

Deux joueurs posent à tour de rôle un fou sur un échiquier $8 \times 8$ vide. Un fou attaque toutes les cases situées sur ses deux diagonales.

Une case est **interdite** si elle est déjà occupée, ou si elle est attaquée par un fou déjà posé. Le joueur qui ne peut plus poser de fou a perdu.

Lequel des deux joueurs peut être sûr de gagner, quelle que soit la façon de jouer de son adversaire ? Décrire sa stratégie et démontrer qu'elle marche.

## Hints

1. Essaie d'abord sur un petit échiquier, $2 \times 2$ ou $4 \times 4$. Qui gagne ?
2. Dans un jeu de ce genre, quand le plateau possède une symétrie, le deuxième joueur peut souvent se contenter de copier.
3. Repère les axes de symétrie de l'échiquier. Lequel ne laisse **aucune case** à sa place ?
4. Il faut vérifier trois choses : que la case image n'est pas la case que l'adversaire vient d'occuper, qu'elle est libre, et qu'elle n'est pas attaquée. Les deux premières sont faciles.
5. Pour la troisième : si un fou attaquait la case image, que pourrait-on dire, par symétrie, de la case que l'adversaire vient de jouer ?
6. Attention au cas particulier : le fou que l'adversaire vient de poser attaque-t-il l'image de sa propre case ?

## Solution

**La réponse : le deuxième joueur gagne à coup sûr.**

**La stratégie : jouer le reflet.**

Repérons chaque case par sa colonne $c$ et sa ligne $r$, avec $1 \leqslant c \leqslant 8$ et $1 \leqslant r \leqslant 8$. Considérons la symétrie $\sigma$ par rapport à l'axe horizontal du plateau, celui qui passe entre la ligne $4$ et la ligne $5$ :
$$\sigma(c\,;\,r) = (c\,;\,9 - r) .$$
Elle échange les lignes $1$ et $8$, $2$ et $7$, $3$ et $6$, $4$ et $5$.

**Stratégie du deuxième joueur :** répondre à chaque coup $s$ de l'adversaire en jouant la case $\sigma(s)$.

**Pourquoi cette réponse est toujours possible.**

Montrons, par récurrence sur les tours de jeu, que la position est symétrique (c'est-à-dire : si une case porte un fou, son image par $\sigma$ aussi) juste avant chaque coup du premier joueur. C'est vrai au départ, puisque le plateau est vide.

Supposons donc la position symétrique, et supposons que le premier joueur vienne de poser un fou sur une case autorisée $s = (c\,;\,r)$. Trois vérifications.

*1. La case $\sigma(s)$ n'est pas la case $s$.* En effet $\sigma(s) = s$ exigerait $r = 9 - r$, donc $r = \text{4,5}$, ce qui est impossible. Comme le côté de l'échiquier est **pair**, l'axe passe entre deux lignes et ne laisse aucune case à sa place.

*2. La case $\sigma(s)$ est libre.* Si elle portait un fou, alors, la position étant symétrique avant le coup, la case $\sigma(\sigma(s)) = s$ en porterait un aussi. Or le premier joueur vient d'y jouer, donc elle était libre. Contradiction.

*3. La case $\sigma(s)$ n'est attaquée par aucun fou.* Supposons qu'un fou posé sur une case $t$ attaque $\sigma(s)$, c'est-à-dire que $t$ et $\sigma(s)$ sont sur une même diagonale. Deux cas.

- **Si $t$ était déjà là avant le coup du premier joueur.** La symétrie $\sigma$ conserve les distances et transforme les diagonales en diagonales (elle échange simplement les deux directions de diagonale). Donc $\sigma(t)$ et $\sigma(\sigma(s)) = s$ sont eux aussi sur une même diagonale. Mais la position était symétrique, donc $\sigma(t)$ portait un fou : la case $s$ était attaquée, et le premier joueur n'avait pas le droit d'y jouer. Contradiction.

- **Si $t$ est le fou que le premier joueur vient de poser**, c'est-à-dire $t = s$. Les deux cases $s = (c\,;\,r)$ et $\sigma(s) = (c\,;\,9-r)$ sont dans la **même colonne**, et elles sont différentes. Or deux cases d'une même diagonale ont des colonnes différentes : quand on avance d'un cran sur une diagonale, la colonne change de $1$. Donc $s$ et $\sigma(s)$ ne sont pas sur une même diagonale : un fou ne peut jamais attaquer l'image de sa propre case. Pas de contradiction ici : ce cas est tout simplement impossible.

Dans tous les cas, la case $\sigma(s)$ est libre et non attaquée : **le deuxième joueur peut toujours jouer.** Et après son coup, la position redevient symétrique, ce qui permet de recommencer au tour suivant.

**Pourquoi cela suffit à gagner.**

Chaque coup occupe une case définitivement, donc la partie ne peut pas durer plus de $64$ coups : elle se termine. Or on vient de montrer que le deuxième joueur a toujours un coup disponible quand c'est à lui de jouer. C'est donc le premier joueur qui, à un moment, se retrouve sans coup possible. **Le deuxième joueur gagne.**

**Une remarque importante.** Cette démonstration ne dit rien de la durée de la partie, ni du nombre de fous posés à la fin, ni de ce qu'il faut jouer quand on est le premier joueur. Elle ne calcule rien du tout. C'est la grande force des stratégies de copie : on ne cherche pas à comprendre le jeu, on se contente de garder une symétrie que l'adversaire est obligé de casser à chaque coup.

## Going further

1. Le même raisonnement marche-t-il avec la symétrie par rapport au **centre** de l'échiquier ? Attention, il faut vérifier le troisième point.
2. Et sur un échiquier $7 \times 7$ ? Montre que la stratégie du reflet ne marche plus, et dis exactement à quel endroit la démonstration s'écroule.
3. Même jeu avec des tours au lieu de fous (une tour attaque sa ligne et sa colonne). Qui gagne ? Ici on peut répondre sans symétrie, en comptant les coups possibles.
