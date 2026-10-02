---
id: "7930"
title: "Six oiseaux autour de six arbres"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [invariant, parite, cercle, coloriage-alterne]
adapted_from: null
see_also: ["7233", "7714"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de mi-parcours"
  reference: "stage_ete_2016.pdf, test de mi-parcours du samedi 20 août, Groupe A, exercice 2 (énoncé p. 107, solution p. 108). Le même problème revient au Groupe B avec huit nids d'hirondelle."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Dans une clairière magique, six arbres sont disposés en cercle et six oiseaux enchantés y vivent.

À la nouvelle lune, le druide Panoramix remarque que les six oiseaux sont sur six arbres différents, un par arbre. Il sait de plus que **chaque nuit, chaque oiseau se déplace d'un arbre**, soit vers la gauche, soit vers la droite sur le cercle. Plusieurs oiseaux peuvent très bien se retrouver sur le même arbre.

Panoramix pourra-t-il un jour observer les six oiseaux sur un même arbre ?

## Hints

1. Fais un dessin des six arbres en cercle et essaie quelques nuits, pour voir ce qui est possible.
2. Colorie les arbres alternativement en deux couleurs, en faisant le tour du cercle. Cela tombe-t-il juste ? Pourquoi est-ce important que le nombre d'arbres soit pair ?
3. Chaque nuit, un oiseau change d'arbre. Change-t-il de couleur ?
4. Combien d'oiseaux sont sur les arbres de chaque couleur au départ ? Et une nuit plus tard ? Et si les six oiseaux étaient réunis sur un seul arbre ?

## Solution

**La réponse : non, cela n'arrivera jamais.**

**Étape 1 : on colorie les arbres.**

Faisons le tour de la clairière et colorions les arbres **alternativement** : un chêne, un bouleau, un chêne, un bouleau, et ainsi de suite.

Cela tombe juste parce que le nombre d'arbres, $6$, est pair : en revenant au point de départ, on retrouve bien la bonne couleur. Il y a donc $3$ chênes et $3$ bouleaux, et **deux arbres voisins sont toujours de couleurs différentes**.

**Étape 2 : chaque nuit, tous les oiseaux changent de couleur.**

Un oiseau se déplace d'un arbre vers la gauche ou vers la droite : il arrive donc sur un arbre voisin, donc de l'autre couleur.

Chaque nuit, tous les oiseaux qui étaient sur un chêne passent sur un bouleau, et tous ceux qui étaient sur un bouleau passent sur un chêne.

**Étape 3 : la quantité qui ne change pas.**

Notons $c$ le nombre d'oiseaux sur les chênes et $b$ le nombre d'oiseaux sur les bouleaux. Au départ, il y a un oiseau par arbre, donc

$$c = 3 \qquad \text{et} \qquad b = 3 .$$

Après une nuit, les deux nombres s'échangent : le nouveau $c$ vaut l'ancien $b$, et le nouveau $b$ vaut l'ancien $c$. Comme ils étaient égaux à $3$, ils le restent.

Par récurrence, à chaque instant, il y a exactement $3$ oiseaux sur les chênes et $3$ sur les bouleaux. C'est ce qu'on appelle un **invariant** : une quantité que les déplacements ne peuvent pas modifier.

**Étape 4 : la conclusion.**

Si les six oiseaux étaient réunis sur un même arbre, on aurait $c = 6$ et $b = 0$, ou bien $c = 0$ et $b = 6$, selon la couleur de cet arbre. Dans les deux cas, ce n'est pas $3$ et $3$.

C'est donc impossible.

**Conclusion.** Panoramix ne verra jamais les six oiseaux sur le même arbre.

## Going further

Et avec **sept** arbres ? Le coloriage alterné ne tombe plus juste, l'invariant disparaît, et de fait les oiseaux peuvent alors se réunir : essaie de trouver comment. Ce qui bloque n'est donc pas le cercle, mais le fait que le nombre d'arbres soit pair.
