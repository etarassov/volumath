---
id: "22034"
title: "Des PPCM plus grands que 2n"
grade: 8
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [principe-des-tiroirs, ppcm, puissances-de-deux, divisibilite, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["8178"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 11 (l'énoncé imprimé demande a₂ > ⌊2n/3⌋, alors que le corrigé démontre a₁ > ⌊2n/3⌋, qui est le vrai résultat ; on l'écrit ici sous la forme équivalente a₁ > 2n/3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geq 1$ un entier, et soient $a_1 < a_2 < \cdots < a_n$ des entiers compris entre $1$ et $2n$.

On suppose que, pour deux quelconques d'entre eux, le $\mathrm{PPCM}$ est strictement plus grand que $2n$.

Montrer que $a_1 > \frac{2n}{3}$.

## Hints

1. Tout entier $m \geq 1$ s'écrit $m = 2^k \times u$, avec $k \geq 0$ et $u$ impair. Combien de valeurs le nombre impair $u$ peut-il prendre si $m \leq 2n$ ?
2. Si deux entiers ont le même $u$, que peut-on dire de l'un par rapport à l'autre ?
3. Raisonnez par l'absurde : si $3a_1 \leq 2n$, regardez les $n + 1$ nombres $2a_1$, $3a_1$, $a_2$, $\ldots$, $a_n$.

## Solution

**Trois outils.**

- *Le $\mathrm{PPCM}$.* Le $\mathrm{PPCM}$ de deux entiers $x$ et $y$ est le plus petit entier strictement positif qui est à la fois multiple de $x$ et de $y$. Donc si $M > 0$ est un multiple commun de $x$ et de $y$, alors $\mathrm{PPCM}(x, y) \leq M$.
- *La partie impaire.* Tout entier $m \geq 1$ s'écrit $m = 2^k \times u$ avec $k \geq 0$ et $u$ impair : on divise $m$ par $2$ tant que c'est possible. On appelle $u$ la **partie impaire** de $m$. Si $m \leq 2n$, alors $u \leq 2n$ et $u$ est impair, donc $u$ est l'un des $n$ nombres $1, 3, 5, \ldots, 2n - 1$.
- *Même partie impaire.* Si $x = 2^k u$ et $y = 2^l u$ avec $k \leq l$, alors $y = 2^{l-k} \times x$, donc $x$ divise $y$. Ainsi, de deux entiers qui ont la même partie impaire, le plus petit divise le plus grand.

**Le raisonnement par l'absurde.** Supposons que $a_1 \leq \frac{2n}{3}$, c'est-à-dire $3a_1 \leq 2n$.

Regardons les $n + 1$ nombres

$$2a_1, \quad 3a_1, \quad a_2, \quad a_3, \quad \ldots, \quad a_n.$$

Ils sont tous compris entre $1$ et $2n$, puisque $2a_1 < 3a_1 \leq 2n$. Leurs parties impaires ne peuvent prendre que $n$ valeurs. D'après le principe des tiroirs, deux de ces $n + 1$ nombres ont la même partie impaire. Voyons de quels nombres il peut s'agir.

*Cas 1 : ce sont $2a_1$ et $3a_1$.* Si $u$ est la partie impaire de $a_1$, la partie impaire de $2a_1$ est $u$, et celle de $3a_1$ est $3u$, car $3u$ est impair. Comme $u \neq 3u$, ce cas est impossible.

*Cas 2 : ce sont $a_i$ et $a_j$, avec $2 \leq i < j$.* Alors $a_i < a_j$, et d'après le troisième outil, $a_i$ divise $a_j$. Donc $a_j$ est un multiple commun de $a_i$ et de $a_j$, et $\mathrm{PPCM}(a_i, a_j) \leq a_j \leq 2n$. C'est contraire à l'hypothèse.

*Cas 3 : ce sont $a_i$, avec $i \geq 2$, et $c \times a_1$, avec $c = 2$ ou $c = 3$.* D'après le troisième outil, l'un des deux divise l'autre.

- Si $a_i$ divise $c\,a_1$, alors $c\,a_1$ est un multiple commun de $a_1$ et de $a_i$, donc $\mathrm{PPCM}(a_1, a_i) \leq c\,a_1 \leq 3a_1 \leq 2n$.
- Si $c\,a_1$ divise $a_i$, alors $a_1$ divise aussi $a_i$, donc $a_i$ est un multiple commun de $a_1$ et de $a_i$, et $\mathrm{PPCM}(a_1, a_i) \leq a_i \leq 2n$.

Dans les deux cas, c'est contraire à l'hypothèse.

Tous les cas mènent à une contradiction. L'hypothèse $3a_1 \leq 2n$ est donc fausse.

**Conclusion.** On a $3a_1 > 2n$, c'est-à-dire $a_1 > \frac{2n}{3}$.

## Going further

1. Montrez que les $n$ entiers $n + 1$, $n + 2$, $\ldots$, $2n$ vérifient l'hypothèse de l'énoncé.
2. Pour $n = 6$, l'exercice dit que $a_1 \geq 5$. Trouvez six entiers entre $1$ et $12$ qui vérifient l'hypothèse avec $a_1 = 5$.
