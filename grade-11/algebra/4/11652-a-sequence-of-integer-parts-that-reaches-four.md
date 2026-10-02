---
id: "11652"
title: "Une suite de parties entières qui passe par 4"
grade: 11
theme: algebra
difficulty: 4
duration_min: 50
tags: [suites, partie-entiere, inegalite, descente, etude-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 5 (pot-pourri)"
  reference: "2018-02_pofm-2017-2018-envoi5.pdf, exercices du groupe A, exercice 7 ; corrigé 2018-06_pofm_2017-2018-envoi5-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-02_pofm-2017-2018-envoi5.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa partie entière, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

On choisit deux entiers strictement positifs $a_0$ et $a_1$, puis on définit une suite $(a_n)$ en posant, pour tout entier $n \geqslant 0$,

$$a_{n+2} = \left\lfloor \frac{2a_n}{a_{n+1}} \right\rfloor + \left\lfloor \frac{2a_{n+1}}{a_n} \right\rfloor.$$

Prouver qu'il existe un entier $m$ tel que $a_m = 4$ et $a_{m+1} \in \{3, 4\}$.

## Hints

1. Montre que $a_n \geqslant 3$ pour tout $n \geqslant 2$. On pourra utiliser que $\lfloor x \rfloor > x - 1$, et que $\dfrac{a}{b} + \dfrac{b}{a} \geqslant 2$ pour tous réels $a, b > 0$.
2. Si $a \geqslant b \geqslant 3$, majore la somme des deux parties entières par $\dfrac{2a}{3} + 2$. Que se passe-t-il quand le plus grand des deux nombres est au moins $7$ ?
3. Suis le plus grand de deux termes consécutifs. Montre qu'il finit par être au plus $6$, et qu'ensuite tous les termes restent entre $3$ et $6$.
4. Il ne reste alors que $16$ couples de valeurs possibles : fais le tableau.

## Solution

Pour deux entiers $a, b \geqslant 1$, on note

$$g(a, b) = \left\lfloor \frac{2a}{b} \right\rfloor + \left\lfloor \frac{2b}{a} \right\rfloor.$$

On a $g(a, b) = g(b, a)$, et la suite vérifie $a_{n+2} = g(a_n, a_{n+1})$.

**Étape 1 : $g(a, b) \geqslant 3$.** Pour tout réel $x$, on a $\lfloor x \rfloor > x - 1$. D'autre part, $(a - b)^2 \geqslant 0$ donne $a^2 + b^2 \geqslant 2ab$, et en divisant par $ab > 0$,

$$\frac{a}{b} + \frac{b}{a} \geqslant 2.$$

Donc

$$g(a, b) > \left(\frac{2a}{b} - 1\right) + \left(\frac{2b}{a} - 1\right) = 2\left(\frac{a}{b} + \frac{b}{a}\right) - 2 \geqslant 2.$$

Comme $g(a, b)$ est un entier strictement plus grand que $2$, on a $g(a, b) \geqslant 3$.

En particulier, $a_n \geqslant 3$ pour tout $n \geqslant 2$. (Au passage, aucun terme n'est nul, donc les quotients de la définition ont toujours un sens.)

**Étape 2 : une majoration.** Soient $a \geqslant b \geqslant 3$. Une partie entière est au plus égale au nombre lui-même, donc

$$\left\lfloor \frac{2a}{b} \right\rfloor \leqslant \frac{2a}{b} \leqslant \frac{2a}{3} \qquad \text{et} \qquad \left\lfloor \frac{2b}{a} \right\rfloor \leqslant \frac{2b}{a} \leqslant 2.$$

Par symétrie, pour tous $a, b \geqslant 3$, en notant $M$ le plus grand des deux,

$$g(a, b) \leqslant \frac{2M}{3} + 2.$$

On en tire deux conséquences.

- Si $M \geqslant 7$, alors $g(a, b) < M$, car $\frac{2M}{3} + 2 < M$ revient à $M > 6$.
- Si $M \leqslant 6$, alors $g(a, b) \leqslant \frac{2 \times 6}{3} + 2 = 6$.

**Étape 3 : deux termes consécutifs finissent par être au plus $6$.** Pour $n \geqslant 2$, on pose $u_n = \max(a_n, a_{n+1})$, le plus grand de deux termes consécutifs. Supposons que $u_n \geqslant 7$ pour un certain $n \geqslant 2$. D'après l'étape 2, $a_{n+2} = g(a_n, a_{n+1}) < u_n$. Deux cas se présentent.

- Si $a_{n+1} < u_n$, alors $u_{n+1} = \max(a_{n+1}, a_{n+2}) < u_n$.
- Sinon $a_{n+1} = u_n$, et alors $u_{n+1} = u_n \geqslant 7$. L'étape 2 appliquée à $a_{n+1}$ et $a_{n+2}$ donne $a_{n+3} < u_{n+1} = u_n$, donc $u_{n+2} = \max(a_{n+2}, a_{n+3}) < u_n$.

Dans les deux cas, $u_{n+1} \leqslant u_n$, et l'un des deux nombres $u_{n+1}$, $u_{n+2}$ est strictement plus petit que $u_n$.

Raisonnons par l'absurde : supposons que $u_n \geqslant 7$ pour tout $n \geqslant 2$. Ce qui précède, appliqué au rang $n$ puis au rang $n + 1$, donne $u_{n+2} \leqslant u_{n+1} \leqslant u_n$, et l'une de ces deux inégalités est stricte. Comme ce sont des entiers, $u_{n+2} \leqslant u_n - 1$ pour tout $n \geqslant 2$. On aurait alors $u_{2 + 2k} \leqslant u_2 - k$ pour tout entier $k \geqslant 0$, ce qui devient négatif quand $k$ est grand. C'est impossible.

Il existe donc un entier $l \geqslant 2$ tel que $u_l \leqslant 6$, c'est-à-dire, avec l'étape 1, $a_l$ et $a_{l+1}$ appartiennent à $\{3, 4, 5, 6\}$.

**Étape 4 : ensuite, tous les termes restent entre $3$ et $6$.** Si deux termes consécutifs $a_n$ et $a_{n+1}$, avec $n \geqslant l$, sont dans $\{3, 4, 5, 6\}$, alors $a_{n+2} \geqslant 3$ d'après l'étape 1, et $a_{n+2} \leqslant 6$ d'après l'étape 2. De proche en proche, tous les termes $a_n$ avec $n \geqslant l$ sont dans $\{3, 4, 5, 6\}$.

**Étape 5 : le tableau des valeurs de $g$.** Il suffit maintenant de calculer $g(a, b)$ pour $a, b \in \{3, 4, 5, 6\}$. Par exemple, $g(3, 5) = \lfloor 6/5 \rfloor + \lfloor 10/3 \rfloor = 1 + 3 = 4$ et $g(3, 6) = \lfloor 6/6 \rfloor + \lfloor 12/3 \rfloor = 1 + 4 = 5$. On trouve :

| $g(a, b)$ | $b = 3$ | $b = 4$ | $b = 5$ | $b = 6$ |
|---|---|---|---|---|
| $a = 3$ | $4$ | $3$ | $4$ | $5$ |
| $a = 4$ | $3$ | $4$ | $3$ | $4$ |
| $a = 5$ | $4$ | $3$ | $4$ | $3$ |
| $a = 6$ | $5$ | $4$ | $3$ | $4$ |

On lit trois propriétés :

- (a) dans la ligne $a = 4$ et la colonne $b = 4$, on ne trouve que $3$ et $4$ ;
- (b) toutes les valeurs sont au plus $5$ ;
- (c) quand $a$ et $b$ sont tous les deux dans $\{3, 5\}$, on trouve toujours $4$.

**Étape 6 : conclusion.** D'après (b), $a_{l+2}$ et $a_{l+3}$ sont dans $\{3, 4, 5\}$.

- Si $a_{l+2} = 4$, on pose $m = l + 2$. Sinon, si $a_{l+3} = 4$, on pose $m = l + 3$.
- Sinon, $a_{l+2}$ et $a_{l+3}$ sont tous les deux dans $\{3, 5\}$, et d'après (c), $a_{l+4} = g(a_{l+2}, a_{l+3}) = 4$. On pose $m = l + 4$.

Dans tous les cas, $a_m = 4$ et $m - 1 \geqslant l$, donc $a_{m-1}$ est dans $\{3, 4, 5, 6\}$. Alors $a_{m+1} = g(a_{m-1}, 4)$, qui vaut $3$ ou $4$ d'après (a).

**Conclusion : il existe bien un entier $m$ tel que $a_m = 4$ et $a_{m+1} \in \{3, 4\}$.**

## Going further

Que devient la suite ensuite ? Si $a_m = a_{m+1} = 4$, le tableau donne $g(4, 4) = 4$, et la suite reste égale à $4$ pour toujours. Si $a_m = 4$ et $a_{m+1} = 3$, on trouve ensuite $g(4, 3) = 3$, puis $g(3, 3) = 4$, puis $g(3, 4) = 3$ : la suite répète sans fin le motif $4, 3, 3$.

Un ordinateur montre que, pour tous les choix de $a_0$ et $a_1$ entre $1$ et $300$, on atteint ce régime au plus tard au rang $m = 15$.
