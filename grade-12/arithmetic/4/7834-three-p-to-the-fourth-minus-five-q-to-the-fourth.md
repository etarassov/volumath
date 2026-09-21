---
id: "7834"
title: "3p⁴ − 5q⁴ − 4r² = 26"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres premiers, congruences, residus quadratiques, petit theoreme de fermat]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de fin de parcours du mardi 25 août, groupe B, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les triplets de nombres premiers $(p, q, r)$ tels que
$$3p^4 - 5q^4 - 4r^2 = 26 .$$

## Hints

1. Une équation, trois inconnues, mais les inconnues sont des nombres **premiers** : c'est une
   contrainte énorme. La stratégie habituelle est de montrer qu'un petit nombre divise l'une
   des inconnues, donc lui est égal.
2. Les coefficients $3$ et $5$ sont là pour être utilisés : lis l'équation modulo $3$, puis
   modulo $5$.
3. Modulo $3$ : le terme $3p^4$ disparaît. Dresse la liste des valeurs possibles de $n^2$ et de
   $n^4$ modulo $3$, puis montre que $q$ ou $r$ doit être divisible par $3$.
4. Modulo $5$ : le terme $5q^4$ disparaît. Dresse la liste des $n^4$ modulo $5$ (surprise : il
   n'y a que deux valeurs) et celle des $n^2$ modulo $5$.
5. Une fois $p$ et $q$ trouvés, $r$ se calcule directement.

## Solution

**Étape 1 : modulo $3$.**

Réduisons l'équation modulo $3$. On a $3p^4 \equiv 0$, $-5 \equiv 1$, $-4 \equiv 2$ et
$26 \equiv 2$. L'équation devient
$$q^4 + 2r^2 \equiv 2 \pmod 3 . \qquad (1)$$

Les carrés modulo $3$ valent $0$ ou $1$ : si $3 \mid n$ alors $n^2 \equiv 0$, sinon
$n \equiv \pm 1$ et $n^2 \equiv 1$. Comme $n^4 = (n^2)^2$, on a de même $n^4 \equiv 0$ ou $1$,
avec $n^4 \equiv 1$ exactement quand $3 \nmid n$.

*Supposons que ni $q$ ni $r$ ne soit divisible par $3$.* Alors $q^4 \equiv 1$ et $r^2 \equiv 1$,
donc
$$q^4 + 2r^2 \equiv 1 + 2 = 3 \equiv 0 \pmod 3 ,$$
ce qui contredit $(1)$.

Donc $3$ divise $q$ ou $r$. Comme ce sont des nombres premiers, cela signifie $q = 3$ ou
$r = 3$.

*Si $r = 3$ :* $(1)$ devient $q^4 \equiv 2 \pmod 3$, impossible puisque $q^4$ vaut $0$ ou $1$
modulo $3$.

**Donc $q = 3$.**

**Étape 2 : modulo $5$.**

Réduisons maintenant modulo $5$. On a $5q^4 \equiv 0$, $-4 \equiv 1$ et $26 \equiv 1$. L'équation
devient
$$3p^4 + r^2 \equiv 1 \pmod 5 . \qquad (2)$$

Les puissances quatrièmes modulo $5$ :

| $n \bmod 5$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| $n^4 \bmod 5$ | $0$ | $1$ | $1$ | $1$ | $1$ |

(C'est le petit théorème de Fermat : $n^4 \equiv 1 \pmod 5$ dès que $5 \nmid n$.)

Et les carrés modulo $5$ :

| $n \bmod 5$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| $n^2 \bmod 5$ | $0$ | $1$ | $4$ | $4$ | $1$ |

Les seules valeurs possibles d'un carré sont donc $0$, $1$ et $4$.

*Supposons que $p$ ne soit pas divisible par $5$.* Alors $p^4 \equiv 1$, et $(2)$ donne
$$3 + r^2 \equiv 1 \pmod 5, \qquad \text{donc} \qquad r^2 \equiv -2 \equiv 3 \pmod 5 .$$

Or $3$ ne figure pas dans la liste des carrés modulo $5$. Contradiction.

**Donc $5$ divise $p$, et comme $p$ est premier, $p = 5$.**

**Étape 3 : on calcule $r$.**

On reporte $p = 5$ et $q = 3$ :
$$3 \times 5^4 - 5 \times 3^4 - 4r^2 = 26 ,$$
$$3 \times 625 - 5 \times 81 - 4r^2 = 26 ,$$
$$1875 - 405 - 4r^2 = 26 ,$$
$$1470 - 26 = 4r^2 , \qquad \text{donc} \qquad 4r^2 = 1444 , \qquad r^2 = 361 .$$

Donc $r = 19$, qui est bien un nombre premier.

**Conclusion.**

Le seul triplet solution est
$$\boxed{(p, q, r) = (5, 3, 19)} .$$

*Vérification.* $3 \times 625 = 1875$, $5 \times 81 = 405$, $4 \times 361 = 1444$, et
$1875 - 405 - 1444 = 26$.
