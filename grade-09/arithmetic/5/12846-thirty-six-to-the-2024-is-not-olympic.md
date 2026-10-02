---
id: "12846"
title: "36²⁰²⁴ n'est pas olympique"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [restes, carres, parite, puissances, descente-infinie]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test junior, exercice 3 ; corrigé 2025-01_Corrige-Test-3.pdf (le corrigé écrit x et y à la place de a et b dans la seconde moitié de sa preuve, coquille sans conséquence)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

On dit qu'un entier $n$ est **olympique** lorsqu'il existe des entiers $x$ et $y$ strictement positifs tels que

$$n = x^2 + 6xy + y^2.$$

Démontrer que $36^{2024}$ n'est pas olympique, mais qu'il est la somme de deux entiers olympiques.

## Hints

1. Commencez par la seconde partie, qui est la plus facile : que vaut $x^2 + 6xy + y^2$ quand $x = y$ ?
2. Pour la première partie, regardez les restes dans la division par $3$. Si $x^2 + 6xy + y^2$ est un multiple de $3$, que peut-on dire de $x$ et de $y$ ?
3. On peut alors diviser $x$ et $y$ par $3$, et recommencer. Pour organiser ce raisonnement, choisissez, parmi tous les couples $(x, y)$ pour lesquels $x^2 + 6xy + y^2$ s'écrit $4^i \times 9^j$, celui dont la somme $x + y$ est la plus petite.
4. Une fois les facteurs $3$ éliminés, regardez la parité de $x$ et $y$, puis, quand ils sont tous les deux impairs, le reste de $x^2 + 6xy + y^2$ dans la division par $16$. Écrivez $x = 2u + 1$ et $y = 2v + 1$.

## Solution

On note $f(x, y) = x^2 + 6xy + y^2$. On remarque que $f(x, y) \geq 1 + 6 + 1 = 8$ dès que $x, y \geq 1$.

### La seconde partie

Pour $x = y$, on a $f(x, x) = 8x^2$. Prenons $x = 2^{2022} \times 3^{2024}$. Alors

$$f(x, x) = 2^3 \times 2^{4044} \times 3^{4048} = 2^{4047} \times 3^{4048},$$

qui est la moitié de $36^{2024} = 2^{4048} \times 3^{4048}$. Donc $36^{2024} = f(x, x) + f(x, x)$ **est la somme de deux entiers olympiques**.

### Trois remarques sur les restes

**(a) Division par 3.** Si $f(x, y)$ est un multiple de $3$, alors $x$ et $y$ sont tous les deux des multiples de $3$.

En effet, $f(x, y) = x^2 + y^2 + 3 \times 2xy$ a le même reste que $x^2 + y^2$ dans la division par $3$. Or un carré a pour reste $0$ ou $1$ dans la division par $3$ : si $n = 3q$, $n^2 = 3 \times 3q^2$ ; si $n = 3q + 1$, $n^2 = 3(3q^2 + 2q) + 1$ ; si $n = 3q + 2$, $n^2 = 3(3q^2 + 4q + 1) + 1$. Pour que $x^2 + y^2$ soit un multiple de $3$, il faut donc que les deux restes soient $0$, c'est-à-dire que $x$ et $y$ soient des multiples de $3$.

**(b) Parité.** Si $f(x, y)$ est pair, alors $x$ et $y$ ont la même parité. En effet $f(x, y) - 6xy = x^2 + y^2$ est alors pair, et $x^2$ a la même parité que $x$.

**(c) Division par 16.** Si $x$ et $y$ sont tous les deux impairs, alors $f(x, y)$ a pour reste $8$ ou $12$ dans la division par $16$.

En effet, écrivons $x = 2u + 1$ et $y = 2v + 1$. En développant,

$$f(x, y) = 4u^2 + 4v^2 + 24uv + 16u + 16v + 8 = 4(u + v)^2 + 16(uv + u + v) + 8.$$

Un carré a pour reste $0$ ou $1$ dans la division par $4$ (car $(2q)^2 = 4q^2$ et $(2q+1)^2 = 4(q^2 + q) + 1$). Donc $(u + v)^2$ s'écrit $4q$ ou $4q + 1$, et $4(u + v)^2$ s'écrit $16q$ ou $16q + 4$. Finalement $f(x, y)$ s'écrit $16Q + 8$ ou $16Q + 12$ pour un entier $Q$.

### La première partie

Montrons un résultat un peu plus fort : **aucun entier de la forme $4^i \times 9^j$, avec $i, j \geq 0$, n'est olympique.** Comme $36^{2024} = 4^{2024} \times 9^{2024}$, cela suffira.

Supposons le contraire. Parmi tous les couples d'entiers $(x, y)$ strictement positifs tels que $f(x, y)$ soit de la forme $4^i \times 9^j$, choisissons-en un dont la somme $x + y$ est **la plus petite possible**. Notons $N = f(x, y) = 4^i \times 9^j$.

**Si $j \geq 1$**, alors $N$ est un multiple de $3$, donc d'après (a), $x = 3x'$ et $y = 3y'$ avec $x', y'$ entiers strictement positifs. Alors $f(x', y') = N / 9 = 4^i \times 9^{j-1}$, et $x' + y' < x + y$ : cela contredit le choix de $(x, y)$.

Donc $j = 0$ et $N = 4^i$. Comme $N \geq 8$, on a $i \geq 2$, et $N$ est un multiple de $16$. En particulier $N$ est pair, donc d'après (b), $x$ et $y$ ont la même parité.

**Si $x$ et $y$ sont pairs**, alors $x = 2x'$, $y = 2y'$, et $f(x', y') = N / 4 = 4^{i-1}$ avec $x' + y' < x + y$ : cela contredit encore le choix de $(x, y)$.

**Si $x$ et $y$ sont impairs**, alors d'après (c), $N$ a pour reste $8$ ou $12$ dans la division par $16$, ce qui contredit le fait que $N$ est un multiple de $16$.

Tous les cas mènent à une contradiction. **Donc $36^{2024}$ n'est pas olympique**, et il est pourtant la somme de deux entiers olympiques.

## Going further

1. Quelles puissances de $2$ sont olympiques ? (Réponse : exactement les $2^k$ avec $k$ impair et $k \geq 3$.)
2. Pourquoi a-t-on dû démontrer un résultat plus fort, sur tous les entiers $4^i \times 9^j$, au lieu de raisonner seulement sur $36^{2024}$ ?
