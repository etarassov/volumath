---
id: "5216"
title: "Quatre nombres et leurs six sommes deux à deux"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [parite, systeme, somme, raisonnement-par-labsurde]
adapted_from: null
see_also: ["7923"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par_extra.pdf, « More Parity problems », problème 4"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par_extra.pdf"
---

## Statement

On prend quatre nombres $a$, $b$, $c$, $d$ et on calcule leurs six sommes deux à deux, c'est-à-dire

$$a+b, \quad a+c, \quad a+d, \quad b+c, \quad b+d, \quad c+d .$$

On aimerait obtenir, dans un ordre quelconque, les six valeurs

$$2, \quad 4, \quad 9, \quad 9, \quad 14, \quad 16 .$$

1. Montrer que c'est impossible si $a$, $b$, $c$, $d$ sont des entiers.
2. Trouver quatre nombres réels $a$, $b$, $c$, $d$ qui conviennent.

## Hints

1. Pour la question 1, comptez combien de sommes deux à deux sont **impaires**. Ici il y en a exactement deux, les deux $9$.
2. Si parmi $a$, $b$, $c$, $d$ il y a $p$ nombres pairs et $q$ nombres impairs (avec $p + q = 4$), une somme de deux d'entre eux est impaire exactement quand elle associe un pair et un impair. Combien cela fait-il de sommes impaires ?
3. Passez en revue les cinq cas $p = 0, 1, 2, 3, 4$ et notez le nombre de sommes impaires obtenu à chaque fois.
4. Pour la question 2, additionnez les six sommes. Combien de fois chacun des quatre nombres y apparaît-il ?
5. Rangez ensuite $a \leqslant b \leqslant c \leqslant d$. La plus petite des six sommes et la plus grande sont alors faciles à identifier, ainsi que la deuxième plus petite et la deuxième plus grande.

## Solution

### 1. Impossible avec des entiers

Supposons $a$, $b$, $c$, $d$ entiers. Notons $p$ le nombre de pairs et $q$ le nombre d'impairs parmi eux, avec $p + q = 4$.

Une somme de deux de ces nombres est impaire exactement lorsqu'elle associe un nombre pair et un nombre impair : pair $+$ pair et impair $+$ impair donnent des résultats pairs.

Le nombre de sommes impaires vaut donc $p \times q$. Passons en revue les possibilités :

| $p$ | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| $q$ | 4 | 3 | 2 | 1 | 0 |
| $p \times q$ | 0 | 3 | 4 | 3 | 0 |

Le nombre de sommes impaires vaut donc toujours $0$, $3$ ou $4$.

Or la liste donnée, $2, 4, 9, 9, 14, 16$, contient exactement **deux** nombres impairs, les deux $9$.

**C'est donc impossible avec des entiers.**

### 2. Une solution avec des nombres réels

**La somme des quatre nombres.** Additionnons les six sommes deux à deux. Chacun des quatre nombres apparaît dans exactement trois d'entre elles (il se combine avec chacun des trois autres), donc

$$3(a+b+c+d) = 2 + 4 + 9 + 9 + 14 + 16 = 54, \qquad \text{d'où} \qquad a+b+c+d = 18 .$$

**Identifier les sommes.** Rangeons les quatre nombres : $a \leqslant b \leqslant c \leqslant d$. Alors

- la plus petite des six sommes est $a + b$, donc $a + b = 2$ ;
- la plus grande est $c + d$, donc $c + d = 16$ ;
- la deuxième plus petite est $a + c$ : en effet toute autre somme contient $b$ ou $c$ à la place de $a$, ou $d$ à la place de $c$, donc lui est supérieure ou égale. Donc $a + c = 4$ ;
- de même la deuxième plus grande est $b + d$, donc $b + d = 14$.

Les deux sommes restantes, $a + d$ et $b + c$, valent donc les deux $9$.

*(Contrôle : $(a+b) + (c+d) = 18$ et $(a+c) + (b+d) = 18$, ce qui est cohérent avec $a+b+c+d = 18$.)*

**Résolution.** De $a + b = 2$ et $a + c = 4$ on tire $c = b + 2$. En reportant dans $b + c = 9$ :

$$b + (b+2) = 9, \qquad 2b = 7, \qquad b = \frac72 .$$

Puis $c = \dfrac{11}{2}$, $a = 2 - b = -\dfrac32$, et enfin $d = 18 - (a+b+c) = 18 - \dfrac{15}{2} = \dfrac{21}{2}$.

**Vérification.** Avec $a = -\dfrac32$, $b = \dfrac72$, $c = \dfrac{11}{2}$, $d = \dfrac{21}{2}$ :

$$a+b = 2, \quad a+c = 4, \quad a+d = 9, \quad b+c = 9, \quad b+d = 14, \quad c+d = 16 .$$

Les six valeurs demandées sont bien obtenues. En écriture décimale, les quatre nombres sont −1,5 ; 3,5 ; 5,5 et 10,5.

## Going further

La question 1 illustre une règle utile : le nombre de sommes impaires que l'on peut fabriquer avec quatre entiers ne prend que trois valeurs, $0$, $3$ ou $4$. Beaucoup d'énoncés « peut-on obtenir cette liste ? » se règlent ainsi, sans jamais résoudre le système.
