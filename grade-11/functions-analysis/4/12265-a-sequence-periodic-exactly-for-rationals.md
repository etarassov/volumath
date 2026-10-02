---
id: "12265"
title: "Une suite périodique exactement pour les rationnels"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [suites, nombres-rationnels, periodicite, valeur-absolue, principe-des-tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 5 (groupe A). La solution suit le corrigé ; pour le sens direct, on écrit tous les termes avec le même dénominateur, ce qui évite l'argument de suite décroissante d'entiers"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

Soit $a$ un réel de l'intervalle $[0, 1]$. On définit la suite $(x_n)$ par $x_0 = a$ et, pour tout entier $n \geqslant 0$,
$$x_{n+1} = 1 - |1 - 2x_n|.$$

On dit que la suite $(x_n)$ est **périodique à partir d'un certain rang** s'il existe des entiers $T \geqslant 1$ et $N \geqslant 0$ tels que $x_{k+T} = x_k$ pour tout entier $k \geqslant N$.

Montrer que la suite $(x_n)$ est périodique à partir d'un certain rang si et seulement si $a$ est un nombre rationnel.

## Hints

1. Simplifie l'expression de $x_{n+1}$ selon que $x_n \leqslant \frac{1}{2}$ ou $x_n \geqslant \frac{1}{2}$. Vérifie que tous les termes restent dans $[0, 1]$.
2. Si $a = \frac{p}{q}$ avec $p$ et $q$ entiers, montre que chaque terme s'écrit $\frac{m}{q}$ avec $m$ entier. Combien y a-t-il de tels nombres dans $[0, 1]$ ?
3. Pour l'autre sens, montre que $x_{N+T}$ s'écrit $c + e \times 2^T x_N$, où $c$ est un entier et $e$ vaut $1$ ou $-1$.
4. Déduis-en que $x_N$ est rationnel, puis remonte de $x_N$ jusqu'à $x_0$.

## Solution

**Étape 1. Une autre écriture de la suite.**

Soit $x$ un réel de $[0, 1]$.

- Si $x \leqslant \frac{1}{2}$, alors $1 - 2x \geqslant 0$, donc $1 - |1 - 2x| = 1 - (1 - 2x) = 2x$, qui est dans $[0, 1]$.
- Si $x \geqslant \frac{1}{2}$, alors $1 - 2x \leqslant 0$, donc $1 - |1 - 2x| = 1 + (1 - 2x) = 2 - 2x$, qui est aussi dans $[0, 1]$.

Comme $x_0 = a$ est dans $[0, 1]$, on en déduit de proche en proche que tous les termes sont dans $[0, 1]$, et que, pour tout $n \geqslant 0$,
$$x_{n+1} = 2x_n \qquad \text{ou} \qquad x_{n+1} = 2 - 2x_n. \qquad (1)$$

**Étape 2. Si $a$ est rationnel, la suite est périodique à partir d'un certain rang.**

On écrit $a = \frac{p}{q}$, avec $p$ et $q$ entiers et $q \geqslant 1$.

*Tous les termes s'écrivent $\frac{m}{q}$ avec $m$ entier.* C'est vrai pour $x_0$. Si $x_n = \frac{m}{q}$, alors d'après $(1)$, $x_{n+1}$ vaut $\frac{2m}{q}$ ou $\frac{2q - 2m}{q}$, qui sont encore de cette forme. C'est donc vrai de proche en proche pour tous les termes.

Comme $0 \leqslant x_n \leqslant 1$, l'entier $m$ est entre $0$ et $q$. Les termes de la suite ne peuvent donc prendre que $q + 1$ valeurs : $\frac{0}{q}, \frac{1}{q}, \ldots, \frac{q}{q}$.

*Deux termes sont égaux.* Les $q + 2$ termes $x_0, x_1, \ldots, x_{q+1}$ prennent au plus $q + 1$ valeurs. D'après le principe des tiroirs, deux d'entre eux sont égaux : il existe $i < j$ tels que $x_i = x_j$. On pose $T = j - i \geqslant 1$.

*La suite se répète à partir du rang $i$.* Chaque terme ne dépend que du précédent. Donc si $x_k = x_{k+T}$, alors
$$x_{k+1} = 1 - |1 - 2x_k| = 1 - |1 - 2x_{k+T}| = x_{k+T+1}.$$
Comme $x_i = x_{i+T}$, on obtient de proche en proche $x_{k+T} = x_k$ pour tout $k \geqslant i$. La suite est périodique à partir du rang $N = i$.

**Étape 3. Si la suite est périodique à partir d'un certain rang, $a$ est rationnel.**

On suppose qu'il existe $T \geqslant 1$ et $N \geqslant 0$ tels que $x_{k+T} = x_k$ pour tout $k \geqslant N$. En particulier $x_{N+T} = x_N$.

*Une formule pour $x_{N+j}$.* Montrons que, pour tout $j$ entre $0$ et $T$, on peut écrire
$$x_{N+j} = c_j + e_j \times 2^j\,x_N,$$
où $c_j$ est un entier et où $e_j$ vaut $1$ ou $-1$. Pour $j = 0$, on prend $c_0 = 0$ et $e_0 = 1$. Si c'est vrai pour $j$, alors d'après $(1)$ :

- ou bien $x_{N+j+1} = 2x_{N+j} = 2c_j + e_j \times 2^{j+1}\,x_N$,
- ou bien $x_{N+j+1} = 2 - 2x_{N+j} = (2 - 2c_j) + (-e_j) \times 2^{j+1}\,x_N$.

Dans les deux cas, la formule est vraie pour $j + 1$. Elle est donc vraie de proche en proche jusqu'à $j = T$.

*Le terme $x_N$ est rationnel.* Avec $j = T$, l'égalité $x_{N+T} = x_N$ s'écrit $x_N = c_T + e_T \times 2^T x_N$, c'est-à-dire
$$\left(1 - e_T \times 2^T\right) x_N = c_T.$$
Comme $T \geqslant 1$, on a $2^T \geqslant 2$, donc $e_T \times 2^T$ vaut au moins $2$ ou au plus $-2$, et il ne vaut pas $1$. Le nombre $1 - e_T \times 2^T$ est donc un entier non nul, et
$$x_N = \frac{c_T}{1 - e_T \times 2^T}$$
est un quotient de deux entiers : c'est un rationnel.

*On remonte jusqu'à $x_0$.* D'après $(1)$, pour tout $n$, on a $x_n = \frac{x_{n+1}}{2}$ ou $x_n = \frac{2 - x_{n+1}}{2}$. Donc si $x_{n+1}$ est rationnel, $x_n$ l'est aussi. Comme $x_N$ est rationnel, $x_{N-1}$ l'est, puis $x_{N-2}$, et ainsi de suite jusqu'à $x_0 = a$.

**Conclusion.** La suite $(x_n)$ est périodique à partir d'un certain rang si et seulement si $a$ est rationnel.

## Going further

1. Calcule les premiers termes de la suite pour $a = \frac{1}{7}$, puis pour $a = \frac{1}{5}$. À partir de quel rang la suite est-elle périodique, et avec quelle période ?
2. Trouve un réel $a$ de $]0, 1[$ pour lequel la suite finit par être constante.
