---
id: "11050"
title: "Une somme cyclique divisible par pⁿ⁻¹ mais pas par pⁿ"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [somme, permutations, construction, valuation, factorisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 16 ; corrigé 2023-03_corrige.pdf. Le corrigé utilise une racine primitive modulo pⁿ et le lemme LTE ; une remarque des correcteurs y signale que l'ordre croissant convient aussi, et c'est cette solution, élémentaire, qui est rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soient $n \geqslant 2$ un entier et $p$ un nombre premier impair. Soit $U$ l'ensemble des entiers $x$ tels
que $1 \leqslant x \leqslant p^n$ et $x$ n'est pas divisible par $p$, et soit $N$ le nombre d'éléments de
$U$.

Montrer qu'on peut ranger les éléments de $U$ dans un ordre $a_1, a_2, \ldots, a_N$ de sorte que la somme

$$a_1 a_2 + a_2 a_3 + \cdots + a_{N-1} a_N + a_N a_1$$

soit divisible par $p^{n-1}$ mais pas par $p^n$.

## Hints

1. Essaie tout simplement l'ordre croissant, avec $p = 3$ et $n = 2$ : $U = \{1, 2, 4, 5, 7, 8\}$. Que vaut la somme ?
2. Pour calculer une somme de produits de voisins, utilise $2a_k a_{k+1} = a_k^2 + a_{k+1}^2 - (a_{k+1} - a_k)^2$.
3. Dans l'ordre croissant, les écarts $a_{k+1} - a_k$ valent presque tous $1$ ou $2$. Compte-les, sans oublier le dernier écart entre $a_N$ et $a_1$.
4. Pour la somme des carrés des éléments de $U$, pars de la somme des carrés de $1$ à $p^n$ et retire celle des multiples de $p$.

## Solution

On va montrer que **l'ordre croissant convient**. Posons $q = p^n$ et $B = p^{n-1}$, de sorte que
$q = pB$. Les multiples de $p$ entre $1$ et $q$ sont $p, 2p, \ldots, Bp$ : il y en a $B$, donc
$N = q - B = (p - 1)B$.

Rangeons les éléments de $U$ dans l'ordre croissant : $a_1 = 1$, $a_2 = 2$, ..., $a_N = q - 1$, et posons
$a_{N+1} = a_1$. Notons $S = \sum_{k=1}^{N} a_k a_{k+1}$ la somme à étudier.

**Étape 1 : une formule pour $S$.** Pour chaque $k$, on a
$2a_k a_{k+1} = a_k^2 + a_{k+1}^2 - (a_{k+1} - a_k)^2$. En sommant sur $k = 1, \ldots, N$ (chaque $a_k^2$
apparaît deux fois, une fois comme $a_k^2$ et une fois comme $a_{k+1}^2$), on obtient

$$2S = 2\sum_{x \in U} x^2 - \sum_{k=1}^{N} (a_{k+1} - a_k)^2 .$$

**Étape 2 : la somme des carrés des écarts.** Quand on parcourt $U$ dans l'ordre croissant, on avance de
$1$, sauf quand on saute un multiple de $p$, où l'on avance de $2$. Il y a $N$ écarts en tout :

* le dernier, de $a_N = q - 1$ à $a_1 = 1$, vaut $-(q - 2)$ ;
* parmi les $N - 1$ autres, on saute les multiples $p, 2p, \ldots, (B - 1)p$, ce qui donne $B - 1$ écarts
  égaux à $2$ ;
* les $N - 1 - (B - 1) = N - B = (p - 2)B$ écarts restants valent $1$.

Donc

$$\sum_{k=1}^{N} (a_{k+1} - a_k)^2 = (p - 2)B + 4(B - 1) + (q - 2)^2 = q^2 - 3q + 2B$$

(en utilisant $pB = q$).

**Étape 3 : la somme des carrés des éléments de $U$.** On rappelle que
$1^2 + 2^2 + \cdots + m^2 = \dfrac{m(m+1)(2m+1)}{6}$. On retire de la somme des carrés de $1$ à $q$ celle
des carrés des multiples de $p$, qui vaut $p^2(1^2 + \cdots + B^2)$ :

$$\sum_{x \in U} x^2 = \frac{pB(pB + 1)(2pB + 1)}{6} - \frac{p^2 B(B + 1)(2B + 1)}{6} .$$

En mettant $\dfrac{pB}{6}$ en facteur, il reste
$(pB + 1)(2pB + 1) - p(B + 1)(2B + 1) = 2p^2B^2 - 2pB^2 + 1 - p = (p - 1)(2pB^2 - 1)$, donc

$$\sum_{x \in U} x^2 = \frac{q(p - 1)(2pB^2 - 1)}{6} .$$

**Étape 4 : une expression de $6S$.** D'après les étapes 1 et 2,

$$S = \sum_{x \in U} x^2 - \frac{q^2 - 3q + 2B}{2} = \sum_{x \in U} x^2 - B - \frac{3q(q - 3)}{6} .$$

En multipliant par $6$ et en utilisant l'étape 3, puis $q = pB$ :

$$6S = q(p - 1)(2pB^2 - 1) - 6B - 3q(q - 3) = B\,(pT - 6), \quad \text{où} \quad T = (p - 1)(2pB^2 - 1) - 3(q - 3)$$

est un entier.

**Étape 5 : l'exposant de $p$.** Notons $e_p(X)$ l'exposant de $p$ dans la décomposition de $X$ en
facteurs premiers. Comme $p$ est impair, il ne divise pas $2$ ; il faut seulement distinguer le cas $p = 3$.

* **Si $p > 3$** : $p$ ne divise pas $6$, donc $e_p(6S) = e_p(S)$, et $p$ ne divise pas $pT - 6$. Donc
  $e_p(S) = e_p(B) = n - 1$.
* **Si $p = 3$** : $6S = B(3T - 6) = 3B(T - 2)$, donc $2S = B(T - 2)$. Ici
  $T - 2 = 2(6B^2 - 1) - 3(q - 3) - 2 = 12B^2 - 3q + 5$, qui a pour reste $2$ dans la division par $3$.
  Donc $e_3(S) = e_3(2S) = e_3(B) = n - 1$.

Dans les deux cas, l'exposant de $p$ dans $S$ vaut exactement $n - 1$ : $S$ est divisible par $p^{n-1}$
mais pas par $p^n$.

**Vérification sur un exemple.** Pour $p = 3$ et $n = 2$ : $U = \{1, 2, 4, 5, 7, 8\}$ et
$S = 2 + 8 + 20 + 35 + 56 + 8 = 129 = 3 \times 43$, divisible par $3$ mais pas par $9$.

**Conclusion.** L'ordre croissant $a_1 < a_2 < \cdots < a_N$ convient.

## Going further

Montrer que l'ordre croissant convient encore pour $p = 2$ : l'ensemble $U$ est alors formé des nombres
impairs de $1$ à $2^n - 1$, et la somme est divisible par $2^{n-1}$ mais pas par $2^n$. (Reprends le calcul :
cette fois tous les écarts valent $2$, sauf le dernier.)
