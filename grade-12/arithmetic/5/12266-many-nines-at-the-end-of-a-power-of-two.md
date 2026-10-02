---
id: "12266"
title: "Beaucoup de 9 à la fin d'une puissance de 2"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [puissances-de-2, ecriture-decimale, chiffres, divisibilite, recurrence, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 6 (groupe A). Dans le corrigé, la récurrence contient deux coquilles (l'hypothèse doit être 5^k divise a + 1, et la conclusion 5^(k+1)) ; la construction a été vérifiée par ordinateur pour k = 1008"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

Montrer qu'il existe un entier $n > 0$ tel que, parmi les $2016$ derniers chiffres de l'écriture décimale de $2^n$, il y ait au moins $1008$ chiffres $9$.

## Hints

1. Si $2^n + c$ est un multiple de $10^{2016}$, avec $c$ un entier positif plus petit que $10^{1008}$, que peux-tu dire des $2016$ derniers chiffres de $2^n$ ?
2. Essaie $c = 4^{1008} = 2^{2016}$, qui est bien plus petit que $10^{1008}$. Tu cherches alors $n$ tel que $2^n + 2^{2016}$ soit un multiple de $10^{2016} = 2^{2016} \times 5^{2016}$. Mets $2^{2016}$ en facteur : il te faut une puissance de $4$ qui, augmentée de $1$, soit un multiple de $5^{2016}$.
3. Regarde $4 + 1 = 5$ et $4^5 + 1 = 1025 = 25 \times 41$. Montre par récurrence que $5^k$ divise $4^{5^{k-1}} + 1$ pour tout entier $k \geqslant 1$.
4. Pour la récurrence, pose $b = 4^{5^{k-1}}$, factorise $b^5 + 1$ par $b + 1$, et vérifie que $b^4 - b^3 + b^2 - b + 1 = (b + 1)(b^3 - 2b^2 + 3b - 4) + 5$.

## Solution

On pose $k = 1008$, de sorte que $2016 = 2k$.

**Étape 1. Une propriété des puissances de 4.**

Montrons par récurrence que, pour tout entier $j \geqslant 1$,
$$5^j \text{ divise } 4^{5^{j-1}} + 1.$$

*Initialisation.* Pour $j = 1$, on a $4^{5^0} + 1 = 4 + 1 = 5$, qui est divisible par $5$.

*Hérédité.* Soit $j \geqslant 1$ tel que $5^j$ divise $4^{5^{j-1}} + 1$. On pose $b = 4^{5^{j-1}}$. Comme $5^j = 5^{j-1} \times 5$, on a
$$4^{5^j} = \left(4^{5^{j-1}}\right)^5 = b^5.$$
On factorise, en vérifiant le résultat par développement :
$$b^5 + 1 = (b + 1)(b^4 - b^3 + b^2 - b + 1).$$

- Le premier facteur $b + 1$ est divisible par $5^j$, par hypothèse.
- Pour le second, on vérifie aussi par développement que
$$b^4 - b^3 + b^2 - b + 1 = (b + 1)(b^3 - 2b^2 + 3b - 4) + 5.$$
Comme $b + 1$ est un multiple de $5$, le membre de droite est une somme de deux multiples de $5$. Le second facteur est donc divisible par $5$.

Le produit $b^5 + 1$ est donc divisible par $5^j \times 5 = 5^{j+1}$, c'est-à-dire que $5^{j+1}$ divise $4^{5^j} + 1$. La propriété est démontrée pour tout $j \geqslant 1$.

**Étape 2. Le choix de $n$.**

On applique l'étape 1 avec $j = 2k$ : le nombre $5^{2k}$ divise $4^{5^{2k-1}} + 1$. On multiplie par $2^{2k}$ : le nombre $2^{2k} \times 5^{2k} = 10^{2k}$ divise
$$2^{2k} \times \left(4^{5^{2k-1}} + 1\right) = 2^{2k} \times 2^{2 \times 5^{2k-1}} + 2^{2k} = 2^{n} + 4^k,$$
où l'on a posé
$$n = 2k + 2 \times 5^{2k-1}.$$
Il existe donc un entier $q \geqslant 1$ tel que $2^n + 4^k = q \times 10^{2k}$, c'est-à-dire
$$2^n = (q - 1) \times 10^{2k} + \left(10^{2k} - 4^k\right).$$

**Étape 3. Les $2k$ derniers chiffres de $2^n$.**

On pose $r = 10^{2k} - 4^k$. Comme $4^k < 10^k$, on a
$$10^{2k} - 10^k < r < 10^{2k}.$$
Ainsi $0 < r < 10^{2k}$, et l'égalité $2^n = (q - 1) \times 10^{2k} + r$ montre que les $2k$ derniers chiffres de $2^n$ sont ceux de $r$, complétés si besoin par des $0$ à gauche pour en avoir $2k$. Le nombre $2^n$ a d'ailleurs au moins $2k$ chiffres, puisque $2^n \geqslant r > 10^{2k} - 10^k \geqslant 10^{2k-1}$.

Écrivons $r$ autrement :
$$r = \left(10^k - 1\right) \times 10^k + \left(10^k - 4^k\right),$$
avec $0 < 10^k - 4^k < 10^k$. Le nombre $10^k - 1$ s'écrit avec $k$ chiffres $9$. Les $2k$ chiffres de $r$ sont donc d'abord $k$ chiffres $9$, puis les $k$ chiffres de $10^k - 4^k$ (complétés par des $0$ à gauche si besoin).

**Conclusion.** Avec $k = 1008$ et $n = 2016 + 2 \times 5^{2015}$, parmi les $2016$ derniers chiffres de $2^n$, les $1008$ premiers sont des $9$. Un tel entier $n$ existe donc.

## Going further

1. Teste la méthode avec $k = 1$ puis $k = 2$ : vérifie que $2^{12} = 4096$, et que les quatre derniers chiffres de $2^{254}$ sont $9984$.
2. Dans l'étape 3, on a seulement utilisé $4^k < 10^k$, ce qui est très large. On admet que $4^{1008} = 2^{2016} < 10^{607}$. Montre que, pour le même entier $n$, il y a en fait au moins $1409$ chiffres $9$ parmi les $2016$ derniers chiffres de $2^n$.
