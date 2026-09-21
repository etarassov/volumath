---
id: "7104"
title: "La tablette de chocolat"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [invariant, recurrence, decoupage, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Débutants : stratégies de base », lundi après-midi (Roger Mansuy), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Une tablette de chocolat est quadrillée en $m \times n$ carrés. On veut la séparer
entièrement en carrés isolés.

Une **cassure** consiste à prendre un morceau déjà obtenu et à le casser en deux le long
d'une ligne du quadrillage, d'un bout à l'autre du morceau. On n'a pas le droit d'empiler
deux morceaux pour les casser ensemble.

Montrer qu'il faut toujours exactement $mn - 1$ cassures, quel que soit l'ordre dans lequel
on s'y prend.

## Hints

1. Essaie d'abord sur une petite tablette, $2 \times 3$ par exemple, en cassant dans deux
   ordres différents. Combien de cassures dans chaque cas ?
2. Ne compte pas les cassures. Compte les **morceaux** que tu as sur la table.
3. Que fait une cassure au nombre de morceaux ? Combien de morceaux au départ, combien à
   l'arrivée ?

## Solution

L'idée est de ne pas suivre la forme des morceaux, qui est compliquée, mais seulement leur
**nombre**, qui est simple.

**Ce que fait une cassure.** Une cassure prend un morceau et le remplace par deux morceaux.
Le nombre de morceaux posés sur la table augmente donc de

$$2 - 1 = 1 .$$

Chaque cassure ajoute exactement un morceau, ni plus ni moins, et cela ne dépend ni de la
taille du morceau cassé ni de l'endroit de la cassure.

**Le début et la fin.** Au départ il y a un seul morceau : la tablette entière. À la fin il
y a $mn$ morceaux, puisque la tablette compte $mn$ carrés et qu'ils sont tous séparés.

**Le compte.** Appelons $c$ le nombre de cassures effectuées. Chaque cassure fait monter le
compte des morceaux de $1$, donc après $c$ cassures il y a $1 + c$ morceaux. À la fin :

$$1 + c = mn, \qquad \text{donc} \qquad c = mn - 1 .$$

**Conclusion.** Il faut exactement $mn - 1$ cassures. Le raisonnement n'a utilisé à aucun
moment l'ordre choisi : **toutes les façons de faire demandent le même nombre de cassures.**

## Going further

On appelle **invariant** une quantité qui évolue toujours de la même façon, quoi qu'on fasse.
Ici l'invariant est « nombre de morceaux moins nombre de cassures », qui vaut $1$ du début à
la fin.

C'est une technique à retenir : quand un problème demande « peut-on arriver à telle
situation ? » ou « combien de coups faut-il ? », il vaut souvent mieux chercher une quantité
qui ne bouge pas, ou qui bouge de façon parfaitement régulière, plutôt que d'essayer de
suivre toutes les configurations possibles.
