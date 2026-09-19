---
id: "3420"
title: "Une puissance qui vaut 1"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [puissances, disjonction de cas, second degre, somme des racines]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 6, d'après BMT 2019 Algebra 5 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Trouve la somme de toutes les solutions réelles de l'équation

$$\left(x^2 - 10x - 12\right)^{\,x^2 + 5x + 2} = 1.$$

## Hints

1. Note $A = x^2 - 10x - 12$ (la base) et $B = x^2 + 5x + 2$ (l'exposant). Dans quels cas une puissance $A^B$ vaut-elle $1$ ?
2. Le cas évident est $A = 1$. Le deuxième est $B = 0$, à condition que $A$ ne soit pas nul.
3. Il y a un troisième cas, facile à oublier : la base peut être $-1$, si l'exposant est un entier pair.
4. Pour chaque cas tu obtiens une équation du second degré. Tu n'as pas besoin de calculer les racines : la somme des racines de $ax^2+bx+c=0$ vaut $-\dfrac{b}{a}$.
5. Vérifie bien à la fin que les six solutions trouvées sont deux à deux différentes, sinon tu compterais deux fois le même nombre.

## Solution

**L'idée : une puissance vaut $1$ dans trois situations, pas deux. Le troisième cas, celui de la base $-1$, est le piège du problème.**

Notons $A = x^2 - 10x - 12$ et $B = x^2 + 5x + 2$.

**Cas 1 : la base vaut $1$.**

$$x^2 - 10x - 12 = 1 \qquad \Longleftrightarrow \qquad x^2 - 10x - 13 = 0.$$

Son discriminant vaut $100 + 52 = 152 > 0$, il y a donc deux racines réelles, et leur somme vaut

$$-\frac{-10}{1} = 10.$$

Dans ce cas $A = 1 > 0$, donc $A^B = 1^B = 1$ quel que soit l'exposant réel : ces deux nombres sont bien solutions.

**Cas 2 : l'exposant vaut $0$, avec une base non nulle.**

$$x^2 + 5x + 2 = 0.$$

Son discriminant vaut $25 - 8 = 17 > 0$, il y a deux racines réelles $x = \dfrac{-5 \pm \sqrt{17}}{2}$, et leur somme vaut

$$-\frac{5}{1} = -5.$$

Il faut vérifier que la base n'est pas nulle en ces deux points, car $0^0$ n'a pas de sens. Numériquement, les racines valent environ $-\text{0,438}$ et $-\text{4,562}$, et la base $A$ y vaut environ $-\text{7,42}$ et $\text{54,42}$ : elle n'est pas nulle. Ces deux nombres sont donc solutions, puisque $A^0 = 1$ dès que $A \neq 0$.

**Cas 3 : la base vaut $-1$ et l'exposant est un entier pair.**

$$x^2 - 10x - 12 = -1 \qquad \Longleftrightarrow \qquad x^2 - 10x - 11 = 0 \qquad \Longleftrightarrow \qquad (x-11)(x+1) = 0.$$

Les deux racines sont $x = 11$ et $x = -1$. Vérifions l'exposant :

- pour $x = 11$ : $B = 121 + 55 + 2 = 178$, qui est un entier pair. Et $(-1)^{178} = 1$. Convient.
- pour $x = -1$ : $B = 1 - 5 + 2 = -2$, qui est un entier pair. Et $(-1)^{-2} = \dfrac{1}{(-1)^2} = 1$. Convient.

La somme de ces deux solutions vaut $11 + (-1) = 10$.

**Pourquoi n'y a-t-il pas d'autre cas ?**

- Si $A > 0$, alors $A^B = \mathrm{e}^{B \ln A}$, qui vaut $1$ si et seulement si $B \ln A = 0$, c'est-à-dire $A = 1$ (cas 1) ou $B = 0$ (cas 2).
- Si $A < 0$, l'expression $A^B$ n'a de sens que pour $B$ entier. Si $B = 0$, on est dans le cas 2. Si $B \neq 0$ est impair, $A^B$ est négatif, donc différent de $1$. Si $B \neq 0$ est pair, $A^B = |A|^B$, qui vaut $1$ seulement si $|A| = 1$, donc $A = -1$ : c'est le cas 3.
- Si $A = 0$, alors $A^B$ vaut $0$ (pour $B > 0$) ou n'a pas de sens : jamais $1$.

**Les six solutions sont-elles distinctes ?**

Oui. Le cas 1 donne des nombres où $A = 1$, le cas 3 des nombres où $A = -1$ : ils ne peuvent pas coïncider. Le cas 2 donne des nombres où $B = 0$, alors que dans le cas 3 on a $B = 178$ et $B = -2$ ; et dans le cas 1, les racines valent environ $\text{11,16}$ et $-\text{1,16}$, où $B$ vaut environ $182$ et $-\text{2,47}$, donc non nul. Les six solutions sont deux à deux différentes.

**Conclusion.**

$$10 + (-5) + 10 = 15.$$

**La somme de toutes les solutions réelles vaut $15$.**
