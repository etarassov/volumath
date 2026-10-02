---
id: "12842"
title: "Chaque terme divise le double de la somme des précédents"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suites, divisibilite, nombres-premiers, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 17 janvier 2024"
  reference: "2025-01_Enonce-Test-2.pdf, test senior, exercice 6 ; corrigé 2025-01_Corrige-Test-2.pdf (on suit la solution alternative du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-2.pdf"
---

## Statement

Soit $a_1, a_2, a_3, \ldots$ une suite d'entiers strictement positifs, **strictement croissante**, telle que, pour tout entier $k \geq 1$,

$$a_{k+1} \text{ divise } 2(a_1 + a_2 + \cdots + a_k).$$

On suppose qu'il existe une infinité de nombres premiers $p$ qui divisent au moins un terme de la suite.

Démontrer que tout entier $n \geq 1$ divise au moins un terme de la suite.

## Hints

1. Par hypothèse, le quotient $b_k = 2(a_1 + \cdots + a_k)/a_{k+1}$ est un entier pour $k \geq 1$. Posez aussi $b_0 = 0$, et regardez ce que vaut $b_k$ pour la suite $a_k = k$.
2. Montrez que $b_{k+1}\, a_{k+2} = (b_k + 2)\, a_{k+1}$. Comme la suite $(a_k)$ est strictement croissante, que peut-on en déduire sur $b_{k+1}$ et $b_k$ ?
3. Les $b_k$ ne peuvent augmenter que d'au plus $1$ à chaque pas. Montrez qu'ils deviennent pourtant aussi grands qu'on veut : prenez un nombre premier $p$ très grand qui divise un terme $a_k$, mais pas $a_1$.
4. Si $b_\ell = n$ et $b_{\ell - 1} = n - 1$, que dit la relation de l'indication 2 ?

## Solution

Pour $k \geq 0$, notons $s_k = a_1 + a_2 + \cdots + a_k$ la somme des $k$ premiers termes (avec $s_0 = 0$), et

$$b_k = \frac{2 s_k}{a_{k+1}}.$$

Pour $k \geq 1$, l'hypothèse dit exactement que $b_k$ est un entier, et il est strictement positif. Pour $k = 0$, on a $b_0 = 0$, qui est aussi un entier.

### Étape 1 : la relation entre deux b consécutifs

Pour tout $k \geq 0$, on a $s_{k+1} = s_k + a_{k+1}$, donc

$$b_{k+1}\, a_{k+2} = 2 s_{k+1} = 2 s_k + 2 a_{k+1} = b_k\, a_{k+1} + 2 a_{k+1} = (b_k + 2)\, a_{k+1}. \qquad (R)$$

Comme $0 < a_{k+1} < a_{k+2}$, on en déduit

$$b_{k+1}\, a_{k+2} = (b_k + 2)\, a_{k+1} < (b_k + 2)\, a_{k+2},$$

puis, en divisant par $a_{k+2} > 0$, $b_{k+1} < b_k + 2$. Ce sont des entiers, donc

$$b_{k+1} \leq b_k + 1 \qquad \text{pour tout } k \geq 0.$$

**D'un indice au suivant, la suite $(b_k)$ augmente d'au plus $1$.**

### Étape 2 : les b deviennent aussi grands qu'on veut

Soit $M$ un entier aussi grand qu'on veut. Le nombre $a_1$ n'a qu'un nombre fini de diviseurs premiers. Comme une infinité de nombres premiers divisent un terme de la suite, on peut en choisir un, noté $p$, qui divise un terme $a_k$, qui ne divise pas $a_1$, et qui vérifie $p > M + 2$. Comme $p$ ne divise pas $a_1$, on a $k \geq 2$.

D'après $(R)$, écrite pour l'indice $j - 1$, on a $b_j\, a_{j+1} = (b_{j-1} + 2)\, a_j$ pour tout $j \geq 1$, donc

$$a_{j+1} \text{ divise } (b_{j-1} + 2)\, a_j.$$

En enchaînant ces divisibilités, on obtient

$$a_k \text{ divise } (b_{k-2} + 2)\, a_{k-1}, \text{ qui divise } (b_{k-2} + 2)(b_{k-3} + 2)\, a_{k-2}, \ldots$$

et finalement $a_k$ divise $(b_{k-2} + 2)(b_{k-3} + 2) \cdots (b_0 + 2)\, a_1$. Le nombre premier $p$ divise $a_k$, donc il divise ce produit. Un nombre premier qui divise un produit divise l'un des facteurs, et $p$ ne divise pas $a_1$ : il existe donc un indice $i$ tel que $p$ divise $b_i + 2$. Comme $b_i + 2 > 0$, cela donne $b_i + 2 \geq p > M + 2$, donc $b_i > M$.

**Ainsi, la suite $(b_k)$ dépasse n'importe quel entier $M$.**

### Étape 3 : la suite b passe par toutes les valeurs

Soit $n \geq 1$. D'après l'étape 2, il existe des indices $k$ tels que $b_k \geq n$ ; notons $\ell$ le plus petit. Comme $b_0 = 0 < n$, on a $\ell \geq 1$, et par définition de $\ell$, on a $b_{\ell-1} \leq n - 1$. D'après l'étape 1,

$$n \leq b_\ell \leq b_{\ell-1} + 1 \leq n.$$

Toutes ces inégalités sont donc des égalités : $b_\ell = n$ et $b_{\ell-1} = n - 1$.

### Étape 4 : conclusion

La relation $(R)$ pour l'indice $\ell - 1$ s'écrit $b_\ell\, a_{\ell+1} = (b_{\ell-1} + 2)\, a_\ell$, c'est-à-dire

$$n\, a_{\ell+1} = (n + 1)\, a_\ell = n\, a_\ell + a_\ell.$$

Donc $a_\ell = n\,(a_{\ell+1} - a_\ell)$ est un multiple de $n$. **Tout entier $n \geq 1$ divise au moins un terme de la suite**, à savoir $a_\ell$.

## Going further

1. Vérifiez que la suite $a_k = k$ remplit toutes les conditions de l'énoncé. Que vaut $b_k$ pour cette suite ?
2. Vérifiez que la suite $1, 2, 6, 18, 54, \ldots$, où $a_k = 2 \times 3^{k-2}$ pour $k \geq 2$, est strictement croissante et vérifie la condition de divisibilité (calculez $a_1 + \cdots + a_k$). Le nombre $5$ divise-t-il l'un de ses termes ? Pourquoi cela ne contredit-il pas l'énoncé ?
3. À l'étape 3, pourquoi ne pouvait-on pas se contenter de dire « la suite $(b_k)$ augmente d'au plus $1$ à chaque pas et dépasse tout entier, donc elle passe par toutes les valeurs » sans parler de $b_0$ ? (Pensez à une suite qui commence à $5$.)
