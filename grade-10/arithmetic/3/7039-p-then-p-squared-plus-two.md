---
id: "7039"
title: "p, puis p² + 2, puis p³ + 2"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres premiers, congruences, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique matin (Vincent Jugé), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $p$ un nombre premier tel que $p^2 + 2$ soit lui aussi premier.

Montrer qu'alors $p^3 + 2$ est également premier.

## Hints

1. Commence par essayer quelques petits nombres premiers : $p = 2$, $p = 3$, $p = 5$, $p = 7$.
   Que remarques-tu ?
2. Un entier qui n'est pas multiple de $3$ est de la forme $3k + 1$ ou $3k + 2$. Dans les deux
   cas, que vaut le reste de son carré dans la division par $3$ ?
3. Si $p$ n'est pas multiple de $3$, alors $p^2 + 2$ est un multiple de $3$. Or il est premier
   et plus grand que $3$…
4. Il ne reste donc qu'une seule valeur possible pour $p$.

## Solution

**L'idée : il n'y a qu'un seul $p$ possible.**

Regardons le reste de $p$ dans la division par $3$. Trois cas.

**Cas 1 : $p$ n'est pas multiple de $3$.**

Alors $p$ s'écrit $3k + 1$ ou $3k + 2$.

- Si $p = 3k + 1$ : $p^2 = 9k^2 + 6k + 1 = 3(3k^2 + 2k) + 1$, donc $p^2$ a pour reste $1$.
- Si $p = 3k + 2$ : $p^2 = 9k^2 + 12k + 4 = 3(3k^2 + 4k + 1) + 1$, donc $p^2$ a encore pour
  reste $1$.

Dans les deux cas $p^2 \equiv 1 \pmod 3$, donc
$$p^2 + 2 \equiv 1 + 2 \equiv 0 \pmod 3 .$$

Ainsi $3$ divise $p^2 + 2$. Mais $p^2 + 2$ est supposé premier : ses seuls diviseurs positifs
sont $1$ et lui-même. Donc $p^2 + 2 = 3$, c'est-à-dire $p^2 = 1$, c'est-à-dire $p = 1$. Or $1$
n'est pas premier. **Ce cas est impossible.**

**Cas 2 : $p$ est multiple de $3$.**

Comme $p$ est premier et divisible par $3$, on a $p = 3$.

**Vérification et conclusion.**

Il ne reste donc que $p = 3$. Vérifions que l'hypothèse tient :
$$p^2 + 2 = 9 + 2 = 11, \qquad \text{qui est bien premier.}$$

Et alors
$$p^3 + 2 = 27 + 2 = 29, \qquad \text{qui est premier.}$$

Donc dès que $p$ et $p^2+2$ sont premiers, on a forcément $p = 3$, et $p^3 + 2 = 29$ est
premier. $\blacksquare$

## Going further

L'énoncé demandait une implication, et la réponse est que l'hypothèse ne laisse **qu'un seul
cas**. C'est une situation fréquente en arithmétique : une condition qui semble large ne
laisse survivre qu'un ou deux nombres.

Essaie de même : trouver tous les premiers $p$ tels que $p$, $p + 2$ et $p + 4$ soient tous
les trois premiers. (Réponse : seulement $p = 3$, pour la même raison.)
