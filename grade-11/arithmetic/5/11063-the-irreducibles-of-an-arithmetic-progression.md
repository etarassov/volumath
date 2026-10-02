---
id: "11063"
title: "Les irréductibles d'une progression arithmétique"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [divisibilite, valuation, tiroirs, decomposition-en-facteurs-premiers, nombres-premiers-entre-eux]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Seniors, exercice 17 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Énoncé corrigé : la source prend S dans N, qui contient 0 lorsque b divise a, et 0 n'est jamais un produit d'irréductibles ; on se limite donc aux x ⩾ 1. Le corrigé annonce aussi un nombre de facteurs k entre 2 et ω, alors que k = ω + 1 peut se produire ; la borne est ajustée. L'indicatrice d'Euler et le théorème chinois du corrigé sont remplacés par le principe des tiroirs et les décompositions en facteurs premiers."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs tels que $\mathrm{PGCD}(a, b)$ a au moins deux facteurs premiers distincts. On note $S$ l'ensemble des entiers $x \geqslant 1$ tels que $x - a$ est un multiple de $b$.

Un élément de $S$ est dit *irréductible* s'il ne peut pas s'écrire comme le produit d'au moins deux éléments de $S$, pas forcément distincts.

Montrer qu'il existe un entier $N > 0$ tel que tout élément de $S$ s'écrit comme le produit d'au plus $N$ éléments irréductibles de $S$, pas forcément distincts.

## Hints

1. Prends $a = 6$ et $b = 30$. Écris les premiers éléments de $S$ et trouve un élément qui n'est pas irréductible.
2. Pose $d = \mathrm{PGCD}(a, b)$ et $b = d\,b'$. Montre que tout élément de $S$ est un multiple de $d$. Si $p$ est un facteur premier de $d$, combien de facteurs au plus peut avoir une écriture de $x$ comme produit d'éléments de $S$ ?
3. Sépare deux cas, selon que $d$ et $b'$ ont un facteur premier commun ou non. Dans le premier cas, montre que tous les éléments de $S$ sont irréductibles.
4. Dans le second cas, le principe des tiroirs donne un $\omega \geqslant 1$ tel que $b'$ divise $a^\omega - 1$. Que peux-tu dire d'un produit de $\omega + 1$ éléments de $S$ ?
5. Si un facteur $u_j$ contient beaucoup de fois le nombre premier $p$, on peut faire passer une puissance $p^t$ bien choisie de $u_j$ vers un autre facteur, sans sortir de $S$. Il te faut deux nombres premiers différents pour que le dernier facteur ne garde pas tout.

## Solution

**Notations.** Pour un nombre premier $p$ et un entier $x \geqslant 1$, on note $e_p(x)$ l'exposant de $p$ dans la décomposition de $x$ en facteurs premiers. L'exposant de $p$ dans un produit est la somme des exposants dans les facteurs. On utilise aussi deux faits qui s'obtiennent en comparant les exposants : si deux nombres premiers entre eux divisent $m$, leur produit divise $m$ ; si $m$ divise $u\,v$ et si $m$ est premier avec $u$, alors $m$ divise $v$.

On pose $d = \mathrm{PGCD}(a, b)$, puis $a = d\,a'$ et $b = d\,b'$, avec $a'$ et $b'$ premiers entre eux. Par hypothèse, $d$ a deux facteurs premiers distincts, que l'on note $p$ et $q$.

**Étape 1 : deux faits généraux.**

*Tout élément de $S$ est un multiple de $d$.* En effet, si $x - a = k\,b$, alors $x = d\,(a' + k\,b')$.

