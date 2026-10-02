---
id: "12483"
title: "Des ensembles beaux et forts"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, polynome, racine-entiere, principe-des-tiroirs, ecriture-en-base, recurrence-forte, puissances-de-2]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 mai 2020"
  reference: "2020-11_Enonce-Test-Mai-2020.pdf, exercice 6 (groupe Senior) ; corrigé 2020-05_Corrige-Web-05-2020.pdf (le corrigé obtient le multiple de n avec l'indicatrice d'Euler ; solution réécrite avec le principe des tiroirs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Mai-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Mai-2020.pdf"
---

## Statement

Soit $S$ un ensemble d'entiers relatifs.

- On dit que $S$ est **beau** s'il contient tous les entiers de la forme $2^a - 2^b$, où $a$ et $b$
  sont des entiers naturels non nuls.
- On dit que $S$ est **fort** si, pour tout polynôme $P(X)$ non constant dont tous les
  coefficients sont dans $S$, les racines entières de $P(X)$ sont aussi dans $S$.

Trouver tous les ensembles qui sont à la fois beaux et forts.

## Hints

1. Il y a un candidat évident. Pour montrer que c'est le seul, commence par les petits entiers :
   montre que $-2$, $-1$, $0$, $1$ et $2$ sont dans $S$.
2. Montre que tout entier $n \geqslant 1$ divise un nombre de la forme $2^a - 2^b$ avec
   $a > b \geqslant 1$. Regarde les restes des divisions de $2^1, 2^2, \ldots, 2^{n+1}$ par $n$.
3. Raisonne par récurrence : suppose que tous les entiers de $-(n-1)$ à $n - 1$ sont dans $S$, et
   prends un multiple $k > 0$ de $n$ qui est dans $S$. Écris $\dfrac{k}{n}$ en base $n$.
4. Si $\dfrac{k}{n} = c_0 + c_1 n + \cdots + c_\ell\, n^\ell$, que vaut le polynôme
   $k - c_0 X - c_1 X^2 - \cdots - c_\ell X^{\ell + 1}$ en $X = n$ ?

## Solution

Nous allons montrer que **le seul ensemble beau et fort est $\mathbb{Z}$**, l'ensemble de tous les
entiers relatifs.

L'ensemble $\mathbb{Z}$ est beau, puisque $2^a - 2^b$ est toujours un entier, et il est fort,
puisqu'une racine entière est un élément de $\mathbb{Z}$. Il reste à montrer que c'est le seul.
Soit donc $S$ un ensemble beau et fort. Nous allons montrer que tout entier est dans $S$.

### Étape 1 : les petits entiers

Comme $S$ est beau, il contient $2^1 - 2^1 = 0$, $2^2 - 2^1 = 2$ et $2^1 - 2^2 = -2$.

Le polynôme $2X - 2$ est non constant et ses coefficients $2$ et $-2$ sont dans $S$. Sa racine
$1$ est entière, donc $1$ est dans $S$, puisque $S$ est fort. De même, le polynôme $2X + 2$ a pour
racine $-1$, donc $-1$ est dans $S$.

Ainsi $-2$, $-1$, $0$, $1$ et $2$ sont dans $S$.

### Étape 2 : chaque entier $n \geqslant 1$ a un multiple dans $S$

Soit $n \geqslant 1$. Considérons les $n + 1$ nombres $2^1, 2^2, \ldots, 2^{n+1}$ et leurs restes
dans la division euclidienne par $n$. Ces restes sont pris parmi les $n$ valeurs
$0, 1, \ldots, n - 1$. D'après le principe des tiroirs, deux de ces nombres, disons $2^a$ et $2^b$
avec $a > b \geqslant 1$, ont le même reste. Leur différence $2^a - 2^b$ est alors un multiple de
$n$.

Ainsi, **tout entier $n \geqslant 1$ divise un entier $k = 2^a - 2^b > 0$, qui est dans $S$.**

### Étape 3 : l'écriture en base $n$

