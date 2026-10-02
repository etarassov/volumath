---
id: "12257"
title: "Une suite dont la somme des n premiers termes dépasse n"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, suites, recurrence, telescopage, inverse]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de mai 2016"
  reference: "2017-10_ofm-2015-2016-test-mai.pdf, test du 11 mai 2016, exercice 5 (groupe A) ; pas de corrigé publié, solution rédigée et vérifiée pour cette base. Il s'agit du problème A1 de la liste courte des Olympiades internationales 2015"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mai.pdf"
---

## Statement

Soit $(a_k)_{k \geqslant 1}$ une suite de nombres réels strictement positifs telle que, pour tout entier $k \geqslant 1$,
$$a_{k+1} \geqslant \frac{k\,a_k}{a_k^2 + k - 1}.$$

Montrer que $a_1 + a_2 + \cdots + a_n \geqslant n$ pour tout entier $n \geqslant 2$.

## Hints

1. Tous les nombres sont strictement positifs. Passe aux inverses dans l'hypothèse, puis multiplie par $k$.
2. Tu dois trouver $\frac{k}{a_{k+1}} - \frac{k - 1}{a_k} \leqslant a_k$. Additionne ces inégalités pour $k = 1, 2, \ldots, n - 1$.
3. Tu obtiens $a_1 + \cdots + a_{n-1} \geqslant \frac{n - 1}{a_n}$. Raisonne par récurrence sur $n$, en séparant les cas $a_n \geqslant 1$ et $a_n < 1$.
4. Dans le second cas, étudie le signe de $\frac{n - 1}{x} + x - n$ pour $0 < x < 1$, en le factorisant.

## Solution

**Étape 1. On passe aux inverses.**

Soit $k \geqslant 1$. Tous les nombres sont strictement positifs, donc on peut passer aux inverses dans l'hypothèse, en changeant le sens de l'inégalité :
$$\frac{1}{a_{k+1}} \leqslant \frac{a_k^2 + k - 1}{k\,a_k} = \frac{a_k}{k} + \frac{k - 1}{k\,a_k}.$$
En multipliant par $k > 0$, on obtient
$$\frac{k}{a_{k+1}} - \frac{k - 1}{a_k} \leqslant a_k.$$

**Étape 2. Une somme télescopique.**

Soit $n \geqslant 2$. On additionne ces inégalités pour $k = 1, 2, \ldots, n - 1$. À gauche, presque tout se simplifie :
$$\left(\frac{1}{a_2} - \frac{0}{a_1}\right) + \left(\frac{2}{a_3} - \frac{1}{a_2}\right) + \cdots + \left(\frac{n - 1}{a_n} - \frac{n - 2}{a_{n-1}}\right) = \frac{n - 1}{a_n}.$$
On obtient donc, pour tout $n \geqslant 2$,
$$a_1 + a_2 + \cdots + a_{n-1} \geqslant \frac{n - 1}{a_n}.$$

**Étape 3. Un petit calcul.**

Pour un entier $n \geqslant 2$ et un réel $x > 0$,
$$\frac{n - 1}{x} + x - n = \frac{x^2 - n\,x + (n - 1)}{x} = \frac{(x - 1)(x - n + 1)}{x}.$$
Si $0 < x < 1$, alors $x - 1 < 0$ et $x - n + 1 < 0$, puisque $n - 1 \geqslant 1$. Le quotient est donc strictement positif, et
$$\frac{n - 1}{x} + x > n.$$

**Étape 4. La récurrence.**

On montre par récurrence que, pour tout $n \geqslant 2$, la propriété « $a_1 + \cdots + a_n \geqslant n$ » est vraie.

*Initialisation, $n = 2$.* L'étape 2 donne $a_1 \geqslant \frac{1}{a_2}$, donc
$$a_1 + a_2 \geqslant \frac{1}{a_2} + a_2 \geqslant 2,$$
car $\frac{1}{x} + x - 2 = \frac{(x - 1)^2}{x} \geqslant 0$ pour tout $x > 0$.

*Hérédité.* Soit $n \geqslant 3$, et supposons que $a_1 + \cdots + a_{n-1} \geqslant n - 1$. On distingue deux cas.

- Si $a_n \geqslant 1$, alors $a_1 + \cdots + a_{n-1} + a_n \geqslant (n - 1) + 1 = n$.
- Si $a_n < 1$, on utilise l'étape 2 puis l'étape 3 avec $x = a_n$ :
$$a_1 + \cdots + a_{n-1} + a_n \geqslant \frac{n - 1}{a_n} + a_n > n.$$

Dans les deux cas, $a_1 + \cdots + a_n \geqslant n$.

**Conclusion.** Pour tout entier $n \geqslant 2$, on a $a_1 + a_2 + \cdots + a_n \geqslant n$.

## Going further

1. Vérifie que la suite constante égale à $1$ satisfait l'hypothèse. L'inégalité est alors une égalité pour tout $n$.
2. Pourquoi l'énoncé demande-t-il $n \geqslant 2$ ? Trouve une suite qui satisfait l'hypothèse avec $a_1 < 1$.