*Tout élément $x$ de $S$ est un produit d'irréductibles, et toute écriture de $x$ comme produit d'éléments de $S$ a au plus $e_p(x)$ facteurs.* Comme chaque élément de $S$ est divisible par $d$, donc par $p$, un produit de $m$ éléments de $S$ a un exposant de $p$ au moins égal à $m$, ce qui donne la seconde affirmation. En particulier $1 \notin S$, donc dans une écriture de $x$ comme produit d'au moins deux éléments de $S$, chaque facteur est au moins $2$ et donc strictement plus petit que $x$. Par récurrence forte sur $x$, chaque facteur est un produit d'irréductibles, donc $x$ aussi.

Le problème est donc de borner le nombre de facteurs **d'une écriture bien choisie**, puisque toutes les écritures ne sont pas courtes.

**Étape 2 : premier cas, $d$ et $b'$ ont un facteur premier commun $r$.**

Soit $x = d\,(a' + k\,b')$ un élément de $S$. Comme $r$ divise $b'$ et ne divise pas $a'$ (car $a'$ et $b'$ sont premiers entre eux), $r$ ne divise pas $a' + k\,b'$. Donc $e_r(x) = e_r(d)$ pour **tout** élément $x$ de $S$.

Un produit d'au moins deux éléments de $S$ a alors un exposant de $r$ au moins égal à $2\,e_r(d)$, qui est strictement plus grand que $e_r(d)$ car $e_r(d) \geqslant 1$. Un tel produit n'est donc jamais dans $S$. Tous les éléments de $S$ sont irréductibles, et $N = 1$ convient.

**Étape 3 : second cas, $d$ et $b'$ sont premiers entre eux. Trois outils.**

*Outil 1 : une description de $S$.* Pour un entier $y \geqslant 1$,
$$y \in S \quad \text{si et seulement si} \quad d \text{ divise } y \text{ et } b' \text{ divise } y - a .$$
Le sens direct vient de l'étape 1 et de $y - a = k\,d\,b'$. Pour la réciproque, $d$ divise $y$ et $a$, donc $y - a$ ; comme $d$ et $b'$ sont premiers entre eux et divisent tous les deux $y - a$, leur produit $b$ divise $y - a$.

*Outil 2 : les tiroirs.* Si $c$ est un entier premier avec $b'$, il existe un entier $t \geqslant 1$ tel que $b'$ divise $c^t - 1$. En effet, parmi les $b' + 1$ nombres $c^1, c^2, \ldots, c^{b'+1}$, deux ont le même reste dans la division par $b'$, disons $c^i$ et $c^j$ avec $i < j$. Alors $b'$ divise $c^j - c^i = c^i\,(c^{j-i} - 1)$, et comme $b'$ est premier avec $c^i$, il divise $c^{j-i} - 1$.

On applique l'outil 2 trois fois. Le nombre $a = d\,a'$ est premier avec $b'$ (ni $d$ ni $a'$ n'ont de facteur premier commun avec $b'$) : il existe $\omega \geqslant 1$ tel que $b'$ divise $a^\omega - 1$. Les nombres premiers $p$ et $q$ divisent $d$, donc ne divisent pas $b'$ : il existe $t \geqslant 1$ et $s \geqslant 1$ tels que $b'$ divise $p^t - 1$ et $q^s - 1$.

*Outil 3 : regrouper $\omega + 1$ facteurs.* Si $u_1, \ldots, u_{\omega+1}$ sont dans $S$, leur produit est dans $S$. En effet, il est divisible par $d$. De plus chaque $u_i$ a le même reste que $a$ dans la division par $b'$, donc le produit a le même reste que $a^{\omega+1}$, et $a^{\omega+1} - a = a\,(a^\omega - 1)$ est un multiple de $b'$. On conclut par l'outil 1.

**Étape 4 : une écriture avec au plus $\omega + 1$ facteurs.**

Soit $x$ un élément de $S$ qui n'est pas irréductible, écrit comme produit $u_1 \cdots u_k$ de $k \geqslant 2$ éléments de $S$. Tant que $k \geqslant \omega + 2$, on remplace $\omega + 1$ des facteurs par leur produit, qui est dans $S$ d'après l'outil 3. Il reste $k - \omega \geqslant 2$ facteurs. On obtient ainsi une écriture $x = u_1 \cdots u_k$ avec $2 \leqslant k \leqslant \omega + 1$.

