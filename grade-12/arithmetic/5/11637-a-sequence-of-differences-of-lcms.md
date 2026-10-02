---
id: "11637"
title: "Une suite de différences de ppcm"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, ppcm, pgcd, divisibilite, suites, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Soient $a_1$, $a_2$ et $a_3$ trois entiers strictement positifs. Pour tout entier $n \geqslant 3$, on pose

$$a_{n+1} = \mathrm{ppcm}(a_n, a_{n-1}) - \mathrm{ppcm}(a_{n-1}, a_{n-2}),$$

en convenant que $\mathrm{ppcm}(0, x) = 0$ pour tout entier $x$. Dès qu'un terme est négatif ou nul, on peut arrêter la suite : c'est un tel terme que l'on cherche.

Prouver qu'il existe un entier $k \leqslant a_3 + 4$ tel que $a_k \leqslant 0$.

## Hints

1. Calcule les premiers termes pour $a_1 = a_2 = 1$ et $a_3 = 5$. Divise ensuite chaque terme $a_{n+1}$ par $\mathrm{ppcm}(a_{n-1}, a_{n-2})$. Que remarques-tu ?
2. Montre que $a_{n-1}$ divise $a_{n+1}$. Déduis-en que $a_5$ est un multiple de $\mathrm{ppcm}(a_2, a_3)$.
3. Note $L_n = \mathrm{ppcm}(a_n, a_{n-1})$, de sorte que $a_{n+1} = L_n - L_{n-1}$. Le quotient de l'indication 1 vaut $L_n / L_{n-1} - 1$. Pour montrer qu'il baisse de $1$ à chaque rang, il suffit d'établir que $L_n L_{n-2} = a_n L_{n-1}$.
4. Pour cette égalité, utilise « $\mathrm{pgcd} \times \mathrm{ppcm} = \text{produit}$ », et le fait que $\mathrm{pgcd}(x, y - z) = \mathrm{pgcd}(x, z)$ lorsque $x$ divise $y$.

## Solution

**Rappel.** Pour deux entiers $x, y$ strictement positifs, on note $x \vee y = \mathrm{ppcm}(x, y)$ et $x \wedge y = \mathrm{pgcd}(x, y)$. On utilise les propriétés suivantes, qui se démontrent avec la décomposition en facteurs premiers.

- **(R1)** $(x \wedge y)(x \vee y) = xy$. En particulier $x \vee y \leqslant xy$.
- **(R2)** Un multiple commun de $x$ et de $y$ est un multiple de $x \vee y$. Le ppcm de trois nombres ne dépend pas de l'ordre dans lequel on les regroupe : $(x \vee y) \vee z = x \vee (y \vee z)$, que l'on note $x \vee y \vee z$. Si $z$ divise $x$, alors $x \vee y \vee z = x \vee y$.
- **(R3)** Si $x$ divise $y$, et si $z$ et $y - z$ sont strictement positifs, alors $x \wedge (y - z) = x \wedge z$. En effet, un diviseur $d$ de $x$ divise aussi $y$, donc $d$ divise $y - z$ si et seulement s'il divise $z$ : les diviseurs communs sont les mêmes.

Tant que $a_n$ et $a_{n-1}$ sont strictement positifs, on pose $L_n = a_n \vee a_{n-1}$. La définition de la suite s'écrit alors

$$a_{n+1} = L_n - L_{n-1}.$$

**Étape 0 : deux cas faciles.** Si $a_4 \leqslant 0$, l'entier $k = 4$ convient. Si $a_4 > 0$ et $a_5 \leqslant 0$, l'entier $k = 5$ convient, car $5 \leqslant a_3 + 4$. Dans la suite, on suppose donc $a_4 > 0$ et $a_5 > 0$.

**Étape 1 : des divisibilités.**

*(a) Si $n \geqslant 3$ et si $a_1, \ldots, a_n$ sont strictement positifs, alors $a_{n-1}$ divise $a_{n+1}$.* En effet, $a_{n-1}$ divise $L_n = a_n \vee a_{n-1}$ et $L_{n-1} = a_{n-1} \vee a_{n-2}$, donc il divise leur différence $a_{n+1}$.

*(b) $a_5$ est un multiple de $L_3$.* D'après (a) avec $n = 3$, $a_2$ divise $a_4$, donc $a_2$ divise $L_4 = a_4 \vee a_3$. Il divise aussi $L_3 = a_3 \vee a_2$, donc il divise $a_5 = L_4 - L_3$. D'après (a) avec $n = 4$, $a_3$ divise $a_5$. Ainsi $a_5$ est un multiple commun de $a_2$ et $a_3$, donc de $L_3$ d'après (R2).

On pose $c = a_5 / L_3$. C'est un entier, et $c \geqslant 1$ puisque $a_5 > 0$.

