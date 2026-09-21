---
id: "7932"
title: "b² − 8 est une puissance de 3"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, carres, restes modulo 3, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe A, exercice 2 (énoncé p. 211, solution p. 212)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(b, n)$ tels que

$$b^2 - 8 = 3^n .$$

## Hints

1. Commence par le cas $n = 0$ : que vaut $3^0$ ?
2. Pour $n \ge 1$, le nombre $3^n$ est un multiple de $3$. Que vaut alors $b^2$ modulo $3$ ?
3. Fais la liste des restes possibles d'un carré dans la division par $3$ : essaie $b = 3k$, $b = 3k+1$, $b = 3k+2$.

## Solution

**La réponse : le seul couple est $(b, n) = (3, 0)$.**

**Étape 1 : le cas $n = 0$.**

Si $n = 0$, l'équation devient $b^2 - 8 = 1$, donc $b^2 = 9$ et, comme $b$ est un entier naturel, $b = 3$.

Le couple $(3, 0)$ est donc solution.

**Étape 2 : quels restes peut avoir un carré modulo 3 ?**

Tout entier $b$ s'écrit $3k$, $3k+1$ ou $3k+2$. Calculons son carré modulo $3$ :

- $b = 3k$ : $b^2 = 9k^2 \equiv 0 \pmod 3$ ;
- $b = 3k+1$ : $b^2 = 9k^2 + 6k + 1 \equiv 1 \pmod 3$ ;
- $b = 3k+2$ : $b^2 = 9k^2 + 12k + 4 \equiv 1 \pmod 3$.

> **Un carré n'est jamais congru à $2$ modulo $3$** : il vaut toujours $0$ ou $1$.

**Étape 3 : le cas $n \ge 1$.**

Si $n \ge 1$, alors $3^n$ est un multiple de $3$, donc $3^n \equiv 0 \pmod 3$. L'équation donne

$$b^2 = 3^n + 8 \equiv 0 + 8 \equiv 2 \pmod 3 ,$$

car $8 = 2 \times 3 + 2$.

Or on vient de voir qu'un carré n'est jamais congru à $2$ modulo $3$. C'est impossible.

**Conclusion.** Le seul couple solution est $(b, n) = \boxed{(3, 0)}$.
