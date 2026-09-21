---
id: "8316"
title: "Un diviseur commun à n + 2 et à n² + n + 5"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, combinaison-lineaire, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Divisibilité et PGCD » (Yohann), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Soient $a \geqslant 1$ et $n$ deux entiers tels que

$$a \mid n + 2 \qquad \text{et} \qquad a \mid n^2 + n + 5 .$$

Montrer que $a = 1$ ou $a = 7$.

*La notation $a \mid b$ se lit « $a$ divise $b$ ».*

## Hints

1. La règle de base : si $a$ divise deux nombres, il divise aussi leur somme, leur différence, et plus généralement toute combinaison du type « un multiple de l'un plus un multiple de l'autre ».
2. Ici $a$ divise $n+2$, qui est de degré $1$, et $n^2+n+5$, qui est de degré $2$. L'idée est de faire disparaître le $n^2$.
3. Multiplie $n+2$ par $n$ : que divise $a$ alors ?
4. $a$ divise $n^2 + 2n$ et $a$ divise $n^2 + n + 5$. Soustrais.
5. Tu obtiens que $a$ divise $n - 5$. Combine une dernière fois avec $a \mid n+2$.

## Solution

**On fait disparaître le terme en $n^2$.**

Comme $a \mid n+2$, on a aussi $a \mid n(n+2)$, c'est-à-dire

$$a \mid n^2 + 2n .$$

Par hypothèse, $a \mid n^2 + n + 5$. La différence de deux multiples de $a$ est un multiple de
$a$, donc

$$a \mid (n^2 + 2n) - (n^2 + n + 5) , \qquad \text{c'est-à-dire} \qquad a \mid n - 5 .$$

**On fait disparaître le terme en $n$.**

On sait maintenant que $a \mid n + 2$ et $a \mid n - 5$. Donc $a$ divise leur différence :

$$a \mid (n+2) - (n-5) = 7 .$$

**On conclut.**

Les diviseurs positifs de $7$ sont $1$ et $7$, et $a \geqslant 1$. Donc

$$a = 1 \qquad \text{ou} \qquad a = 7 .$$

## Going further

Les deux valeurs se produisent réellement, ce que l'énoncé ne demandait pas de vérifier mais qui
est instructif.

Prenons $n = 5$ : alors $n + 2 = 7$ et $n^2 + n + 5 = 25 + 5 + 5 = 35 = 5 \times 7$. Les deux
sont divisibles par $7$, donc $a = 7$ est bien atteint.

Prenons $n = 0$ : alors $n+2 = 2$ et $n^2+n+5 = 5$. Leur seul diviseur commun positif est $1$,
donc seul $a = 1$ est possible.

On peut aussi remarquer que le raisonnement calcule en fait le $\mathrm{PGCD}$ de $n+2$ et
$n^2+n+5$ : ce $\mathrm{PGCD}$ vaut $7$ si $n \equiv 5 \pmod 7$, et $1$ sinon.
