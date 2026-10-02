---
id: "12044"
title: "Une somme de fractions qui tombe juste"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [fractions, inegalites, construction, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 3 (groupe B) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Déterminer tous les entiers $p \geqslant 1$ pour lesquels il existe des entiers strictement positifs $x_1 < x_2 < \cdots < x_n$ tels que

$$\frac{1}{x_1} + \frac{2}{x_2} + \cdots + \frac{n}{x_n} = p .$$

## Hints

1. Essayez d'abord $n = 2$ : quelles valeurs de $p$ peut-on obtenir ?
2. Comme les $x_i$ sont des entiers rangés dans l'ordre strictement croissant, montrez que $x_i \geqslant i$ pour tout $i$. Qu'en déduisez-vous pour $p$ ?
3. Pour construire une somme égale à $p$, faites en sorte que plusieurs fractions valent exactement $1$, et que toutes les autres soient égales entre elles.

## Solution

**Réponse.** Ce sont les entiers $p$ tels que $1 \leqslant p \leqslant n$.

**Étape 1 : $p \leqslant n$.** Soient $x_1 < x_2 < \cdots < x_n$ des entiers strictement positifs qui conviennent. On a $x_1 \geqslant 1$. Ensuite, deux entiers différents l'un de l'autre diffèrent d'au moins $1$, donc $x_2 \geqslant x_1 + 1 \geqslant 2$, puis $x_3 \geqslant x_2 + 1 \geqslant 3$, et ainsi de suite : $x_i \geqslant i$ pour tout $i$ de $1$ à $n$.

Par conséquent $i/x_i \leqslant i/i = 1$ pour chaque $i$, et en additionnant ces $n$ inégalités :

$$p = \frac{1}{x_1} + \frac{2}{x_2} + \cdots + \frac{n}{x_n} \leqslant 1 + 1 + \cdots + 1 = n .$$

**Étape 2 : chaque $p$ de $1$ à $n$ est possible.** Fixons un entier $p$ avec $1 \leqslant p \leqslant n$, et notons $q = n - p + 1$, qui vérifie $q \geqslant 1$. L'idée est de rendre les $p - 1$ premières fractions égales à $1$, et les $q$ dernières égales à $1/q$, car $q$ fractions égales à $1/q$ ont une somme de $1$.

On pose donc

- $x_i = i$ pour $1 \leqslant i \leqslant p - 1$ ;
- $x_i = i \times q$ pour $p \leqslant i \leqslant n$.

*Les $x_i$ sont strictement croissants.* Les $p - 1$ premiers valent $1, 2, \ldots, p - 1$. Les suivants valent $pq, (p + 1)q, \ldots, nq$ ; ils sont rangés dans l'ordre strictement croissant car $q > 0$. Enfin, le passage d'un groupe à l'autre est aussi croissant, car $x_{p-1} = p - 1 < p \leqslant pq = x_p$ (ce point ne se pose pas quand $p = 1$).

*La somme vaut $p$.* Pour $i \leqslant p - 1$, on a $i/x_i = 1$. Pour $i \geqslant p$, on a $i/x_i = i/(iq) = 1/q$. Il y a $p - 1$ fractions du premier type et $n - p + 1 = q$ du second, donc

$$\frac{1}{x_1} + \frac{2}{x_2} + \cdots + \frac{n}{x_n} = (p - 1) \times 1 + q \times \frac{1}{q} = p - 1 + 1 = p .$$

Par exemple, pour $n = 4$ et $p = 2$, on a $q = 3$, et les nombres $1, 6, 9, 12$ donnent

$$\frac{1}{1} + \frac{2}{6} + \frac{3}{9} + \frac{4}{12} = 1 + \frac{1}{3} + \frac{1}{3} + \frac{1}{3} = 2 .$$

**Conclusion.** Les entiers $p$ qui conviennent sont exactement $1, 2, \ldots, n$.

## Going further

Pour $p = n$, montrer qu'il n'y a qu'un seul choix possible des nombres $x_1, \ldots, x_n$. Et pour $p = 1$ et $n = 2$, trouver tous les couples $x_1 < x_2$ possibles.
