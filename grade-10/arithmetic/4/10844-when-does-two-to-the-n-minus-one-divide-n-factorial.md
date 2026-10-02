---
id: "10844"
title: "Quand 2ⁿ⁻¹ divise-t-il n! ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, puissances-de-deux, divisibilite, encadrement, somme-geometrique]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 1 (arithmétique)"
  reference: "2017-10_pofm-2017-2018-envoi1-1.pdf, Exercices communs, exercice 6 ; corrigé 2017-11_pofm-2017-2018-envoi1-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/pofm-2017-2018-envoi1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_pofm-2017-2018-envoi1-1.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Montrer que $n!$ est divisible par $2^{n-1}$ si et seulement si $n$ est une puissance de $2$.

## Hints

1. Pour $n = 1, 2, \ldots, 8$, cherche la plus grande puissance de $2$ qui divise $n!$, et compare avec $2^{n-1}$.
2. Compte les facteurs $2$ du produit $1 \times 2 \times \cdots \times n$ : chaque nombre pair en apporte au moins un, chaque multiple de $4$ en apporte un de plus, chaque multiple de $8$ encore un de plus, etc.
3. Entre $1$ et $n$, il y a $\lfloor n / 2^j \rfloor$ multiples de $2^j$, et ce nombre est au plus $n / 2^j$. Note $k$ l'entier tel que $2^k \leqslant n < 2^{k+1}$, et majore la somme obtenue.
4. Tu dois trouver que le nombre de facteurs $2$ est au plus $n - n / 2^k$. Dans quel cas ce nombre peut-il atteindre $n - 1$ ?

## Solution

Pour un nombre réel $x \geqslant 0$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple $\lfloor 7/2 \rfloor = 3$. On a toujours $\lfloor x \rfloor \leqslant x$.

Notons $v(n)$ le plus grand entier $v$ tel que $2^v$ divise $n!$. Il s'agit de montrer que $v(n) \geqslant n - 1$ si et seulement si $n$ est une puissance de $2$.

### Étape 1 : les premières valeurs

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $v(n)$ | $0$ | $1$ | $1$ | $3$ | $3$ | $4$ | $4$ | $7$ |
| $n - 1$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |

Par exemple $6! = 720 = 2^4 \times 45$, donc $v(6) = 4 < 5$. On a $v(n) \geqslant n - 1$ exactement pour $n = 1, 2, 4, 8$, ce qui confirme l'énoncé sur ces exemples.

### Étape 2 : compter les facteurs $2$

Pour $j \geqslant 1$, le nombre de multiples de $2^j$ parmi $1, 2, \ldots, n$ vaut $\lfloor n / 2^j \rfloor$. Montrons que
$$v(n) = \left\lfloor \frac{n}{2} \right\rfloor + \left\lfloor \frac{n}{4} \right\rfloor + \left\lfloor \frac{n}{8} \right\rfloor + \cdots$$
Prenons un entier $i$ entre $1$ et $n$, et supposons que $2^e$ divise $i$ mais pas $2^{e+1}$. Ce nombre $i$ apporte exactement $e$ facteurs $2$ au produit $n!$. Dans la somme ci-dessus, il est compté dans les termes $j = 1, 2, \ldots, e$ (il est multiple de $2, 4, \ldots, 2^e$), et dans aucun autre : il est donc compté $e$ fois, une fois par facteur $2$ qu'il apporte. En additionnant sur tous les $i$, on obtient bien $v(n)$.

Soit $k \geqslant 0$ l'entier tel que $2^k \leqslant n < 2^{k+1}$. Pour $j > k$, on a $2^j > n$ et le terme $\lfloor n / 2^j \rfloor$ est nul. Donc
$$v(n) = \left\lfloor \frac{n}{2} \right\rfloor + \left\lfloor \frac{n}{4} \right\rfloor + \cdots + \left\lfloor \frac{n}{2^k} \right\rfloor .$$

### Étape 3 : une majoration

Chaque partie entière est au plus égale au quotient exact, donc
$$v(n) \leqslant \frac{n}{2} + \frac{n}{4} + \cdots + \frac{n}{2^k} = n\left(\frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2^k}\right) .$$
La somme entre parenthèses vaut $1 - 1/2^k$. En effet, en la multipliant par $2^k$, on obtient $2^{k-1} + 2^{k-2} + \cdots + 2 + 1 = 2^k - 1$ (somme géométrique). Donc
$$v(n) \leqslant n - \frac{n}{2^k} . \qquad (\star)$$
(Pour $n = 1$, on a $k = 0$, la somme est vide, et $(\star)$ dit simplement $v(1) \leqslant 0$.)

### Étape 4 : si $2^{n-1}$ divise $n!$, alors $n$ est une puissance de $2$

Supposons que $2^{n-1}$ divise $n!$, c'est-à-dire $v(n) \geqslant n - 1$. D'après $(\star)$,
$$n - 1 \leqslant n - \frac{n}{2^k}, \qquad \text{donc} \qquad \frac{n}{2^k} \leqslant 1, \qquad \text{donc} \qquad n \leqslant 2^k .$$
Comme on avait aussi $2^k \leqslant n$, on obtient **$n = 2^k$, une puissance de $2$.**

### Étape 5 : si $n$ est une puissance de $2$, alors $2^{n-1}$ divise $n!$

Supposons $n = 2^k$. Pour $1 \leqslant j \leqslant k$, le quotient $2^k / 2^j = 2^{k-j}$ est un entier, donc la partie entière ne change rien. D'après l'étape 2,
$$v(n) = 2^{k-1} + 2^{k-2} + \cdots + 2 + 1 = 2^k - 1 = n - 1 .$$
**Donc $2^{n-1}$ divise $n!$.**

### Conclusion

Les étapes 4 et 5 montrent que **$n!$ est divisible par $2^{n-1}$ si et seulement si $n$ est une puissance de $2$.** Au passage, la majoration $(\star)$ montre aussi que $2^n$ ne divise jamais $n!$.

## Going further

1. Écris $n$ en base $2$, et note $s(n)$ le nombre de chiffres $1$ de cette écriture. Par exemple $6$ s'écrit $110$, donc $s(6) = 2$. Vérifie sur des exemples que $v(n) = n - s(n)$, puis essaie de le démontrer. Retrouve ainsi le résultat de l'exercice.
2. Pour quels entiers $n$ le nombre $n!$ est-il divisible par $2^{n-2}$ ?
