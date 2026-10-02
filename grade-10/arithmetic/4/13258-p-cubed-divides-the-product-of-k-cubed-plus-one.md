---
id: "13258"
title: "p³ divise le produit des k³ + 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, divisibilite, factorisation, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés lycée, exercice 6 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Soit $n$ un entier strictement positif et $p$ un nombre premier tel que $p^3$ divise le produit

$$(1^3 + 1)(2^3 + 1) \cdots ((n-1)^3 + 1)(n^3 + 1).$$

Montrer que $p \leqslant n + 1$.

## Hints

1. Factorise $a^3 + 1$ : c'est un produit de deux facteurs, dont l'un est $a + 1$.
2. Raisonne par l'absurde : si $p > n + 1$, le nombre $p$ ne divise aucun des nombres $a + 1$.
3. Le nombre premier $p$ apparaît au moins trois fois dans la décomposition du produit. Soit il apparaît deux fois dans un même facteur $a^3 + 1$, soit il divise trois facteurs différents.
4. Si $p$ divise $a^2 - a + 1$ et $b^2 - b + 1$, que divise-t-il encore ? Factorise la différence.

## Solution

Notons $P$ le produit de l'énoncé. On utilise deux faits sur les nombres premiers, qui viennent de l'unicité de la décomposition en facteurs premiers.

- **Fait 1.** Si un nombre premier $p$ divise un produit $uv$ d'entiers strictement positifs, alors $p$ divise $u$ ou $p$ divise $v$. En effet, la décomposition de $uv$ s'obtient en mettant bout à bout celles de $u$ et de $v$ ; si $p$ divise $uv$, il apparaît dans cette décomposition (qui est unique), donc dans celle de $u$ ou dans celle de $v$.
- **Fait 2.** De même, si $p^3$ divise $P$, le nombre $p$ apparaît au moins trois fois dans la décomposition de $P$, qui est formée des décompositions des facteurs $a^3 + 1$ mises bout à bout. Donc, ou bien $p$ apparaît au moins deux fois dans la décomposition d'un même facteur, c'est-à-dire que $p^2$ divise un des $a^3 + 1$ ; ou bien $p$ divise au moins trois facteurs différents.

**La factorisation.** Pour tout entier $a$, on a $a^3 + 1 = (a + 1)(a^2 - a + 1)$, ce que l'on vérifie en développant.

**Par l'absurde.** Supposons que $p > n + 1$. Pour $1 \leqslant a \leqslant n$, on a $2 \leqslant a + 1 \leqslant n + 1 < p$, donc $p$ ne divise aucun des nombres $a + 1$. D'après le fait 1, dès que $p$ divise $a^3 + 1$, il divise $a^2 - a + 1$.

**Premier cas : $p^2$ divise un facteur $a^3 + 1$.** Comme $p$ n'apparaît pas dans la décomposition de $a + 1$, les deux $p$ sont dans celle de $a^2 - a + 1$, donc $p^2$ divise $a^2 - a + 1$. Or $a^2 - a + 1$ est strictement positif et $a^2 - a + 1 \leqslant a^2 \leqslant n^2$ (car $a \geqslant 1$). On obtient $p^2 \leqslant n^2$, donc $p \leqslant n$, ce qui contredit $p > n + 1$.

**Second cas : $p$ divise trois facteurs différents** $a^3 + 1$, $b^3 + 1$, $c^3 + 1$, avec $a$, $b$, $c$ distincts entre $1$ et $n$. Alors $p$ divise $a^2 - a + 1$, $b^2 - b + 1$ et $c^2 - c + 1$. Il divise donc leurs différences, par exemple

$$(a^2 - a + 1) - (b^2 - b + 1) = (a^2 - b^2) - (a - b) = (a - b)(a + b - 1).$$

D'après le fait 1, $p$ divise $a - b$ ou $a + b - 1$. Mais $a - b$ n'est pas nul et $|a - b| \leqslant n - 1 < p$, donc $p$ ne divise pas $a - b$. Ainsi $p$ divise $a + b - 1$.

Le même raisonnement montre que $p$ divise $a + c - 1$. Il divise alors la différence $(a + b - 1) - (a + c - 1) = b - c$. Or $b - c$ n'est pas nul et $|b - c| < p$ : c'est impossible.

**Conclusion.** Dans les deux cas on aboutit à une contradiction, donc $p \leqslant n + 1$.

## Going further

La borne est atteinte. Pour $n = 6$, montre que $7^3$ divise le produit $(1^3 + 1)(2^3 + 1) \cdots (6^3 + 1)$, alors que $7 = n + 1$.
