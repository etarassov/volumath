---
id: "13869"
title: "Passer de la puissance p à la puissance q"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalites, puissances, normalisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022"
  reference: "2022-06_sujet-coupe-Animath-printemps-2022.pdf, exercices lycéens, exercice 15 ; corrigé 2022-06_corrige-commente-coupe-Animath-printemps-2022.pdf, solution de l'exercice 15. Le corrigé contient trois coquilles sans conséquence, corrigées ici : « x_i^p < somme = x_{n+1}^p » au lieu de « somme < x_{n+1}^p », « y_n^q » au lieu de « y_n^p » dans la question 1, et « puisque p > q » au lieu de « q > p » dans la question 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/06/sujet-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-06_sujet-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soient $n$ un entier strictement positif, $x_1, \ldots, x_{n+1}$ des réels strictement positifs,
et $p < q$ deux entiers strictement positifs. On suppose que

$$x_{n+1}^p > x_1^p + \cdots + x_n^p.$$

1. Montrer que $x_{n+1}^q > x_1^q + \cdots + x_n^q$.
2. Montrer que
   $$\left(x_{n+1}^p - \left(x_1^p + \cdots + x_n^p\right)\right)^q < \left(x_{n+1}^q - \left(x_1^q + \cdots + x_n^q\right)\right)^p.$$

## Hints

1. Chaque $x_i$, pour $i \leqslant n$, est plus petit que $x_{n+1}$. Pourquoi ?
2. Divise tout par $x_{n+1}$ : pose $y_i = \dfrac{x_i}{x_{n+1}}$. Ces nombres sont entre $0$ et
   $1$, et l'hypothèse devient $y_1^p + \cdots + y_n^p < 1$.
3. Si $0 < y < 1$ et $q > p$, alors $y^q < y^p$. Écris $y^q = y^p \times y^{q-p}$.
4. Pour la question 2, mets $x_{n+1}^{pq}$ en facteur des deux côtés.

## Solution

**Préparation.** Pour $i \leqslant n$, on a
$x_i^p \leqslant x_1^p + \cdots + x_n^p < x_{n+1}^p$, et comme $x_i$ et $x_{n+1}$ sont positifs,
$x_i < x_{n+1}$. Posons $y_i = \dfrac{x_i}{x_{n+1}}$ pour $1 \leqslant i \leqslant n$ : on a
$0 < y_i < 1$. Notons aussi

$$S_p = y_1^p + \cdots + y_n^p \qquad \text{et} \qquad S_q = y_1^q + \cdots + y_n^q.$$

Comme $x_i^p = x_{n+1}^p\,y_i^p$, l'hypothèse divisée par $x_{n+1}^p$ s'écrit $S_p < 1$.

**Un fait utile.** Si $0 < t < 1$ et $q > p$, alors $t^q < t^p$. En effet $t^{q-p}$ est un
produit de $q - p \geqslant 1$ facteurs compris entre $0$ et $1$, donc $0 < t^{q-p} < 1$, et
$t^q = t^p \times t^{q-p} < t^p$.

**Question 1.** D'après le fait utile, $y_i^q < y_i^p$ pour chaque $i$. En additionnant,

$$0 < S_q < S_p < 1.$$

En multipliant $S_q < 1$ par $x_{n+1}^q > 0$, et comme $x_{n+1}^q\,y_i^q = x_i^q$, on obtient
$x_1^q + \cdots + x_n^q < x_{n+1}^q$.

**Question 2.** Mettons $x_{n+1}^p$ en facteur dans la parenthèse de gauche et $x_{n+1}^q$ dans
celle de droite :

$$x_{n+1}^p - \left(x_1^p + \cdots + x_n^p\right) = x_{n+1}^p\,(1 - S_p), \qquad x_{n+1}^q - \left(x_1^q + \cdots + x_n^q\right) = x_{n+1}^q\,(1 - S_q).$$

Les deux membres de l'inégalité à montrer valent donc

$$x_{n+1}^{pq}\,(1 - S_p)^q \qquad \text{et} \qquad x_{n+1}^{pq}\,(1 - S_q)^p.$$

Comme $x_{n+1}^{pq} > 0$, il suffit de montrer que $(1 - S_p)^q < (1 - S_q)^p$.

D'après la question 1, $0 < 1 - S_p < 1 - S_q < 1$.

- Deux nombres positifs sont rangés dans le même ordre que leurs puissances $q$-ièmes, donc
  $(1 - S_p)^q < (1 - S_q)^q$.
- Le nombre $1 - S_q$ est entre $0$ et $1$, donc d'après le fait utile,
  $(1 - S_q)^q < (1 - S_q)^p$.

En enchaînant, $(1 - S_p)^q < (1 - S_q)^p$, ce qu'il fallait démontrer.

**Conclusion.** Les deux inégalités sont démontrées. L'idée qui fait tout marcher est de diviser
par le plus grand nombre, $x_{n+1}$, pour se ramener à des nombres entre $0$ et $1$, dont les
puissances diminuent quand l'exposant augmente.

## Going further

En prenant la racine $pq$-ième des deux membres, la question 2 dit que le nombre
$\left(x_{n+1}^p - (x_1^p + \cdots + x_n^p)\right)^{1/p}$, qui mesure de combien $x_{n+1}$ dépasse
les autres « à l'échelle $p$ », augmente quand on remplace $p$ par un exposant plus grand.

Avec $n = 1$, $x_1 = 3$, $x_2 = 5$, $p = 1$ et $q = 2$ : l'hypothèse $5 > 3$ est vraie, la question 1
donne $25 > 9$, et la question 2 donne $(5 - 3)^2 = 4 < 25 - 9 = 16$.
