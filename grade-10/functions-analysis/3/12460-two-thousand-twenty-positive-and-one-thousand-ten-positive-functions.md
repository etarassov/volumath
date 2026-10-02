---
id: "12460"
title: "Fonctions 2020-positives et fonctions 1010-positives"
grade: 10
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [fonctions, contre-exemple, quantificateurs, somme-nulle, logique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 janvier 2020"
  reference: "2020-01_sujet-test-janvier.pdf, exercice 3 (groupe Junior) ; corrigé 2020-01_corrige-test-janvier.pdf (contre-exemple du b remplacé par une fonction plus simple)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-01_sujet-test-janvier.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. On dit qu'une fonction $f$ définie sur $\mathbb{R}$ est
**$n$-positive** si, pour tous réels $x_1, \ldots, x_n$ tels que $x_1 + \cdots + x_n = 0$, on a
$$f(x_1) + \cdots + f(x_n) \geqslant 0.$$

1. Toute fonction $2020$-positive est-elle forcément $1010$-positive ?
2. Toute fonction $1010$-positive est-elle forcément $2020$-positive ?

## Hints

1. Pour la première question, pars de $1010$ réels de somme nulle. Comment fabriquer, avec eux,
   $2020$ réels de somme nulle ?
2. Pour la seconde question, la réponse est non : il faut trouver un contre-exemple. Essaie une
   fonction qui vaut $-1$ en un petit nombre de points, et qui est très grande partout ailleurs.
3. Choisis deux réels $u$ et $v$ tels qu'on puisse obtenir $0$ en additionnant $2020$ nombres pris
   parmi $u$ et $v$, mais pas en additionnant $1010$ nombres pris parmi $u$ et $v$. Par exemple
   $u = 1$ et $v = -2019$.

## Solution

### Question 1 : oui

Soit $f$ une fonction $2020$-positive, et soit $x_1, \ldots, x_{1010}$ des réels de somme nulle.
Écrivons chacun d'eux deux fois : les $2020$ réels
$$x_1, \ x_2, \ \ldots, \ x_{1010}, \ x_1, \ x_2, \ \ldots, \ x_{1010}$$
ont pour somme $2 \times 0 = 0$. Comme $f$ est $2020$-positive,
$$0 \leqslant f(x_1) + \cdots + f(x_{1010}) + f(x_1) + \cdots + f(x_{1010}) = 2\,[f(x_1) + \cdots + f(x_{1010})].$$
Donc $f(x_1) + \cdots + f(x_{1010}) \geqslant 0$. **Toute fonction $2020$-positive est
$1010$-positive.**

### Question 2 : non

Considérons la fonction $f$ définie par
$$f(1) = -1, \qquad f(-2019) = -1, \qquad f(x) = 1010 \ \text{ pour tout autre réel } x.$$

**$f$ n'est pas $2020$-positive.** Prenons $x_1 = -2019$ et $x_2 = x_3 = \cdots = x_{2020} = 1$.
Leur somme vaut $-2019 + 2019 = 0$, et pourtant
$$f(x_1) + f(x_2) + \cdots + f(x_{2020}) = 2020 \times (-1) = -2020 < 0.$$

**$f$ est $1010$-positive.** Soit $x_1, \ldots, x_{1010}$ des réels de somme nulle.

- *Si l'un d'eux, disons $x_k$, n'est égal ni à $1$ ni à $-2019$.* Alors $f(x_k) = 1010$. Les
  $1009$ autres valeurs de $f$ valent au moins $-1$, donc
  $$f(x_1) + \cdots + f(x_{1010}) \geqslant 1010 - 1009 = 1 > 0.$$
- *Sinon, tous les $x_i$ valent $1$ ou $-2019$.* Disons que $a$ d'entre eux valent $1$ et $b$
  valent $-2019$. Alors $a + b = 1010$ et $a - 2019\,b = 0$. En retranchant, $2020\,b = 1010$,
  donc $b = \frac{1}{2}$, ce qui est impossible pour un nombre entier. Ce cas ne se produit donc
  jamais.

Dans tous les cas possibles, la somme est positive : $f$ est $1010$-positive. **Il existe donc des
fonctions $1010$-positives qui ne sont pas $2020$-positives.**

## Going further

1. Montrer que, si $m$ divise $n$, toute fonction $n$-positive est $m$-positive.
2. Montrer qu'une fonction $f$ est $1$-positive si et seulement si $f(0) \geqslant 0$, et trouver
   une fonction $1$-positive qui n'est pas $2$-positive.
