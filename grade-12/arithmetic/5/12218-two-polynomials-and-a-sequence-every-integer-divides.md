---
id: "12218"
title: "Deux polynômes et une suite où tout entier divise un terme"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [polynomes, suites, divisibilite, suites arithmetiques, degre, limites, sous-suites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe A et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier.pdf, exercice 4 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-corrige.pdf. La réponse finale du corrigé est fausse : le premier terme de rang impair est x₁ = 2015ε + b et non 2015ε + d, d'où la bonne condition « b + εd est non nul et divise 2015 ou 2015 − d ». Contre-exemple au corrigé : P = X + 2, Q = X + 1. Le corrigé écrit aussi 2005 pour 2015, et R pour T dans le lemme 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier.pdf"
---

## Statement

Soit $P$ et $Q$ deux polynômes à coefficients entiers. On part de $x_0 = 2015$ et on applique alternativement $P$ et $Q$ : pour tout entier $n \geqslant 0$,

$$x_{2n+1} = P(x_{2n}) \qquad \text{et} \qquad x_{2n+2} = Q(x_{2n+1}).$$

Ainsi $x_1 = P(2015)$, $x_2 = Q(x_1)$, $x_3 = P(x_2)$, et ainsi de suite.

Trouver tous les couples $(P, Q)$ pour lesquels **tout entier $m \geqslant 1$ divise au moins un terme non nul** de la suite $(x_n)$.

## Hints

1. Disons qu'une suite d'entiers a la propriété (D) si tout entier $m \geqslant 1$ divise au moins un terme non nul. Montre que si une suite a (D), alors l'une de ses sous-suites $(y_{2n})$ et $(y_{2n+1})$ a (D). Même chose avec les quatre sous-suites $(y_{4n})$, $(y_{4n+1})$, $(y_{4n+2})$, $(y_{4n+3})$.
2. Si $T$ est un polynôme à coefficients entiers, alors $y - z$ divise $T(y) - T(z)$ pour tous entiers $y$ et $z$. Pour une suite telle que $y_{n+1} = T(y_n)$, compare les écarts $y_{n+1} - y_n$ successifs.
3. Montre qu'une suite telle que $y_{n+1} = T(y_n)$ n'a pas (D) si $|T(x)| > 3|x|$ dès que $|x|$ est assez grand. Essaie $m = |y_{N+1} - y_N|$ pour un rang $N$ bien choisi.
4. Déduis-en que $P$ et $Q$ sont de degré $1$, avec le même coefficient dominant, égal à $1$ ou à $-1$. Les termes de rang pair, et ceux de rang impair, forment alors des suites arithmétiques.

## Solution

On dit qu'une suite d'entiers a la **propriété (D)** si tout entier $m \geqslant 1$ divise au moins un de ses termes non nuls.

**Étape 0. Une suite qui ne prend qu'un nombre fini de valeurs n'a pas (D).** En effet, soit $m$ un entier plus grand que la valeur absolue de tous les termes. Un terme non nul divisible par $m$ aurait une valeur absolue au moins égale à $m$ : il n'y en a pas.

**Étape 1. On peut découper la suite.** Soit $k \geqslant 1$ un entier, et $(y_n)$ une suite qui a (D). Alors l'une des $k$ sous-suites $(y_{kn+r})_{n \geqslant 0}$, pour $r = 0, 1, \ldots, k - 1$, a (D).

Sinon, pour chaque $r$, il existe un entier $m_r \geqslant 1$ qui ne divise aucun terme non nul de $(y_{kn+r})$. Posons $m = m_0 m_1 \cdots m_{k-1}$. Tout terme $y_t$ appartient à l'une des sous-suites, disons celle de $r$. Si $y_t \neq 0$ et si $m$ divisait $y_t$, alors $m_r$ diviserait $y_t$, ce qui est exclu. Donc $m$ ne divise aucun terme non nul de $(y_n)$ : contradiction.

**Étape 2. Le lemme principal.** Soit $T$ un polynôme à coefficients entiers, et $(y_n)$ une suite d'entiers telle que $y_{n+1} = T(y_n)$ pour tout $n$. On suppose qu'il existe un réel $c > 0$ tel que $|T(x)| > 3|x|$ pour tout réel $x$ vérifiant $|x| > c$. Alors $(y_n)$ n'a pas (D).

*a) Une divisibilité.* Pour tous entiers $y$ et $z$, le nombre $y - z$ divise $T(y) - T(z)$. En effet, $T(y) - T(z)$ est une somme de termes $t_k\,(y^k - z^k)$, et

