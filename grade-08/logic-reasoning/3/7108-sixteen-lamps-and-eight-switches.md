---
id: "7108"
title: "Seize ampoules et huit interrupteurs"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, tableau, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi et jeudi matin (François Lo Jacomo), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Seize ampoules sont disposées en carré, quatre par ligne et quatre par colonne.

Il y a un interrupteur au bout de chaque ligne et un au bout de chaque colonne, soit huit
interrupteurs en tout. Appuyer sur un interrupteur **change l'état des quatre ampoules** de
sa ligne (ou de sa colonne) : celles qui étaient allumées s'éteignent, celles qui étaient
éteintes s'allument.

Au départ, une seule ampoule est allumée. Peut-on toutes les éteindre ?

## Hints

1. Compte les ampoules allumées. Appelle ce nombre $A$.
2. Appuie sur un interrupteur. Parmi les quatre ampoules qu'il touche, appelle $j$ le nombre
   de celles qui étaient allumées. Que vaut le nouveau $A$ en fonction de l'ancien et de
   $j$ ?
3. Regarde si $A$ est pair ou impair, au départ et à l'arrivée.

## Solution

**La réponse est non.**

**Ce que fait un interrupteur.** Notons $A$ le nombre d'ampoules allumées. Appuyons sur un
interrupteur : il touche exactement quatre ampoules. Notons $j$ le nombre de celles, parmi
ces quatre, qui étaient allumées ; les $4 - j$ autres étaient éteintes.

Après l'appui, les $j$ premières s'éteignent et les $4 - j$ autres s'allument. Le nouveau
nombre d'ampoules allumées vaut donc

$$A - j + (4 - j) = A + 4 - 2j .$$

La variation est $4 - 2j$, c'est-à-dire $2(2 - j)$ : **un nombre pair**, quelle que soit la
valeur de $j$.

**L'invariant.** Un appui ne change donc jamais la parité de $A$. Comme au départ $A = 1$,
qui est impair, le nombre d'ampoules allumées sera **impair à tout moment**, aussi longtemps
qu'on joue.

**Conclusion.** Un nombre impair n'est jamais nul. Il restera donc toujours au moins une
ampoule allumée : **on ne peut pas toutes les éteindre.**

## Going further

Le raisonnement n'a utilisé ni la forme carrée du tableau, ni le nombre $4$ : il a seulement
utilisé que chaque interrupteur touche un nombre **pair** d'ampoules.

Alors voici deux variantes à essayer. Avec un carré $5 \times 5$, chaque interrupteur touche
cinq ampoules, un nombre impair : l'argument tombe, et la réponse change. Et avec un carré
$4 \times 4$ dont on allume **deux** ampoules au départ, la parité ne bloque plus : peut-on
alors tout éteindre ? Cela dépend de la position des deux ampoules, et c'est une jolie
question.
