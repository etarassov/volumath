---
id: "8635"
title: "Six élèves autour d'une table ronde"
grade: 9
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage-alterne, invariant, differences, table-ronde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Honorine a réuni six élèves autour d'une table ronde. Aucun d'eux n'a de bonbon au départ.

Pour commencer, l'une d'entre eux, Isabelle, donne un bonbon à chacun de ses deux voisins : ces deux-là ont donc un bonbon chacun, et les quatre autres, Isabelle comprise, n'en ont aucun.

Ensuite, chaque minute, Honorine choisit deux élèves **assis l'un à côté de l'autre** et donne un bonbon à chacun des deux.

Les élèves ne mangent pas de bonbons pendant le cours. Honorine pourra-t-elle faire en sorte que les six élèves finissent par avoir tous le même nombre de bonbons ?

## Hints

1. Six places autour d'une table ronde : colorie-les alternativement en noir et en blanc. Pourquoi est-ce possible ?
2. Deux élèves assis côte à côte : de quelles couleurs sont-ils ?
3. Compte le nombre total de bonbons détenus par les élèves noirs, puis par les élèves blancs. Que se passe-t-il quand Honorine distribue deux bonbons ?
4. Que vaudrait la différence entre ces deux totaux si tout le monde avait le même nombre de bonbons ?

## Solution

**Le coloriage.** Colorions les six places alternativement en noir et en blanc autour de la table. C'est possible car $6$ est pair, et on obtient trois places noires et trois places blanches, **deux places voisines étant toujours de couleurs différentes**.

Quitte à choisir le sens du coloriage, supposons qu'Isabelle soit assise sur une place blanche. Ses deux voisins sont alors sur des places noires.

**L'état de départ.** Après le geste d'Isabelle, les deux élèves noirs voisins d'Isabelle ont un bonbon chacun, et tous les autres n'en ont aucun. Donc

$$(\text{total des noirs}) = 2 \qquad \text{et} \qquad (\text{total des blancs}) = 0 .$$

La différence « noirs moins blancs » vaut $2$.

**L'invariant.** Chaque minute, Honorine choisit deux élèves voisins : d'après le coloriage, l'un est noir et l'autre est blanc. Elle donne un bonbon à chacun, donc

- le total des noirs augmente de $1$,
- le total des blancs augmente de $1$.

La **différence** entre les deux totaux ne change donc jamais : elle vaut $2$ pour toujours.

**Conclusion.** Si les six élèves avaient tous le même nombre $n$ de bonbons, le total des noirs vaudrait $3n$ et celui des blancs $3n$ aussi : la différence serait $0$.

Or elle vaut $2$. **Honorine n'y parviendra jamais.**

## Going further

Là encore, tout repose sur le fait que le nombre de places est **pair** : c'est ce qui permet le coloriage alterné.

Avec sept élèves autour de la table, le coloriage alterné n'existe plus, et l'obstruction disparaît. Honorine peut-elle alors égaliser les bonbons ? Essaie avec sept places, en partant de la même situation initiale.
