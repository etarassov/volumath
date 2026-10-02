---
id: "11001"
title: "a! + b! est une puissance de 2"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [factorielle, puissances, divisibilite, parite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 4 (le même énoncé est repris en exercice 12, Exercices Seniors) ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

On rappelle que pour un entier $k \geqslant 1$, on note $k! = 1 \times 2 \times 3 \times \cdots \times k$
(on lit « factorielle $k$ »). Par exemple $4! = 24$.

Déterminer tous les triplets $(a, b, n)$ d'entiers strictement positifs tels que
$$a! + b! = 2^n .$$

## Hints

1. Les rôles de $a$ et $b$ sont les mêmes : tu peux supposer $a \leqslant b$, puis échanger à la fin.
2. Si $a$ et $b$ valent tous les deux au moins $3$, par quel nombre premier autre que $2$ la somme $a! + b!$ est-elle divisible ?
3. Il reste $a = 1$ ou $a = 2$. Pour $a = 1$, regarde la parité des deux membres.
4. Pour $a = 2$ et $b \geqslant 4$, regarde le reste de la division par $4$.

## Solution

Les rôles de $a$ et $b$ sont symétriques. On cherche d'abord les solutions avec $a \leqslant b$ ; les
autres s'obtiennent en échangeant $a$ et $b$.

**Le nombre 3 élimine presque tout.**

Supposons $a \geqslant 3$. Alors $b \geqslant 3$ aussi. Les produits $a! = 1 \times 2 \times 3 \times \cdots \times a$
et $b!$ contiennent tous les deux le facteur $3$, donc $a! + b!$ est un multiple de $3$. Mais $2^n$
n'a que des facteurs $2$ : il n'est jamais divisible par $3$. C'est impossible.

Donc $a = 1$ ou $a = 2$.

**Cas $a = 1$.** L'équation devient $1 + b! = 2^n$. Comme $n \geqslant 1$, le nombre $2^n$ est pair,
donc $b!$ doit être impair. Or dès que $b \geqslant 2$, le produit $b!$ contient le facteur $2$ et il
est pair. Donc $b = 1$, et $1 + 1 = 2 = 2^1$ donne $n = 1$.

**Cas $a = 2$.** On a $b \geqslant 2$ et l'équation devient $2 + b! = 2^n$.

- Si $b = 2$ : $2 + 2 = 4 = 2^2$, donc $n = 2$.
- Si $b = 3$ : $2 + 6 = 8 = 2^3$, donc $n = 3$.
- Si $b \geqslant 4$ : le produit $b!$ contient le facteur $4$, donc $b!$ est un multiple de $4$, et
  $2 + b!$ a pour reste $2$ dans la division par $4$. Mais $2 + b! \geqslant 26$, donc $2^n \geqslant 26$
  et $n \geqslant 2$ : alors $2^n = 4 \times 2^{n-2}$ est un multiple de $4$. Les restes ne
  correspondent pas, c'est impossible.

**Vérification et conclusion.** On a bien $1! + 1! = 2$, $2! + 2! = 4$ et $2! + 3! = 8$. En
ajoutant le triplet obtenu en échangeant $a$ et $b$, les solutions sont exactement
$$(a, b, n) = (1, 1, 1), \quad (2, 2, 2), \quad (2, 3, 3), \quad (3, 2, 3).$$
