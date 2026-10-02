---
id: "13866"
title: "La grande diagonale d'un pavé"
grade: 10
theme: geometry
difficulty: 2
duration_min: 15
tags: [pave droit, diagonale, identites remarquables, espace]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 23 ; réponse 31 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Un pavé droit a la propriété suivante : la somme des aires de ses six faces vaut $94$, et la
somme des longueurs de ses douze arêtes vaut $48$.

La longueur d'une de ses grandes diagonales s'écrit $a\sqrt{b}$, où $a$ et $b$ sont des entiers
et où $b$ n'est divisible par aucun carré d'entier autre que $1$. Que vaut $a^2 + 3b$ ?

## Hints

1. Appelle $x$, $y$ et $z$ les trois dimensions du pavé. Traduis les deux informations de
   l'énoncé.
2. Avec le théorème de Pythagore, deux fois, exprime le carré de la grande diagonale en fonction
   de $x$, $y$ et $z$.
3. Développe $(x + y + z)^2$.

## Solution

Notons $x$, $y$ et $z$ les trois dimensions du pavé, et $\ell$ la longueur d'une grande
diagonale.

**Les deux informations.** Le pavé a quatre arêtes de chaque longueur, donc
$4(x + y + z) = 48$, soit $x + y + z = 12$. Il a deux faces de chaque sorte, donc
$2(xy + yz + zx) = 94$.

**La grande diagonale.** La diagonale d'une face de côtés $x$ et $y$ a pour carré $x^2 + y^2$,
d'après le théorème de Pythagore. La grande diagonale est l'hypoténuse d'un triangle rectangle
dont les côtés de l'angle droit sont cette diagonale de face et l'arête de longueur $z$. Donc
$\ell^2 = x^2 + y^2 + z^2$.

**Le calcul.** En développant,

$$(x + y + z)^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx).$$

Donc $\ell^2 = 12^2 - 94 = 144 - 94 = 50$, et $\ell = \sqrt{50} = \sqrt{25 \times 2} = 5\sqrt{2}$.
Comme $2$ n'est divisible par aucun carré autre que $1$, on a $a = 5$ et $b = 2$.

**Un tel pavé existe.** Le pavé de dimensions $3$, $4$ et $5$ convient : $3 + 4 + 5 = 12$ et
$2(12 + 20 + 15) = 94$. Sa grande diagonale vaut bien $\sqrt{9 + 16 + 25} = \sqrt{50}$.

**On trouve $a^2 + 3b = 25 + 6 = 31$.**