Soit $n \geqslant 2$. Tout entier $q \geqslant 1$ peut s'écrire
$$q = c_0 + c_1 n + c_2 n^2 + \cdots + c_\ell\, n^\ell,$$
où $\ell \geqslant 0$ et où les « chiffres » $c_0, c_1, \ldots, c_\ell$ sont des entiers compris
entre $0$ et $n - 1$, avec $c_\ell \neq 0$. C'est l'écriture de $q$ en base $n$, comme l'écriture
décimale est l'écriture en base $10$.

On le démontre par récurrence forte sur $q$. Si $q \leqslant n - 1$, on prend $\ell = 0$ et
$c_0 = q$. Si $q \geqslant n$, la division euclidienne de $q$ par $n$ donne $q = nq' + c_0$ avec
$0 \leqslant c_0 \leqslant n - 1$ et $1 \leqslant q' < q$. Par hypothèse de récurrence,
$q' = d_0 + d_1 n + \cdots + d_m n^m$ avec des chiffres entre $0$ et $n - 1$ et $d_m \neq 0$, et
alors $q = c_0 + d_0 n + d_1 n^2 + \cdots + d_m n^{m+1}$ convient.

### Étape 4 : la récurrence

Montrons par récurrence sur $n \geqslant 2$ la propriété

> $\mathcal{P}(n)$ : tous les entiers compris entre $-n$ et $n$ sont dans $S$.

D'après l'étape 1, $\mathcal{P}(2)$ est vraie.

Soit $n \geqslant 3$ tel que $\mathcal{P}(n - 1)$ soit vraie : tous les entiers de $-(n-1)$ à
$n - 1$ sont dans $S$. Il suffit de montrer que $n$ et $-n$ sont dans $S$.

D'après l'étape 2, il existe un entier $k > 0$, multiple de $n$, qui est dans $S$. Posons
$q = \dfrac{k}{n}$, qui est un entier $\geqslant 1$, et écrivons-le en base $n$ comme à l'étape 3 :
$$q = c_0 + c_1 n + \cdots + c_\ell\, n^\ell.$$

**L'entier $n$ est dans $S$.** Considérons le polynôme
$$P(X) = k - c_0 X - c_1 X^2 - \cdots - c_\ell\, X^{\ell+1}.$$

- Ses coefficients sont $k$, qui est dans $S$, et les nombres $-c_0, -c_1, \ldots, -c_\ell$, qui
  sont des entiers compris entre $-(n-1)$ et $0$, donc dans $S$ par hypothèse de récurrence.
- Il est non constant, puisque le coefficient de $X^{\ell + 1}$ est $-c_\ell \neq 0$.
- On a $P(n) = k - n\,(c_0 + c_1 n + \cdots + c_\ell\, n^\ell) = k - nq = 0$.

Donc $n$ est une racine entière de $P$, et comme $S$ est fort, **$n$ est dans $S$**.

**L'entier $-n$ est dans $S$.** Considérons cette fois le polynôme
$$Q(X) = k - c_0(-X) - c_1(-X)^2 - \cdots - c_\ell\,(-X)^{\ell + 1}.$$
Ses coefficients sont $k$ et des nombres égaux à $c_i$ ou à $-c_i$, tous compris entre $-(n-1)$ et
$n - 1$, donc dans $S$. Il est non constant pour la même raison que $P$, et
$Q(-n) = k - c_0 n - c_1 n^2 - \cdots - c_\ell\, n^{\ell+1} = k - nq = 0$. Donc **$-n$ est dans
$S$**.

La propriété $\mathcal{P}(n)$ est donc vraie, ce qui achève la récurrence.

### Conclusion

Tout entier relatif $m$ vérifie $\mathcal{P}(n)$ pour $n = \max(|m|, 2)$, donc il est dans $S$.
Ainsi $S = \mathbb{Z}$ : **le seul ensemble beau et fort est $\mathbb{Z}$.**

## Going further

1. Soit $c \geqslant 2$ un entier fixé. Montrer que la réponse ne change pas si l'on remplace,
   dans la définition d'un ensemble beau, les entiers $2^a - 2^b$ par les entiers $c^a - c^b$.
2. Pourquoi faut-il, dans la récurrence, s'occuper aussi des entiers négatifs ? Où servent-ils ?