**Étape 2 : un quotient qui baisse de 1.** Pour $n \geqslant 4$, tant que $a_1, \ldots, a_n$ sont strictement positifs, on pose

$$q_n = \frac{a_{n+1}}{L_{n-1}}.$$

Ainsi $q_4 = c$. Montrons que **$q_n = q_{n-1} - 1$ pour tout $n \geqslant 5$ tel que $a_1, \ldots, a_n$ sont strictement positifs.**

D'une part $q_n = (L_n - L_{n-1})/L_{n-1} = L_n / L_{n-1} - 1$, d'autre part $q_{n-1} = a_n / L_{n-2}$. Il suffit donc de prouver

$$L_n \, L_{n-2} = a_n \, L_{n-1}. \qquad (\ast)$$

Notons $g = a_{n-1} \wedge a_n$.

- On a $a_n = L_{n-1} - L_{n-2}$, et $a_{n-1}$ divise $L_{n-1}$. D'après (R3), $g = a_{n-1} \wedge (L_{n-1} - L_{n-2}) = a_{n-1} \wedge L_{n-2}$.
- D'après (a), appliqué au rang $n - 2 \geqslant 3$, le nombre $a_{n-3}$ divise $a_{n-1}$. D'après (R2), on a donc $a_{n-1} \vee L_{n-2} = a_{n-1} \vee a_{n-2} \vee a_{n-3} = a_{n-1} \vee a_{n-2} = L_{n-1}$.
- La propriété (R1), appliquée à $a_{n-1}$ et $L_{n-2}$, donne alors

$$g \, L_{n-1} = (a_{n-1} \wedge L_{n-2})(a_{n-1} \vee L_{n-2}) = a_{n-1} \, L_{n-2}.$$

On multiplie par $a_n$, et on utilise (R1) sous la forme $a_{n-1} a_n = g \, L_n$ :

$$g \, a_n \, L_{n-1} = a_{n-1} a_n \, L_{n-2} = g \, L_n \, L_{n-2}.$$

Comme $g > 0$, on peut simplifier par $g$, ce qui donne $(\ast)$.

**Étape 3 : la suite finit par s'annuler.** Rappelons que $c \geqslant 1$, donc $c + 4 \geqslant 5$. Supposons que $a_1, \ldots, a_{c+4}$ soient tous strictement positifs. D'après l'étape 2, le quotient $q_n$ baisse de $1$ à chaque rang, de $q_4 = c$ jusqu'à

$$q_{c+4} = c - c = 0.$$

Donc $a_{c+5} = q_{c+4} \, L_{c+3} = 0$. Dans tous les cas, il existe donc un entier $k \leqslant c + 5$ tel que $a_k \leqslant 0$ : ou bien l'un des termes $a_4, \ldots, a_{c+4}$, ou bien $a_{c+5}$.

**Étape 4 : $c$ est plus petit que $a_3$.** On a $a_4 = L_3 - L_2 < L_3$, puisque $L_2 > 0$. De même $a_5 = L_4 - L_3 < L_4 = a_4 \vee a_3 \leqslant a_4 \, a_3$ d'après (R1). Donc

$$c = \frac{a_5}{L_3} < a_3 \times \frac{a_4}{L_3} < a_3.$$

Comme $c$ et $a_3$ sont des entiers, $c \leqslant a_3 - 1$, et l'entier $k$ de l'étape 3 vérifie $k \leqslant c + 5 \leqslant a_3 + 4$.

**Conclusion : il existe toujours un entier $k \leqslant a_3 + 4$ tel que $a_k \leqslant 0$.**

## Going further

Avec $a_1 = a_2 = 1$ et $a_3 = 5$, on obtient $1, 1, 5, 4, 15, 40, 60, 0$. Les quotients $q_4, q_5, q_6, q_7$ valent $15/5 = 3$, puis $40/20 = 2$, puis $60/60 = 1$, puis $0/120 = 0$ : ils baissent bien de $1$ à chaque rang, et le premier terme nul est $a_8$, avec $8 = a_3 + 3$.

En fait, la borne $a_3 + 4$ peut être remplacée par $a_3 + 3$. Dans l'étape 4, on peut écrire plus précisément $a_5 \leqslant a_3 a_4 - L_3 = a_3(L_3 - L_2) - L_3$, ce qui donne $c \leqslant a_3 - 1 - a_3 L_2 / L_3 < a_3 - 1$, donc $c \leqslant a_3 - 2$. Et si $a_3 = 1$, alors $a_4 = a_2 - (a_2 \vee a_1) \leqslant 0$. Cette nouvelle borne est la meilleure possible : avec $a_1 = a_2 = 1$ et $a_3 = m \geqslant 2$, on trouve $a_4 = m - 1$, $a_5 = m(m - 2)$, et le premier terme négatif ou nul est $a_{m+3}$.