$$y^k - z^k = (y - z)\left(y^{k-1} + y^{k-2}z + \cdots + z^{k-1}\right).$$

*b) Un rang à partir duquel tout grandit.* Supposons que $(y_n)$ a (D). D'après l'étape 0, elle prend une infinité de valeurs. Or il n'y a qu'un nombre fini d'entiers dans l'intervalle $[-c, c]$, donc un terme au moins vérifie $|y_n| > c$. Soit $N$ le plus petit rang tel que $|y_N| > c$. Alors $|y_i| \leqslant c$ pour $i < N$, et, par récurrence, $|y_{n+1}| = |T(y_n)| > 3|y_n| > c$ pour tout $n \geqslant N$.

*c) Un entier $m$ qui ne divise aucun des premiers termes.* Posons $m = |y_{N+1} - y_N|$. Alors

$$m \geqslant |y_{N+1}| - |y_N| > 3|y_N| - |y_N| = 2|y_N| > |y_N| > c.$$

Donc $m$ est plus grand que $|y_0|, |y_1|, \ldots, |y_N|$, et il ne divise aucun terme non nul parmi $y_0, \ldots, y_N$. Comme $|y_N| > c > 0$, le terme $y_N$ est non nul, donc $m$ ne divise pas $y_N$.

*d) Les termes suivants.* D'après a), pour tout $n \geqslant N + 1$, l'écart $y_{n+1} - y_n = T(y_n) - T(y_{n-1})$ est un multiple de l'écart précédent $y_n - y_{n-1}$. De proche en proche, tous les écarts $y_{n+1} - y_n$ avec $n \geqslant N$ sont des multiples de $y_{N+1} - y_N$, donc de $m$. Pour $n > N$, l'entier

$$y_n - y_N = (y_{N+1} - y_N) + (y_{N+2} - y_{N+1}) + \cdots + (y_n - y_{n-1})$$

est donc un multiple de $m$. Comme $m$ ne divise pas $y_N$, il ne divise pas $y_n$.

*e) Conclusion.* L'entier $m \geqslant 1$ ne divise aucun terme non nul de la suite, ce qui contredit (D). Donc $(y_n)$ n'a pas (D).

**Étape 3. Les polynômes concernés par le lemme.** Soit $T$ un polynôme à coefficients entiers.

- Si $T$ est constant, la suite $y_{n+1} = T(y_n)$ prend au plus deux valeurs, donc n'a pas (D).
- Si $T$ est de degré au moins $2$, alors $\left|\frac{T(x)}{x}\right|$ tend vers $+\infty$ quand $x$ tend vers $+\infty$ et vers $-\infty$. Il existe donc $c > 0$ tel que $|T(x)| > 3|x|$ pour $|x| > c$.
- Si $T = \rho X + \theta$ avec $|\rho| \geqslant 4$, alors $|T(x)| \geqslant 4|x| - |\theta| > 3|x|$ dès que $|x| > |\theta|$, et on prend $c = |\theta| + 1$.

Avec le lemme : **si une suite telle que $y_{n+1} = T(y_n)$ a (D), alors $T$ est de degré $1$ et son coefficient dominant $\rho$ vérifie $|\rho| \leqslant 3$.**

**Étape 4. $P$ et $Q$ sont de la forme $\varepsilon X + b$ et $\varepsilon X + d$.**

Supposons que $(x_n)$ a (D). En partant d'un rang pair, on applique $P$ puis $Q$. En partant d'un rang impair, on applique $Q$ puis $P$. Donc, pour tout $n$,

$$x_{4n+4} = T_0(x_{4n}), \quad x_{4n+6} = T_0(x_{4n+2}), \qquad \text{avec } T_0(X) = Q(P(Q(P(X)))),$$

$$x_{4n+5} = T_1(x_{4n+1}), \quad x_{4n+7} = T_1(x_{4n+3}), \qquad \text{avec } T_1(X) = P(Q(P(Q(X)))).$$

D'après l'étape 1 avec $k = 4$, l'une des quatre sous-suites $(x_{4n+r})$ a (D). D'après l'étape 3, le polynôme $T_0$ ou $T_1$ correspondant est de degré $1$.

Si $P$ ou $Q$ était constant, $T_0$ et $T_1$ seraient constants. Sinon, le degré d'une composée est le produit des degrés, donc $T_0$ et $T_1$ sont de degré $(\deg P \times \deg Q)^2$. Ce degré vaut $1$, donc $\deg P = \deg Q = 1$. Écrivons $P = aX + b$ et $Q = cX + d$, avec $a$, $b$, $c$, $d$ entiers et $a, c \neq 0$. Alors

