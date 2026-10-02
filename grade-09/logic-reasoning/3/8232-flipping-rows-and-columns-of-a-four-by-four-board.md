---
id: "8232"
title: "Une seule case noire dans un carré 4 × 4"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, parite, coloriage, grille]
adapted_from: null
see_also: ["7007"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Principe des tiroirs » (Andrei Barbu), section Coloriages, exercice 20"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Un damier $4 \times 4$ est entièrement blanc, à l'exception d'une seule case, qui est noire.

On a le droit d'effectuer l'opération suivante autant de fois qu'on veut : **choisir une ligne entière ou une colonne entière et inverser la couleur de ses quatre cases** (le blanc devient noir, le noir devient blanc).

Pour quelles positions de la case noire de départ peut-on arriver à un damier dont toutes les cases sont de la même couleur ?

## Hints

1. Essaie sur un dessin. Tu te convaincras vite que ça ne marche pas ; il faut donc trouver une quantité qui ne change jamais.
2. Compte le nombre total de cases noires. Une opération le modifie, mais pas n'importe comment : une ligne contient combien de cases ?
3. Si une ligne contient $k$ cases noires avant l'opération, combien en contient-elle après ?
4. Regarde la **parité** de ce nombre de cases noires, avant et après.
5. Compare la parité au départ et la parité des deux configurations d'arrivée possibles.

## Solution

**L'invariant : la parité du nombre de cases noires.**

Une ligne (ou une colonne) du damier contient exactement $4$ cases. Supposons qu'avant l'opération, $k$ de ces $4$ cases soient noires. Après avoir inversé toutes les couleurs de la ligne, les cases noires deviennent blanches et inversement : il y a donc maintenant $4 - k$ cases noires dans cette ligne.

Le nombre total de cases noires du damier varie donc de

$$(4-k) - k = 4 - 2k ,$$

qui est un nombre **pair** quelle que soit la valeur de $k$.

Ajouter un nombre pair ne change pas la parité. Donc :

> **La parité du nombre total de cases noires ne change jamais.**

**La conclusion.**

Au départ, il y a exactement $1$ case noire : ce nombre est **impair**.

À l'arrivée, on voudrait un damier monochrome. Il n'y a que deux possibilités :

- tout blanc : $0$ case noire, nombre **pair** ;
- tout noir : $16$ cases noires, nombre **pair**.

Dans les deux cas, la parité serait paire, alors qu'elle doit rester impaire. C'est impossible.

$$\boxed{\text{Pour aucune position de la case noire on ne peut rendre le damier monochrome.}}$$

**Remarque importante.** L'énoncé demandait « pour quelles positions », ce qui suggérait que certaines positions marcheraient. La bonne réponse est : aucune. La position de la case noire n'intervient nulle part dans le raisonnement, et c'est normal : l'invariant ne voit que le **nombre** de cases noires, pas leur emplacement.

## Going further

On s'autorise maintenant, en plus, à inverser les couleurs d'une **diagonale** quelconque du damier (une diagonale de $1$, $2$, $3$ ou $4$ cases, dans l'un ou l'autre sens). L'argument de parité tombe, puisqu'une diagonale de longueur impaire change la parité.

1. Montrer qu'il reste malgré tout un invariant : marquer les $8$ cases qui ne sont sur **aucune** des deux grandes diagonales, et vérifier que toute ligne, toute colonne et toute diagonale en contient un nombre **pair** ($0$ ou $2$).
2. En déduire que si la case noire de départ n'est sur aucune des deux grandes diagonales, c'est encore impossible.
3. Il se trouve que dans les huit autres cas, c'est possible. Le vérifier sur un exemple, par exemple avec la case noire dans un coin.
