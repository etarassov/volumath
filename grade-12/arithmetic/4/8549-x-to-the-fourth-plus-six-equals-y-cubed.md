---
id: "8549"
title: "x⁴ + 6 = y³ n'a pas de solution"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, equation-en-entiers, puissances, modulo-treize]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Révisions » (Xavier et Aurélien) du Groupe B, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Démontrer qu'il n'existe aucun couple $(x, y)$ d'entiers relatifs tel que

$$x^4 + 6 = y^3 .$$

## Hints

1. L'idée est de trouver un entier $N$ tel que, modulo $N$, il y ait très peu de puissances quatrièmes et très peu de cubes.
2. Modulo un nombre premier $p$, les puissances quatrièmes sont peu nombreuses quand $4$ divise $p-1$, et les cubes le sont quand $3$ divise $p-1$. Cherche donc un premier $p$ tel que $12$ divise $p-1$.
3. Le plus petit convenable est $p = 13$. Dresse la liste des cubes modulo $13$, puis celle des puissances quatrièmes.
4. Il ne reste qu'à comparer la liste des $x^4 + 6$ possibles avec celle des cubes.

## Solution

**Le choix du module.** Travaillons modulo $13$. Ce nombre premier est intéressant ici parce
que $13 - 1 = 12$ est divisible à la fois par $3$ et par $4$ : il y aura donc peu de cubes et
peu de puissances quatrièmes.

**Les cubes modulo 13.** Voici les restes de $k^3$ dans la division par $13$, pour $k$ allant
de $0$ à $12$ :

| $k$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $k^3$ | 0 | 1 | 8 | 1 | 12 | 8 | 8 | 5 | 5 | 1 | 12 | 5 | 12 |

Les valeurs possibles d'un cube modulo $13$ sont donc

$$\{\,0, \; 1, \; 5, \; 8, \; 12\,\} .$$

**Les puissances quatrièmes modulo 13.** De même, voici les restes de $k^4$ modulo $13$ :

| $k$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $k^4$ | 0 | 1 | 3 | 3 | 9 | 1 | 9 | 9 | 1 | 3 | 3 | 9 | 1 |

Les valeurs possibles d'une puissance quatrième modulo $13$ sont donc

$$\{\,0, \; 1, \; 3, \; 9\,\} .$$

**La comparaison.** Si $(x, y)$ était solution, on aurait $x^4 + 6 \equiv y^3 \pmod{13}$. Or
$x^4$ vaut $0$, $1$, $3$ ou $9$ modulo $13$, donc $x^4 + 6$ vaut

$$6, \qquad 7, \qquad 9, \qquad \text{ou} \qquad 15 \equiv 2 \pmod{13} ,$$

c'est-à-dire $x^4 + 6 \in \{2, 6, 7, 9\}$ modulo $13$.

Aucune de ces quatre valeurs n'appartient à l'ensemble $\{0, 1, 5, 8, 12\}$ des cubes modulo
$13$.

**Conclusion.** L'égalité $x^4 + 6 = y^3$ est donc impossible modulo $13$, et a fortiori dans
les entiers : **l'équation n'a aucune solution entière**.

## Going further

Le calcul des deux tableaux se raccourcit : modulo $13$, on a $(-k)^3 \equiv -k^3$ et
$(-k)^4 \equiv k^4$, il suffit donc de faire les calculs pour $k$ de $0$ à $6$ et d'en
déduire le reste.
