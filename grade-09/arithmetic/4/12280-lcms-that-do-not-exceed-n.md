---
id: "12280"
title: "Des ppcm qui ne dépassent pas n"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [ppcm, multiples, fractions, inegalite, somme telescopique]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de mai 2017"
  reference: "2017-10_ofm-2016-2017-test-mai.pdf, test du 3 mai 2017, exercice 2 (groupe B, élèves nés en 2002 ou après) ; pas de corrigé publié, solution rédigée pour cette base et énoncé vérifié par ordinateur sur toutes les listes possibles pour n ⩽ 60"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mai.pdf"
---

## Statement

Pour deux entiers strictement positifs $a$ et $b$, on note $\mathrm{PPCM}(a, b)$ leur plus petit commun multiple, c'est-à-dire le plus petit entier strictement positif qui est à la fois un multiple de $a$ et un multiple de $b$.

Soient $n \geqslant 2$ et $k \geqslant 2$ deux entiers, et soient $a_1, a_2, \ldots, a_k$ des entiers tels que
$$n \geqslant a_1 > a_2 > \cdots > a_k > 0,$$
et tels que $\mathrm{PPCM}(a_i, a_j) \leqslant n$ pour tous les indices $i$ et $j$.

Prouver que $i \times a_i \leqslant n$ pour tout $i = 1, 2, \ldots, k$.

## Hints

1. Essaie avec $n = 12$ : trouve une liste de nombres qui convient, et vérifie la conclusion sur cet exemple.
2. Soient $a > b$ deux entiers strictement positifs, et $L = \mathrm{PPCM}(a, b)$. On peut écrire $L = u \times a$ et $L = v \times b$ avec des entiers $u$ et $v$. Lequel de $u$ et $v$ est le plus grand ?
3. On a $v \geqslant u + 1$. Divise par $L$ pour comparer $\frac{1}{b} - \frac{1}{a}$ et $\frac{1}{L}$.
4. Tu dois obtenir $\frac{1}{a_{j+1}} - \frac{1}{a_j} \geqslant \frac{1}{n}$ pour chaque $j$. Additionne ces inégalités pour $j = 1, 2, \ldots, i - 1$.

## Solution

**Étape 1. Un lemme sur deux entiers.**

*Soient $a > b$ deux entiers strictement positifs tels que $\mathrm{PPCM}(a, b) \leqslant n$. Alors*
$$\frac{1}{b} - \frac{1}{a} \geqslant \frac{1}{n}.$$

Notons $L = \mathrm{PPCM}(a, b)$. C'est un multiple de $a$ et de $b$, donc il existe des entiers strictement positifs $u$ et $v$ tels que
$$L = u \times a = v \times b.$$
Comme $a > b$ et $u \times a = v \times b$, on a forcément $v > u$ : si l'on avait $v \leqslant u$, on aurait $v \times b < u \times a$, puisque $b < a$. Les nombres $u$ et $v$ étant entiers, on obtient $v - u \geqslant 1$.

Or $u = \frac{L}{a}$ et $v = \frac{L}{b}$. L'inégalité $v - u \geqslant 1$ s'écrit donc
$$\frac{L}{b} - \frac{L}{a} \geqslant 1, \qquad \text{c'est-à-dire} \qquad \frac{1}{b} - \frac{1}{a} \geqslant \frac{1}{L},$$
après division par le nombre strictement positif $L$. Enfin $L \leqslant n$, donc $\frac{1}{L} \geqslant \frac{1}{n}$, ce qui démontre le lemme.

**Étape 2. On applique le lemme à deux termes voisins.**

Pour chaque $j$ compris entre $1$ et $k - 1$, on a $a_j > a_{j+1} > 0$ et $\mathrm{PPCM}(a_j, a_{j+1}) \leqslant n$. Le lemme, appliqué à $a = a_j$ et $b = a_{j+1}$, donne
$$\frac{1}{a_{j+1}} - \frac{1}{a_j} \geqslant \frac{1}{n}.$$

**Étape 3. On additionne.**

Soit $i$ compris entre $1$ et $k$. Pour $i = 1$, l'inégalité voulue $a_1 \leqslant n$ fait partie des hypothèses. Supposons $i \geqslant 2$, et additionnons les inégalités de l'étape 2 pour $j = 1, 2, \ldots, i - 1$ :
$$\left(\frac{1}{a_2} - \frac{1}{a_1}\right) + \left(\frac{1}{a_3} - \frac{1}{a_2}\right) + \cdots + \left(\frac{1}{a_i} - \frac{1}{a_{i-1}}\right) \geqslant \frac{i - 1}{n}.$$
Dans le membre de gauche, chaque fraction $\frac{1}{a_2}, \ldots, \frac{1}{a_{i-1}}$ apparaît une fois avec le signe $+$ et une fois avec le signe $-$. Il ne reste que $\frac{1}{a_i} - \frac{1}{a_1}$, donc
$$\frac{1}{a_i} \geqslant \frac{1}{a_1} + \frac{i - 1}{n}.$$
Comme $a_1 \leqslant n$, on a $\frac{1}{a_1} \geqslant \frac{1}{n}$, et donc
$$\frac{1}{a_i} \geqslant \frac{1}{n} + \frac{i - 1}{n} = \frac{i}{n}.$$
On multiplie les deux membres par le nombre strictement positif $n \times a_i$ : on obtient $n \geqslant i \times a_i$.

**Conclusion.** Pour tout $i = 1, 2, \ldots, k$, on a bien $i \times a_i \leqslant n$.

On remarque que la démonstration n'utilise l'hypothèse sur les $\mathrm{PPCM}$ que pour deux termes voisins $a_j$ et $a_{j+1}$.

## Going further

1. Pour $n = 12$, vérifie que la liste $12, 6, 4, 3, 2, 1$ convient. Montre qu'aucune liste ne convient avec $k = 7$.
2. Explique pourquoi $a_i \geqslant k + 1 - i$ pour tout $i$. En utilisant aussi l'exercice, montre que $k \leqslant 2\sqrt{n}$.
