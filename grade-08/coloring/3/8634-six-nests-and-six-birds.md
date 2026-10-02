---
id: "8634"
title: "Six nids et six oiseaux"
grade: 8
theme: coloring
difficulty: 3
duration_min: 20
tags: [coloriage-alterne, parite, invariant, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Six nids sont disposés en cercle, et dans chacun se trouve un oiseau.

Chaque nuit, **chaque** oiseau s'envole vers l'un des deux nids voisins du sien.

Est-il possible qu'après un certain nombre de nuits, les six oiseaux se retrouvent tous dans le même nid ?

## Hints

1. Il y a six nids en cercle, un nombre pair. Peux-tu les colorier en deux couleurs de façon que deux nids voisins soient toujours de couleurs différentes ?
2. Donne à chaque oiseau la couleur du nid où il se trouve. Que devient cette couleur après une nuit ?
3. Combien d'oiseaux de chaque couleur y a-t-il au départ ? Et après une nuit ? Et après deux nuits ?
4. Si tous les oiseaux étaient dans un même nid, combien y aurait-il d'oiseaux de chaque couleur ?

## Solution

**Le coloriage.** Colorions les six nids alternativement en noir et en blanc, en faisant le tour du cercle. C'est possible parce que $6$ est pair : on obtient trois nids noirs et trois nids blancs, et **deux nids voisins sont toujours de couleurs différentes**.

Donnons ensuite à chaque oiseau la couleur du nid qu'il occupe.

**Ce que fait une nuit.** Chaque oiseau passe dans un nid voisin, donc dans un nid de l'autre couleur : **chaque oiseau change de couleur chaque nuit**.

**L'invariant.** Au départ, il y a un oiseau par nid, donc exactement $3$ oiseaux noirs et $3$ oiseaux blancs.

Après une nuit, les $3$ noirs sont devenus blancs et les $3$ blancs sont devenus noirs : il y a encore $3$ oiseaux de chaque couleur. Et ainsi de suite chaque nuit.

**Donc à tout moment, il y a exactement $3$ oiseaux noirs et $3$ oiseaux blancs.**

**Conclusion.** Si les six oiseaux se retrouvaient dans un même nid, ils auraient tous la couleur de ce nid : il y aurait $6$ oiseaux d'une couleur et $0$ de l'autre. C'est impossible.

**Les six oiseaux ne pourront jamais se retrouver dans le même nid.**

## Going further

Le coloriage alterné n'existe que parce que le nombre de nids est **pair**. Avec cinq nids en cercle, il devient impossible de colorier sans que deux voisins soient de la même couleur, et l'argument s'effondre.

Et c'est bien plus qu'un détail technique : avec cinq nids, les oiseaux **peuvent** se regrouper. Sauras-tu trouver comment ?
