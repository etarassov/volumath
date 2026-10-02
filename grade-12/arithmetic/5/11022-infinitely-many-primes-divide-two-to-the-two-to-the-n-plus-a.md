---
id: "11022"
title: "Une infinité de nombres premiers divisent les 2^(2ⁿ) + a"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres-premiers, raisonnement-par-labsurde, principe-des-tiroirs, puissances-de-deux, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 18 ; corrigé 2021-02_Corrige-envoi-3.pdf. La solution suit la « solution alternative » du corrigé, écrite sans congruences ; la première solution du corrigé passe par l'ordre de 2 modulo des puissances de nombres premiers et le lemme LTE."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Soit $a \geqslant 1$ un entier fixé. Pour tout entier naturel $n$, on pose
$$u_n = 2^{2^n} + a .$$

Montrer qu'il existe une infinité de nombres premiers qui divisent au moins un des nombres
$u_0, u_1, u_2, \ldots$

## Hints

1. Raisonne par l'absurde : suppose que seuls les nombres premiers $p_1, \ldots, p_N$ divisent des $u_n$.
   Comme les $u_n$ deviennent très grands, l'un de ces nombres premiers doit apparaître avec un grand
   exposant.
2. Fixe un exposant $r$. Montre que, pour $n$ assez grand, $u_n$ est divisible par $p_i^{\,r}$ pour au
   moins un indice $i$.
3. Parmi $N + 1$ valeurs consécutives de $n$, deux utilisent le même nombre premier $p_i$ (principe des
   tiroirs). Relie $u_{n+s}$ à $u_n$ : remarque que $2^{2^{n+s}} = \left(2^{2^n}\right)^{2^s}$.
4. Avec $X = 2^{2^n}$ et $k = 2^s$, le nombre $X^k - a^k$ est divisible par $X + a$, car $k$ est pair.
   Déduis-en que $p_i^{\,r}$ divise $a^{2^s} + a$, puis choisis $r$ pour que ce soit impossible.

## Solution

Rappelons deux faits.

- Pour des entiers $x$, $y$ et $k \geqslant 1$,
  $x^k - y^k = (x - y)(x^{k-1} + x^{k-2}y + \cdots + y^{k-1})$, donc $x - y$ divise $x^k - y^k$. Avec
  $y = -a$ et $k$ pair, on a $y^k = a^k$ : *si $k$ est pair, $x + a$ divise $x^k - a^k$.*
- Pour $s \geqslant 0$, on a $2^{2^{n+s}} = 2^{2^n \times 2^s} = \left(2^{2^n}\right)^{2^s}$.

**Hypothèse absurde.** Supposons qu'il n'y ait qu'un nombre fini de nombres premiers divisant au moins un
$u_n$, et notons-les $p_1, \ldots, p_N$. Il y en a au moins un, car $u_0 = 2 + a \geqslant 3$ a un diviseur
premier.

**Étape 1 : le choix de l'exposant $r$.** Les nombres $a^{2^s} + a$, pour $s = 1, \ldots, N$, sont des
entiers strictement positifs, tous inférieurs ou égaux à $a^{2^N} + a$. Choisissons un entier $r \geqslant 1$
tel que $2^r > a^{2^N} + a$. Alors, pour tout $i$ et tout $s \in \{1, \ldots, N\}$,
$$p_i^{\,r} \geqslant 2^r > a^{2^s} + a > 0 ,$$
donc **$p_i^{\,r}$ ne divise aucun des nombres $a^{2^s} + a$**, pour $1 \leqslant s \leqslant N$.

**Étape 2 : un grand exposant.** Posons $m = (p_1 p_2 \cdots p_N)^{r-1}$. La suite $(u_n)$ tend vers
l'infini, donc il existe $n_0$ tel que $u_n > m$ pour tout $n \geqslant n_0$.

Soit $n \geqslant n_0$. Les facteurs premiers de $u_n$ sont parmi les $p_i$, donc
$u_n = p_1^{\,f_1} \cdots p_N^{\,f_N}$. Si tous les exposants $f_i$ étaient au plus $r - 1$, on aurait
$u_n \leqslant m$, ce qui est faux. Il existe donc un indice $i(n)$ tel que $p_{i(n)}^{\,r}$ divise $u_n$.

**Étape 3 : le principe des tiroirs.** Les $N + 1$ entiers $n_0, n_0 + 1, \ldots, n_0 + N$ ont chacun un
indice $i(n)$, qui ne peut prendre que $N$ valeurs. Il existe donc deux entiers
$n_0 \leqslant n < n' \leqslant n_0 + N$ avec $i(n) = i(n') = i$. Posons $s = n' - n$, de sorte que
$1 \leqslant s \leqslant N$, et $q = p_i^{\,r}$. Alors $q$ divise $u_n$ et $u_{n+s}$.

**Étape 4 : la contradiction.** Posons $X = 2^{2^n}$, de sorte que $u_n = X + a$ et
$u_{n+s} = X^{2^s} + a$. Comme $2^s$ est pair, $X + a$ divise $X^{2^s} - a^{2^s}$, donc $q$ aussi. Le
nombre $q$ divise donc la différence
$$\left(X^{2^s} + a\right) - \left(X^{2^s} - a^{2^s}\right) = a^{2^s} + a ,$$
ce qui contredit l'étape 1.

**Conclusion.** L'hypothèse est absurde : une infinité de nombres premiers divisent au moins un des
nombres $2^{2^n} + a$.

## Going further

Pour $a = 1$, les $u_n = 2^{2^n} + 1$ sont les nombres de Fermat, et il existe une preuve plus directe :
deux nombres de Fermat différents n'ont aucun diviseur commun autre que $1$.

Le résultat est un cas particulier d'un théorème de Kobayashi (1981) : si seuls un nombre fini de nombres
premiers divisent les éléments d'un ensemble infini d'entiers, alors, pour tout entier $a \neq 0$, une
infinité de nombres premiers divisent les éléments de cet ensemble augmentés de $a$.
