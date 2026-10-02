---
id: "12622"
title: "Une puissance de 2021, plus 4"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [equation-diophantienne, restes, congruences, parite, factorisation, identites-remarquables, nombres-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 31 mars 2021"
  reference: "2021-12_Enonce-Test-4.pdf, exercice 4 (junior) ; corrigé 2021-04_Corrige-Test-4-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-4.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ d'entiers strictement positifs tels que
$$2021^a + 4 = 3^b \times 5^c.$$

## Hints

1. Commence par $a = 1$. Que vaut $2021 + 4$ ? Profites-en pour décomposer 2021 en produit de nombres premiers : $2021 = 45^2 - 4$.
2. Regarde les restes des deux membres dans la division par 3, puis par 4, puis par 8. Qu'apprends-tu sur la parité de $a$, de $b$ et de $c$ ?
3. Si $b$ et $c$ sont pairs, alors $3^b \times 5^c$ est un carré $X^2$. L'équation devient $2021^a = X^2 - 4$. Factorise.
4. Les deux facteurs $X - 2$ et $X + 2$ n'ont aucun facteur premier commun. Où peuvent aller les facteurs 43 et 47 ?

## Solution

**Une solution.** Pour $a = 1$, on trouve $2021 + 4 = 2025 = 45^2 = 3^4 \times 5^2$. Donc $(a, b, c) = (1, 4, 2)$ est une solution. On remarque au passage que
$$2021 = 45^2 - 2^2 = (45 - 2)(45 + 2) = 43 \times 47,$$
et 43 et 47 sont des nombres premiers.

On prend maintenant une solution $(a, b, c)$ quelconque, et on étudie les restes des deux membres. On utilise la règle habituelle : le reste d'une somme ou d'un produit ne dépend que des restes des termes.

**Division par 3 : $a$ est impair.** Comme $b \geqslant 1$, le membre de droite est divisible par 3. À gauche, $2021 = 3 \times 673 + 2$ a pour reste 2, que l'on peut aussi voir comme $-1$. Donc $2021^a$ a le même reste que $(-1)^a$, et $2021^a + 4$ le même reste que $(-1)^a + 1$. Ce nombre doit être divisible par 3. Si $a$ était pair, il vaudrait 2. Donc $a$ est impair.

**Division par 4 : $b$ est pair.** À gauche, $2021 = 4 \times 505 + 1$, donc $2021^a + 4$ a pour reste 1 dans la division par 4. À droite, $5$ a pour reste 1 et $3$ a pour reste $3$, c'est-à-dire $-1$. Donc $3^b \times 5^c$ a le même reste que $(-1)^b$. Il faut $(-1)^b = 1$, donc $b$ est pair.

**Division par 8 : $c$ est pair.** À gauche, $2021 = 8 \times 252 + 5$. Or $5^2 = 25$ a pour reste 1, donc les puissances de 5 ont pour reste 1 (exposant pair) ou 5 (exposant impair). Comme $a$ est impair, $2021^a$ a pour reste 5, et $2021^a + 4$ a pour reste $9$, c'est-à-dire 1. À droite, $3^2 = 9$ a pour reste 1 et $b$ est pair, donc $3^b$ a pour reste 1. Le reste de $3^b \times 5^c$ est donc celui de $5^c$, qui doit valoir 1 : l'exposant $c$ est pair.

**On factorise.** Posons $b = 2\beta$ et $c = 2\gamma$, avec $\beta \geqslant 1$ et $\gamma \geqslant 1$, puis $X = 3^\beta \times 5^\gamma$. Alors $3^b \times 5^c = X^2$, et l'équation devient
$$43^a \times 47^a = 2021^a = X^2 - 4 = (X - 2)(X + 2).$$
On a $X \geqslant 3 \times 5 = 15$, donc $X - 2 \geqslant 13$ : les deux facteurs sont plus grands que 1.

**Les deux facteurs n'ont pas de facteur premier commun.** Un nombre premier qui divise $X - 2$ et $X + 2$ divise leur différence, qui vaut 4. Ce serait donc 2. Mais $X$ est impair, donc $X - 2$ et $X + 2$ sont impairs. Ainsi chaque facteur premier de $2021^a$ est entièrement dans l'un des deux facteurs : $43^a$ divise $X - 2$ ou $X + 2$, et $47^a$ aussi.

**On répartit 43 et 47.** Par unicité de la décomposition en facteurs premiers, $X - 2$ et $X + 2$ sont des produits de facteurs 43 et 47.

- Si $43^a$ et $47^a$ étaient du même côté, l'autre facteur vaudrait 1. C'est impossible, ils sont tous les deux plus grands que 1.
- Si $X - 2 = 47^a$ et $X + 2 = 43^a$, on aurait $X + 2 < X - 2$, puisque $43^a < 47^a$. C'est absurde.

Il reste $X - 2 = 43^a$ et $X + 2 = 47^a$. En soustrayant,
$$47^a - 43^a = 4.$$

**On en déduit $a = 1$.** Si $a \geqslant 2$, alors $43^a = 43 \times 43^{a-1} \leqslant 43 \times 47^{a-1}$, donc
$$47^a - 43^a \geqslant 47 \times 47^{a-1} - 43 \times 47^{a-1} = 4 \times 47^{a-1} \geqslant 4 \times 47 > 4.$$
Donc $a = 1$. Alors $X = 43 + 2 = 45 = 3^2 \times 5$, d'où $\beta = 2$, $\gamma = 1$, puis $b = 4$ et $c = 2$.

**Conclusion.** La seule solution est $(a, b, c) = (1, 4, 2)$.

## Going further

- Pourquoi ces trois divisions ? Le but était d'obtenir des exposants pairs, pour faire apparaître un carré et utiliser $X^2 - 4 = (X-2)(X+2)$. La division par 3 donne $a$ impair. Cela ne sert pas directement, mais c'est indispensable pour la division par 8.
- Avec la solution $(1, 4, 2)$, on savait d'avance qu'on ne pourrait pas prouver que $b$ ou $c$ est impair. Chercher une solution d'abord aide à savoir quoi démontrer.
- Pourquoi par 8 et pas par 4 pour $c$ ? Dans la division par 4, les puissances de 5 ont toutes le reste 1 : on n'apprend rien sur $c$. Il faut aller jusqu'à 8 pour distinguer les exposants pairs et impairs de 5.
