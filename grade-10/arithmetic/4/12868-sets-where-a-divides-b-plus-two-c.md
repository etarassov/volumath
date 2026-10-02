---
id: "12868"
title: "Des ensembles où a divise b + 2c"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, pgcd, parite, ensembles, principe-extremal, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 novembre 2024"
  reference: "2025-10_Sujet-Test-1-2024-2025.pdf, test senior, exercice 2 ; corrigé 2025-10_Corrige-Test-1-2024-2025.pdf (la fin de la solution ci-dessous est plus courte que celle du corrigé : elle obtient directement a₂ = 3a₁)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-1-2024-2025.pdf"
---

## Statement

Déterminer tous les ensembles $S$, finis et non vides, d'entiers strictement positifs, qui ont la propriété suivante :

> pour tous entiers $a$ et $b$ de $S$ (égaux ou non), il existe un entier $c$ de $S$ tel que $a$ divise $b + 2c$.

Rappelons que les éléments d'un ensemble sont deux à deux distincts.

## Hints

1. Cherchez des exemples avec un seul élément, puis avec deux éléments.
2. Si tous les éléments de $S$ sont divisibles par un entier $d$, et si on les divise tous par $d$, l'ensemble obtenu a-t-il encore la propriété ? Ramenez-vous au cas où le $\mathrm{PGCD}$ des éléments vaut $1$, et montrez qu'alors ils sont tous impairs.
3. Soit $m$ le plus grand élément de $S$. Pour un autre élément $b$, appliquez la propriété au couple $(m, b)$, et montrez que $b + 2c = m$.
4. Les nombres $(m - b)/2$, pour $b$ dans $S$ différent de $m$, sont tous dans $S$. Rangez-les dans l'ordre et comptez-les.

## Solution

La réponse : **les ensembles $\{k\}$ et $\{k, 3k\}$, où $k$ est un entier strictement positif.**

### Ces ensembles conviennent

- Pour $S = \{k\}$ : le seul choix est $a = b = k$, et avec $c = k$, le nombre $b + 2c = 3k$ est divisible par $k$.
- Pour $S = \{k, 3k\}$ : si $a = k$, tout choix de $c$ convient, car $b + 2c$ est un multiple de $k$. Si $a = 3k$ et $b = k$, on prend $c = k$ : $b + 2c = 3k$. Si $a = b = 3k$, on prend $c = 3k$ : $b + 2c = 9k$.

Il reste à montrer qu'il n'y en a pas d'autres. Soit $S$ un ensemble qui a la propriété. S'il n'a qu'un élément, il est de la forme $\{k\}$. On suppose désormais qu'il a $n \geq 2$ éléments.

### On divise par le PGCD

Soit $g$ le $\mathrm{PGCD}$ de tous les éléments de $S$, et $T$ l'ensemble obtenu en divisant chaque élément de $S$ par $g$. C'est encore un ensemble de $n$ entiers strictement positifs.

**L'ensemble $T$ a encore la propriété.** En effet, soit $a$ et $b$ dans $T$. Alors $ga$ et $gb$ sont dans $S$, donc il existe $c$ dans $T$ tel que $ga$ divise $gb + 2gc$, c'est-à-dire $gb + 2gc = q \times ga$ pour un entier $q$. En divisant par $g$, on obtient $b + 2c = qa$ : le nombre $a$ divise $b + 2c$.

**Les éléments de $T$ ont pour seul diviseur commun positif $1$.** Si un entier $d \geq 1$ les divisait tous, alors $dg$ diviserait tous les éléments de $S$, donc $dg \leq g$, et $d = 1$.

Il suffit donc de montrer que $T = \{1, 3\}$ : on aura alors $S = \{g, 3g\}$.

### Tous les éléments de T sont impairs

Ils ne sont pas tous pairs, sinon $2$ serait un diviseur commun. Supposons qu'il y ait dans $T$ un nombre pair $a$ et un nombre impair $b$. Il existe $c$ dans $T$ tel que $a$ divise $b + 2c$. Mais $b + 2c$ est impair, alors que tous les multiples du nombre pair $a$ sont pairs. C'est impossible. Donc **tous les éléments de $T$ sont impairs.**

### Le plus grand élément

Rangeons les éléments de $T$ dans l'ordre : $a_1 < a_2 < \cdots < a_n$. Soit $b$ l'un des éléments $a_1$, ..., $a_{n-1}$. En appliquant la propriété au couple $(a_n, b)$, on trouve $c$ dans $T$ tel que $a_n$ divise $b + 2c$. Or

$$0 < b + 2c \leq b + 2a_n < a_n + 2a_n = 3a_n.$$

Les multiples de $a_n$ strictement compris entre $0$ et $3a_n$ sont $a_n$ et $2a_n$. Le nombre $b + 2c$ est impair, puisque $b$ l'est, et $2a_n$ est pair. Donc $b + 2c = a_n$, c'est-à-dire

$$c = \frac{a_n - b}{2}.$$

Ainsi, **pour tout élément $b$ de $T$ autre que $a_n$, le nombre $(a_n - b)/2$ est dans $T$**. Il est strictement plus petit que $a_n$, donc c'est l'un des nombres $a_1$, ..., $a_{n-1}$.

### On compte

Posons $c_i = (a_n - a_i)/2$ pour $i = 1, 2, \ldots, n - 1$. D'après ce qui précède, ce sont des éléments de l'ensemble $\{a_1, \ldots, a_{n-1}\}$. Comme $a_1 < a_2 < \cdots < a_{n-1}$, on a

$$c_1 > c_2 > \cdots > c_{n-1}.$$

Ce sont donc $n - 1$ nombres distincts pris dans un ensemble qui a exactement $n - 1$ éléments : ce sont tous ses éléments, rangés dans l'ordre décroissant. Ainsi $c_1 = a_{n-1}$ et $c_{n-1} = a_1$, c'est-à-dire

$$a_n = a_1 + 2a_{n-1} \qquad \text{et} \qquad a_n = a_{n-1} + 2a_1.$$

En soustrayant ces deux égalités, $0 = a_{n-1} - a_1$, donc $a_{n-1} = a_1$. Les éléments étant distincts, $n - 1 = 1$, donc $n = 2$, et la seconde égalité donne $a_2 = a_1 + 2a_1 = 3a_1$.

Donc $T = \{a_1, 3a_1\}$. Le seul diviseur commun de ses éléments étant $1$, et $a_1$ en étant un, on a $a_1 = 1$ et $T = \{1, 3\}$.

### Conclusion

**Les ensembles cherchés sont les ensembles $\{k\}$ et $\{k, 3k\}$, pour $k$ entier strictement positif.**

## Going further

1. On remplace $b + 2c$ par $b + c$. Montrez que, pour tout entier $n \geq 1$, l'ensemble $\{1, 2, \ldots, n\}$ a alors la propriété. La réponse est donc très différente.
2. Montrez que l'ensemble **infini** de tous les entiers impairs strictement positifs a la propriété de l'énoncé. À quel endroit la solution utilise-t-elle que $S$ est fini ?