$$Q(P(X)) = acX + (bc + d), \qquad P(Q(X)) = acX + (ad + b),$$

et $T_0$, $T_1$ ont pour coefficient dominant $(ac)^2$. L'étape 3 donne $(ac)^2 \leqslant 3$. Comme $ac$ est un entier non nul, $ac = 1$ ou $ac = -1$.

Si $ac = -1$, alors $Q(P(X)) = -X + e$ pour un entier $e$, et $T_0(X) = -(-X + e) + e = X$. De même $T_1(X) = X$. La suite vérifie alors $x_{n+4} = x_n$ : elle ne prend que quatre valeurs au plus, et l'étape 0 dit qu'elle n'a pas (D). C'est exclu.

Donc $ac = 1$ : on a $a = c = \varepsilon$, avec $\varepsilon = 1$ ou $\varepsilon = -1$.

**Étape 5. Deux suites arithmétiques.** Posons $r = b + \varepsilon d$. Comme $\varepsilon^2 = 1$,

$$Q(P(X)) = X + \varepsilon b + d = X + \varepsilon r, \qquad P(Q(X)) = X + \varepsilon d + b = X + r.$$

Donc les termes de rang pair et ceux de rang impair forment deux suites arithmétiques :

$$x_{2n} = 2015 + n\,\varepsilon r, \qquad x_{2n+1} = x_1 + n\,r, \qquad \text{avec } x_1 = P(2015) = 2015\,\varepsilon + b.$$

**Étape 6. Quand une suite arithmétique a-t-elle (D) ?** Soit $z_n = z_0 + ns$, avec $z_0$ et $s$ entiers. Alors $(z_n)$ a (D) si et seulement si $s \neq 0$ et $s$ divise $z_0$.

- Si $s = 0$, la suite est constante, et elle n'a pas (D) d'après l'étape 0.
- Si $s \neq 0$ et si $s$ ne divise pas $z_0$, alors $|s| \geqslant 2$. Tous les termes $z_0 + ns$ ont le même reste que $z_0$ dans la division par $|s|$, donc l'entier $m = |s|$ n'en divise aucun.
- Si $s \neq 0$ et $z_0 = qs$, soit $m \geqslant 1$. Le rang $n = m(|q| + 1) - q$ est positif, et $z_n = (q + n)\,s = m\,(|q| + 1)\,s$ est un terme non nul divisible par $m$.

**Étape 7. Conclusion.** Un terme d'une sous-suite est un terme de la suite, donc si $(x_{2n})$ ou $(x_{2n+1})$ a (D), alors $(x_n)$ aussi. Réciproquement, l'étape 1 avec $k = 2$ montre que si $(x_n)$ a (D), l'une de ces deux sous-suites a (D). D'après les étapes 5 et 6 :

- $(x_{2n})$ a (D) si et seulement si $r \neq 0$ et $r$ divise $2015$ ;
- $(x_{2n+1})$ a (D) si et seulement si $r \neq 0$ et $r$ divise $2015\,\varepsilon + b$. Or $b = r - \varepsilon d$, donc $2015\,\varepsilon + b = r + \varepsilon(2015 - d)$, et cette condition revient à : $r$ divise $2015 - d$.

**Réponse : les couples cherchés sont $P = \varepsilon X + b$ et $Q = \varepsilon X + d$, où $\varepsilon \in \{1, -1\}$ et où $b$, $d$ sont des entiers tels que $r = b + \varepsilon d$ soit non nul et divise $2015$ ou $2015 - d$.**

## Going further

Deux exemples. Avec $P = Q = X + 1$, on a $r = 2$, qui divise $2015 - 1 = 2014$ : la suite $2015, 2016, 2017, \ldots$ contient tous les entiers à partir de $2015$, et tout $m$ en divise un. Avec $P = X + 2$ et $Q = X + 1$, on a $r = 3$, qui ne divise ni $2015$, ni $2014$ : la suite $2015, 2017, 2018, 2020, 2021, \ldots$ ne contient aucun multiple de $3$.

Ce second exemple montre que la réponse du corrigé officiel est fausse. En effet, celui-ci prend $2015\,\varepsilon + d$ comme premier terme de rang impair, au lieu de $x_1 = 2015\,\varepsilon + b$.
