---
id: "2023"
title: "Un fil de 60 cm pour faire un cube"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [graphe, parite, degre, cube, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Ramsey Theory (Oleg Gleizer)"
  reference: "Handout-1257-1240.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1257-1240.pdf"
---

## Statement

On dispose d'un fil de fer rigide de $60 \,\text{cm}$ de long. On veut fabriquer avec lui l'armature d'un cube d'arête $5 \,\text{cm}$, c'est-à-dire recouvrir exactement les douze arêtes du cube, chacune une seule fois.

![Le cube et ses huit sommets](2023-figure-1.svg)

1. La longueur du fil est-elle la bonne ?
2. Peut-on y arriver **sans couper le fil** ? Justifier.
3. Quel est le **nombre minimal de coupes** nécessaires ? Justifier, et donner une façon de faire qui atteint ce minimum.

## Hints

1. Pour la question 1, comptez les arêtes d'un cube.
2. Pour la question 2, regardez un sommet du cube. Combien d'arêtes y arrivent ?
3. Un morceau de fil posé sur le cube entre et ressort de chaque sommet qu'il traverse : il y utilise donc les arêtes deux par deux. Sauf à ses deux extrémités.
4. Comptez les sommets où le nombre d'arêtes est impair. Chaque morceau de fil ne peut « absorber » qu'au plus deux de ces sommets.

## Solution

**1. La longueur.** Un cube a $12$ arêtes, chacune de $5 \,\text{cm}$, soit $12 \times 5 = 60 \,\text{cm}$ en tout. Le fil a exactement la bonne longueur : il n'y aura ni manque, ni surplus, ni aucun aller-retour possible sur une arête déjà parcourue.

**2. En un seul morceau, c'est impossible.**

Regardons un sommet quelconque du cube : il y arrive exactement $3$ arêtes. C'est un nombre **impair**, et c'est vrai pour les **huit** sommets.

Suivons maintenant un morceau de fil posé sur le cube. Chaque fois qu'il passe par un sommet **sans s'y arrêter**, il y arrive par une arête et en repart par une autre : il utilise donc les arêtes de ce sommet **deux par deux**. Le compte des arêtes utilisées en ce sommet est donc pair, sauf si ce sommet est l'une des deux extrémités du morceau, auquel cas il est impair.

Avec un seul morceau, il n'y a que $2$ extrémités : au plus $2$ sommets pourraient avoir un nombre impair d'arêtes. Or le cube en a $8$. C'est impossible.

**3. Trois coupes suffisent, et il en faut au moins trois.**

*Il en faut au moins trois.* Si l'on coupe le fil en $k$ morceaux, on dispose de $2k$ extrémités. Chacun des $8$ sommets de degré impair doit être l'extrémité d'au moins un morceau, donc

$$2k \geqslant 8, \qquad \text{c'est-à-dire} \qquad k \geqslant 4 .$$

Il faut au moins $4$ morceaux, donc au moins $3$ coupes.

*Trois coupes suffisent.* Coupons le fil en quatre morceaux de $15 \,\text{cm}$, soit trois arêtes chacun. Avec les notations de la figure ($ABCD$ la face avant, $EFGH$ la face arrière, les arêtes de profondeur étant $AE$, $BF$, $CG$, $DH$), voici comment les poser :

- morceau 1 : $A \to B \to C \to D$ ;
- morceau 2 : $B \to F \to G \to C$ ;
- morceau 3 : $E \to A \to D \to H$ ;
- morceau 4 : $F \to E \to H \to G$.

Vérifions que les douze arêtes sont couvertes une fois chacune :

- face avant : $AB$, $BC$, $CD$ (morceau 1) et $DA$ (morceau 3) ;
- face arrière : $FG$ (morceau 2), $FE$, $EH$, $HG$ (morceau 4) ;
- arêtes de profondeur : $BF$ et $CG$ (morceau 2), $AE$ et $DH$ (morceau 3).

Cela fait bien $4 + 4 + 4 = 12$ arêtes, chacune une seule fois.

**Conclusion.** Il faut $3$ coupes au minimum, ce qui donne $4$ morceaux de $15 \,\text{cm}$, et cette solution existe.

## Going further

L'argument utilisé est celui des **chemins eulériens**. Un graphe connexe peut être parcouru d'un seul trait, sans repasser sur une arête, si et seulement s'il a zéro ou deux sommets de degré impair. S'il en a $2k$, il faut exactement $k$ traits.

C'est aussi la réponse à la question « quelles figures peut-on dessiner sans lever le crayon ? ». L'enveloppe ouverte classique a deux sommets de degré impair : un seul trait suffit. L'octaèdre a tous ses sommets de degré $4$, pair : un seul trait suffit aussi, et il revient même à son point de départ. Le cube, lui, a huit sommets de degré $3$ : il en faut quatre.
