---
id: "2807"
title: "Quand n! est divisible par 1 + 2 + … + n"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, divisibilite, nombres-premiers, somme-des-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 16 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Pour combien d'entiers $n$ vérifiant $1 \leqslant n \leqslant 24$ le nombre $n!$ est-il divisible par $1 + 2 + 3 + \cdots + n$ ?

## Hints

1. Remplace d'abord $1 + 2 + \cdots + n$ par son expression en fonction de $n$.
2. Écris le quotient $\dfrac{n!}{1 + 2 + \cdots + n}$ et simplifie-le autant que possible. Le facteur $n$ disparaît.
3. Tu dois arriver à la question : « à quelle condition $n + 1$ divise-t-il $2 \times (n-1)!$ ? »
4. Si $n + 1$ n'est pas premier, on peut l'écrire $n + 1 = u \times v$ avec $1 < u \leqslant v < n+1$. Ces deux facteurs se retrouvent-ils dans le produit $(n-1)! = 1 \times 2 \times \cdots \times (n-1)$ ? Attention au cas $u = v$.
5. Si $n + 1$ est un nombre premier $p$, aucun des facteurs $1, 2, \ldots, n-1$ n'est divisible par $p$ : que peut-on en conclure ?
6. Traite à part les tout petits cas, en particulier $n = 1$.

## Solution

**Réécrire la question.**

On sait que

$$1 + 2 + \cdots + n = \frac{n(n+1)}{2}.$$

Le quotient à étudier est donc

$$\frac{n!}{\dfrac{n(n+1)}{2}} = \frac{2 \, n!}{n(n+1)} = \frac{2 \, n \, (n-1)!}{n(n+1)} = \frac{2 \, (n-1)!}{n+1}.$$

La question devient : **pour quels $n$ le nombre $n + 1$ divise-t-il $2 \times (n-1)!$ ?**

**Premier cas : $n + 1$ n'est pas premier.**

Écrivons $n + 1 = u \times v$ avec $1 < u \leqslant v < n + 1$ (c'est possible puisque $n+1$ est composé). Comme $n+1$ est composé, on a $n + 1 \geqslant 4$, donc $n \geqslant 3$. Alors $v = \frac{n+1}{u} \leqslant \frac{n+1}{2} \leqslant n - 1$, et de même $u \leqslant v \leqslant n-1$ : les deux facteurs apparaissent dans le produit $1 \times 2 \times \cdots \times (n-1)$.

*Si $u \neq v$ :* les deux entiers $u$ et $v$ sont deux facteurs **distincts** du produit $(n-1)! = 1 \times 2 \times \cdots \times (n-1)$, donc $uv = n+1$ divise $(n-1)!$, et a fortiori $2(n-1)!$.

*Si $u = v$ :* alors $n + 1 = u^2$. Pour $u \geqslant 3$ on a $2u < u^2 = n+1$, donc $u$ et $2u$ sont deux facteurs distincts de $(n-1)!$, et leur produit $2u^2$ divise $(n-1)!$ ; en particulier $u^2 = n+1$ divise $(n-1)!$. Le seul cas restant est $u = 2$, c'est-à-dire $n + 1 = 4$ et $n = 3$ : on vérifie directement que $3! = 6$ est divisible par $1+2+3 = 6$. C'est bon aussi.

Donc **dès que $n + 1$ est composé, la divisibilité a lieu**.

**Deuxième cas : $n + 1$ est premier.**

Notons $p = n + 1$. Le produit $(n-1)! = 1 \times 2 \times \cdots \times (p-2)$ n'utilise que des facteurs strictement inférieurs à $p$. Comme $p$ est premier, il ne divise aucun de ces facteurs, donc il ne divise pas leur produit : $p$ ne divise pas $(n-1)!$.

Et $p$ ne divise pas non plus $2(n-1)!$ sauf si $p = 2$, car pour $p$ premier impair, si $p$ divisait $2(n-1)!$ il devrait diviser $2$ ou $(n-1)!$, ce qui est exclu.

Reste le cas $p = 2$, c'est-à-dire $n = 1$ : alors $1! = 1$ et $1 + \cdots + n = 1$, et $1$ divise bien $1$. La divisibilité a lieu.

**Bilan.**

La divisibilité **échoue** exactement lorsque $n + 1$ est un nombre premier **impair**, c'est-à-dire un nombre premier $\geqslant 3$.

Les nombres premiers impairs inférieurs ou égaux à $25$ sont

$$3, \; 5, \; 7, \; 11, \; 13, \; 17, \; 19, \; 23,$$

soit $8$ valeurs, qui correspondent à

$$n = 2, \; 4, \; 6, \; 10, \; 12, \; 16, \; 18, \; 22 .$$

Il y a donc $8$ échecs parmi les $24$ valeurs de $n$, et

$$24 - 8 = 16$$

valeurs pour lesquelles $n!$ est divisible par $1 + 2 + \cdots + n$.

**Conclusion.** Il y a exactement $16$ entiers $n$ entre $1$ et $24$ tels que $n!$ soit divisible par $1 + 2 + \cdots + n$. Ce sont

$$1, 3, 5, 7, 8, 9, 11, 13, 14, 15, 17, 19, 20, 21, 23, 24 .$$

**Un contrôle.** Pour $n = 4$ : $4! = 24$ et $1+2+3+4 = 10$, et $24$ n'est pas divisible par $10$. Ici $n+1 = 5$ est bien premier. Pour $n = 5$ : $5! = 120$ et $1 + \cdots + 5 = 15$, et $120 = 15 \times 8$. Ici $n + 1 = 6$ est composé.

## Going further

1. Combien d'entiers $n$ entre $1$ et $100$ vérifient la même propriété ?
2. Montrer que si $p$ est un nombre premier impair, alors $(p-2)!$ n'est jamais divisible par $p$, mais $(p-1)!+1$ l'est toujours (c'est le théorème de Wilson, à tester d'abord sur $p = 5$, $7$ et $11$).
3. Pour quels $n$ le nombre $n!$ est-il divisible par $1^2 + 2^2 + \cdots + n^2$ ?
