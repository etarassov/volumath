---
id: "5103"
title: "Deux équations avec la somme des chiffres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [somme-des-chiffres, congruences, encadrement, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problèmes 3(c) et 3(d)"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Pour un entier naturel $n$, on note $S(n)$ la somme des chiffres de $n$. Ainsi $S(2007) = 9$ et $S(S(2007)) = S(9) = 9$.

1. Trouver tous les entiers naturels $n$ tels que
$$S(S(S(n))) + S(S(n)) + S(n) = 100$$

2. Trouver tous les entiers naturels $n$ tels que
$$S(S(n)) + S(n) + n = 2007$$

## Hints

1. Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. Que peut-on en déduire sur $n$, $S(n)$, $S(S(n))$ et $S(S(S(n)))$ ?
2. Pour la question 1, regarde les deux membres de l'égalité modulo $9$. Quels sont les restes possibles d'un multiple de $3$ modulo $9$ ?
3. Pour la question 2, on n'a pas de contradiction : le même calcul donne une condition sur $n$. Laquelle ?
4. Toujours pour la question 2, il faut aussi encadrer $n$. On a clairement $n < 2007$. Mais $n$ ne peut pas être très petit non plus : jusqu'où $S(n)$ et $S(S(n))$ peuvent-ils monter quand $n \leqslant 2007$ ?
5. Il ne reste alors qu'une poignée de valeurs à essayer.

## Solution

**L'outil, une seule fois pour les deux questions.**

Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$ : c'est le critère de divisibilité par $9$, dans sa version complète. On écrit cela

$$S(m) \equiv m \pmod 9 \qquad \text{pour tout entier } m \geqslant 0$$

En appliquant cette règle plusieurs fois de suite :

$$S(S(S(n))) \equiv S(S(n)) \equiv S(n) \equiv n \pmod 9$$

Les quatre nombres $n$, $S(n)$, $S(S(n))$ et $S(S(S(n)))$ ont donc tous le même reste modulo $9$.

### Question 1 : aucune solution

Le membre de gauche est la somme de trois nombres ayant tous le même reste que $n$ modulo $9$ :

$$S(S(S(n))) + S(S(n)) + S(n) \equiv n + n + n = 3n \pmod 9$$

Et le membre de droite : $100 = 11 \times 9 + 1$, donc $100 \equiv 1 \pmod 9$.

Il faudrait donc $3n \equiv 1 \pmod 9$. Or $3n$ est un multiple de $3$, et son reste modulo $9$ ne peut valoir que $0$, $3$ ou $6$ :

- si $n \equiv 0 \pmod 3$, alors $3n \equiv 0 \pmod 9$ ;
- si $n \equiv 1 \pmod 3$, alors $3n \equiv 3 \pmod 9$ ;
- si $n \equiv 2 \pmod 3$, alors $3n \equiv 6 \pmod 9$.

Le reste $1$ n'apparaît jamais.

**Conclusion. L'équation $S(S(S(n))) + S(S(n)) + S(n) = 100$ n'a aucune solution.**

### Question 2 : quatre solutions

*Le filtre modulo 9.* Le membre de gauche vaut $S(S(n)) + S(n) + n \equiv 3n \pmod 9$, et $2007 = 9 \times 223$, donc $2007 \equiv 0 \pmod 9$. Il faut donc $3n \equiv 0 \pmod 9$, c'est-à-dire

$$n \equiv 0 \pmod 3$$

*L'encadrement.* Comme $S(n)$ et $S(S(n))$ sont positifs, on a $n \leqslant 2007$. Dans l'autre sens :

- pour $n \leqslant 2007$, le nombre $n$ a au plus quatre chiffres, et la plus grande somme de chiffres se rencontre pour $n = 1999$, qui donne $S(n) = 28$. Donc $S(n) \leqslant 28$ ;
- pour un nombre au plus égal à $28$, la plus grande somme de chiffres est celle de $19$, qui vaut $10$. Donc $S(S(n)) \leqslant 10$.

D'où

$$n = 2007 - S(n) - S(S(n)) \geqslant 2007 - 28 - 10 = 1969$$

*La liste à essayer.* Il reste les multiples de $3$ compris entre $1969$ et $2007$, soit treize nombres :

| $n$ | $S(n)$ | $S(S(n))$ | $S(S(n)) + S(n) + n$ |
|---|---|---|---|
| $1971$ | $18$ | $9$ | $1998$ |
| $1974$ | $21$ | $3$ | $1998$ |
| $1977$ | $24$ | $6$ | $\mathbf{2007}$ |
| $1980$ | $18$ | $9$ | $\mathbf{2007}$ |
| $1983$ | $21$ | $3$ | $\mathbf{2007}$ |
| $1986$ | $24$ | $6$ | $2016$ |
| $1989$ | $27$ | $9$ | $2025$ |
| $1992$ | $21$ | $3$ | $2016$ |
| $1995$ | $24$ | $6$ | $2025$ |
| $1998$ | $27$ | $9$ | $2034$ |
| $2001$ | $3$ | $3$ | $\mathbf{2007}$ |
| $2004$ | $6$ | $6$ | $2016$ |
| $2007$ | $9$ | $9$ | $2025$ |

**Conclusion. Les solutions sont $n = 1977$, $n = 1980$, $n = 1983$ et $n = 2001$.**

## Going further

La question 1 illustre une situation fréquente : pour montrer qu'une équation n'a pas de solution, il suffit souvent de trouver un nombre modulo lequel les deux membres ne peuvent pas coïncider. Ici, $9$ fait le travail parce que la somme des chiffres et le nombre lui-même y sont indiscernables.

On peut modifier la question 1 pour qu'elle ait des solutions. Essaie par exemple

$$S(S(S(n))) + S(S(n)) + S(n) = 99$$

Cette fois $99 \equiv 0 \pmod 9$, donc $3n \equiv 0 \pmod 9$ et $n$ doit être un multiple de $3$ : il n'y a plus de contradiction, et des solutions existent bel et bien.
