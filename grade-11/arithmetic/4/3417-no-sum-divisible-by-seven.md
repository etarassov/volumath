---
id: "3417"
title: "Aucune somme divisible par 7"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [restes, divisibilite, principe-des-tiroirs, maximum, ensembles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 2: Divisibility and Modular Arithmetic"
  reference: "Handout-3695-3278.pdf, section 2.2, problème 3 (réponse dans Handout-3712-3278.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3695-3278.pdf"
---

## Statement

Soit $S$ une partie de $\{1, 2, 3, \ldots, 50\}$ telle que la somme de deux éléments **distincts** de $S$ ne soit jamais divisible par $7$.

Quel est le plus grand nombre d'éléments que $S$ peut contenir ? Donne un exemple d'une telle partie de taille maximale.

## Hints

1. Ce qui compte pour la divisibilité d'une somme par $7$, ce n'est pas la valeur des nombres, mais leur reste dans la division par $7$. Range les $50$ nombres en sept paquets selon ce reste.
2. Compte soigneusement combien de nombres de $1$ à $50$ tombent dans chaque paquet. Un paquet est plus gros que les autres.
3. Deux nombres de restes $r$ et $r'$ ont une somme divisible par $7$ exactement quand $r + r'$ vaut $0$ ou $7$. Quels paquets sont donc incompatibles entre eux ?
4. Le paquet des multiples de $7$ mérite une attention particulière : combien peux-tu en prendre ?

## Solution

**L'idée : trier les nombres par leur reste dans la division par $7$, puis remarquer que les paquets se neutralisent deux à deux.**

**Étape 1. Les sept paquets.**

Rangeons les nombres de $1$ à $50$ selon leur reste dans la division par $7$.

- Reste $1$ : $1, 8, 15, 22, 29, 36, 43, 50$, soit **$8$ nombres**.
- Reste $2$ : $2, 9, 16, 23, 30, 37, 44$, soit **$7$ nombres**.
- Reste $3$ : $3, 10, \ldots, 45$, soit **$7$ nombres**.
- Reste $4$ : $4, 11, \ldots, 46$, soit **$7$ nombres**.
- Reste $5$ : $5, 12, \ldots, 47$, soit **$7$ nombres**.
- Reste $6$ : $6, 13, \ldots, 48$, soit **$7$ nombres**.
- Reste $0$ : $7, 14, \ldots, 49$, soit **$7$ nombres**.

Total : $8 + 6\times 7 = 50$. Le compte est bon. Le paquet de reste $1$ est le seul à contenir $8$ nombres, parce que la liste s'arrête à $50$, qui est de reste $1$.

**Étape 2. Quels paquets s'interdisent mutuellement ?**

Si $u$ a le reste $r$ et $v$ le reste $r'$, alors $u + v$ a le même reste que $r + r'$. La somme est divisible par $7$ exactement quand $r + r'$ vaut $0$, $7$ ou $14$, c'est-à-dire quand les restes sont appariés ainsi :

$$\{1, 6\}, \qquad \{2, 5\}, \qquad \{3, 4\}, \qquad \{0, 0\}.$$

Donc :

- on ne peut pas prendre à la fois un nombre de reste $1$ et un nombre de reste $6$ ;
- de même pour $2$ et $5$, et pour $3$ et $4$ ;
- et on ne peut pas prendre **deux** nombres de reste $0$, car leur somme est divisible par $7$. On en prend donc au plus un.

En revanche, prendre plusieurs nombres dans un même paquet de reste $r$ avec $1 \leqslant r \leqslant 6$ ne pose aucun problème, sauf si $2r$ est divisible par $7$, ce qui n'arrive jamais pour $r$ entre $1$ et $6$ (car $7$ est premier et ne divise ni $2$ ni $r$).

**Étape 3. Le maximum.**

Pour chacune des trois paires $\{1,6\}$, $\{2,5\}$, $\{3,4\}$, on choisit un seul des deux paquets, et on prend tout ce paquet. On ajoute au plus un multiple de $7$. Au total, au plus

$$\max(8, 7) + \max(7,7) + \max(7,7) + 1 = 8 + 7 + 7 + 1 = 23.$$

**Étape 4. Un exemple qui atteint $23$.**

Prenons tous les nombres de reste $1$, tous ceux de reste $2$, tous ceux de reste $3$, et le seul nombre $7$ :

$$S = \{1, 8, 15, 22, 29, 36, 43, 50\} \cup \{2, 9, 16, 23, 30, 37, 44\} \cup \{3, 10, 17, 24, 31, 38, 45\} \cup \{7\}.$$

Vérifions qu'aucune somme de deux éléments distincts n'est divisible par $7$. Les restes présents sont $1$, $2$, $3$ et $0$. Les sommes de deux restes possibles valent
$$1+1 = 2, \quad 1+2 = 3, \quad 1+3 = 4, \quad 2+2 = 4, \quad 2+3 = 5, \quad 3+3 = 6, \quad 0+1 = 1, \quad 0+2 = 2, \quad 0+3 = 3,$$
et aucune n'est divisible par $7$. Comme il n'y a qu'un seul multiple de $7$ dans $S$, le cas $0+0$ ne se présente pas.

Cette partie compte $8 + 7 + 7 + 1 = 23$ éléments.

**Conclusion : $S$ peut contenir au plus $23$ éléments, et ce maximum est atteint.**
