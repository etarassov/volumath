---
id: "8460"
title: "1 + 5 × 2ᵐ est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-diophantienne, difference-de-carres, puissances-de-deux, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, la Muraille"
  reference: "Poly-2021-Valbonne.pdf, Muraille, exercice 18 (résolu par Arthur Tézé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(m, n)$ tels que

$$1 + 5 \times 2^{\,m} = n^2.$$

## Hints

1. Fais passer le $1$ de l'autre côté. Que reconnais-tu dans $n^2 - 1$ ?
2. Tu obtiens un produit de deux nombres qui diffèrent de $2$, et ce produit vaut $5 \times 2^{\,m}$. Commence par déterminer la parité de $n$.
3. Les deux facteurs $n-1$ et $n+1$ sont donc pairs tous les deux. Mais ils ne peuvent pas être tous les deux divisibles par $4$ : pourquoi ?
4. Celui des deux qui n'est pas divisible par $4$ s'écrit $2u$ avec $u$ impair. Ce $u$ doit diviser $5 \times 2^{\,m}$ : que peut-il valoir ?

## Solution

### Étape 1. Factoriser

L'équation se réécrit

$$n^2 - 1 = 5 \times 2^{\,m}, \qquad \text{c'est-à-dire} \qquad (n-1)(n+1) = 5 \times 2^{\,m}.$$

### Étape 2. $n$ est impair

Si $m = 0$, l'équation donne $n^2 = 6$, ce qui est impossible. Donc $m \geqslant 1$, et alors $5 \times 2^{\,m}$ est pair, donc $n^2 = 1 + 5 \times 2^{\,m}$ est **impair**, donc $n$ est impair.

Par conséquent, $n - 1$ et $n + 1$ sont deux entiers pairs consécutifs (au sens où ils diffèrent de $2$).

### Étape 3. L'un des deux n'est pas divisible par 4

Deux nombres pairs qui diffèrent de $2$ ne peuvent pas être tous deux multiples de $4$ : leur différence, $2$, serait alors un multiple de $4$.

Appelons $N$ celui des deux nombres $n-1$, $n+1$ qui **n'est pas** divisible par $4$. Alors $N$ s'écrit

$$N = 2u \qquad \text{avec } u \text{ impair}.$$

### Étape 4. Trouver $u$

Le nombre $N$ divise le produit $(n-1)(n+1) = 5 \times 2^{\,m}$. Donc $u$, qui divise $N$, divise aussi $5 \times 2^{\,m}$. Mais $u$ est impair : il ne peut contenir aucun facteur $2$, donc $u$ divise $5$. Ainsi

$$u = 1 \quad \text{ou} \quad u = 5, \qquad \text{donc} \qquad N = 2 \quad \text{ou} \quad N = 10.$$

### Étape 5. Les quatre cas

| cas | valeur de $n$ | $n^2 - 1$ | est-ce $5 \times 2^{\,m}$ ? |
|---|---|---|---|
| $n - 1 = 2$ | $n = 3$ | $8$ | $8 = 5 \times 2^{\,m}$ : non |
| $n - 1 = 10$ | $n = 11$ | $120$ | $120 / 5 = 24$, pas une puissance de $2$ : non |
| $n + 1 = 2$ | $n = 1$ | $0$ | non, $5 \times 2^{\,m}$ n'est jamais nul |
| $n + 1 = 10$ | $n = 9$ | $80$ | $80 / 5 = 16 = 2^4$ : **oui**, $m = 4$ |

### Conclusion

Le seul couple solution est

$$\boxed{(m, n) = (4, 9),}$$

et l'on vérifie : $1 + 5 \times 2^4 = 1 + 80 = 81 = 9^2$.

## Going further

Le geste décisif est celui de l'étape 3. Quand un produit de deux facteurs proches l'un de l'autre vaut une puissance de $2$ multipliée par un petit nombre, les deux facteurs ne peuvent pas se partager les $2$ équitablement : l'un d'eux en attrape presque tous, et l'autre se retrouve minuscule, donc facile à énumérer.

Le même raisonnement traite d'autres équations de la même famille. Prenons $n^2 = 1 + 3 \times 2^{\,m}$. Il faut d'abord regarder $m = 0$ à part, et là, surprise : $1 + 3 = 4 = 2^2$ convient. Pour $m \geqslant 1$, le raisonnement ci-dessus s'applique mot pour mot, avec $3$ à la place de $5$ : les candidats pour $N$ sont $2$ et $6$, ce qui donne $n \in \{1, 3, 5, 7\}$, et l'on trouve $n = 5$ avec $m = 3$ ($25 = 1 + 24$) ainsi que $n = 7$ avec $m = 4$ ($49 = 1 + 48$). Cette équation-là a donc **trois** solutions.
