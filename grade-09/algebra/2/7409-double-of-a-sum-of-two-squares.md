---
id: "7409"
title: "Le double d'une somme de deux carrés"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, carres, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 42 (résolu par Xavier Poulot-Cazajous)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On dit qu'un entier $n$ est une **somme de deux carrés** s'il existe deux entiers $a$ et $b$ tels
que $n = a^2 + b^2$. Par exemple $13 = 2^2 + 3^2$, et $9 = 3^2 + 0^2$.

Montrer que si $n$ est une somme de deux carrés, alors $2n$ en est une aussi.

## Hints

1. Commence par des exemples. $13 = 2^2 + 3^2$, et $26 = ?$ Essaie aussi $5 = 1^2 + 2^2$, puis
   $10$, puis $20$.
2. Dans tes exemples, regarde les deux nombres que tu as trouvés pour $2n$ et compare-les à $a$
   et $b$. Que valent leur somme et leur différence ?
3. Développe $(a+b)^2 + (a-b)^2$.

## Solution

**Quelques exemples d'abord.**

$13 = 2^2 + 3^2$, et $26 = 1^2 + 5^2$. Remarque que $1 = 3 - 2$ et $5 = 3 + 2$.

$5 = 1^2 + 2^2$, et $10 = 1^2 + 3^2$. Là encore $1 = 2 - 1$ et $3 = 2 + 1$.

C'est cette observation qu'il faut démontrer en général.

**La démonstration.**

Supposons que $n = a^2 + b^2$, avec $a$ et $b$ entiers. Développons :
$$(a+b)^2 = a^2 + 2ab + b^2,$$
$$(a-b)^2 = a^2 - 2ab + b^2.$$

En additionnant ces deux égalités, les termes $2ab$ et $-2ab$ se détruisent :
$$(a+b)^2 + (a-b)^2 = 2a^2 + 2b^2 = 2(a^2+b^2) = 2n.$$

**Conclusion.**

Les nombres $a+b$ et $a-b$ sont des entiers, et
$$2n = (a+b)^2 + (a-b)^2.$$

Donc $2n$ est bien une somme de deux carrés.

*(Si $a - b$ est négatif, ce n'est pas gênant : son carré est le même que celui de $b - a$.)*

## Going further

Et la réciproque ? Si $2n$ est une somme de deux carrés, $n$ en est-il une aussi ? Indication :
si $2n = x^2 + y^2$, montre d'abord que $x$ et $y$ ont la même parité, puis regarde
$\left(\dfrac{x+y}{2}\right)^2 + \left(\dfrac{x-y}{2}\right)^2$.
