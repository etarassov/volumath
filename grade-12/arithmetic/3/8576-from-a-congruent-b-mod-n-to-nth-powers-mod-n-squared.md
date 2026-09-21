---
id: "8576"
title: "De a ≡ b modulo n à aⁿ ≡ bⁿ modulo n²"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [congruences, divisibilite, factorisation, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Arithmétique » du Groupe B, exercice sur les congruences"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$, $b$ et $n$ des entiers, avec $n \geqslant 1$. On suppose que

$$a \equiv b \pmod{n} .$$

Démontrer qu'alors

$$a^n \equiv b^n \pmod{n^2} .$$

## Hints

1. Il s'agit de montrer que $n^2$ divise $a^n - b^n$. On connaît une factorisation de $a^n - b^n$ : laquelle ?
2. Un des deux facteurs est $a - b$, dont on sait déjà qu'il est divisible par $n$.
3. Il reste donc à montrer que l'autre facteur est lui aussi divisible par $n$. Combien de termes contient-il ?
4. Dans ce second facteur, remplace $a$ par $b$ modulo $n$. Que devient chaque terme ?

## Solution

### La factorisation

Rappelons l'identité, valable pour tous entiers $a$ et $b$ et tout entier $n \geqslant 1$ :

$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + a^{n-3}b^2 + \cdots + b^{n-1}\right) .$$

Notons $S$ le second facteur :

$$S = a^{n-1} + a^{n-2}b + \cdots + a\,b^{n-2} + b^{n-1} .$$

C'est une somme de $n$ termes : le terme général est $a^{n-1-i} b^{i}$ pour $i$ allant de $0$
à $n-1$.

### Le premier facteur

L'hypothèse $a \equiv b \pmod n$ signifie exactement que $n$ divise $a - b$.

### Le second facteur

Toujours parce que $a \equiv b \pmod n$, on peut remplacer $a$ par $b$ dans chaque terme,
modulo $n$ :

$$a^{n-1-i}\, b^{i} \;\equiv\; b^{n-1-i}\, b^{i} \;=\; b^{n-1} \pmod{n} .$$

Chacun des $n$ termes de $S$ est donc congru à $b^{n-1}$ modulo $n$. En les additionnant :

$$S \;\equiv\; n \, b^{n-1} \;\equiv\; 0 \pmod{n} ,$$

puisque $n \, b^{n-1}$ est un multiple de $n$. Donc $n$ divise $S$.

### On conclut

Écrivons $a - b = n \, k$ et $S = n \, t$, avec $k$ et $t$ entiers. Alors

$$a^n - b^n = (a - b) \, S = n k \times n t = n^2 \, k t .$$

Le nombre $a^n - b^n$ est donc un multiple de $n^2$, c'est-à-dire

$$a^n \equiv b^n \pmod{n^2} .$$
