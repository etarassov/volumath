---
id: "11079"
title: "Polynômes entiers sur les nombres descendants"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [polynome, coefficients-binomiaux, congruences, denombrement, ecriture-decimale, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 17 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Un entier naturel est dit **descendant** si, dans son écriture en base $10$, chaque chiffre est
supérieur ou égal au chiffre qui le suit. Par exemple $7$, $9752$ et $33100$ sont descendants, mais
$12$ et $9759$ ne le sont pas.

Un polynôme $P$ à coefficients réels est dit **entier** si $P(n)$ est un entier pour tout entier
$n$, et **descendant-entier** si $P(n)$ est un entier pour tout entier descendant $n$.

Un polynôme descendant-entier est-il toujours entier ?

## Hints

1. Montre qu'un entier descendant à $L$ chiffres s'écrit $99\ldots9$ ($L$ chiffres) moins neuf
   nombres de la forme $11\ldots1$, certains pouvant être nuls. Essaie sur $9752$.
2. Modulo $2^n$, combien de restes différents peuvent donner les nombres $99\ldots9$ ? Et les
   nombres $11\ldots1$ ? Déduis-en que, pour $n$ assez grand, un certain reste $r$ modulo $2^n$
   n'est atteint par aucun entier descendant.
3. Cherche un polynôme qui vaut $\frac{1}{2}$ en $r$, mais qui prend des valeurs entières en tout
   entier $x$ non congru à $r$ modulo $2^n$. Pense au coefficient binomial
   $\binom{x - r + K}{K}$ avec $K = 2^n - 1$.

## Solution

La réponse est **non**. Nous allons construire un polynôme descendant-entier qui n'est pas entier.

Notons $R_c = 11\ldots1$ le nombre formé de $c$ chiffres $1$, avec $R_0 = 0$, et
$N_L = 10^L - 1 = 99\ldots9$ le nombre formé de $L$ chiffres $9$.

**Étape 1 : une écriture des entiers descendants.**

Soit $x$ un entier descendant à $L$ chiffres. Pour $j = 1, \ldots, 9$, notons $c_j$ le nombre de
chiffres de $x$ qui sont inférieurs ou égaux à $9 - j$. Montrons que
$$x = N_L - R_{c_1} - R_{c_2} - \cdots - R_{c_9}.$$
Comme les chiffres de $x$ décroissent de gauche à droite, les chiffres inférieurs ou égaux à
$9 - j$ sont exactement les $c_j$ derniers. Retrancher $R_{c_j}$ enlève donc $1$ à chacun d'eux, et
à eux seuls. Un chiffre $a$ de $x$ est inférieur ou égal à $9 - j$ pour exactement $9 - a$ valeurs
de $j$ (celles de $1$ à $9 - a$) : à cette position, on part de $9$ et on retire $9 - a$ fois $1$,
ce qui donne bien $a$. Il n'y a jamais de retenue puisque chaque chiffre reste entre $0$ et $9$.

Par exemple, pour $9752$ : $c_1 = c_2 = 3$, $c_3 = c_4 = 2$, $c_5 = c_6 = c_7 = 1$, $c_8 = c_9 = 0$,
et en effet $9999 - 111 - 111 - 11 - 11 - 1 - 1 - 1 = 9752$.

**Étape 2 : un reste jamais atteint.**

Soit $n \geqslant 1$. Comme $2^n$ divise $10^n$, pour $L \geqslant n$ on a
$$N_L = 10^n \left(10^{L-n} - 1\right) + \left(10^n - 1\right) \equiv N_n \pmod{2^n},$$
donc les nombres $N_L$ donnent au plus $n$ restes modulo $2^n$ (ceux de $N_1, \ldots, N_n$). De
même, pour $c \geqslant n$, $R_c = R_{c-n} \times 10^n + R_n \equiv R_n \pmod{2^n}$, donc les nombres
$R_c$ donnent au plus $n + 1$ restes (ceux de $R_0, \ldots, R_n$).

D'après l'étape 1, le reste d'un entier descendant modulo $2^n$ est déterminé par le reste de
$N_L$ et ceux des neuf nombres $R_{c_j}$. Les entiers descendants donnent donc au plus
$n (n + 1)^9$ restes modulo $2^n$.

Prenons $n = 63$ : $63 \times 64^9 < 64^{10} = 2^{60} < 2^{63}$. Il y a donc un entier $r$ avec
$0 \leqslant r < 2^{63}$ tel qu'**aucun** entier descendant ne soit congru à $r$ modulo $2^{63}$.

**Étape 3 : le polynôme.**

Posons $K = 2^{63} - 1$ et
$$P(x) = \frac{1}{2 \times K!} \, (x - r + 1)(x - r + 2) \cdots (x - r + K).$$
C'est un polynôme à coefficients réels, de degré $K$.

*Un rappel.* Le produit de $K$ entiers consécutifs est divisible par $K!$. Si ces entiers sont
tous positifs, de $m - K + 1$ à $m$, le quotient vaut $\binom{m}{K}$, qui est un entier. Si l'un
d'eux est nul, le produit est nul. S'ils sont tous négatifs, le produit est, au signe près, un
produit de $K$ entiers consécutifs positifs.

Soit $x$ un entier quelconque, et posons $Q(x) = 2P(x)$. D'après le rappel, $Q(x)$ est un entier.
De plus,
$$(x - r) \, Q(x) = \frac{(x - r)(x - r + 1) \cdots (x - r + K)}{K!} = (K + 1) \times \frac{(x - r)(x - r + 1) \cdots (x - r + K)}{(K + 1)!}.$$
Le dernier quotient est un produit de $K + 1$ entiers consécutifs divisé par $(K+1)!$, donc un
entier. Comme $K + 1 = 2^{63}$, le nombre $(x - r)\, Q(x)$ est divisible par $2^{63}$.

*$P$ est descendant-entier.* Soit $x$ un entier descendant. Si $Q(x)$ était impair, tous les
facteurs $2$ de $(x - r)\,Q(x)$ viendraient de $x - r$, et $2^{63}$ diviserait $x - r$. C'est
impossible par le choix de $r$. Donc $Q(x)$ est pair, et $P(x) = \frac{Q(x)}{2}$ est un entier.

*$P$ n'est pas entier.* En $x = r$ :
$$P(r) = \frac{1 \times 2 \times \cdots \times K}{2 \times K!} = \frac{1}{2}.$$

**Conclusion.** Le polynôme $P$ est descendant-entier sans être entier : un polynôme
descendant-entier n'est pas toujours entier.

## Going further

Le polynôme construit a un degré gigantesque. On ne peut en tout cas pas trouver de contre-exemple
de petit degré. Les entiers
$0, 1, 2, \ldots, 11$ sont tous descendants ($10$ et $11$ aussi, mais pas $12$). Montrer qu'un
polynôme descendant-entier de degré au plus $11$ est entier.

*Réponse* : montrons par récurrence sur $d$ qu'un polynôme $P$ de degré au plus $d$, qui prend des
valeurs entières en $d + 1$ entiers consécutifs $a, a + 1, \ldots, a + d$, prend des valeurs
entières en tout entier. Pour $d = 0$, $P$ est constant, c'est clair. Supposons le résultat vrai
pour $d - 1$, et posons $D(x) = P(x + 1) - P(x)$. Les termes en $x^d$ se simplifient, donc $D$ est
de degré au plus $d - 1$, et $D$ prend des valeurs entières en $a, \ldots, a + d - 1$. Par
hypothèse de récurrence, $D(x)$ est entier pour tout entier $x$. Alors $P(x + 1) = P(x) + D(x)$
donne de proche en proche $P(x)$ entier pour tout $x \geqslant a$, et $P(x) = P(x + 1) - D(x)$ le
donne pour tout $x < a$. On applique ce résultat avec $d = 11$ et $a = 0$.
