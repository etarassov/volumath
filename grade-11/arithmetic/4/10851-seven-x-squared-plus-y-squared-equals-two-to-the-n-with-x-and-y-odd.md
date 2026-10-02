---
id: "10851"
title: "7x² + y² = 2ⁿ avec x et y impairs"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [puissances-de-deux, parite, recurrence, identite-remarquable, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Communs, exercice 6 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé recopie l'énoncé sans le mot « impairs »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. Montrer qu'il existe deux entiers $x$ et $y$, strictement positifs et **impairs**, tels que
$$7x^2 + y^2 = 2^n .$$

## Hints

1. Trouve une solution pour $n = 3$, $n = 4$, $n = 5$ et $n = 6$.
2. Raisonne par récurrence : à partir d'une solution $(x, y)$ pour $n$, cherche une solution pour $n + 1$ fabriquée avec les nombres $(x + y)/2$ et $(x - y)/2$.
3. Pose $a = (x + y)/2$ et $c = (7x - y)/2$. Vérifie que $7a^2 + c^2 = 2\left(7x^2 + y^2\right)$, puis trouve une formule du même genre avec $b = (x - y)/2$.
4. Parmi les deux nombres $(x + y)/2$ et $(x - y)/2$, un seul est impair. Pourquoi ?

## Solution

On raisonne par **récurrence** sur $n \geqslant 3$.

**Initialisation.** Pour $n = 3$, on prend $x = y = 1$ : $7 + 1 = 8 = 2^3$.

**Hérédité.** Soit $n \geqslant 3$, et supposons qu'il existe des entiers $x$, $y$ strictement positifs et impairs tels que $7x^2 + y^2 = 2^n$. Cherchons une solution pour $2^{n+1}$.

### Étape 1 : deux identités

Comme $x$ et $y$ sont impairs, $x + y$ et $x - y$ sont pairs, donc les quatre nombres
$$a = \frac{x + y}{2}, \qquad b = \frac{x - y}{2}, \qquad c = \frac{7x - y}{2}, \qquad d = \frac{7x + y}{2}$$
sont des entiers. En développant,
$$7a^2 + c^2 = \frac{7\left(x^2 + 2xy + y^2\right) + \left(49x^2 - 14xy + y^2\right)}{4} = \frac{56x^2 + 8y^2}{4} = 2\left(7x^2 + y^2\right) .$$
Le terme en $xy$ disparaît. De même,
$$7b^2 + d^2 = \frac{7\left(x^2 - 2xy + y^2\right) + \left(49x^2 + 14xy + y^2\right)}{4} = \frac{56x^2 + 8y^2}{4} = 2\left(7x^2 + y^2\right) .$$
Donc
$$7a^2 + c^2 = 2^{n+1} \qquad \text{et} \qquad 7b^2 + d^2 = 2^{n+1} .$$
Il reste à choisir celui des deux couples $(a, c)$ et $(b, d)$ qui est formé de nombres impairs.

### Étape 2 : la parité

On a $a + b = x$, qui est impair. Donc **l'un des nombres $a$, $b$ est impair et l'autre est pair.**

- *Si $a$ est impair.* On a $c = \left(8x - (x + y)\right)/2 = 4x - a$. Comme $4x$ est pair et $a$ impair, $c$ est impair.
- *Si $b$ est impair.* On a $d = \left(8x - (x - y)\right)/2 = 4x - b$, qui est impair pour la même raison.

Dans le premier cas, on prend $X = a$ et $Y = |c|$. Dans le second, $X = |b|$ et $Y = d$. Dans les deux cas, $X$ et $Y$ sont impairs, donc différents de $0$, et ils sont positifs : ce sont des entiers strictement positifs impairs. Un carré ne change pas quand on change le signe du nombre, donc $7X^2 + Y^2 = 2^{n+1}$.

### Conclusion

Par récurrence, **pour tout $n \geqslant 3$, il existe deux entiers strictement positifs impairs $x$ et $y$ tels que $7x^2 + y^2 = 2^n$.**

*Les premières solutions obtenues ainsi :*

| $n$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|
| $x$ | $1$ | $1$ | $1$ | $3$ | $1$ | $5$ | $7$ | $3$ |
| $y$ | $1$ | $3$ | $5$ | $1$ | $11$ | $9$ | $13$ | $31$ |

Par exemple, pour passer de $n = 4$ à $n = 5$ : avec $x = 1$, $y = 3$, on trouve $a = 2$ (pair) et $b = -1$ (impair), puis $d = (7 + 3)/2 = 5$. On vérifie $7 \times 1 + 25 = 32$.

## Going further

1. Montre que si $x$ et $y$ sont impairs, alors $7x^2 + y^2$ est un multiple de $8$. *Indication : le carré d'un nombre impair laisse le reste $1$ dans la division par $8$.* Pourquoi l'énoncé demande-t-il donc $n \geqslant 3$ ?
2. Reprends la méthode avec $x = 3$, $y = 1$ pour $n = 6$, et calcule les solutions pour $n = 11$ et $n = 12$.
