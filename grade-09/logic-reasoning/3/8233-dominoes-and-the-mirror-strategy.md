---
id: "8233"
title: "Des dominos sur l'échiquier, et un miroir"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [jeu, strategie gagnante, symetrie, echiquier]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Stratégie des jeux » (Félix Breton, Andrei Barbu), stratégie miroir, exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Alice et Bob jouent sur un échiquier $8 \times 8$. Chacun à son tour, en commençant par Alice, pose un domino sur **deux cases libres voisines** (voisines veut dire : qui ont un côté commun). Les dominos ne doivent jamais se chevaucher.

Le premier joueur qui ne peut plus poser de domino a perdu.

1. Lequel des deux joueurs a une stratégie gagnante ?
2. Même question sur un plateau de $8$ cases sur $7$.

## Hints

1. Un échiquier $8 \times 8$ a une propriété remarquable : il est **symétrique par rapport à son centre**. Réfléchis à ce que devient un domino quand on lui applique cette symétrie.
2. Une stratégie miroir consiste à répondre toujours par le symétrique du coup adverse. Pour qu'elle fonctionne, il faut être sûr que la case symétrique est toujours libre.
3. Pourquoi peut-on l'affirmer ici ? Parce qu'après chaque coup du joueur qui applique la stratégie, le plateau est **entièrement symétrique**.
4. Pour un plateau $8 \times 7$, le centre de symétrie tombe sur une case, et non entre les cases. La stratégie miroir ne peut donc pas démarrer telle quelle. Qui peut la « réparer », et comment ?

## Solution

**Question 1 : le plateau $8 \times 8$. C'est Bob qui gagne.**

Notons $O$ le centre de l'échiquier. Comme $8$ est pair, ce centre est un **point du quadrillage**, au coin commun des quatre cases centrales : ce n'est le centre d'aucune case.

La symétrie de centre $O$ envoie donc l'échiquier sur lui-même, en échangeant les cases deux par deux, **sans aucune case fixe**. Elle envoie aussi tout domino sur un domino (deux cases voisines restent voisines).

*La stratégie de Bob.* Après chaque coup d'Alice, Bob pose le domino **symétrique** de celui qu'elle vient de poser, par rapport à $O$.

*Pourquoi Bob peut-il toujours le faire ?* Montrons qu'après chacun de ses coups, la figure formée par les dominos déjà posés est symétrique par rapport à $O$. C'est vrai au départ (aucun domino), et si c'est vrai avant un coup d'Alice, alors : Alice pose un domino $d$ sur des cases libres ; par symétrie de la figure, les cases du domino symétrique $d'$ étaient libres elles aussi avant le coup d'Alice. Sont-elles encore libres après ? Oui, sauf si $d'$ recouvrait une case de $d$. Or $d$ et $d'$ ne peuvent pas se chevaucher : un domino symétrique de lui-même devrait être centré en $O$, donc contenir une case fixe, et il n'y en a pas. Bob peut donc poser $d'$, et la figure redevient symétrique.

*Conclusion.* Bob n'est jamais bloqué : chaque fois qu'Alice a pu jouer, il peut répondre. C'est donc Alice qui se retrouvera bloquée la première.

$$\boxed{\text{Sur } 8 \times 8, \text{ Bob (le second joueur) gagne.}}$$

**Question 2 : le plateau $8 \times 7$. C'est Alice qui gagne.**

Prenons $8$ colonnes et $7$ lignes. Le centre $O$ du plateau est maintenant au milieu d'une arête : il est situé sur la ligne du milieu (la $4^{\text{e}}$ des $7$), à la frontière entre la $4^{\text{e}}$ et la $5^{\text{e}}$ colonne.

Les deux cases centrales, c'est-à-dire les cases $(4^{\text{e}} \text{ ligne},\ 4^{\text{e}} \text{ colonne})$ et $(4^{\text{e}} \text{ ligne},\ 5^{\text{e}} \text{ colonne})$, sont **voisines** et échangées par la symétrie de centre $O$.

*La stratégie d'Alice.* À son premier coup, elle pose un domino sur ces deux cases centrales. Le plateau restant est alors symétrique par rapport à $O$, et plus aucune case n'est fixe ni aucun domino symétrique de lui-même (le seul candidat était celui qu'elle vient de poser).

Ensuite, elle joue exactement la stratégie de Bob de la question 1 : elle répond toujours par le symétrique. Par le même raisonnement, elle n'est jamais bloquée.

$$\boxed{\text{Sur } 8 \times 7, \text{ Alice (la première joueuse) gagne.}}$$

**Ce qu'il faut retenir.** La stratégie miroir marche quand la figure possède une symétrie **sans point fixe utilisable par l'adversaire**. Quand il y a un « morceau central » gênant, c'est le premier joueur qui l'occupe et qui hérite de la stratégie.

## Going further

Sur un plateau de $m$ lignes et $n$ colonnes :

1. Montrer que si $m$ et $n$ sont **tous les deux pairs**, le second joueur gagne.
2. Montrer que si **exactement un** des deux est impair, le premier joueur gagne.
3. Il reste le cas où $m$ et $n$ sont tous deux impairs. Expliquer précisément pourquoi la stratégie miroir échoue alors, des deux côtés.
