---
id: "12213"
title: "Les entiers amusants"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, diviseurs, nombre-de-diviseurs, restes, divisibilite-par-3, divisibilite-par-5, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe B et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier-junior.pdf, exercice 3 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-junior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier-junior.pdf"
---

## Statement

On dit qu'un entier $n \geqslant 1$ est **amusant** si, pour chaque diviseur positif $d$ de $n$, le nombre $d + 2$ est premier.

Par exemple, $15$ est amusant : ses diviseurs sont $1$, $3$, $5$, $15$, et $3$, $5$, $7$, $17$ sont premiers. Par contre, $7$ n'est pas amusant, car $7 + 2 = 9$ n'est pas premier.

Trouver tous les entiers amusants qui ont le plus grand nombre possible de diviseurs.

## Hints

1. Si $p$ est un diviseur premier de $n$, alors $p + 2$ doit être premier. Regarde le reste de la division de $p$ par $3$ lorsque $p \geqslant 5$.
2. Montre qu'un entier amusant ne peut avoir qu'un seul diviseur premier différent de $3$, et seulement à la puissance $1$. Pense aux diviseurs $p^2$ et $pq$.
3. Jusqu'à quelle puissance de $3$ peut-on monter ? Essaie $3 + 2$, $9 + 2$, $27 + 2$, …
4. Pour $n = 3^a p$ avec $p \geqslant 7$, regarde les restes de $p$, $3p$, $9p$, $27p$ dans la division par $5$.

## Solution

Soit $n$ un entier amusant. On va appliquer la règle « $d + 2$ est premier » à des diviseurs $d$ de $n$ bien choisis.

**Étape 1. Les diviseurs premiers de $n$.**

Soit $p$ un diviseur premier de $n$. Alors $p + 2$ est premier, donc $p \neq 2$ (car $4$ n'est pas premier).

Supposons $p \geqslant 5$. Alors $p$ n'est pas un multiple de $3$. Si le reste de $p$ dans la division par $3$ était $1$, le nombre $p + 2$ serait un multiple de $3$ plus grand que $3$, donc pas premier. Ainsi **tout diviseur premier $p \geqslant 5$ de $n$ s'écrit $p = 3j + 2$**.

**Étape 2. Au plus un tel diviseur, et une seule fois.**

Un produit de deux nombres de la forme $3j + 2$ a pour reste $1$ dans la division par $3$, puisque $(3j + 2)(3j' + 2) = 3(3jj' + 2j + 2j') + 4$ et $4 = 3 + 1$.

- Si $p^2$ divisait $n$, le nombre $p^2 + 2$ serait un multiple de $3$ plus grand que $3$, donc pas premier.
- Si deux nombres premiers différents $p, q \geqslant 5$ divisaient $n$, alors $pq$ diviserait $n$, et $pq + 2$ serait un multiple de $3$ plus grand que $3$.

Donc $n = 3^a$ ou $n = 3^a p$, avec $a \geqslant 0$ et $p \geqslant 5$ premier.

**Étape 3. La puissance de $3$.**

Le nombre $3^a$ divise $n$, donc $3^a + 2$ est premier. Or

$$1 + 2 = 3, \quad 3 + 2 = 5, \quad 9 + 2 = 11, \quad 27 + 2 = 29, \quad 81 + 2 = 83$$

sont premiers, mais $243 + 2 = 245 = 5 \times 49$ ne l'est pas. Si $a \geqslant 5$, alors $243$ divise $n$, ce qui est exclu. Donc $a \leqslant 4$.

- $n = 3^a$ a $a + 1 \leqslant 5$ diviseurs : $1, 3, \ldots, 3^a$.
- $n = 3^a p$ a $2(a + 1)$ diviseurs : les $3^i$ et les $3^i p$ pour $0 \leqslant i \leqslant a$.

**Étape 4. Le cas $p = 5$.**

Si $a = 4$, alors $n = 81 \times 5 = 405$ est un diviseur de lui-même, et $407 = 11 \times 37$ n'est pas premier. Donc $a \leqslant 3$, et $n$ a au plus $2 \times 4 = 8$ diviseurs, avec égalité seulement pour $n = 27 \times 5 = 135$.

**Étape 5. Le cas $p \geqslant 7$ : alors $a \leqslant 2$.**

Supposons $a \geqslant 3$. Alors $p$, $3p$, $9p$ et $27p$ divisent $n$. Le nombre premier $p \geqslant 7$ n'est pas un multiple de $5$ ; notons $r$ son reste dans la division par $5$. Les restes de $3p$, $9p$, $27p$ sont ceux de $3r$, $9r$, $27r$, ce qui donne le tableau suivant.

| reste de $p$ | reste de $3p$ | reste de $9p$ | reste de $27p$ |
|---|---|---|---|
| $1$ | $3$ | $4$ | $2$ |
| $2$ | $1$ | $3$ | $4$ |
| $3$ | $4$ | $2$ | $1$ |
| $4$ | $2$ | $1$ | $3$ |

Dans chaque ligne, le reste $3$ apparaît. L'un des quatre diviseurs $d$ a donc pour reste $3$, et $d + 2$ est un multiple de $5$. Comme $d \geqslant 7$, on a $d + 2 > 5$, donc $d + 2$ n'est pas premier : contradiction.

Donc $a \leqslant 2$, et $n$ a au plus $2 \times 3 = 6$ diviseurs.

**Étape 6. Conclusion.**

Un entier amusant a donc au plus $8$ diviseurs, et seul $135$ peut en avoir $8$. Vérifions que $135$ est amusant : ses diviseurs sont $1, 3, 5, 9, 15, 27, 45, 135$, et

$$3, \quad 5, \quad 7, \quad 11, \quad 17, \quad 29, \quad 47, \quad 137$$

sont tous premiers (pour $137$, il suffit de voir qu'il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$, ni par $11$, car $13^2 = 169 > 137$).

**Réponse : un seul entier amusant a le plus grand nombre de diviseurs, c'est $135 = 3^3 \times 5$, qui en a $8$.**

## Going further

Avec un ordinateur, on trouve que les entiers amusants ayant $6$ diviseurs sont nombreux ($45$, $261$, $2151$, $2421$, …), alors que $9$ et $81$ sont les seuls à en avoir $3$ et $5$. Peux-tu expliquer pourquoi, avec ce qui précède ?
