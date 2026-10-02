---
id: "12223"
title: "Sommes de nombres 2ⁿ − 2ᵏ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [puissances-de-2, somme, recurrence, parite, ecriture-binaire, extremalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercices pour les candidats OIM, BxMO et MYMC, exercice 5 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On note $A_n$ l'ensemble des nombres $2^n - 2^k$, où $k$ est un entier tel que $0 \leqslant k \leqslant n$ :

$$A_n = \{2^n - 1,\ 2^n - 2,\ 2^n - 4,\ \ldots,\ 2^n - 2^{n-1},\ 0\}.$$

Déterminer le plus grand entier strictement positif qui ne peut pas s'écrire comme une somme d'un ou plusieurs éléments de $A_n$, pas forcément distincts.

Par exemple, pour $n = 3$, on a $A_3 = \{7, 6, 4, 0\}$, et $15 = 7 + 4 + 4$ s'écrit comme une telle somme.

## Hints

1. Fais le cas $n = 2$, puis cherche à la main la réponse pour $n = 3$. Tu dois trouver $1$, puis $9$.
2. Un élément de $A_n$, multiplié par $2$, donne-t-il un élément de $A_{n+1}$ ? Utilise cette remarque pour prouver par récurrence sur $n$ que tous les grands entiers s'écrivent comme des sommes. Sépare les entiers pairs des entiers impairs.
3. La réponse est $(n - 2)\,2^n + 1$. Pour montrer que ce nombre ne s'écrit pas, suppose qu'il s'écrit avec $r$ éléments non nuls, et calcule la somme des puissances $2^k$ correspondantes.
4. Une somme de $r$ puissances de $2$, toutes au plus égales à $2^{n-1}$, peut-elle valoir $m\,2^n - 1$ avec peu de termes ? Regroupe deux puissances égales en une seule.

## Solution

Appelons **représentable** (pour $n$ donné) un entier qui est une somme d'un ou plusieurs éléments de $A_n$. On va montrer que la réponse est

$$N_n = (n - 2)\,2^n + 1.$$

Pour $n = 2$, $A_2 = \{3, 2, 0\}$ et $N_2 = 1$ : en effet $1$ ne s'écrit pas, et tout entier $N \geqslant 2$ s'écrit, avec des $2$ s'il est pair, avec un $3$ et des $2$ s'il est impair.

**Partie 1. Tout entier plus grand que $N_n$ est représentable.**

On le prouve par récurrence sur $n$. C'est vrai pour $n = 2$. Supposons que c'est vrai pour un certain $n \geqslant 2$, et soit $N > N_{n+1} = (n - 1)\,2^{n+1} + 1$. On remarque d'abord que

$$2 \times (2^n - 2^k) = 2^{n+1} - 2^{k+1},$$

et comme $1 \leqslant k + 1 \leqslant n + 1$, **le double d'un élément de $A_n$ est un élément de $A_{n+1}$.** Donc le double d'un entier représentable pour $n$ est représentable pour $n + 1$.

- *Si $N$ est pair.* Alors $\dfrac{N}{2} > (n - 1)\,2^n + \dfrac{1}{2} > (n - 2)\,2^n + 1 = N_n$, car $2^n > \dfrac{1}{2}$. Par hypothèse de récurrence, $\dfrac{N}{2}$ est représentable pour $n$, donc $N$ est représentable pour $n + 1$.
- *Si $N$ est impair.* Comme $N > (n-1)\,2^{n+1} + 1$ et que $(n-1)\,2^{n+1} + 2$ est pair, on a $N \geqslant (n - 1)\,2^{n+1} + 3$. Posons $N' = \dfrac{N - (2^{n+1} - 1)}{2}$, qui est un entier car $N$ et $2^{n+1} - 1$ sont impairs. Alors
$$N' \geqslant \frac{(n - 1)\,2^{n+1} + 3 - 2^{n+1} + 1}{2} = (n - 2)\,2^n + 2 > N_n.$$
Donc $N'$ est représentable pour $n$, et $2N'$ est représentable pour $n + 1$. Enfin $N = 2N' + (2^{n+1} - 1)$, et $2^{n+1} - 1 = 2^{n+1} - 2^0$ est un élément de $A_{n+1}$. Donc $N$ est représentable pour $n + 1$.

