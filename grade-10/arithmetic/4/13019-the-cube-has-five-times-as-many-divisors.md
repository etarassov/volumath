---
id: "13019"
title: "Le cube a cinq fois plus de diviseurs"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombre de diviseurs, decomposition en facteurs premiers, equation en entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 8 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

Soit $a$ un entier strictement positif. On suppose que $a^3$ a cinq fois plus de diviseurs positifs que $a$.

Combien de diviseurs positifs $a$ possède-t-il ?

## Hints

1. Essaie avec des nombres simples : combien de diviseurs ont $2$ et $2^3$ ? Et $6$ et $6^3$ ?
2. Si $a = p_1^{\alpha_1} \times p_2^{\alpha_2} \times \cdots \times p_k^{\alpha_k}$ est la décomposition de $a$ en facteurs premiers, à quoi ressemble un diviseur de $a$ ? Combien y en a-t-il ?
3. Montre que $3\alpha + 1 \geqslant 2(\alpha + 1)$ dès que $\alpha \geqslant 1$. Qu'en déduis-tu sur le nombre $k$ de facteurs premiers différents de $a$ ?
4. Dans le cas $k = 2$, développe et cherche à écrire l'équation sous la forme d'un produit égal à $5$.

## Solution

**Un rappel : le nombre de diviseurs.** Soit $n = p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}$ la décomposition de $n$ en facteurs premiers, où $p_1, \ldots, p_k$ sont des nombres premiers différents et $\alpha_1, \ldots, \alpha_k \geqslant 1$. Un diviseur positif de $n$ ne peut contenir que ces nombres premiers, et chacun au plus autant de fois que dans $n$. Les diviseurs de $n$ sont donc exactement les nombres
$$p_1^{\beta_1} \times \cdots \times p_k^{\beta_k} \qquad \text{avec} \qquad 0 \leqslant \beta_1 \leqslant \alpha_1, \ \ldots, \ 0 \leqslant \beta_k \leqslant \alpha_k,$$
et deux choix différents des exposants donnent deux nombres différents, par unicité de la décomposition. Il y a $\alpha_1 + 1$ choix pour $\beta_1$, ..., $\alpha_k + 1$ choix pour $\beta_k$, donc $n$ a
$$(\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_k + 1)$$
diviseurs positifs. Par exemple $12 = 2^2 \times 3$ a $3 \times 2 = 6$ diviseurs : $1, 2, 3, 4, 6, 12$.

**L'équation.** Le nombre $a = 1$ ne convient pas, car $1$ et $1^3$ ont chacun un seul diviseur. Donc $a \geqslant 2$. Écrivons $a = p_1^{\alpha_1} \times \cdots \times p_k^{\alpha_k}$ avec $k \geqslant 1$. Alors $a^3 = p_1^{3\alpha_1} \times \cdots \times p_k^{3\alpha_k}$, et l'énoncé se traduit par
$$(3\alpha_1 + 1)(3\alpha_2 + 1)\cdots(3\alpha_k + 1) = 5\,(\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_k + 1) .$$

**Au plus deux nombres premiers.** Pour tout entier $\alpha \geqslant 1$, on a $(3\alpha + 1) - 2(\alpha + 1) = \alpha - 1 \geqslant 0$, donc $3\alpha + 1 \geqslant 2(\alpha + 1)$. En multipliant ces $k$ inégalités entre nombres positifs,
$$(3\alpha_1 + 1)\cdots(3\alpha_k + 1) \geqslant 2^k\,(\alpha_1 + 1)\cdots(\alpha_k + 1) .$$
Le membre de gauche vaut $5\,(\alpha_1 + 1)\cdots(\alpha_k + 1)$, donc $5 \geqslant 2^k$. Comme $2^3 = 8 > 5$, on a $k = 1$ ou $k = 2$.

**Si $k = 1$.** L'équation devient $3\alpha_1 + 1 = 5\alpha_1 + 5$, c'est-à-dire $2\alpha_1 = -4$. C'est impossible, car $\alpha_1 \geqslant 1$.

**Si $k = 2$.** Écrivons $\alpha = \alpha_1$ et $\beta = \alpha_2$. L'équation $(3\alpha + 1)(3\beta + 1) = 5(\alpha + 1)(\beta + 1)$ se développe en
$$9\alpha\beta + 3\alpha + 3\beta + 1 = 5\alpha\beta + 5\alpha + 5\beta + 5,$$
c'est-à-dire $4\alpha\beta - 2\alpha - 2\beta - 4 = 0$, ou encore $4\alpha\beta - 2\alpha - 2\beta + 1 = 5$. Or $4\alpha\beta - 2\alpha - 2\beta + 1 = (2\alpha - 1)(2\beta - 1)$, donc
$$(2\alpha - 1)(2\beta - 1) = 5 .$$
Les deux facteurs sont des entiers positifs, et $5$ est premier : l'un vaut $1$ et l'autre $5$. Donc $\{\alpha, \beta\} = \{1, 3\}$, et $a = p \times q^3$ avec $p$ et $q$ premiers différents.

**Vérification.** Un tel nombre a $(1 + 1)(3 + 1) = 8$ diviseurs, et son cube $p^3 q^9$ en a $(3 + 1)(9 + 1) = 40 = 5 \times 8$. Par exemple $a = 24 = 3 \times 2^3$ convient.

**Conclusion.** Le nombre $a$ possède $8$ diviseurs positifs.

## Going further

1. Trouver tous les entiers $a \geqslant 1$ tels que $a^2$ ait trois fois plus de diviseurs que $a$.
2. Peut-il arriver que $a^3$ ait exactement six fois plus de diviseurs que $a$ ?
