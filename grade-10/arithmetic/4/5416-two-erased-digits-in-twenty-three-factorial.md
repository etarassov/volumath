---
id: "5416"
title: "Deux chiffres effacés dans 23!"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, divisibilite, critere-par-neuf, critere-par-onze, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « What's Your Theory? », problème 1"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

On rappelle la notation $23! = 1 \times 2 \times 3 \times \cdots \times 23$.

L'écriture décimale de $23!$ comporte $23$ chiffres. La voici, avec deux chiffres effacés, remplacés par $a$ et $b$ :

$$23! = 2585201\,a\,b\,38884976640000 .$$

Retrouver les chiffres $a$ et $b$, sans calculer $23!$.

## Hints

1. Un produit qui contient les facteurs $3$ et $6$ est un multiple de $18$, donc de $9$. Que dit le critère de divisibilité par $9$ ?
2. Ce critère donne une condition sur $a + b$, mais elle laisse plusieurs possibilités. Il faut une deuxième condition.
3. Le facteur $11$ apparaît dans le produit $1 \times 2 \times \cdots \times 23$. Connaissez-vous le critère de divisibilité par $11$ ?
4. Critère par $11$ : on additionne les chiffres de rang impair, puis ceux de rang pair, et la différence des deux sommes doit être un multiple de $11$.
5. Prenez garde à bien repérer le rang de $a$ et celui de $b$ : ils ne sont pas du même côté.

## Solution

### Deux diviseurs bien choisis

Le produit $1 \times 2 \times \cdots \times 23$ contient les facteurs $3$ et $6$, dont le produit vaut $18 = 2 \times 9$ : donc $23!$ est un **multiple de 9**.

Il contient aussi le facteur $11$ : donc $23!$ est un **multiple de 11**.

Chacune de ces deux remarques va donner une équation.

### La condition donnée par 9

Un entier est un multiple de $9$ si et seulement si la somme de ses chiffres est un multiple de $9$.

Additionnons les chiffres connus :

$$2+5+8+5+2+0+1 = 23,$$
$$3+8+8+8+4+9+7+6+6+4 = 63,$$

et les quatre zéros de la fin n'apportent rien. La somme de tous les chiffres vaut donc

$$23 + 63 + a + b = 86 + a + b .$$

Comme $86 = 9 \times 9 + 5$, il faut que $5 + a + b$ soit un multiple de $9$, c'est-à-dire que $a+b$ soit égal à $4$ ou à $13$ (les valeurs suivantes, $22$ et au-delà, sont impossibles puisque $a + b \le 18$).

### La condition donnée par 11

Un entier est un multiple de $11$ si et seulement si la différence entre la somme de ses chiffres de rang impair et la somme de ses chiffres de rang pair est un multiple de $11$. (La raison : $10$ laisse le reste $-1$ dans la division par $11$, donc $100$ laisse le reste $1$, $1000$ le reste $-1$, et ainsi de suite en alternant.)

Numérotons les $23$ chiffres de gauche à droite :

| rang | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| chiffre | $2$ | $5$ | $8$ | $5$ | $2$ | $0$ | $1$ | $a$ | $b$ | $3$ | $8$ | $8$ |

| rang | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| chiffre | $8$ | $4$ | $9$ | $7$ | $6$ | $6$ | $4$ | $0$ | $0$ | $0$ | $0$ |

Le chiffre $a$ est au rang $8$, donc de rang pair ; le chiffre $b$ est au rang $9$, donc de rang impair.

- Chiffres de rang impair : $2, 8, 2, 1, b, 8, 8, 9, 6, 4, 0, 0$, de somme $48 + b$.
- Chiffres de rang pair : $5, 5, 0, a, 3, 8, 4, 7, 6, 0, 0$, de somme $38 + a$.

La différence vaut

$$(48 + b) - (38 + a) = 10 + b - a ,$$

et elle doit être un multiple de $11$. Or $a$ et $b$ sont des chiffres, donc $b - a$ est compris entre $-9$ et $9$, et $10 + b - a$ est compris entre $1$ et $19$. Le seul multiple de $11$ dans cet intervalle est $11$ lui-même, d'où

$$b - a = 1 .$$

### Les deux conditions ensemble

Il faut $b = a + 1$, et $a + b$ égal à $4$ ou à $13$.

- Si $a + b = 4$ : alors $a + (a+1) = 4$, donc $2a = 3$, ce qui est impossible pour un chiffre entier.
- Si $a + b = 13$ : alors $2a + 1 = 13$, donc $a = 6$ et $b = 7$.

**Conclusion.**

$$a = 6, \qquad b = 7, \qquad 23! = 25\,852\,016\,738\,884\,976\,640\,000 .$$

**Vérification rapide.** La somme des chiffres vaut $86 + 13 = 99$, qui est bien un multiple de $9$. Et la différence des deux sommes vaut $(48+7) - (38+6) = 55 - 44 = 11$, qui est bien un multiple de $11$.

## Going further

1. Pourquoi l'écriture de $23!$ se termine-t-elle par exactement quatre zéros ? (Comptez les facteurs $5$ dans le produit.)
2. Le critère par $9$ et le critère par $11$ ont suffi ici. Auraient-ils suffi si les deux chiffres effacés avaient été voisins de rangs $8$ et $10$, donc tous les deux de rang pair ?
3. $23!$ est aussi un multiple de $7$, de $13$, de $17$, de $19$ et de $23$. Ces informations sont-elles utilisables aussi facilement ?
