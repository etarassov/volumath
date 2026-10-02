---
id: "12430"
title: "Si 5x + 6y et 6x + 5y sont des carrés, alors 11 divise x et y"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [carres, restes, divisibilite, onze]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 9 janvier 2019"
  reference: "2019-01_Test-09-01.pdf, exercices du groupe Junior, exercice 1 ; corrigé 2019-01_Test-09-01-Corrige.pdf (une coquille dans le calcul final du corrigé, corrigée ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/Test-09-01.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-01_Test-09-01.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers tels que $5x + 6y$ et $6x + 5y$ soient tous les deux des carrés
parfaits (c'est-à-dire des carrés d'entiers).

Montrer que $x$ et $y$ sont tous les deux divisibles par $11$.

## Hints

1. Additionne les deux carrés. Que remarques-tu ?
2. Fais la liste des restes possibles de $a^2$ dans la division par $11$, selon le reste de $a$.
3. Peut-on obtenir un multiple de $11$ en additionnant deux carrés qui ne sont pas eux-mêmes des
   multiples de $11$ ?
4. Une fois que tu sais que les deux carrés sont des multiples de $121$, exprime $x$ et $y$ à
   l'aide de ces deux carrés.

## Solution

Écrivons $5x + 6y = a^2$ et $6x + 5y = b^2$, avec $a$ et $b$ entiers.

### Étape 1 : $a^2 + b^2$ est un multiple de $11$

En additionnant,
$$a^2 + b^2 = 11x + 11y = 11(x + y).$$

### Étape 2 : les restes des carrés dans la division par $11$

Si $a = 11q + r$ avec $0 \leqslant r \leqslant 10$, alors
$a^2 = 121q^2 + 22qr + r^2 = 11(11q^2 + 2qr) + r^2$ : le carré $a^2$ a le même reste que $r^2$
dans la division par $11$. Il suffit donc de regarder $r = 0, 1, \ldots, 10$ :

| reste de $a$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| reste de $a^2$ | 0 | 1 | 4 | 9 | 5 | 3 | 3 | 5 | 9 | 4 | 1 |

(par exemple $5^2 = 25 = 2 \times 11 + 3$ et $7^2 = 49 = 4 \times 11 + 5$).

Deux remarques sur ce tableau :

- le reste de $a^2$ vaut $0$ seulement quand le reste de $a$ vaut $0$, c'est-à-dire quand $11$
  divise $a$ ;
- les restes non nuls possibles d'un carré sont $1, 3, 4, 5, 9$.

### Étape 3 : $a$ et $b$ sont des multiples de $11$

Supposons que $11$ ne divise pas $a$. Le reste de $a^2$ est alors $1$, $3$, $4$, $5$ ou $9$.
Pour que $a^2 + b^2$ soit un multiple de $11$, il faudrait que le reste de $b^2$ soit
respectivement $10$, $8$, $7$, $6$ ou $2$. Aucun de ces nombres n'est dans la deuxième ligne du
tableau : c'est impossible.

Donc $11$ divise $a$. Alors $a^2$ est un multiple de $11$, donc $b^2 = 11(x+y) - a^2$ aussi, et
d'après le tableau $11$ divise $b$. Écrivons $a = 11A$ et $b = 11B$.

### Étape 4 : on retrouve $x$ et $y$

On élimine $y$, puis $x$, entre les deux égalités de départ :
$$6b^2 - 5a^2 = 6(6x + 5y) - 5(5x + 6y) = 36x + 30y - 25x - 30y = 11x,$$
$$6a^2 - 5b^2 = 6(5x + 6y) - 5(6x + 5y) = 30x + 36y - 30x - 25y = 11y.$$
Avec $a^2 = 121A^2$ et $b^2 = 121B^2$, la première égalité donne $11x = 121(6B^2 - 5A^2)$, donc
$$x = 11(6B^2 - 5A^2),$$
et la seconde donne de même
$$y = 11(6A^2 - 5B^2).$$

**Les entiers $x$ et $y$ sont donc tous les deux divisibles par $11$.**

## Going further

Trouver des entiers $x$ et $y$, non tous les deux nuls, tels que $5x + 6y$ et $6x + 5y$ soient
des carrés parfaits.
