---
id: "8638"
title: "Un chemin d'un coin au coin opposé"
grade: 10
theme: coloring
difficulty: 4
duration_min: 40
tags: [coloriage damier, parite, chemin, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Lucie dispose d'une grille rectangulaire de $m$ lignes et $n$ colonnes. Elle pose un jeton sur la case en bas à gauche.

Elle déplace ensuite son jeton de case en case, en passant à chaque fois sur une case qui partage un côté avec la précédente. Elle souhaite que son jeton passe **exactement une fois par chaque case** de la grille, et termine sur la case en haut à droite.

Pour quelles valeurs de $m$ et de $n$ peut-elle y arriver ?

## Hints

1. Essaie sur de petites grilles : $2 \times 2$, $2 \times 3$, $3 \times 3$, $4 \times 4$. Tu devrais voir apparaître un critère très simple.
2. Quand l'un des deux nombres est impair, il y a une façon de balayer la grille qui saute aux yeux. Laquelle ?
3. Pour l'impossibilité, colorie la grille comme un damier. De quelle couleur sont les deux coins concernés quand $m$ et $n$ sont tous les deux pairs ?
4. Chaque déplacement change la couleur de la case. Compte alors les cases de chaque couleur visitées par un chemin qui passe une fois par chacune.

## Solution

**La réponse : Lucie réussit exactement lorsque $m$ ou $n$ est impair.**

### Si l'un des deux nombres est impair : ça marche

Supposons $m$ impair (le cas où $n$ est impair se traite de la même façon en échangeant les rôles des lignes et des colonnes).

Lucie balaie la grille ligne par ligne, en serpentant. Partant de la case en bas à gauche, elle parcourt la ligne du bas entièrement vers la droite, monte d'une case, parcourt la deuxième ligne entièrement vers la gauche, monte d'une case, repart vers la droite, et ainsi de suite.

Ce trajet passe une fois et une seule par chaque case. Il termine à droite sur les lignes de rang impair, et à gauche sur les lignes de rang pair. Comme $m$ est impair, la dernière ligne est de rang impair : Lucie termine donc sur la case en haut à droite.

### Si $m$ et $n$ sont tous les deux pairs : c'est impossible

**Le coloriage.** Colorions la grille comme un damier, en donnant la couleur noire à la case de départ, en bas à gauche. Deux cases voisines sont alors de couleurs différentes.

**La couleur du coin d'arrivée.** Numérotons les lignes de $1$ à $m$ de bas en haut et les colonnes de $1$ à $n$ de gauche à droite. La case $(i,j)$ est noire exactement quand $i + j$ est pair, puisque la case de départ $(1,1)$ est noire et que $1+1=2$ est pair.

La case d'arrivée est $(m, n)$. Comme $m$ et $n$ sont pairs, $m + n$ est pair : **la case d'arrivée est noire elle aussi**.

**Le comptage des couleurs.** Chaque déplacement fait passer d'une case à une case voisine, donc change la couleur. Le jeton alterne : noir, blanc, noir, blanc, ...

Le trajet visite les $mn$ cases, une fois chacune. Il commence sur une case noire et finit sur une case noire. Une suite alternée qui commence et finit par du noir contient donc **une case noire de plus que de cases blanches**.

**La contradiction.** Or dans une grille $m \times n$ coloriée en damier avec $mn$ pair, il y a exactement $\dfrac{mn}{2}$ cases de chaque couleur : autant de noires que de blanches.

Le trajet ne peut donc pas visiter toutes les cases : il en manquera au moins une blanche.

### Conclusion

Lucie réussit si et seulement si **au moins l'un des deux nombres $m$ et $n$ est impair**.

## Going further

Le même coloriage répond à une question voisine : Lucie peut-elle partir de la case en bas à gauche, passer une fois par chaque case, et **revenir** à son point de départ ?

Un tel trajet fermé visite autant de cases noires que de blanches, donc il faut $mn$ pair. Et cette fois, c'est quand $m$ et $n$ sont tous deux **impairs** que c'est impossible.
