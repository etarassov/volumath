---
id: "8526"
title: "Six enfants, deux bonbons pour commencer"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [invariant, coloriage-alterne, parite, table-ronde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Six enfants sont assis autour d'une table ronde. Au départ, deux d'entre eux, séparés par un
enfant, ont chacun un bonbon ; les quatre autres n'en ont aucun.

Chaque jour, deux enfants assis côte à côte reçoivent un bonbon chacun. On choisit librement,
chaque jour, quel couple de voisins est servi.

Est-il possible qu'au bout d'un certain temps, tous les enfants aient le même nombre de
bonbons ?

## Hints

1. Fais un dessin : six places autour de la table, et marque les deux enfants qui ont un bonbon au départ. Ils sont séparés par un enfant.
2. Colorie les six places en alternant deux couleurs, une place sur deux. C'est possible parce qu'il y a un nombre pair de places.
3. De quelle couleur sont les deux enfants qui ont un bonbon au départ ?
4. Quand on sert deux voisins, de quelles couleurs sont-ils ? Que devient alors la différence entre le total des bonbons d'une couleur et celui de l'autre couleur ?

## Solution

**Le coloriage.** Colorions les six places en alternant rouge et bleu tout autour de la table :
rouge, bleu, rouge, bleu, rouge, bleu. C'est possible parce qu'il y a un nombre **pair** de
places, donc la dernière place (bleue) est bien voisine de la première (rouge).

Deux enfants voisins sont donc toujours de couleurs différentes : un rouge et un bleu.

**La situation de départ.** Les deux enfants qui ont un bonbon sont séparés par un enfant :
ils occupent donc deux places de même couleur. Disons qu'ils sont tous les deux rouges.

Posons

$$D = (\text{total des bonbons des enfants rouges}) - (\text{total des bonbons des enfants
bleus}) .$$

Au départ, $D = 2 - 0 = 2$.

**L'invariant.** Chaque jour, on donne un bonbon à deux enfants voisins, c'est-à-dire un
bonbon à un enfant rouge et un bonbon à un enfant bleu. Le total des rouges augmente de $1$,
celui des bleus aussi, donc leur différence $D$ **ne change pas**.

La quantité $D$ vaut donc toujours $2$, quel que soit le nombre de jours écoulés.

**La conclusion.** Si tous les enfants avaient le même nombre de bonbons, disons $n$ chacun,
alors le total des trois enfants rouges serait $3n$ et le total des trois enfants bleus
serait $3n$ aussi. On aurait donc $D = 0$.

Mais $D$ vaut toujours $2$, et $2 \neq 0$.

**Réponse.** Non, c'est impossible : les six enfants n'auront jamais tous le même nombre de
bonbons.

## Going further

Le raisonnement montre aussi ce qui se passerait si les deux enfants de départ étaient
voisins : on aurait alors $D = 1 - 1 = 0$ au départ, et l'obstacle disparaîtrait. Et en effet,
dans ce cas, il suffit de servir chaque jour un couple de voisins différent pour égaliser.
