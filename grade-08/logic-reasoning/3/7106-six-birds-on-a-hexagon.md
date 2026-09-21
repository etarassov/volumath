---
id: "7106"
title: "Six oiseaux sur un hexagone"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, coloriage, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi et jeudi matin (François Lo Jacomo), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Six arbres sont plantés aux six sommets d'un hexagone régulier, et un oiseau est posé sur
chaque arbre.

Toutes les minutes, **deux** oiseaux s'envolent en même temps, et chacun des deux va se
poser sur l'un des deux arbres voisins du sien.

Les six oiseaux peuvent-ils un jour se retrouver tous sur le même arbre ?

## Hints

1. Numérote les arbres de $1$ à $6$ en tournant autour de l'hexagone, et colorie-les
   alternativement en noir et en blanc.
2. Quand un oiseau change d'arbre, de quelle couleur part-il et sur quelle couleur
   arrive-t-il ?
3. Compte les oiseaux posés sur les arbres noirs. Ce nombre vaut $3$ au départ. Que
   devrait-il valoir à l'arrivée ? Et comment varie-t-il en une minute ?

## Solution

**La réponse est non.** Voici pourquoi.

**Un coloriage.** Numérotons les arbres de $1$ à $6$ en tournant autour de l'hexagone.
Colorions en noir les arbres $1$, $3$, $5$ et en blanc les arbres $2$, $4$, $6$. Deux arbres
voisins n'ont jamais la même couleur : les trois arbres noirs forment un triangle
équilatéral, et chacun a ses deux voisins blancs.

**Ce que fait un déplacement.** Un oiseau qui bouge passe de son arbre à un arbre voisin,
donc il **change de couleur** : un oiseau noir devient blanc, un oiseau blanc devient noir.

Appelons $N$ le nombre d'oiseaux posés sur des arbres noirs. À chaque minute, deux oiseaux
bougent, et il n'y a que trois cas :

- les deux étaient sur des arbres noirs : ils passent tous les deux au blanc, et $N$ diminue
  de $2$ ;
- les deux étaient sur des arbres blancs : $N$ augmente de $2$ ;
- l'un était noir et l'autre blanc : ils échangent, et $N$ ne change pas.

Dans tous les cas, $N$ varie de $-2$, de $0$ ou de $+2$. **La parité de $N$ ne change
jamais.**

**Le début et la fin.** Au départ, il y a un oiseau sur chacun des six arbres, donc trois
sur les arbres noirs : $N = 3$, un nombre **impair**. La parité étant conservée, $N$ restera
impair pour toujours.

Si les six oiseaux étaient tous sur le même arbre, alors soit cet arbre est noir et $N = 6$,
soit il est blanc et $N = 0$. Dans les deux cas $N$ serait **pair**.

**Conclusion.** C'est impossible : les six oiseaux ne pourront jamais se retrouver tous sur
le même arbre.

## Going further

Remarque de méthode, et elle est importante. Pour montrer qu'une chose est **possible**, on
la construit : on décrit la suite de coups qui marche. Pour montrer qu'une chose est
**impossible**, cette méthode ne sert à rien, puisqu'il y a une infinité de suites de coups à
essayer. On cherche alors une quantité qui ne peut pas varier n'importe comment, et on
montre qu'elle n'a pas la bonne valeur à l'arrivée. C'est ce qu'on appelle un **invariant**.
