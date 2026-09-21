---
id: "8546"
title: "p puissance n plus 144 est un carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombre-premier, carre-parfait, factorisation, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Entraînement de fin de parcours » du Groupe B, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les triplets $(p, n, m)$ d'entiers strictement positifs tels que $p$ soit un
nombre premier et

$$p^n + 144 = m^2 .$$

## Hints

1. Fais passer $144$ de l'autre côté : une différence de deux carrés apparaît. Factorise-la.
2. Tu obtiens un produit de deux entiers qui vaut $p^n$. Que peut-on dire de chacun des deux facteurs ?
3. Écris $m - 12 = p^a$ et $m + 12 = p^b$, puis soustrais. Mets la plus petite puissance en facteur.
4. Deux cas : soit $a = 0$, soit $a \geqslant 1$. Dans le second cas, $p$ divise $24$.

## Solution

**La factorisation.** L'équation s'écrit

$$p^n = m^2 - 144 = m^2 - 12^2 = (m - 12)(m + 12) .$$

Le membre de gauche est strictement positif et $m + 12 > 0$, donc $m - 12 > 0$ : on a
$m > 12$.

Les deux entiers $m - 12$ et $m + 12$ sont donc des diviseurs positifs de $p^n$, et les
diviseurs positifs de $p^n$ sont exactement $p^0, p^1, \ldots, p^n$. Il existe donc des
entiers naturels $a < b$ avec

$$m - 12 = p^a, \qquad m + 12 = p^b, \qquad a + b = n .$$

**La différence.** En soustrayant,

$$p^b - p^a = 24, \qquad \text{c'est-à-dire} \qquad p^a\left(p^{\,b-a} - 1\right) = 24 .$$

**Cas 1 : $a = 0$.** Alors $p^b = 25$. Comme $p$ est premier, $p = 5$ et $b = 2$. On obtient
$m - 12 = 1$, donc $m = 13$, et $n = a + b = 2$.

Triplet : $(p, n, m) = (5, 2, 13)$.

**Cas 2 : $a \geqslant 1$.** Alors $p$ divise $p^a$, qui divise $24 = 2^3 \times 3$. Comme
$p$ est premier, $p = 2$ ou $p = 3$.

- **$p = 2$** : $2^a\left(2^{\,b-a} - 1\right) = 24 = 2^3 \times 3$. Le second facteur est
  impair, donc $2^a = 8$, soit $a = 3$, et $2^{\,b-a} - 1 = 3$, soit $b - a = 2$ et $b = 5$.
  Alors $m = 2^3 + 12 = 20$ et $n = 3 + 5 = 8$.

  Triplet : $(2, 8, 20)$.

- **$p = 3$** : $3^a\left(3^{\,b-a} - 1\right) = 24 = 3 \times 8$. Le second facteur n'est
  pas divisible par $3$ (c'est un multiple de $3$ moins $1$), donc $3^a = 3$, soit $a = 1$,
  et $3^{\,b-a} - 1 = 8$, soit $b - a = 2$ et $b = 3$. Alors $m = 3 + 12 = 15$ et
  $n = 1 + 3 = 4$.

  Triplet : $(3, 4, 15)$.

**Vérifications.**

- $5^2 + 144 = 25 + 144 = 169 = 13^2$. C'est bon.
- $2^8 + 144 = 256 + 144 = 400 = 20^2$. C'est bon.
- $3^4 + 144 = 81 + 144 = 225 = 15^2$. C'est bon.

**Conclusion.** Les seuls triplets solutions sont

$$(5, 2, 13), \qquad (2, 8, 20), \qquad (3, 4, 15) .$$