**Étape 5 : déplacer des puissances de $p$ et de $q$.**

Supposons que, pour un indice $j < k$, on ait $e_p(u_j) \geqslant t + e_p(d)$. On remplace alors $u_j$ par $u_j / p^t$ et $u_k$ par $p^t\,u_k$. Le produit ne change pas, et les deux nouveaux facteurs sont encore dans $S$ :

- $u_j / p^t$ est un entier dont l'exposant de $p$ vaut au moins $e_p(d)$, et dont les autres exposants n'ont pas changé, donc il est divisible par $d$. De plus $u_j - u_j / p^t = (p^t - 1)\,u_j / p^t$ est un multiple de $b'$, donc $u_j / p^t$ a le même reste que $u_j$, c'est-à-dire que $a$, dans la division par $b'$.
- $p^t\,u_k$ est divisible par $d$, et $p^t\,u_k - u_k = (p^t - 1)\,u_k$ est un multiple de $b'$.

D'après l'outil 1, les deux nouveaux facteurs sont dans $S$. Chaque opération fait baisser $e_p(u_j)$ de $t$, donc on ne peut la répéter qu'un nombre fini de fois. À la fin,
$$e_p(u_j) \leqslant t + e_p(d) - 1 \qquad \text{pour tout } j < k .$$

On fait ensuite la même chose avec $q$, mais dans l'autre sens : tant que $e_q(u_k) \geqslant s + e_q(d)$, on remplace $u_k$ par $u_k / q^s$ et $u_1$ par $q^s\,u_1$. Multiplier ou diviser par une puissance de $q$ ne change aucun exposant de $p$, donc les inégalités précédentes restent vraies. À la fin, on a en plus
$$e_q(u_k) \leqslant s + e_q(d) - 1 .$$

C'est ici que servent les deux nombres premiers distincts : $p$ sert à vider les $k - 1$ premiers facteurs dans le dernier, et $q$ à vider le dernier dans le premier.

**Étape 6 : conclusion.**

D'après l'étape 1, chaque $u_j$ est un produit d'irréductibles. Pour $j < k$, ce produit a au plus $e_p(u_j) \leqslant t + e_p(d) - 1$ facteurs. Pour $u_k$, on utilise $q$ à la place de $p$ dans l'étape 1 : au plus $e_q(u_k) \leqslant s + e_q(d) - 1$ facteurs. En mettant bout à bout ces écritures, $x$ est un produit d'au plus
$$(k - 1)\,(t + e_p(d) - 1) + s + e_q(d) - 1 \leqslant \omega\,(t + e_p(d) - 1) + s + e_q(d) - 1$$
irréductibles. Ce nombre ne dépend pas de $x$. On prend pour $N$ ce nombre, qui est au moins $1$. Un élément irréductible est le produit d'un seul irréductible, donc **tout** élément de $S$ est un produit d'au plus $N$ irréductibles.

## Going further

L'hypothèse « deux facteurs premiers distincts » est nécessaire. Prenons $a = 2$ et $b = 6$, avec $\mathrm{PGCD}(2, 6) = 2$. Alors $S = \{2, 8, 14, 20, \ldots\}$. Les puissances de $2$ qui sont dans $S$ sont les $2^j$ avec $j$ impair, et seule $2$ est irréductible parmi elles, car $2^j = 2 \times 2 \times 2^{j-2}$ pour $j \geqslant 3$. Un diviseur de $2^{2m+1}$ qui est dans $S$ est une puissance impaire de $2$, donc la seule écriture de $2^{2m+1}$ comme produit d'irréductibles est $2 \times 2 \times \cdots \times 2$, avec $2m + 1$ facteurs. Aucun $N$ ne convient.
