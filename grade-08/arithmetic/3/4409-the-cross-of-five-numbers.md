---
id: "4409"
title: "La croix de cinq nombres"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [somme, parite, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, AMC Prep"
  reference: "Handout-572-699.pdf, AMC 8 1999, problème 11 (réponse dans Handout-573-699.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-572-699.pdf"
---

## Statement

On dessine une croix formée de cinq cases : une ligne horizontale de trois cases et une colonne
verticale de trois cases, qui se croisent dans la case du centre.

On place dans ces cinq cases les nombres $1$, $4$, $7$, $10$ et $13$, un nombre par case. On veut
que la somme des trois nombres de la ligne soit égale à la somme des trois nombres de la colonne.

Quelle est la plus grande valeur possible de cette somme commune ?

## Hints

1. Appelle $S$ la somme commune et $c$ le nombre placé au centre. Si tu additionnes la somme de
   la ligne et celle de la colonne, tu obtiens $2S$. Mais tu as compté une case deux fois.
2. Tu obtiens donc une égalité entre $2S$ et la somme des cinq nombres, plus quelque chose.
3. $2S$ est un nombre pair. Quelles valeurs de $c$ sont alors possibles ?

## Solution

Notons $S$ la somme commune et $c$ le nombre placé dans la case centrale.

**Une relation.** Additionnons la somme de la ligne et celle de la colonne : le résultat est
$S + S = 2S$. Mais dans cette addition, les quatre nombres des bouts sont comptés une fois, et
le nombre du centre est compté deux fois (une fois pour la ligne, une fois pour la colonne).
Donc

$$2S = (1 + 4 + 7 + 10 + 13) + c = 35 + c.$$

**Quelles valeurs de $c$ ?** Le nombre $2S$ est pair, donc $35 + c$ doit être pair, donc $c$
doit être impair. Parmi $1$, $4$, $7$, $10$, $13$, les nombres impairs sont $1$, $7$ et $13$.

**La plus grande somme.** Comme $2S = 35 + c$, la somme $S$ est d'autant plus grande que $c$ est
grand. On prend donc $c = 13$, ce qui donne

$$2S = 35 + 13 = 48, \qquad S = 24.$$

**Une disposition qui marche.** Il reste $1$, $4$, $7$, $10$ à répartir en deux paires de même
somme $24 - 13 = 11$ : les paires $(1 ; 10)$ et $(4 ; 7)$ conviennent. On met par exemple $1$ et
$10$ sur la ligne, $4$ et $7$ sur la colonne, et $13$ au centre :

$$1 + 13 + 10 = 24 \qquad \text{et} \qquad 4 + 13 + 7 = 24.$$

**La plus grande somme possible est $24$.**

## Going further

Les deux autres centres possibles donnent $c = 7$, soit $S = 21$, et $c = 1$, soit $S = 18$. Il
y a donc exactement trois sommes réalisables : $18$, $21$ et $24$.
