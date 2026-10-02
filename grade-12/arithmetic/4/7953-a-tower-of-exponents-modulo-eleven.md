---
id: "7953"
title: "Une tour d'exposants modulo 11"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, ordre-multiplicatif, petit-theoreme-de-fermat, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 26, niveau 1 (énoncé p. 281 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Quel est le reste de la division euclidienne de

$$2016^{\,2017^{2018}}$$

par $11$ ?

*Attention à la lecture de la tour : il s'agit de $2016$ élevé à la puissance $\left(2017^{2018}\right)$.*

## Hints

1. Commence par réduire la base : que vaut $2016$ modulo $11$ ?
2. Calcule les puissances successives de ce petit nombre modulo $11$ : $3^1$, $3^2$, $3^3$, … Au bout de combien d'étapes retombe-t-on sur $1$ ?
3. Les puissances se répètent donc avec une certaine période. L'exposant ne compte alors que par son reste modulo cette période. Quelle est-elle ?
4. Il reste à calculer $2017^{2018}$ modulo $5$. Recommence le même travail : réduis la base, puis cherche la période.

## Solution

**La réponse : le reste est $4$.**

**Étape 1 : on réduit la base modulo $11$.**

$$2016 = 11 \times 183 + 3 , \qquad \text{donc} \qquad 2016 \equiv 3 \pmod{11} .$$

Il s'agit donc de calculer $3^{\,N}$ modulo $11$, où $N = 2017^{2018}$.

**Étape 2 : la période des puissances de $3$ modulo $11$.**

$$3^1 = 3 , \quad 3^2 = 9 , \quad 3^3 = 27 \equiv 5 , \quad 3^4 \equiv 3 \times 5 = 15 \equiv 4 , \quad 3^5 \equiv 3 \times 4 = 12 \equiv 1 \pmod{11} .$$

On retombe sur $1$ au bout de $5$ étapes. Ensuite tout recommence : $3^6 \equiv 3$, $3^7 \equiv 9$, et ainsi de suite.

Autrement dit, $3^N$ ne dépend que du **reste de $N$ dans la division par $5$**. Plus précisément, si $N = 5q + s$ alors

$$3^N = \left(3^5\right)^q \times 3^s \equiv 1^q \times 3^s = 3^s \pmod{11} .$$

**Étape 3 : on calcule $N = 2017^{2018}$ modulo $5$.**

D'abord la base : $2017 = 5 \times 403 + 2$, donc $2017 \equiv 2 \pmod 5$. Il faut donc calculer $2^{2018}$ modulo $5$.

Les puissances de $2$ modulo $5$ :

$$2^1 = 2, \quad 2^2 = 4, \quad 2^3 = 8 \equiv 3 , \quad 2^4 \equiv 6 \equiv 1 \pmod 5 .$$

La période est $4$. Or $2018 = 4 \times 504 + 2$, donc

$$2^{2018} \equiv 2^2 = 4 \pmod 5 .$$

Ainsi $N \equiv 4 \pmod 5$.

**Étape 4 : on conclut.**

D'après l'étape 2, avec $s = 4$ :

$$2016^{\,2017^{2018}} \equiv 3^{\,N} \equiv 3^4 \equiv 4 \pmod{11} .$$

**Conclusion.** Le reste de la division euclidienne de $2016^{\,2017^{2018}}$ par $11$ est $\boxed{4}$.

## Going further

Le pas décisif de l'étape 2 est une conséquence du **petit théorème de Fermat** : comme $11$ est premier et ne divise pas $3$, on a $3^{10} \equiv 1 \pmod{11}$. Ici la période est même plus courte que $10$ : elle vaut $5$, qui est un diviseur de $10$. C'est toujours le cas — la période divise $p-1$.

Remarque surtout que l'exposant ne se réduit **pas** modulo $11$, mais modulo la période. Croire qu'on peut réduire l'exposant modulo $11$ est l'erreur classique sur ce type d'exercice.
