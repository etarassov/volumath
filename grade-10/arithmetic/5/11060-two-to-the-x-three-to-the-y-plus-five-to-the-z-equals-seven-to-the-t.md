---
id: "11060"
title: "2ˣ·3ʸ + 5ᶻ = 7ᵗ"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [equation-diophantienne, restes, puissances, factorisation, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 9 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Le corrigé est très bref sur le troisième cas (il le ramène à l'équation du cas x = 1) ; on le traite ici directement par les restes modulo 3, 5 et 4."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Déterminer tous les quadruplets $(x, y, z, t)$ d'entiers strictement positifs tels que
$$2^x \cdot 3^y + 5^z = 7^t .$$

## Hints

1. Cherche une solution avec de petits nombres : quels carrés parfaits proches de $5^2 = 25$ connais-tu ?
2. Regarde l'équation dans la division par $3$ : que peux-tu dire de $z$ ? Puis dans la division par $4$, en séparant les cas $x = 1$ et $x \geqslant 2$.
3. Si $z$ et $t$ sont pairs, l'égalité $7^t - 5^z = 2^x \cdot 3^y$ est une différence de deux carrés. Factorise-la.
4. Les deux facteurs obtenus sont pairs. Que peut être leur plus grand diviseur commun ?

## Solution

**Réponse :** une seule solution, $(x, y, z, t) = (3, 1, 2, 2)$, car $8 \times 3 + 25 = 49$.

**L'outil.** Dans la division par un entier $m$, le reste d'une somme ou d'un produit ne dépend que des restes des termes ou des facteurs. Pour trouver le reste d'une puissance, on multiplie donc les restes de proche en proche. Voici les restes dont on aura besoin.

| reste de | $n = 1$ | $n = 2$ | $n = 3$ | $n = 4$ |
|---|---|---|---|---|
| $7^n$ par $3$ | 1 | 1 | 1 | 1 |
| $5^n$ par $3$ | 2 | 1 | 2 | 1 |
| $3^n$ et $7^n$ par $4$ | 3 | 1 | 3 | 1 |
| $5^n$ par $8$ | 5 | 1 | 5 | 1 |
| $7^n$ par $8$ | 7 | 1 | 7 | 1 |
| $3^n$ par $5$ | 3 | 4 | 2 | 1 |
| $2^n$ et $7^n$ par $5$ | 2 | 4 | 3 | 1 |

Dès qu'on retrouve le reste $1$, les restes recommencent dans le même ordre. Ainsi, dans les lignes 2 à 5, le reste ne dépend que de la parité de $n$, et dans les deux dernières lignes il se répète tous les $4$ crans. Par exemple, dans la division par $8$ : $5^2 = 25 = 3 \times 8 + 1$, puis $5^3$ a le même reste que $5 \times 1$, puis $5^4$ le même que $5 \times 5 = 25$, et ainsi de suite.

Dans toute la suite, $(x, y, z, t)$ est une solution.

**Étape 1 : $z$ est pair.**

Dans la division par $3$, le nombre $2^x \cdot 3^y$ a pour reste $0$ car $y \geqslant 1$, et $7^t$ a pour reste $1$. Donc $5^z$ a pour reste $1$, et d'après le tableau, $z$ est pair.

**Étape 2 : $x = 1$ est impossible.**

Supposons $x = 1$, donc $2 \cdot 3^y + 5^z = 7^t$.

- *Division par 4.* Le nombre $3^y$ est impair, donc $2 \cdot 3^y$ a pour reste $2$. Le nombre $5^z$ a pour reste $1$. Le membre de gauche a donc pour reste $3$, et $7^t$ aussi : $t$ est impair.
- *Division par 8.* Comme $z$ est pair, $5^z$ a pour reste $1$, et comme $t$ est impair, $7^t$ a pour reste $7$. Donc $2 \cdot 3^y$ a pour reste $6$ : on peut écrire $2 \cdot 3^y = 8k + 6$, d'où $3^y = 4k + 3$. Le reste de $3^y$ par $4$ vaut $3$, donc $y$ est impair.
- *Division par 5.* Le nombre $5^z$ a pour reste $0$. Comme $y$ est impair, $3^y$ a pour reste $3$ ou $2$, donc $2 \cdot 3^y$ a pour reste $1$ (car $6 = 5 + 1$) ou $4$. Comme $t$ est impair, $7^t$ a pour reste $2$ ou $3$. Les deux membres n'ont pas le même reste : c'est impossible.

Donc $x \geqslant 2$.

**Étape 3 : $t$ est pair, et une factorisation.**

Comme $x \geqslant 2$, le nombre $2^x \cdot 3^y$ est un multiple de $4$. Dans la division par $4$, le membre de gauche a donc pour reste $0 + 1 = 1$, donc $7^t$ aussi, et $t$ est pair.

Écrivons $z = 2c$ et $t = 2b$, avec $b, c \geqslant 1$. L'équation devient
$$2^x \cdot 3^y = 7^{2b} - 5^{2c} = A \times B \qquad \text{avec} \quad A = 7^b - 5^c \quad \text{et} \quad B = 7^b + 5^c .$$
On a $B > 0$, donc $A > 0$ aussi, et $B > A$. Les nombres $A$ et $B$ sont pairs (différence et somme de deux impairs), et ils divisent $2^x \cdot 3^y$, donc ils n'ont pas d'autres facteurs premiers que $2$ et $3$.

**Étape 4 : le plus grand diviseur commun de $A$ et $B$ vaut 2.**

Un diviseur commun de $A$ et $B$ divise $B - A = 2 \cdot 5^c$ et $B + A = 2 \cdot 7^b$. Or un diviseur commun de $2 \cdot 5^c$ et de $2 \cdot 7^b$ ne peut contenir ni $5$, ni $7$, ni $2^2$ : il vaut $1$ ou $2$. Comme $A$ et $B$ sont pairs, $\mathrm{PGCD}(A, B) = 2$.

En particulier, $4$ ne divise pas à la fois $A$ et $B$, donc l'un des deux contient exactement un facteur $2$. Et $3$ ne divise pas à la fois $A$ et $B$, donc tous les facteurs $3$ sont dans un seul des deux. Il y a deux possibilités.

- Le nombre qui contient un seul facteur $2$ n'est pas celui qui contient les $3$. Il vaut alors $2$, et l'autre vaut $2^{x-1} \cdot 3^y$. Comme $B \geqslant 7 + 5 = 12$, c'est $A = 2$ et $B = 2^{x-1} \cdot 3^y$.
- C'est le même. Alors $A$ et $B$ sont, dans un ordre ou dans l'autre, $2 \cdot 3^y$ et $2^{x-1}$.

**Étape 5 : premier cas, $A = 2$.**

On cherche $b, c \geqslant 1$ avec $7^b - 5^c = 2$. Si $c \geqslant 2$, alors $25$ divise $5^c$, donc $7^b$ a pour reste $2$ dans la division par $25$. Mais les restes de $7^b$ par $25$ sont
$$7, \quad 49 - 25 = 24, \quad 24 \times 7 = 168 = 6 \times 25 + 18, \quad 18 \times 7 = 126 = 5 \times 25 + 1,$$
puis on recommence : $7, 24, 18, 1, \ldots$ Le reste $2$ n'apparaît jamais. Donc $c = 1$, puis $7^b = 7$ et $b = 1$.

Alors $B = 7 + 5 = 12 = 2^2 \times 3$, donc $x - 1 = 2$ et $y = 1$. On obtient $x = 3$, $y = 1$, $z = 2c = 2$, $t = 2b = 2$.

**Étape 6 : second cas, impossible.**

Ici $A + B = 2 \cdot 3^y + 2^{x-1}$. Or $A + B = 2 \cdot 7^b$. En divisant par $2$ et en posant $u = x - 2 \geqslant 0$ :
$$7^b = 3^y + 2^u . \qquad (\star)$$
De plus $B - A = 2 \cdot 5^c$ vaut $2 \cdot 3^y - 2^{x-1}$ ou son opposé, donc $5^c$ vaut $3^y - 2^u$ ou son opposé : $5$ divise $3^y - 2^u$.

- *Division par 3 de $(\star)$.* Le nombre $7^b$ a pour reste $1$, et $3^y$ a pour reste $0$. Donc $2^u$ a pour reste $1$. Comme les restes de $2^u$ par $3$ sont $1, 2, 1, 2, \ldots$ pour $u = 0, 1, 2, 3, \ldots$, le nombre $u$ est pair.
- *Division par 5.* Comme $u$ est pair, $2^u$ est une puissance de $4$, et son reste par $5$ vaut $1$ ou $4$. Comme $5$ divise $3^y - 2^u$, le nombre $3^y$ a le même reste, $1$ ou $4$, ce qui d'après le tableau force $y$ pair. Ensuite, dans $(\star)$, le membre de droite a le même reste que $2^u + 2^u = 2^{u+1}$, et le membre de gauche a le même reste que $2^b$. Les restes des puissances de $2$ par $5$ se répètent tous les $4$ crans, et deux exposants qui donnent le même reste ont donc la même parité. Ainsi $b$ et $u + 1$ ont la même parité : $b$ est impair.
- *Division par 4 de $(\star)$.* Comme $b$ est impair, $7^b$ a pour reste $3$. Comme $y$ est pair, $3^y$ a pour reste $1$. Il faudrait donc que $2^u$ ait pour reste $2$, c'est-à-dire $u = 1$. Mais $u$ est pair : contradiction.

**Conclusion.** La seule solution est $(x, y, z, t) = (3, 1, 2, 2)$, et elle convient bien : $2^3 \times 3 + 5^2 = 24 + 25 = 49 = 7^2$.

## Going further

Résoudre de la même façon $3^x + 4^y = 5^z$ en entiers strictement positifs.

*Réponse :* la seule solution est $(2, 2, 2)$, car $9 + 16 = 25$. La division par $4$ montre que $x$ est pair, et la division par $3$ que $z$ est pair. Avec $z = 2w$, on factorise $3^x = 5^{2w} - 4^y = (5^w - 2^y)(5^w + 2^y)$. Les deux facteurs sont des puissances de $3$, et leur différence $2^{y+1}$ n'est pas un multiple de $3$, donc le plus petit vaut $1$ : $5^w = 2^y + 1$.

Si $w$ est impair, $5^w - 1 = 4\,(5^{w-1} + 5^{w-2} + \cdots + 1)$, et la parenthèse est une somme de $w$ nombres impairs, donc elle est impaire. Comme $5^w - 1 = 2^y$, elle vaut $1$, d'où $w = 1$ et $y = 2$. Si $w$ est pair, $5^w - 1 = (5^{w/2} - 1)(5^{w/2} + 1)$ et le second facteur a pour reste $2$ dans la division par $4$ : étant une puissance de $2$, il vaudrait $2$, ce qui est impossible. Enfin $3^x = 5 + 4 = 9$ donne $x = 2$.
