---
id: "8732"
title: "Le jeu des deux diagonales"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [jeu, strategie-gagnante, symetrie, grille]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, entraînement de fin de parcours"
  reference: "poly_valbonne_2024.pdf, Groupe A, entraînement de fin de parcours, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Alice et Bob jouent sur une grille carrée $10 \times 10$, dont toutes les cases sont blanches au départ.

Chacun à son tour, en commençant par Alice, un joueur choisit une case, puis colorie **toutes** les cases de l'une des deux diagonales qui passent par cette case. Cette diagonale peut contenir des cases déjà coloriées ; seule compte la règle suivante : un coup doit colorier au moins une case encore blanche.

Le premier joueur qui ne peut plus colorier aucune case a perdu.

Lequel des deux joueurs possède une stratégie gagnante ?

*Les diagonales ici sont celles du quadrillage : par la case de la ligne $i$ et de la colonne $j$ passent la diagonale qui « descend vers la droite » et celle qui « descend vers la gauche ». Une diagonale peut être très courte, et même se réduire à une seule case dans un coin.*

## Hints

1. Commence par jouer sur une grille $2 \times 2$, puis $4 \times 4$. Qui gagne ?
2. La grille a un côté **pair** : $10$. Il n'y a donc pas de colonne centrale. Cela suggère de regarder la symétrie par rapport à l'axe vertical qui sépare la cinquième et la sixième colonne.
3. Bob devrait répondre par le coup symétrique de celui d'Alice. Il faut vérifier deux choses : que ce coup est toujours possible, et qu'il colorie bien une case nouvelle.
4. Le point clé : une case et son symétrique sont sur la **même ligne**. Une diagonale peut-elle contenir deux cases d'une même ligne ?

## Solution

**Réponse : Bob possède une stratégie gagnante.**

### La stratégie

Numérotons les lignes et les colonnes de $1$ à $10$, et notons $(i,j)$ la case de la ligne $i$ et de la colonne $j$.

Considérons la symétrie par rapport à l'axe vertical passant entre la colonne $5$ et la colonne $6$. Elle envoie la case $(i,j)$ sur la case

$$(i, 11-j) .$$

Comme $10$ est pair, il n'y a pas de colonne centrale : aucune case n'est son propre symétrique, puisque $j = 11-j$ donnerait $j = \frac{11}{2}$, qui n'est pas entier.

**La stratégie de Bob.** Répondre systématiquement par le coup symétrique de celui d'Alice : si Alice colorie une diagonale $D$, Bob colorie la diagonale symétrique $D'$.

### Pourquoi la stratégie fonctionne

Montrons par récurrence sur le nombre de tours que Bob peut toujours jouer et que, après chacun de ses coups, **le coloriage de la grille est symétrique** par rapport à l'axe.

Au départ, la grille est toute blanche, donc symétrique.

Supposons qu'avant le coup d'Alice le coloriage soit symétrique, et qu'Alice joue la diagonale $D$. Son coup est légal, donc $D$ contient au moins une case blanche, disons $x$.

**Première observation : $D'$, la symétrique de $D$, est bien une diagonale.** La symétrie par rapport à un axe vertical échange les deux directions de diagonales : l'image d'une diagonale « descendant vers la droite » est une diagonale « descendant vers la gauche », et réciproquement. Donc $D'$ est un coup que Bob peut nommer.

**Deuxième observation : le symétrique de $x$ n'est pas dans $D$.** La case $x$ et son symétrique sont sur la **même ligne**. Or une diagonale ne contient qu'une seule case par ligne. Donc si le symétrique de $x$ appartenait à $D$, il serait égal à $x$, ce qui est impossible puisqu'aucune case n'est son propre symétrique.

**Conclusion : le coup de Bob est légal.** Avant le coup d'Alice le coloriage était symétrique, et $x$ était blanche : son symétrique était donc blanc lui aussi. Le coup d'Alice ne l'a pas colorié, d'après la deuxième observation. Ce symétrique est donc encore blanc au moment où Bob joue, et il appartient à $D'$. Le coup de Bob colorie donc au moins une case nouvelle : il est légal.

**Et la symétrie est rétablie.** Après le coup d'Alice puis celui de Bob, on a colorié $D$ et son image $D'$ : l'ensemble colorié est de nouveau symétrique.

### Pourquoi Bob gagne

Le nombre de cases blanches diminue strictement à chaque coup, donc la partie se termine. Et d'après ce qui précède, Bob a toujours un coup disponible juste après Alice. Le joueur qui se retrouve bloqué ne peut donc pas être Bob : c'est Alice.

$$\boxed{\text{Bob a une stratégie gagnante : jouer le coup symétrique de celui d'Alice.}}$$

*Ce qu'il faut retenir.* C'est la **stratégie de copie**, l'une des trois ou quatre idées qui résolvent la plupart des jeux à deux joueurs. Le second joueur imite le premier dans un miroir, ce qui lui garantit d'avoir toujours un coup à jouer. Pour que cela marche, deux conditions sont nécessaires : la symétrie ne doit fixer aucune position (ici, aucune case n'est sur l'axe), et le coup de l'adversaire ne doit jamais détruire la réponse prévue (ici, une diagonale ne rencontre jamais une case et sa symétrique).

## Going further

1. Que se passe-t-il sur une grille $11 \times 11$ ? La colonne du milieu existe cette fois, et la stratégie de copie tombe en panne. Cherche qui gagne sur une grille $1 \times 1$, puis $3 \times 3$.

2. Si l'on remplace « diagonale » par « ligne ou colonne », qui gagne sur la grille $10 \times 10$ ? La stratégie de copie marche-t-elle encore ? *Attention : une ligne contient une case et sa symétrique.*

3. Reprends l'exercice avec la symétrie **centrale** (par rapport au centre de la grille) au lieu de la symétrie axiale. La démonstration passe-t-elle ?
