---
id: "11034"
title: "Multiplier par n et ajouter 1 : pas que des nombres premiers"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [suites, nombres-premiers, restes, principe-des-tiroirs, pgcd, factorisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 15 ; corrigé 2022-02_corrige-envoi-3.pdf. Le corrigé se trompe d'un rang : sa formule n_k = n^k m + (n^(k+1) − 1)/(n − 1) donne m + 1 pour k = 0, et il conclut que m divise n_(ω−1), alors que c'est n_ω (ω ordre de n modulo m) ; pour m = 3, n = 2, n_1 = 7 n'est pas multiple de 3 mais n_2 = 15 l'est. La conclusion reste vraie. La suite est notée u_k ici, et l'ordre et le théorème d'Euler sont remplacés par le principe des tiroirs."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Soient $m \geqslant 2$ et $n \geqslant 2$ deux entiers tels que

$$\mathrm{PGCD}(m, n) = 1 \qquad \text{et} \qquad \mathrm{PGCD}(m, n - 1) = 1 .$$

On définit une suite $(u_k)$ par $u_0 = m$ et $u_{k+1} = n \, u_k + 1$ pour tout entier $k \geqslant 0$.

Montrer que les nombres $u_1, u_2, \ldots, u_{m-1}$ ne peuvent pas être tous premiers.

## Hints

1. Calcule les premiers termes et trouve une formule pour $u_k$. Tu dois obtenir $u_k = n^k m + (1 + n + \cdots + n^{k-1})$.
2. Si $m$ divise un terme $u_k$ avec $k \geqslant 1$, ce terme n'est pas premier. Pourquoi ?
3. Multiplie $1 + n + \cdots + n^{k-1}$ par $n - 1$. Montre qu'il suffit de trouver un $k$ entre $1$ et $m - 1$ tel que $m$ divise $n^k - 1$.
4. Regarde les restes de $1, n, n^2, \ldots, n^{m-1}$ dans la division par $m$. Peuvent-ils valoir $0$ ? Combien de valeurs restent possibles ?

## Solution

**Un outil.** Si un entier $m \geqslant 2$ divise un produit $XY$, et si $m$ n'a aucun facteur premier en
commun avec $X$, alors $m$ divise $Y$. En effet, chaque facteur premier de $m$, avec son exposant, doit se
trouver dans $XY$ ; comme il n'est pas dans $X$, il est tout entier dans $Y$.

**Une formule pour $u_k$.** Vérifions de proche en proche que, pour tout $k \geqslant 1$,

$$u_k = n^k m + S_k \qquad \text{avec} \qquad S_k = 1 + n + n^2 + \cdots + n^{k-1} .$$

Pour $k = 1$, on a bien $u_1 = nm + 1$. Si la formule est vraie au rang $k$, alors

$$u_{k+1} = n \, u_k + 1 = n^{k+1} m + (n + n^2 + \cdots + n^k) + 1 = n^{k+1} m + S_{k+1} .$$

**Il suffit que $m$ divise un $u_k$.** Pour $k \geqslant 1$, on a $u_k \geqslant n^k m \geqslant 2m > m$.
Si $m$ divise $u_k$, alors $u_k$ a un diviseur $m$ avec $1 < m < u_k$ : il n'est pas premier.

**Il suffit que $m$ divise $n^k - 1$.** Comme $u_k - S_k = n^k m$ est un multiple de $m$, le nombre $m$
divise $u_k$ si et seulement s'il divise $S_k$. Or

$$(n - 1) \, S_k = (n - 1)(1 + n + \cdots + n^{k-1}) = n^k - 1 .$$

Si $m$ divise $n^k - 1 = (n - 1) S_k$, comme $m$ n'a aucun facteur premier commun avec $n - 1$, l'outil
donne que $m$ divise $S_k$, donc $u_k$.

Il reste à trouver un $k$ compris entre $1$ et $m - 1$ tel que $m$ divise $n^k - 1$.

**Le principe des tiroirs.** Regardons les $m$ nombres

$$n^0 = 1, \; n^1, \; n^2, \; \ldots, \; n^{m-1}$$

et leurs restes dans la division par $m$. Aucun de ces restes n'est nul : $m \geqslant 2$ a au moins un
facteur premier, qui ne divise pas $n$, donc ne divise aucune puissance de $n$. Les $m$ restes sont donc
pris parmi les $m - 1$ valeurs $1, 2, \ldots, m - 1$ : deux d'entre eux sont égaux. Il existe donc
$0 \leqslant i < j \leqslant m - 1$ tels que $n^i$ et $n^j$ ont le même reste, c'est-à-dire que $m$ divise

$$n^j - n^i = n^i \left( n^{j - i} - 1 \right) .$$

Comme $m$ n'a aucun facteur premier commun avec $n^i$, l'outil donne que $m$ divise $n^{j-i} - 1$.

**Conclusion.** Posons $k = j - i$. On a $1 \leqslant k \leqslant m - 1$, et $m$ divise $n^k - 1$, donc
$m$ divise $u_k$, et $u_k$ n'est pas premier.

**Un exemple.** Pour $m = 3$ et $n = 2$ : $u_1 = 7$ est premier, mais $u_2 = 15 = 3 \times 5$ ne l'est pas.

## Going further

Les deux hypothèses sur les PGCD sont nécessaires. Avec $m = 2$ et $n = 3$, on a $\mathrm{PGCD}(2, 3) = 1$
mais $\mathrm{PGCD}(2, 2) = 2$, et la liste $u_1, \ldots, u_{m-1}$ se réduit à $u_1 = 7$, qui est premier.
Avec $m = n = 2$, elle se réduit à $u_1 = 5$, premier lui aussi.
