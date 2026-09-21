---
id: "7249"
title: "Parmi n + 1 nombres, l'un divise l'autre"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [tiroirs, divisibilite, puissances de deux, partie impaire]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On choisit $n+1$ entiers distincts parmi
$1, 2, \ldots, 2n$.

Montrer que parmi ces $n+1$ entiers, il y en a toujours deux dont l'un divise l'autre.

## Hints

1. Essaie avec $n = 3$ : choisis quatre entiers parmi $1, \ldots, 6$ sans qu'aucun ne divise un
   autre. Y arrives-tu ?
2. Tout entier $m$ s'écrit de façon unique $m = 2^k \times q$ avec $q$ impair. Ce nombre $q$
   s'appelle la partie impaire de $m$.
3. Combien y a-t-il de nombres impairs entre $1$ et $2n$ ?
4. Si deux des entiers choisis ont la même partie impaire, que peut-on dire d'eux ?

## Solution

**La partie impaire.**

Tout entier $m \geqslant 1$ s'écrit de manière unique sous la forme
$$m = 2^k \times q ,$$
où $k \geqslant 0$ est un entier et $q$ est un entier **impair**. Il suffit en effet de diviser
$m$ par $2$ autant de fois que possible. On appelle $q$ la **partie impaire** de $m$.

Exemples : $12 = 2^2 \times 3$, de partie impaire $3$ ; $7 = 2^0 \times 7$, de partie impaire
$7$ ; $16 = 2^4 \times 1$, de partie impaire $1$.

**Les tiroirs.**

Si $m$ est compris entre $1$ et $2n$, alors sa partie impaire $q$ l'est aussi (car $q \leqslant m$),
et $q$ est un nombre impair. Or les nombres impairs entre $1$ et $2n$ sont
$$1, 3, 5, \ldots, 2n-1 ,$$
et il y en a exactement $n$.

Fabriquons donc $n$ tiroirs, un par nombre impair $q$ entre $1$ et $2n-1$, et rangeons chaque
entier choisi dans le tiroir de sa partie impaire.

**Le principe des tiroirs.**

On range $n+1$ entiers dans $n$ tiroirs. Comme $n+1 > n$, deux des entiers choisis tombent dans le
même tiroir : ils ont la même partie impaire $q$. Notons-les
$$m_1 = 2^{k_1} \times q \qquad \text{et} \qquad m_2 = 2^{k_2} \times q .$$

**La conclusion.**

Les deux entiers sont distincts, donc $k_1 \neq k_2$. Supposons par exemple $k_1 < k_2$. Alors
$$\frac{m_2}{m_1} = \frac{2^{k_2} q}{2^{k_1} q} = 2^{k_2 - k_1} ,$$
qui est un entier puisque $k_2 - k_1 > 0$.

**Donc $m_1$ divise $m_2$ : parmi les $n+1$ entiers choisis, il y en a bien deux dont l'un divise
l'autre.**

## Going further

Le nombre $n+1$ est le plus petit qui marche : avec seulement $n$ entiers, on peut éviter la
conclusion en prenant
$$n+1,\ n+2,\ \ldots,\ 2n .$$
Ce sont $n$ entiers, et aucun ne divise un autre : si $m_1 < m_2$ sont deux d'entre eux et que
$m_1$ divisait $m_2$, on aurait $m_2 \geqslant 2m_1 \geqslant 2(n+1) > 2n$, ce qui est impossible.

Ce résultat est souvent attribué à Paul Erdős, qui aimait le poser aux jeunes élèves, et il
illustre à merveille le vrai travail dans un raisonnement par les tiroirs : ce n'est pas de
compter, c'est de trouver les bons tiroirs.
