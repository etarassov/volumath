---
id: "7037"
title: "Dix zéros au bout d'une factorielle"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorielle, valuation, nombres-premiers]
adapted_from: null
see_also: ["4220"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique matin (Vincent Jugé), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

On rappelle que $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Quel est le plus petit entier naturel $n$ tel que l'écriture décimale de $n!$ se termine par
**au moins dix zéros** ?

## Hints

1. Le nombre de zéros à la fin d'un nombre, c'est le nombre de facteurs $10$ qu'on peut en
   sortir, et $10 = 2 \times 5$.
2. Dans $n!$, y a-t-il plus de facteurs $2$ ou plus de facteurs $5$ ? Lequel des deux limite ?
3. Il suffit donc de compter les facteurs $5$ dans $n!$. Combien y en a-t-il, pour $n$ donné ?
4. N'oublie pas que $25$ apporte deux facteurs $5$ à lui tout seul.

## Solution

**Ce qu'il faut compter.**

Le nombre de zéros terminant $n!$ est le plus grand exposant $z$ tel que $10^z$ divise $n!$.
Comme $10 = 2 \times 5$, il vaut
$$z = \min\left(\text{nombre de facteurs } 2 \text{ dans } n!,\ \text{nombre de facteurs } 5
\text{ dans } n!\right) .$$

Dans le produit $1 \times 2 \times \cdots \times n$, il y a beaucoup plus de multiples de $2$
que de multiples de $5$. Le minimum est donc atteint par les facteurs $5$ : **il suffit de
compter les facteurs $5$.**

**Compter les facteurs 5 dans $n!$.**

Parmi $1, 2, \ldots, n$ :

- les multiples de $5$ apportent chacun (au moins) un facteur $5$, et il y en a
  $\left\lfloor \dfrac{n}{5} \right\rfloor$ ;
- les multiples de $25$ en apportent un **de plus**, et il y en a
  $\left\lfloor \dfrac{n}{25} \right\rfloor$ ;
- les multiples de $125$ encore un de plus, etc.

Donc le nombre de facteurs $5$ dans $n!$ vaut
$$v(n) = \left\lfloor \frac{n}{5} \right\rfloor + \left\lfloor \frac{n}{25} \right\rfloor
 + \left\lfloor \frac{n}{125} \right\rfloor + \cdots$$

**Chercher le plus petit $n$ avec $v(n) \geq 10$.**

La fonction $v$ ne croît que lorsque $n$ franchit un multiple de $5$ : il suffit donc de
tester les multiples de $5$.

| $n$ | $\lfloor n/5 \rfloor$ | $\lfloor n/25 \rfloor$ | $v(n)$ |
|---|---|---|---|
| $25$ | $5$ | $1$ | $6$ |
| $30$ | $6$ | $1$ | $7$ |
| $35$ | $7$ | $1$ | $8$ |
| $40$ | $8$ | $1$ | $9$ |
| $45$ | $9$ | $1$ | $10$ |

Pour $n = 45$ on atteint $10$ pour la première fois. Et pour $n \leq 44$, on a
$\left\lfloor n/5 \right\rfloor \leq 8$, $\left\lfloor n/25 \right\rfloor \leq 1$ et
$\left\lfloor n/125 \right\rfloor = 0$, donc $v(n) \leq 9$.

**Conclusion.** Le plus petit entier cherché est $\boxed{n = 45}$.

## Going further

Remarque un phénomène amusant : $v(n)$ passe de $4$ (pour $n = 20$) à $6$ (pour $n = 25$), en
sautant la valeur $5$. **Aucune factorielle ne se termine par exactement cinq zéros.** C'est
$25$ qui, apportant deux facteurs $5$ d'un coup, fait sauter une marche.

Quelles sont les autres valeurs jamais atteintes par $v$ ?
