---
id: "10835"
title: "La plus grande puissance de 3 qui divise u₂₀₁₇"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, restes, suites, periodicite, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

On fabrique une suite de nombres $u_0, u_1, u_2, \ldots$ de la façon suivante : $u_0 = 15$ et $u_1 = 57$, puis chaque nombre est la somme des deux précédents,

$$u_n = u_{n-1} + u_{n-2} \qquad \text{pour tout } n \geqslant 2 .$$

Trouver le plus grand entier $k$ tel que $3^k$ divise $u_{2017}$.

## Hints

1. Calcule les premiers termes : $15$, $57$, $72$, … Que remarques-tu ?
2. Montre que tous les termes sont des multiples de $3$. Pose $v_n = u_n / 3$ : quelle règle les nombres $v_n$ suivent-ils ? Il reste à savoir si $v_{2017}$ est un multiple de $3$.
3. Pour cela, tu n'as pas besoin de connaître $v_n$ : son reste dans la division par $3$ suffit. Le reste de $a + b$ ne dépend que des restes de $a$ et de $b$.
4. Écris les restes de $v_0$, $v_1$, $v_2$, … jusqu'à retrouver deux restes consécutifs déjà vus.

## Solution

**Réponse : $k = 1$.**

### Étape 1 : tous les termes sont des multiples de $3$

On a $u_0 = 15 = 3 \times 5$ et $u_1 = 57 = 3 \times 19$. Si deux termes qui se suivent sont des multiples de $3$, leur somme, qui est le terme suivant, est aussi un multiple de $3$. De proche en proche, **tous les termes $u_n$ sont des multiples de $3$**, donc $k \geqslant 1$.

Posons $v_n = u_n / 3$. On a $v_0 = 5$, $v_1 = 19$, et en divisant la règle par $3$,
$$v_n = v_{n-1} + v_{n-2} \qquad \text{pour tout } n \geqslant 2 .$$
Comme $u_n = 3 \times v_n$, le nombre $9$ divise $u_n$ exactement quand $3$ divise $v_n$. Il faut donc savoir si $v_{2017}$ est un multiple de $3$.

### Étape 2 : les restes dans la division par $3$

*Le reste d'une somme.* Si $a = 3q + r$ et $b = 3q' + r'$, alors $a + b = 3(q + q') + (r + r')$. Le reste de $a + b$ dans la division par $3$ est donc le reste de $r + r'$ : **il ne dépend que des restes de $a$ et de $b$.**

Notons $r_n$ le reste de $v_n$ dans la division par $3$. D'après ce qui précède, $r_n$ est le reste de $r_{n-1} + r_{n-2}$. On part de $r_0 = 2$ (car $5 = 3 + 2$) et de $r_1 = 1$ (car $19 = 18 + 1$) :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $r_n$ | $2$ | $1$ | $0$ | $1$ | $1$ | $2$ | $0$ | $2$ | $2$ | $1$ |

Par exemple $r_5$ est le reste de $1 + 1 = 2$, et $r_8$ est le reste de $0 + 2 = 2$.

### Étape 3 : les restes se répètent

On constate que $r_8 = 2 = r_0$ et $r_9 = 1 = r_1$. Or chaque reste se calcule à partir des deux précédents, avec la même règle. Donc $r_{10} = r_2$, puis $r_{11} = r_3$, et ainsi de suite : **les restes se répètent tous les $8$ rangs**, c'est-à-dire $r_{n+8} = r_n$ pour tout $n$.

Comme $2017 = 8 \times 252 + 1$, on a $r_{2017} = r_1 = 1$. Ainsi $v_{2017}$ n'est pas un multiple de $3$, et $9$ ne divise pas $u_{2017}$.

### Conclusion

Le nombre $3$ divise $u_{2017}$, mais $9 = 3^2$ ne le divise pas. **Le plus grand entier cherché est $k = 1$.**

## Going further

1. Pour quels entiers $n$ le nombre $u_n$ est-il divisible par $9$ ? *Indication : regarde où se trouvent les $0$ dans le tableau.*
2. La suite de Fibonacci est définie par $F_0 = 0$, $F_1 = 1$ et $F_n = F_{n-1} + F_{n-2}$. Montre que $F_n$ est pair exactement quand $n$ est un multiple de $3$.
