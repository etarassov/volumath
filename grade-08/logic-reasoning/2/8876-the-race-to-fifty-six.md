---
id: "8876"
title: "La course à 56"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [jeu, strategie-gagnante, division-euclidienne, positions-perdantes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : TD de pot pourri » (Emilhan)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : TD de pot pourri », exercice 5, p. 286 et 290"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Alice et Bob jouent au jeu suivant. Alice commence : elle écrit au tableau un entier entre $1$ et $11$.

Ensuite, chacun à son tour, le joueur efface le nombre écrit et le remplace par ce nombre augmenté d'un entier compris entre $1$ et $11$. On n'a jamais le droit de dépasser $56$.

Le premier joueur qui écrit exactement $56$ a gagné.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Joue quelques parties. Essaie d'abord un jeu plus court : le premier qui écrit $12$ gagne, en ajoutant entre $1$ et $11$. Qui gagne ?
2. Si un joueur écrit un nombre $N$, quels nombres son adversaire peut-il écrire juste après ? Y a-t-il des nombres qu'il ne peut **pas** atteindre ?
3. À partir d'un nombre écrit, l'adversaire peut ajouter au maximum $11$. Quelle distance faut-il donc laisser pour être sûr qu'il n'atteigne pas $56$ ?
4. Remonte de $56$ en arrière par pas de $12$. Quelle est la première étape ?

## Solution

C'est **Alice** qui gagne.

### Les positions sûres

Remarquons d'abord que si un joueur vient d'écrire un nombre $N$, son adversaire écrit ensuite un nombre entre $N+1$ et $N+11$. Il ne peut donc **jamais** écrire $N + 12$.

Cela donne l'idée : les nombres à viser sont ceux qu'on obtient en retranchant $12$ à $56$, encore et encore :
$$56, \quad 44, \quad 32, \quad 20, \quad 8 .$$

En effet $56 = 8 + 4 \times 12$.

### La stratégie d'Alice

Alice commence par écrire $\mathbf{8}$, ce qui est permis puisque $1 \leqslant 8 \leqslant 11$.

Ensuite, **chaque fois que Bob ajoute un nombre $x$, Alice ajoute $12 - x$.**

C'est toujours possible : Bob choisit $x$ entre $1$ et $11$, donc $12 - x$ est aussi un entier entre $1$ et $11$. Et les deux coups ensemble font avancer le total de
$$x + (12 - x) = 12 .$$

Donc après le premier coup d'Alice le tableau porte $8$, après son deuxième coup il porte $20$, puis $32$, puis $44$, puis
$$44 + 12 = 56 .$$

Alice écrit donc $56$ à son cinquième coup et gagne.

### Bob ne peut pas gagner avant

Il faut encore vérifier que Bob n'a aucune occasion d'écrire $56$ lui-même. Bob joue toujours juste après Alice, donc à partir de $8$, de $20$, de $32$ ou de $44$. Dans le pire des cas, il part de $44$ et ajoute $11$, ce qui donne $55$. Il ne peut donc jamais atteindre $56$.

Et il n'est jamais bloqué non plus : tant que le total est inférieur ou égal à $55$, ajouter $1$ est un coup permis. La partie se termine donc bel et bien, et c'est Alice qui écrit $56$.

### Conclusion

Alice a une stratégie gagnante : écrire $8$, puis compléter chaque coup de Bob à $12$.

## Going further

1. Même jeu, mais le but est d'écrire exactement $60$. Qui gagne maintenant, et comment ?
2. Même jeu jusqu'à $56$, mais on peut ajouter un entier entre $1$ et $7$. Qui gagne ?
3. Le but est d'atteindre $N$ en ajoutant à chaque fois un entier entre $1$ et $p$. Trouver la règle générale qui dit lequel des deux joueurs gagne.
