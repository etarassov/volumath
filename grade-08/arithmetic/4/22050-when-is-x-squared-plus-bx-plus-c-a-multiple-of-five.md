---
id: "22050"
title: "Quand x² + bx + c est-il un multiple de 5 ?"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, restes, carres, trinome, forme-canonique, disjonction-de-cas]
adapted_from: null
see_also: ["5016"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 13 (erreur de la source : le corrigé écrit −(c + b) au lieu de −(c + b²) ; par exemple pour b = 2 et c = 0 il conclut qu'il n'y a pas de solution, alors que x = 0 et x = 3 conviennent ; l'énoncé « discuter les solutions de x² + bx + c ≡ 0 [5] » est reformulé avec la divisibilité par 5)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $b$ et $c$ deux entiers. On cherche tous les entiers $x$ tels que le nombre $x^2 + bx + c$ soit un multiple de $5$.

Selon les valeurs de $b$ et de $c$, dire s'il existe de tels entiers $x$, et lesquels.

Par exemple, pour $b = 2$ et $c = 0$, le nombre $x^2 + 2x = x(x + 2)$ est un multiple de $5$ pour $x = 0$, pour $x = 3$, et pour bien d'autres valeurs de $x$.

## Hints

1. Commencez par $b = 0$ : pour quelles valeurs de $c$ le nombre $x^2 + c$ peut-il être un multiple de $5$ ? Quels restes peut avoir un carré dans la division par $5$ ?
2. Pour un trinôme du second degré, on fait apparaître un carré en coupant $b$ en deux. Ici, diviser par $2$ est interdit, mais $2 \times 3 = 6$ a pour reste $1$ dans la division par $5$. Développez $(x + 3b)^2$.
3. Montrez que $5$ divise $x^2 + bx + c$ exactement quand $5$ divise $(x + 3b)^2 + b^2 + c$.
4. Tout dépend alors du reste de $b^2 + c$ dans la division par $5$.

## Solution

**Notation.** On écrit $a \equiv a' \pmod{5}$, et on lit « $a$ est congru à $a'$ modulo $5$ », quand $a - a'$ est un multiple de $5$, c'est-à-dire quand $a$ et $a'$ ont le même reste dans la division par $5$. On peut ajouter et multiplier de telles relations : si $a - a' = 5k$ et $d - d' = 5\ell$, alors $(a + d) - (a' + d') = 5(k + \ell)$ et
$$ad - a'd' = a\,(d - d') + d'\,(a - a') = 5\,(a\ell + d'k).$$
Chercher les $x$ tels que $5$ divise $x^2 + bx + c$, c'est donc résoudre $x^2 + bx + c \equiv 0 \pmod{5}$.

**Étape 1 : faire apparaître un carré.** Développons :
$$(x + 3b)^2 = x^2 + 6bx + 9b^2 = \left(x^2 + bx + c\right) - \left(b^2 + c\right) + 5\left(bx + 2b^2\right).$$
Notons $D = b^2 + c$. On en tire
$$x^2 + bx + c = (x + 3b)^2 + D - 5\left(bx + 2b^2\right).$$
Les deux nombres $x^2 + bx + c$ et $(x + 3b)^2 + D$ diffèrent d'un multiple de $5$. Donc $5$ divise l'un exactement quand il divise l'autre. Posons $y = x + 3b$ : on cherche les $y$ tels que $y^2 + D \equiv 0 \pmod{5}$.

**Étape 2 : les restes d'un carré.** Le reste de $y^2$ ne dépend que du reste de $y$ :

| reste de $y$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| reste de $y^2$ | $0$ | $1$ | $4$ | $4$ | $1$ |

(car $9 = 5 + 4$ et $16 = 15 + 1$). Un carré a donc toujours pour reste $0$, $1$ ou $4$, jamais $2$ ni $3$.

**Étape 3 : on discute selon le reste $r$ de $D = b^2 + c$.** Il faut que $y^2 + D$ ait pour reste $0$, donc que le reste de $y^2$ soit $0$ si $r = 0$, et $5 - r$ sinon.

- Si $r = 2$ ou $r = 3$, le carré $y^2$ devrait avoir pour reste $3$ ou $2$. C'est impossible : **aucun entier $x$ ne convient.**
- Si $r = 0$, il faut $y^2 \equiv 0$, donc $y \equiv 0$ d'après le tableau.
- Si $r = 1$, il faut $y^2 \equiv 4$, donc $y \equiv 2$ ou $y \equiv 3$.
- Si $r = 4$, il faut $y^2 \equiv 1$, donc $y \equiv 1$ ou $y \equiv 4$.

**Étape 4 : retour à $x$.** On a $x = y - 3b$, et $-3b \equiv 2b \pmod{5}$ puisque $-3b - 2b = -5b$. Donc $x \equiv y + 2b$. De plus $3 \equiv -2$ et $4 \equiv -1$. On obtient :

| reste de $b^2 + c$ | condition sur $x$, modulo $5$ |
|---|---|
| $0$ | $x \equiv 2b$ |
| $1$ | $x \equiv 2b + 2$ ou $x \equiv 2b - 2$ |
| $4$ | $x \equiv 2b + 1$ ou $x \equiv 2b - 1$ |
| $2$ ou $3$ | aucun $x$ ne convient |

**Vérification sur l'exemple.** Pour $b = 2$ et $c = 0$, on a $b^2 + c = 4$, donc $x \equiv 4 + 1 = 5 \equiv 0$ ou $x \equiv 4 - 1 = 3$. Ce sont bien les entiers $x$ de la forme $5k$ ou $5k + 3$, et l'on retrouve $x = 0$ et $x = 3$.

**Conclusion.** Il existe des entiers $x$ qui conviennent si et seulement si le reste de $b^2 + c$ dans la division par $5$ vaut $0$, $1$ ou $4$. Ces entiers $x$ sont alors donnés par le tableau ci-dessus : une seule classe de restes quand $b^2 + c$ est un multiple de $5$, deux classes sinon.

## Going further

1. Combien de couples de restes $(b, c)$, parmi les $25$ possibles, donnent une équation sans solution ?
2. Faites la même étude pour les multiples de $7$. Quel nombre joue alors le rôle de $3$ ?
