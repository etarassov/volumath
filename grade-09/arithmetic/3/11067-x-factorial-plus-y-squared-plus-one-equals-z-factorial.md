---
id: "11067"
title: "x! + y² + 1 = z!"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorielle, equation-diophantienne, restes, carres, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 3 (repris en exercice 11 chez les Seniors) ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Pour un entier $k \geqslant 1$, on note $k! = 1 \times 2 \times \cdots \times k$ (on lit « factorielle $k$ »).

Trouver tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que
$$x! + y^2 + 1 = z! .$$

## Hints

1. Pourquoi a-t-on $z > x$ ? Dans ce cas, $x!$ divise $z!$. Que peux-tu en déduire pour $y^2 + 1$ ?
2. Quels restes peut avoir un carré dans la division par $3$ ? Et $y^2 + 1$ ? Déduis-en que $x \leqslant 2$.
3. Si $x = 1$, regarde l'équation dans la division par $4$. Si $x = 2$, montre que $3$ divise $y$, puis regarde la division par $9$.

## Solution

**Réponse :** une seule solution, $(x, y, z) = (1, 2, 3)$.

Soit $(x, y, z)$ une solution.

**Un outil sur les carrés.** Écrivons $y = 3q + r$ avec $r \in \{0, 1, 2\}$. Alors $y^2 = 3\,(3q^2 + 2qr) + r^2$, et $r^2$ vaut $0$, $1$ ou $4 = 3 + 1$. Donc **le reste d'un carré dans la division par $3$ vaut $0$ ou $1$**. De la même façon, avec $y = 4q + r$, on trouve que **le reste d'un carré dans la division par $4$ vaut $0$ ou $1$** (car $r^2$ vaut $0$, $1$, $4$ ou $9$).

**Étape 1 : $x \leqslant 2$.**

On a $z! = x! + y^2 + 1 > x!$, donc $z > x$. Ainsi $z! = x! \times (x + 1) \times \cdots \times z$ est un multiple de $x!$, et
$$y^2 + 1 = z! - x!$$
est aussi un multiple de $x!$.

Si $x \geqslant 3$, alors $3$ divise $x!$, donc $3$ divise $y^2 + 1$. Le reste de $y^2$ par $3$ serait alors $2$, ce qui est impossible d'après l'outil. Donc $x = 1$ ou $x = 2$.

**Étape 2 : le cas $x = 1$.**

L'équation devient $y^2 + 2 = z!$. Comme $y \geqslant 1$, on a $z! \geqslant 3$, donc $z \geqslant 3$.

Si $z \geqslant 4$, alors $4$ divise $z!$, donc $4$ divise $y^2 + 2$, et le reste de $y^2$ par $4$ vaudrait $2$. C'est impossible d'après l'outil. Donc $z = 3$, puis $y^2 = 6 - 2 = 4$ et $y = 2$.

**Étape 3 : le cas $x = 2$.**

L'équation devient $y^2 + 3 = z!$. Comme $y \geqslant 1$, on a $z! \geqslant 4$, donc $z \geqslant 3$, et $3$ divise $z!$. Alors $3$ divise $y^2 = z! - 3$. Comme $3$ est premier, il divise $y$, donc $9$ divise $y^2$.

Si $z \geqslant 6$, alors $z!$ contient les facteurs $3$ et $6$, donc $9$ divise $z!$. Il diviserait alors $z! - y^2 = 3$, ce qui est faux. Donc $z \in \{3, 4, 5\}$, et on teste :

- $z = 3$ : $y^2 = 6 - 3 = 3$, qui n'est pas un carré ;
- $z = 4$ : $y^2 = 24 - 3 = 21$, qui n'est pas un carré ;
- $z = 5$ : $y^2 = 120 - 3 = 117$, qui n'est pas un carré, car $10^2 = 100 < 117 < 121 = 11^2$.

Ce cas ne donne aucune solution.

**Conclusion.** La seule solution possible est $(1, 2, 3)$, et elle convient : $1! + 2^2 + 1 = 1 + 4 + 1 = 6 = 3!$.

## Going further

Trouver tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que $x! + y! = z!$.

*Réponse :* seulement $(1, 1, 2)$. En effet $z > x$ et $z > y$. Si par exemple $x \leqslant y$, alors $z! \geqslant (y + 1)! = (y + 1) \times y!$, tandis que $x! + y! \leqslant 2 \times y!$. Il faut donc $y + 1 \leqslant 2$, d'où $y = 1$, puis $x = 1$ et $z! = 2$.