La propriété est donc vraie pour tout $n \geqslant 2$.

**Partie 2. Le nombre $N_n$ n'est pas représentable.**

*Un lemme.* Soit $m \geqslant 1$ un entier. Si le nombre $m\,2^n - 1$ est une somme de $r$ puissances de $2$ (pas forcément distinctes), toutes au plus égales à $2^{n-1}$, alors $r \geqslant 2m + n - 2$.

*Preuve du lemme.* Tant que deux des puissances sont égales et plus petites que $2^{n-1}$, on les remplace par leur somme : $2^j + 2^j = 2^{j+1}$, qui est encore une puissance de $2$ au plus égale à $2^{n-1}$. La somme ne change pas, et le nombre de termes diminue de $1$. On ne peut donc pas recommencer indéfiniment. À la fin, on a $r' \leqslant r$ termes, parmi lesquels les termes plus petits que $2^{n-1}$ sont tous différents.

Notons $q$ le nombre de termes égaux à $2^{n-1}$ et $T$ la somme des autres. Ces autres termes sont des puissances **distinctes** prises parmi $1, 2, 4, \ldots, 2^{n-2}$, donc

$$T \leqslant 1 + 2 + \cdots + 2^{n-2} = 2^{n-1} - 1.$$

Ainsi $m\,2^n - 1 = q \times 2^{n-1} + T$ avec $0 \leqslant T < 2^{n-1}$ : c'est la division euclidienne de $m\,2^n - 1$ par $2^{n-1}$. Or

$$m\,2^n - 1 = (2m - 1) \times 2^{n-1} + (2^{n-1} - 1),$$

avec $0 \leqslant 2^{n-1} - 1 < 2^{n-1}$. Par unicité de la division euclidienne, $q = 2m - 1$ et $T = 2^{n-1} - 1$. Mais $T$ est une somme de certaines des puissances $1, 2, \ldots, 2^{n-2}$, chacune au plus une fois, et il est égal à la somme de toutes. Il les utilise donc toutes, ce qui fait $n - 1$ termes. Finalement $r \geqslant r' = (2m - 1) + (n - 1) = 2m + n - 2$.

*Fin de la preuve.* Supposons que $N_n$ soit représentable. On peut enlever les termes nuls, puisque $N_n > 0$ et qu'il en reste au moins un. On a donc

$$N_n = (2^n - 2^{k_1}) + (2^n - 2^{k_2}) + \cdots + (2^n - 2^{k_r}),$$

avec $r \geqslant 1$ et $0 \leqslant k_i \leqslant n - 1$ pour tout $i$. En regroupant,

$$2^{k_1} + 2^{k_2} + \cdots + 2^{k_r} = r\,2^n - N_n = (r - n + 2)\,2^n - 1.$$

Posons $m = r - n + 2$. Le membre de gauche est strictement positif, donc $m\,2^n > 1$ et $m \geqslant 1$. Les $r$ puissances $2^{k_i}$ sont toutes au plus égales à $2^{n-1}$, et leur somme vaut $m\,2^n - 1$. D'après le lemme, $r \geqslant 2m + n - 2$. Mais $r = m + n - 2$, donc $m + n - 2 \geqslant 2m + n - 2$, soit $m \leqslant 0$. C'est une contradiction.

**Conclusion.** Le plus grand entier strictement positif qui n'est pas une somme d'éléments de $A_n$ est

$$(n - 2)\,2^n + 1.$$

## Going further

Pour $n = 3$, $4$, $5$, cela donne $9$, $33$ et $97$. Une vérification à l'ordinateur, qui teste tous les entiers un par un, confirme la formule jusqu'à $n = 10$.

La preuve du lemme montre aussi comment écrire $m\,2^n - 1$ avec le moins de termes possible : $2m - 1$ fois $2^{n-1}$, puis une fois chacune des puissances $1, 2, \ldots, 2^{n-2}$. Ce problème figure aussi dans la liste des problèmes proposés pour l'Olympiade internationale de 2014.
