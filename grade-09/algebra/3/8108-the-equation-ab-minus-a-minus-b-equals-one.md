---
id: "8108"
title: "ab − a − b = 1"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, equation, entiers]
adapted_from: null
see_also: ["8213"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 1. La solution imprimée conclut « b = 1 et a = 2 », ce qui est faux : ce couple ne vérifie pas l'équation. La bonne réponse est a = 3 et b = 2, comme ci-dessous."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les couples d'entiers $(a, b)$ tels que

$$ab - a - b = 1 \qquad \text{avec} \qquad a > b > 0.$$

## Hints

1. Tester des valeurs au hasard est long. Essaie plutôt de transformer l'équation en un produit.
2. L'expression $ab - a - b$ ressemble à un produit développé, mais il lui manque quelque chose. Développe $(a-1)(b-1)$ et compare.
3. Tu arriveras à $(a-1)(b-1) = 2$. Combien y a-t-il de façons d'écrire $2$ comme produit de deux entiers ?
4. N'oublie pas d'utiliser la condition $a > b > 0$ pour éliminer les cas en trop, et de vérifier la solution trouvée.

## Solution

**Transformer la somme en produit.**

Développons $(a-1)(b-1)$ :

$$(a-1)(b-1) = ab - a - b + 1.$$

C'est exactement $ab - a - b$, augmenté de $1$. Or l'énoncé dit que $ab - a - b = 1$. Donc

$$(a-1)(b-1) = 1 + 1 = 2.$$

**Les deux facteurs.**

Les nombres $a-1$ et $b-1$ sont des entiers, et leur produit vaut $2$.

Comme $b > 0$ et que $b$ est entier, on a $b \geq 1$, donc $b - 1 \geq 0$. La valeur $b-1 = 0$ est impossible : le produit vaudrait alors $0$, pas $2$. Donc $b - 1 \geq 1$, et comme le produit est positif, $a - 1 \geq 1$ aussi.

Il faut donc écrire $2$ comme produit de deux entiers strictement positifs. Il n'y a que deux façons : $2 = 2 \times 1$ et $2 = 1 \times 2$.

- Si $a - 1 = 2$ et $b - 1 = 1$, alors $a = 3$ et $b = 2$. La condition $a > b > 0$ est respectée.
- Si $a - 1 = 1$ et $b - 1 = 2$, alors $a = 2$ et $b = 3$. Mais alors $a < b$, ce que l'énoncé interdit.

**Vérification.**

Avec $a = 3$ et $b = 2$ :

$$ab - a - b = 6 - 3 - 2 = 1. \quad \checkmark$$

**L'unique couple est $(a, b) = (3, 2)$.**
