---
id: "8239"
title: "Un parcours qui passe par toutes les cases"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [damier, parite, coloriage, chemin]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, TD de combinatoire (Savinien Kreczman, Andrei Barbu), section Coloriages, exercice 16"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On dispose d'une grille carrée de $2018$ cases de côté. Un jeton est posé sur la case du **coin inférieur gauche**.

À chaque coup, on déplace le jeton d'une case vers une case voisine, c'est-à-dire une case qui partage un côté avec celle où il se trouve.

Peut-on amener le jeton jusqu'à la case du **coin supérieur droit** en passant **une fois et une seule** par chacune des cases de la grille ?

## Hints

1. Colorie la grille comme un échiquier : cases noires et blanches en alternance, deux cases voisines n'ayant jamais la même couleur.
2. Que se passe-t-il pour la couleur de la case occupée à chaque déplacement ?
3. De quelle couleur est la case de départ ? Et celle d'arrivée ? *(Aide : repère-les par leurs numéros de ligne et de colonne, et regarde la parité de la somme.)*
4. Combien de déplacements faut-il faire pour visiter les $2018^2$ cases une fois et une seule ?
5. Compare ce nombre à ce que la couleur impose.

## Solution

**Le coloriage.**

Colorions la grille comme un échiquier. Concrètement, numérotons les lignes de $1$ à $2018$ en partant du bas et les colonnes de $1$ à $2018$ en partant de la gauche, et donnons à la case $(i, j)$ la couleur

- **noire** si $i + j$ est pair,
- **blanche** si $i + j$ est impair.

Deux cases voisines diffèrent d'exactement $1$ sur $i$ ou sur $j$, donc leur somme $i+j$ change de parité : deux cases voisines n'ont jamais la même couleur. C'est bien un damier.

**Ce que fait chaque déplacement.**

Un déplacement fait passer d'une case à une case voisine, donc **change la couleur** de la case occupée.

Après un nombre **pair** de déplacements, le jeton est donc sur une case de la même couleur qu'au départ. Après un nombre **impair**, il est sur une case de l'autre couleur.

**Les deux coins.**

- Le coin inférieur gauche est la case $(1, 1)$ : $1 + 1 = 2$ est pair, elle est **noire**.
- Le coin supérieur droit est la case $(2018, 2018)$ : $2018 + 2018 = 4036$ est pair, elle est **noire** aussi.

Le départ et l'arrivée ont donc la **même couleur**. Le nombre de déplacements effectués doit par conséquent être **pair**.

**Le compte des déplacements.**

Le parcours doit visiter chacune des $2018^2$ cases exactement une fois. Il occupe donc successivement $2018^2$ cases, et passe de l'une à la suivante par un déplacement : il fait

$$2018^2 - 1$$

déplacements.

Or $2018^2$ est pair (c'est le carré d'un nombre pair), donc $2018^2 - 1$ est **impair**.

**La contradiction.**

Le nombre de déplacements devrait être pair, et il est forcément impair.

$$\boxed{\text{Non, c'est impossible.}}$$

**Remarque.** Le raisonnement ne dépend pas de $2018$, seulement du fait que ce nombre est **pair**. Sur une grille $n \times n$ avec $n$ pair, un tel parcours d'un coin au coin opposé est toujours impossible. Avec $n$ impair, en revanche, les deux coins opposés ont bien la même couleur ($1+1$ et $n+n$ sont pairs tous les deux)... il faut donc recompter : $n^2 - 1$ est alors pair, et l'obstruction disparaît. Et effectivement, sur une grille $3 \times 3$ ou $5 \times 5$, un tel parcours existe : à toi de le dessiner.

## Going further

1. Dessiner un tel parcours sur une grille $3 \times 3$, puis sur une grille $5 \times 5$.
2. Sur une grille $2018 \times 2018$, peut-on aller du coin inférieur gauche au coin **inférieur droit** en passant une fois et une seule par chaque case ?
