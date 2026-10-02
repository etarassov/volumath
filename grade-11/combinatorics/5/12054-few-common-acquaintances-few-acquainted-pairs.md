---
id: "12054"
title: "Peu de connaissances communes, peu de paires d'amis"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [double comptage, connaissances, somme des carres, moyenne, inegalites]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test du 26 février 2014"
  reference: "2017-10_ofm-2013-2014-test-fevrier.pdf, exercice 6 (groupe A) ; corrigé 2017-10_ofm-2013-2014-test-fevrier-corrige.pdf (le corrigé passe par les graphes et l'inégalité de Jensen, la solution ici n'utilise qu'un double comptage et un carré positif) ; inégalité vérifiée par ordinateur sur des milliers d'assemblées tirées au hasard"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-fevrier.pdf"
---

## Statement

Soient $n$ et $p$ deux entiers supérieurs ou égaux à $1$. Dans une assemblée de $n$ personnes, se connaître est réciproque : si $A$ connaît $B$, alors $B$ connaît $A$. Personne ne compte parmi ses propres connaissances.

On suppose que deux personnes quelconques ont au plus $p$ connaissances communes, c'est-à-dire qu'il y a au plus $p$ personnes qui connaissent à la fois l'une et l'autre.

Montrer que le nombre de paires $\{A, B\}$ de personnes qui se connaissent est inférieur ou égal à $\sqrt{p n^3}$.

## Hints

1. Notez $d_1, d_2, \ldots, d_n$ les nombres de connaissances des $n$ personnes, et $a$ le nombre de paires de personnes qui se connaissent. Que vaut $d_1 + d_2 + \cdots + d_n$ ?
2. Comptez de deux façons le nombre de façons de choisir une personne $X$ et deux de ses connaissances.
3. Pour comparer $d_1^2 + \cdots + d_n^2$ et $(d_1 + \cdots + d_n)^2$, développez $(d_1 - m)^2 + \cdots + (d_n - m)^2$, où $m$ est la moyenne des $d_i$.

## Solution

Numérotons les personnes de $1$ à $n$. Notons $d_i$ le nombre de connaissances de la personne numéro $i$, et $a$ le nombre de paires de personnes qui se connaissent. Il s'agit de montrer que $a \leqslant \sqrt{p n^3}$.

**Étape 1 : la somme des $d_i$.** Une paire $\{A, B\}$ de personnes qui se connaissent est comptée deux fois dans la somme $d_1 + \cdots + d_n$ : une fois parmi les connaissances de $A$, une fois parmi celles de $B$. Donc

$$d_1 + d_2 + \cdots + d_n = 2a .$$

**Étape 2 : un double comptage.** Appelons **chapeau** un choix d'une personne $X$ et d'une paire $\{A, B\}$ formée de deux connaissances différentes de $X$. Notons $C$ le nombre de chapeaux, et comptons-les de deux façons.

- *En partant de $X$.* La personne numéro $i$ a $d_i$ connaissances, parmi lesquelles on peut former $d_i(d_i - 1)/2$ paires. Donc $C$ est la somme des nombres $d_i(d_i - 1)/2$, pour $i$ de $1$ à $n$.
- *En partant de la paire $\{A, B\}$.* Il y a $n(n - 1)/2$ paires de personnes. Pour une paire $\{A, B\}$ donnée, les personnes $X$ qui conviennent sont exactement les connaissances communes de $A$ et de $B$ : il y en a au plus $p$. Donc $C \leqslant p\,n(n - 1)/2$.

En comparant et en multipliant par $2$,

$$d_1(d_1 - 1) + d_2(d_2 - 1) + \cdots + d_n(d_n - 1) \leqslant p\,n(n - 1) .$$

Le membre de gauche vaut $(d_1^2 + \cdots + d_n^2) - (d_1 + \cdots + d_n)$, c'est-à-dire $(d_1^2 + \cdots + d_n^2) - 2a$ d'après l'étape 1. Donc

$$d_1^2 + d_2^2 + \cdots + d_n^2 \leqslant p\,n(n - 1) + 2a . \qquad (1)$$

**Étape 3 : la somme des carrés est au moins $4a^2/n$.** Notons $m = 2a/n$ la moyenne des nombres $d_i$. Une somme de carrés est positive ou nulle, donc

$$(d_1 - m)^2 + (d_2 - m)^2 + \cdots + (d_n - m)^2 \geqslant 0 .$$

En développant chaque carré, le membre de gauche vaut

$$(d_1^2 + \cdots + d_n^2) - 2m(d_1 + \cdots + d_n) + n m^2 = (d_1^2 + \cdots + d_n^2) - \frac{8a^2}{n} + \frac{4a^2}{n} ,$$

car $2m \times 2a = 8a^2/n$ et $n m^2 = 4a^2/n$. On obtient

$$d_1^2 + d_2^2 + \cdots + d_n^2 \geqslant \frac{4a^2}{n} . \qquad (2)$$

**Étape 4 : conclusion du calcul.** En réunissant (1) et (2), puis en multipliant par $n$, on obtient

$$4a^2 \leqslant p\,n^2(n - 1) + 2an .$$

Or $a$ ne dépasse pas le nombre total de paires de personnes, donc $a \leqslant n(n - 1)/2$, et $2an \leqslant n^2(n - 1)$. Comme $p \geqslant 1$, on a $n^2(n - 1) \leqslant p\,n^2(n - 1)$. Donc

$$4a^2 \leqslant 2p\,n^2(n - 1) .$$

En divisant par $4$, et comme $n - 1 \leqslant 2n$,

$$a^2 \leqslant \frac{p\,n^2(n - 1)}{2} \leqslant p n^3 .$$

Comme $a \geqslant 0$, on en déduit $a \leqslant \sqrt{p n^3}$.

**Conclusion.** Le nombre de paires de personnes qui se connaissent est au plus $\sqrt{p n^3}$.

**Remarque.** On a en fait démontré un peu mieux : $a^2 \leqslant p\,n^2(n - 1)/2$. Pour trois personnes qui se connaissent toutes, deux personnes ont exactement une connaissance commune, on peut prendre $p = 1$, et il y a $a = 3$ paires : on a alors $a^2 = 9 = p\,n^2(n - 1)/2$. Cette borne plus précise est donc atteinte dans ce cas.

## Going further

1. On prend $p = 1$ et $n = 5$. Construire une assemblée de $5$ personnes, où deux personnes ont toujours au plus une connaissance commune, et où $6$ paires de personnes se connaissent.
2. Dans une assemblée de $n$ personnes qui se connaissent toutes, combien deux personnes ont-elles de connaissances communes ? Comparer le nombre de paires avec la borne de l'énoncé.
