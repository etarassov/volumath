---
id: "7656"
title: "Quinze élèves et cent bâtons"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [principe des tiroirs, moyenne, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice sur les tiroirs avec moyenne"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Quinze élèves d'un club de maths ont tracé au tableau, à eux tous, exactement $100$ bâtons. Chaque élève en a tracé au moins un.

1. Démontrer qu'il y a un élève qui a tracé au moins $7$ bâtons.
2. Démontrer qu'il y a deux élèves qui ont tracé le même nombre de bâtons.

## Hints

1. Pour la première question, raisonnez par l'absurde : si tout le monde avait tracé au plus $6$ bâtons, quel serait le total maximum ?
2. Pour la deuxième question, raisonnez encore par l'absurde : supposez que les quinze nombres sont tous différents.
3. Quinze entiers strictement positifs tous différents : quelle est la plus petite valeur possible de leur somme ?
4. Comparez cette valeur minimale à $100$.

## Solution

### 1. Un élève a tracé au moins 7 bâtons

Raisonnons par l'absurde et supposons que **chaque** élève a tracé au plus $6$ bâtons.

Alors le total de tous les bâtons vaut au plus

$$15 \times 6 = 90 .$$

Or le total vaut $100$, et $100 > 90$. C'est impossible.

Notre supposition était donc fausse : **au moins un élève a tracé $7$ bâtons ou plus.**

*Remarque.* On peut aussi dire cela en termes de moyenne : la moyenne vaut $100 \div 15 \approx \text{6,67}$, donc au moins une valeur dépasse la moyenne, donc au moins une vaut $7$ ou plus (les nombres de bâtons sont des entiers).

### 2. Deux élèves ont tracé le même nombre de bâtons

Raisonnons à nouveau par l'absurde et supposons que les quinze nombres de bâtons sont **deux à deux différents**.

Rangeons-les dans l'ordre croissant : $n_1 < n_2 < \cdots < n_{15}$. Ce sont des entiers strictement positifs, tous différents.

Le plus petit vaut au moins $1$, donc $n_1 \geqslant 1$. Comme $n_2 > n_1$ et que ce sont des entiers, $n_2 \geqslant 2$. De proche en proche,

$$n_1 \geqslant 1, \quad n_2 \geqslant 2, \quad n_3 \geqslant 3, \quad \ldots, \quad n_{15} \geqslant 15 .$$

En additionnant ces quinze inégalités :

$$n_1 + n_2 + \cdots + n_{15} \;\geqslant\; 1 + 2 + 3 + \cdots + 15 \;=\; \frac{15 \times 16}{2} \;=\; 120 .$$

Le total serait donc au moins $120$, alors qu'il vaut $100$. C'est impossible.

Notre supposition était donc fausse : **deux élèves au moins ont tracé le même nombre de bâtons.** $\blacksquare$

## Going further

Les deux questions utilisent la même idée : on suppose le contraire de ce qu'on veut démontrer, on en tire une borne sur le total, et cette borne entre en conflit avec la valeur réelle. Dans le premier cas la borne est un **maximum** trop petit, dans le second un **minimum** trop grand.

**À quel moment la deuxième question cesse-t-elle d'être vraie ?** Il faudrait un total d'au moins $120$ pour que quinze nombres tous différents soient possibles. Avec $120$ bâtons exactement, la seule répartition sans répétition est $1, 2, 3, \ldots, 15$. Avec $121$, on a par exemple $1, 2, \ldots, 14, 16$. Donc la conclusion de la question 2 est vraie pour tout total strictement inférieur à $120$, et fausse au-delà.

**Et si on enlève l'hypothèse « au moins un bâton chacun » ?** La question 1 reste vraie à l'identique. La question 2 aussi, mais la borne change : avec des entiers positifs ou nuls tous différents, le minimum de la somme devient $0 + 1 + \cdots + 14 = 105$, ce qui est encore plus grand que $100$.
