---
id: "0554"
title: "Le dernier chiffre d'une tour de 7"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [puissances, dernier-chiffre, restes, periodicite, divisibilite]
adapted_from: null
see_also: ["0284"]
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 11 «В целых числах», задача 4"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Par quel chiffre se termine le nombre

$$7^{\,7^{\,7}} \quad ?$$

Attention à l'ordre des opérations : il s'agit de $7$ élevé à la puissance $7^7$, c'est-à-dire $7^{823\,543}$, et non de $(7^7)^7$.

## Hints

1. Calculer les derniers chiffres de $7^1$, $7^2$, $7^3$, $7^4$, $7^5$, $7^6$. Que remarque-t-on ?
2. Pour passer d'une puissance à la suivante, on multiplie par $7$ : le dernier chiffre du résultat ne dépend que du dernier chiffre de la puissance précédente. La suite des derniers chiffres se répète donc, et on peut voir avec quelle période.
3. Le dernier chiffre de $7^n$ ne dépend alors que du **reste de $n$ dans la division par $4$**. Il reste à trouver le reste de $7^7$ dans la division par $4$.
4. $7^2 = 49 = 4 \times 12 + 1$. Écrire $7^7 = (7^2)^3 \times 7$ et en déduire ce reste.

## Solution

**Première étape : les derniers chiffres des puissances de 7.**

Le dernier chiffre d'un produit ne dépend que des derniers chiffres des facteurs. Pour passer de $7^n$ à $7^{n+1}$ on multiplie par $7$ : il suffit donc de multiplier le dernier chiffre par $7$ et de garder le dernier chiffre du résultat.

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $7^n$ | $7$ | $49$ | $343$ | $2401$ | $\ldots$ | $\ldots$ | $\ldots$ | $\ldots$ |
| dernier chiffre | $7$ | $9$ | $3$ | $1$ | $7$ | $9$ | $3$ | $1$ |

Dès que le dernier chiffre $1$ réapparaît, tout recommence à l'identique. La suite des derniers chiffres est donc **périodique de période $4$** :

$$7,\; 9,\; 3,\; 1,\; 7,\; 9,\; 3,\; 1,\; \ldots$$

Autrement dit, le dernier chiffre de $7^n$ ne dépend que du reste de $n$ dans la division par $4$ :

| reste de $n$ par $4$ | $1$ | $2$ | $3$ | $0$ |
|---|---|---|---|---|
| dernier chiffre de $7^n$ | $7$ | $9$ | $3$ | $1$ |

**Deuxième étape : le reste de $7^7$ dans la division par $4$.**

Ici l'exposant est $n = 7^7$. Il n'est pas question de le calculer en entier : on n'a besoin que de son reste dans la division par $4$.

Partons de

$$7^2 = 49 = 4 \times 12 + 1.$$

Donc $49$ laisse le reste $1$ dans la division par $4$. Écrivons

$$7^7 = 7^{2+2+2+1} = (7^2)^3 \times 7 = 49^3 \times 7.$$

Le reste d'un produit dans la division par $4$ ne dépend que des restes des facteurs. En effet, si $x = 4q + r$ et $y = 4q' + r'$, alors

$$xy = 4\,(4qq' + qr' + q'r) + rr',$$

et $xy$ a donc le même reste que $rr'$.

Comme $49$ a pour reste $1$, le nombre $49^3$ a le même reste que $1 \times 1 \times 1 = 1$ : son reste est $1$. Alors $49^3 \times 7$ a le même reste que $1 \times 7 = 7$, c'est-à-dire le même reste que $7$, à savoir

$$7 = 4 \times 1 + 3 \quad \Longrightarrow \quad \text{reste } 3.$$

Donc $7^7$ laisse le reste $3$ dans la division par $4$.

**Conclusion.**

L'exposant $7^7$ a pour reste $3$ dans la division par $4$. D'après le tableau de la première étape, le dernier chiffre de $7^{7^7}$ est donc

$$\boxed{3}.$$

**L'idée à retenir.** Pour un dernier chiffre, on ne regarde jamais le nombre en entier : on cherche d'abord la période de la suite des derniers chiffres, puis on réduit l'exposant à son reste modulo cette période.

## Going further

1. Par quel chiffre se termine $3^{\,3^{\,3}}$ ?
2. Par quels **deux** chiffres se termine $7^{\,7^{\,7}}$ ? (Regarder les deux derniers chiffres de $7^1$, $7^2$, $7^3$, $7^4$, $7^5$ : la période est encore $4$.)
3. Par quel chiffre se termine $2^{\,2^{\,2^{\,2}}}$ ?
