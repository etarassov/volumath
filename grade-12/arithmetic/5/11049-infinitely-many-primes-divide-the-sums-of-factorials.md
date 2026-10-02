---
id: "11049"
title: "Une infinité de facteurs premiers dans 1! + 2! + ⋯ + n!"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [factorielle, nombres-premiers, suites, valuation, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 15 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on pose

$$u_n = 1! + 2! + \cdots + n! .$$

Montrer qu'il existe une infinité de nombres premiers qui divisent au moins l'un des termes de la suite
$(u_n)$.

## Hints

1. Raisonne par l'absurde : suppose que seuls les nombres premiers $p_1, \ldots, p_s$ apparaissent dans les $u_n$. Pour chacun, étudie l'exposant de $p$ dans $u_n$ quand $n$ grandit, sachant que $u_{n+1} = u_n + (n + 1)!$.
2. Si deux entiers n'ont pas le même exposant de $p$, l'exposant de $p$ dans leur somme est le plus petit des deux.
3. Pour chaque $p$, ou bien l'exposant de $p$ dans $u_n$ finit par rester constant, ou bien il est toujours au moins égal à celui de $p$ dans $(n + 1)!$.
4. Trouve un $n$ pour lequel $u_{n-1}$ divise $n!$. Montre ensuite que $\dfrac{(k + 1)!}{u_k}$ n'est jamais entier pour $k \geqslant 3$, en l'encadrant entre $k - 1$ et $k$.

## Solution

**Notation.** Pour un entier $X \geqslant 1$ et un nombre premier $p$, on note $e_p(X)$ l'exposant de $p$
dans la décomposition de $X$ en facteurs premiers ($e_p(X) = 0$ si $p$ ne divise pas $X$). Un entier $Y$
divise $X$ exactement quand $e_p(Y) \leqslant e_p(X)$ pour tout nombre premier $p$.

**Lemme.** Si $e_p(X) \neq e_p(Y)$, alors $e_p(X + Y)$ est le plus petit des deux nombres $e_p(X)$ et
$e_p(Y)$.

*Preuve.* Disons $\alpha = e_p(X) < \beta = e_p(Y)$, et écrivons $X = p^\alpha X'$, $Y = p^\beta Y'$, avec
$p$ qui ne divise pas $X'$. Alors $X + Y = p^\alpha\left(X' + p^{\beta - \alpha} Y'\right)$, et la
parenthèse n'est pas divisible par $p$ (car $p$ divise $p^{\beta-\alpha}Y'$ mais pas $X'$). Donc
$e_p(X + Y) = \alpha$. $\square$

**Raisonnons par l'absurde.** Supposons que seuls un nombre fini de nombres premiers divisent des termes de
la suite. Tous les $u_n$ sont alors des produits de ces nombres premiers.

**Étape 1 : deux comportements possibles pour chaque $p$.** Fixons un tel $p$, et comparons $e_p(u_n)$ et
$e_p((n + 1)!)$, en utilisant $u_{n+1} = u_n + (n + 1)!$.

* Supposons qu'à un certain rang $n_0$, on ait $e_p(u_{n_0}) < e_p((n_0 + 1)!)$. D'après le lemme,
  $e_p(u_{n_0 + 1}) = e_p(u_{n_0})$. Comme $e_p((n + 1)!)$ ne diminue jamais quand $n$ augmente, on a encore
  $e_p(u_{n_0+1}) < e_p((n_0 + 2)!)$, et on peut recommencer. De proche en proche, $e_p(u_n)$ garde la même
  valeur pour tout $n \geqslant n_0$. On dit que $p$ est **stable**.
* Sinon, on a $e_p(u_n) \geqslant e_p((n + 1)!)$ pour tout $n \geqslant 1$. On dit que $p$ est **collant**.

Pour chaque nombre premier stable $p$, notons $c_p$ la valeur finale de $e_p(u_n)$. Soit $n_1$ un rang à
partir duquel tous les nombres premiers stables ont atteint leur valeur finale, et soit $C$ le produit des
$p^{c_p}$ pour $p$ stable ($C = 1$ s'il n'y en a pas). Soit enfin $Q$ le produit des nombres premiers
collants ($Q = 1$ s'il n'y en a pas).

**Étape 2 : un $n$ pour lequel $u_{n-1}$ divise $n!$.** Choisissons un entier $n$ tel que $n + 1$ soit un
multiple de $Q$, avec $n - 1 \geqslant n_1$, $n \geqslant C$ et $n \geqslant 4$. C'est possible : il suffit de
prendre $n + 1$ multiple de $Q$ et assez grand. Vérifions que $e_p(u_{n-1}) \leqslant e_p(n!)$ pour tout
nombre premier $p$.

* Si $p$ ne divise aucun terme de la suite, $e_p(u_{n-1}) = 0$.
* Si $p$ est stable, $e_p(u_{n-1}) = c_p = e_p(C)$, car $n - 1 \geqslant n_1$. Or $C \leqslant n$, donc $C$
  est l'un des facteurs $1, 2, \ldots, n$ de $n!$, et $C$ divise $n!$. Donc $e_p(C) \leqslant e_p(n!)$.
* Si $p$ est collant, alors $p$ divise $n + 1$, donc $e_p((n + 1)!) = e_p(n!) + e_p(n + 1) > e_p(n!)$. Comme
  $p$ est collant, $e_p(u_{n-1}) \geqslant e_p(n!)$ et $e_p(u_n) \geqslant e_p((n + 1)!) > e_p(n!)$. Si
  l'on avait $e_p(u_{n-1}) > e_p(n!)$, le lemme appliqué à $u_n = u_{n-1} + n!$ donnerait
  $e_p(u_n) = e_p(n!)$, ce qui est faux. Donc $e_p(u_{n-1}) = e_p(n!)$.

Ainsi $u_{n-1}$ divise $n!$. En posant $k = n - 1 \geqslant 3$ : le nombre $\dfrac{(k + 1)!}{u_k}$ est un
entier.

**Étape 3 : ce n'est jamais un entier.** Soit $k \geqslant 3$.

* D'une part, $u_k > k! + (k - 1)! = (k - 1)!\,(k + 1)$, puisqu'il y a au moins un autre terme $1!$. Donc
  $$\frac{(k + 1)!}{u_k} < \frac{(k + 1)!}{(k - 1)!\,(k + 1)} = k .$$
* D'autre part, chacun des $k - 2$ termes $1!, 2!, \ldots, (k - 2)!$ vaut au plus $(k - 2)!$, donc
  $$u_k \leqslant k! + (k - 1)! + (k - 2)\,(k - 2)! = (k - 2)!\,\left(k(k - 1) + (k - 1) + (k - 2)\right) = (k - 2)!\,(k^2 + k - 3) .$$
  Or $(k + 1)! = (k - 2)!\,(k + 1)k(k - 1)$, donc
  $$\frac{(k + 1)!}{u_k} \geqslant \frac{(k + 1)k(k - 1)}{k^2 + k - 3} .$$
  Et ce quotient est strictement plus grand que $k - 1$, car $(k + 1)k = k^2 + k > k^2 + k - 3$.

Donc $k - 1 < \dfrac{(k + 1)!}{u_k} < k$ : ce nombre est strictement entre deux entiers consécutifs, il
n'est pas entier. C'est une contradiction avec l'étape 2.

**Conclusion.** L'hypothèse de départ est fausse : il existe une infinité de nombres premiers qui divisent
au moins un terme de la suite $(u_n)$.

## Going further

Montrer que $u_n$ n'est jamais un carré parfait pour $n \geqslant 4$. (Regarde le dernier chiffre : à partir
de $5!$, toutes les factorielles se terminent par $0$.)
