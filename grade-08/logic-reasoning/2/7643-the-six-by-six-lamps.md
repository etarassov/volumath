---
id: "7643"
title: "Les trente-six ampoules d'Igor"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, interrupteurs, grille]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trente-six ampoules sont disposées en grille $6 \times 6$.

Il y a un interrupteur par ligne : quand on l'actionne, les ampoules allumées de cette ligne s'éteignent et les ampoules éteintes s'allument. Il y a de même un interrupteur par colonne, qui agit de la même manière sur toute la colonne.

Igor affirme :

> « Quand je suis arrivé, il y avait exactement **une** ampoule allumée, et après avoir manipulé certains interrupteurs, j'ai réussi à les éteindre toutes. »

Qu'en pensez-vous ?

## Hints

1. Un interrupteur agit sur combien d'ampoules à la fois ?
2. Quand on actionne un interrupteur, le nombre d'ampoules allumées change. Mais de combien ? Cela dépend de l'état de la ligne… ou pas ?
3. Si une ligne contient $a$ ampoules allumées, combien en contiendra-t-elle après avoir actionné son interrupteur ?
4. Regardez la **parité** du nombre total d'ampoules allumées.

## Solution

**Réponse : Igor se trompe (ou plaisante).**

**L'invariant : la parité du nombre d'ampoules allumées.**

Actionnons l'interrupteur d'une ligne, et supposons que cette ligne contenait $a$ ampoules allumées, donc $6 - a$ éteintes. Après l'opération, elle contient $6 - a$ ampoules allumées.

Le nombre total d'ampoules allumées a donc varié de

$$(6 - a) - a = 6 - 2a .$$

Ce nombre est **pair**, quelle que soit la valeur de $a$. Donc la parité du nombre total d'ampoules allumées n'a pas changé.

Le même calcul vaut mot pour mot pour un interrupteur de colonne, puisqu'une colonne compte elle aussi $6$ ampoules.

> **La parité du nombre d'ampoules allumées ne change jamais.**

**La conclusion.**

Au départ, une seule ampoule est allumée : ce nombre est **impair**.

Si toutes les ampoules étaient éteintes, ce nombre vaudrait $0$, qui est **pair**.

La parité devrait donc changer, ce qui est impossible.

**Conclusion.** Igor n'a pas pu éteindre toutes les ampoules. Soit il se trompe, soit il a cassé quelques ampoules à force de jouer avec les interrupteurs.

## Going further

Le raisonnement n'utilise que le fait que $6$ est **pair**. Sur une grille $n \times n$ avec $n$ pair, la conclusion serait la même.

Et si $n$ était **impair** ? Alors un interrupteur ferait varier le nombre d'allumées de $n - 2a$, qui est impair : la parité changerait à chaque coup, et l'argument tomberait. Essayez avec une grille $3 \times 3$ où une seule ampoule est allumée : pouvez-vous les éteindre toutes ?

Une autre question : en partant de toutes les ampoules allumées sur une grille $6 \times 6$, quelles configurations peut-on atteindre ?
