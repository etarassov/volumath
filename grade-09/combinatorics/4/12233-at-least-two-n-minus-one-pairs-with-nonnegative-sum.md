---
id: "12233"
title: "Au moins 2n − 1 couples de somme positive"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [inegalites, rangement, couples, somme nulle, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de décembre 2015"
  reference: "2017-10_ofm-2015-2016-test-decembre.pdf, test du 2 décembre 2015, exercice 1 ; corrigé 2017-10_ofm-2015-2016-test-decembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-decembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-decembre.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient $a_1, a_2, \ldots, a_{2n}$ des nombres réels dont la somme est nulle :

$$a_1 + a_2 + \cdots + a_{2n} = 0.$$

Montrer qu'il existe au moins $2n - 1$ couples $(a_i, a_j)$, avec $i < j$, tels que $a_i + a_j \geqslant 0$.

## Hints

1. On peut renuméroter les nombres sans changer le problème. Range-les dans l'ordre croissant : $a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{2n}$.
2. Si $a_1 + a_{2n} \geqslant 0$, combien de couples contenant $a_{2n}$ ont une somme positive ou nulle ?
3. Regarde la somme $a_n + a_{2n-1}$, et sépare deux cas selon son signe.
4. Si $a_n + a_{2n-1} < 0$, groupe les nombres $a_2, \ldots, a_{2n-1}$ en paires dont chaque somme est plus petite que $a_n + a_{2n-1}$.

## Solution

Si $n = 1$, il n'y a qu'un couple, $(a_1, a_2)$, et $a_1 + a_2 = 0$ : il convient. On suppose désormais $n \geqslant 2$.

Changer la numérotation des nombres ne change ni l'hypothèse ni la conclusion. On peut donc supposer que les nombres sont rangés dans l'ordre croissant :

$$a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{2n}.$$

On sépare deux cas selon le signe de $a_n + a_{2n-1}$.

**Premier cas : $a_n + a_{2n-1} \geqslant 0$.**

- Pour chaque indice $i$ compris entre $n$ et $2n - 2$, on a $a_i \geqslant a_n$, donc $a_i + a_{2n-1} \geqslant a_n + a_{2n-1} \geqslant 0$. Cela donne $n - 1$ couples $(a_i, a_{2n-1})$.
- Pour chaque indice $i$ compris entre $n$ et $2n - 1$, on a $a_i \geqslant a_n$ et $a_{2n} \geqslant a_{2n-1}$, donc $a_i + a_{2n} \geqslant a_n + a_{2n-1} \geqslant 0$. Cela donne $n$ couples $(a_i, a_{2n})$.

Ces couples sont tous différents, et il y en a $(n - 1) + n = 2n - 1$.

**Second cas : $a_n + a_{2n-1} < 0$.**

On groupe les nombres $a_2, a_3, \ldots, a_{2n-1}$ en $n - 1$ paires :

$$(a_n, a_{2n-1}), \quad (a_{n-1}, a_{2n-2}), \quad \ldots, \quad (a_2, a_{n+1}).$$

En passant d'une paire à la suivante, chacun des deux indices diminue de $1$, donc chacun des deux nombres diminue ou reste égal. Ainsi

$$a_2 + a_{n+1} \leqslant \cdots \leqslant a_{n-1} + a_{2n-2} \leqslant a_n + a_{2n-1} < 0.$$

Chaque paire a une somme strictement négative. Comme ces paires utilisent chacun des nombres $a_2, \ldots, a_{2n-1}$ exactement une fois, on obtient

$$a_2 + a_3 + \cdots + a_{2n-1} < 0.$$

Or la somme de tous les nombres est nulle, donc

$$a_1 + a_{2n} = -\left(a_2 + a_3 + \cdots + a_{2n-1}\right) > 0.$$

Pour chaque indice $i$ compris entre $1$ et $2n - 1$, on a alors $a_i + a_{2n} \geqslant a_1 + a_{2n} > 0$. Cela donne $2n - 1$ couples $(a_i, a_{2n})$.

**Conclusion.** Dans les deux cas, il y a au moins $2n - 1$ couples dont la somme est positive ou nulle.

## Going further

On ne peut pas faire mieux. Prends $a_1 = a_2 = \cdots = a_{2n-1} = -1$ et $a_{2n} = 2n - 1$ : leur somme est nulle, et pour $n \geqslant 2$ les seuls couples de somme positive ou nulle sont les $2n - 1$ couples qui contiennent $a_{2n}$.

Pourquoi regarder $a_n + a_{2n-1}$ ? Si cette somme est positive, elle « tire » vers le haut toutes les sommes plus grandes, et il y en a assez. Si elle est négative, ce sont toutes les paires plus petites qui sont négatives, et c'est alors $a_{2n}$, le plus grand nombre, qui doit compenser. Le choix de $n$ et de $2n - 1$ est fait pour que les deux cas donnent exactement $2n - 1$ couples.
