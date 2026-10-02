---
id: "8675"
title: "Le tour complet du roi"
grade: 10
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, echiquier, parite, deplacement-du-roi]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 15 (niveau 1, deux étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Un roi se déplace sur un échiquier de $8 \times 8$ cases. À chaque coup, il passe sur une case voisine : soit vers le haut, le bas, la gauche ou la droite (on dira que le coup est **droit**), soit en diagonale.

Le roi parcourt **chaque case exactement une fois**, puis revient à sa case de départ.

Montrer qu'au cours de ce parcours, le roi s'est déplacé en diagonale un nombre **pair** de fois.

## Hints

1. Combien de coups le roi joue-t-il en tout ? Attention à ne pas oublier le coup qui le ramène à son point de départ.
2. Colorie l'échiquier comme un vrai échiquier, en alternant cases claires et cases foncées.
3. Que se passe-t-il pour la couleur de la case quand le roi joue un coup droit ? Et quand il joue un coup en diagonale ?
4. Le roi part d'une case et y revient. Que peut-on en déduire sur le nombre de changements de couleur ?

## Solution

### Le nombre total de coups

L'échiquier a $8 \times 8 = 64$ cases. Le roi les visite toutes une fois chacune, ce qui fait $63$ coups pour aller de la première à la dernière, puis un coup de plus pour revenir à la case de départ. Il joue donc en tout

$$64 \quad \text{coups} .$$

C'est un nombre **pair**.

### Le coloriage

Colorions l'échiquier de façon classique, en noir et blanc, deux cases voisines par un côté n'ayant jamais la même couleur.

- **Un coup droit** (haut, bas, gauche, droite) amène sur une case voisine par un côté : il **change** la couleur.
- **Un coup en diagonale** amène sur une case voisine par un coin. Or deux cases qui se touchent par un coin ont la **même** couleur : le coup **ne change pas** la couleur.

### La parité des coups droits

À chaque coup droit, la couleur change ; à chaque coup en diagonale, elle reste la même. Autrement dit,

$$\text{nombre de changements de couleur} = \text{nombre de coups droits} .$$

Le roi revient à sa case de départ, donc il termine sur une case de la **même couleur** qu'au début. Le nombre de changements de couleur est donc pair, et par conséquent

$$\text{le nombre de coups droits est pair} .$$

### On conclut

Les $64$ coups se répartissent entre coups droits et coups en diagonale :

$$\text{coups en diagonale} = 64 - \text{coups droits} .$$

Comme $64$ est pair et que le nombre de coups droits est pair, la différence est paire.

$$\boxed{\text{Le roi s'est déplacé en diagonale un nombre pair de fois.}}$$

## Going further

Remarque ce qui a servi et ce qui n'a pas servi. On n'a jamais eu besoin de savoir **quel** parcours le roi a suivi, ni même qu'un tel parcours existe. Seuls deux faits ont compté : le nombre total de coups est pair, et un coup en diagonale conserve la couleur. C'est la marque d'un raisonnement par **invariant**.

Deux questions pour continuer :

- Sur un damier $5 \times 5$, le même raisonnement donne une conclusion différente. Refais-le : combien de coups le roi joue-t-il, et quelle est alors la parité du nombre de coups en diagonale ?
- Sur l'échiquier $8 \times 8$, le roi peut-il faire un tel parcours fermé en jouant **uniquement** des coups droits ? *(Essaie de le dessiner : c'est possible.)*
