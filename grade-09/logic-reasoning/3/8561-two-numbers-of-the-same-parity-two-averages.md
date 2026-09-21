---
id: "8561"
title: "Deux nombres de même parité, deux moyennes"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, somme, moyenne, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Pavages, Coloriages et Invariants » (Arthur) du Groupe B, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On écrit au tableau les cinq nombres

$$2, \quad 3, \quad 5, \quad 7, \quad 11 .$$

Une opération consiste à choisir deux nombres de même parité écrits au tableau, à les
effacer, et à écrire à leur place **deux copies** de leur moyenne. Par exemple, si on choisit
$3$ et $7$, on les remplace par $5$ et $5$.

Peut-on obtenir, après un certain nombre d'opérations, cinq nombres tous égaux ?

## Hints

1. Il y a toujours cinq nombres au tableau : chaque opération en efface deux et en écrit deux.
2. Que devient la somme des cinq nombres lors d'une opération ?
3. Pourquoi demande-t-on que les deux nombres choisis aient la même parité ? Qu'est-ce que cela garantit sur le nombre écrit ?
4. Si les cinq nombres finaux étaient tous égaux à un même entier $x$, que vaudrait la somme ?

## Solution

**Les nombres restent entiers.** La condition « de même parité » sert exactement à cela : la
somme de deux entiers de même parité est paire, donc leur moyenne est un entier. Tous les
nombres écrits au tableau sont donc, à tout moment, des entiers.

**La somme est un invariant.** Si on efface $a$ et $b$ pour écrire deux fois
$m = \dfrac{a+b}{2}$, la somme du tableau varie de

$$2m - (a+b) = (a+b) - (a+b) = 0 .$$

La somme des cinq nombres ne change donc jamais. Au départ, elle vaut

$$2 + 3 + 5 + 7 + 11 = 28 .$$

**La conclusion.** Supposons qu'à un moment les cinq nombres soient tous égaux à un même
nombre $x$. Comme on vient de le voir, $x$ est un entier, et la somme vaut $5x$. Donc

$$5x = 28 .$$

Or $28$ n'est pas un multiple de $5$ : il n'existe aucun entier $x$ tel que $5x = 28$.

**Réponse.** Non, c'est impossible.
