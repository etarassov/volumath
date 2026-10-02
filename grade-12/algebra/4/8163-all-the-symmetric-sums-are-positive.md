---
id: "8163"
title: "Des sommes de produits toutes positives"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [polynome, racines, signe, relations-coefficients-racines]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 79 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_n$ des nombres réels. Pour chaque entier $k$ entre $1$ et $n$, on note $\sigma_k$ la somme de **tous les produits de $k$ de ces nombres**, pris parmi des indices deux à deux distincts. Ainsi

$$\sigma_1 = a_1 + a_2 + \cdots + a_n, \qquad \sigma_2 = \sum_{i < j} a_i a_j, \qquad \ldots, \qquad \sigma_n = a_1 a_2 \cdots a_n .$$

On suppose que $\sigma_1, \sigma_2, \ldots, \sigma_n$ sont **tous strictement positifs**.

Les nombres $a_1, \ldots, a_n$ sont-ils nécessairement tous strictement positifs ?

## Hints

1. Essaie d'abord $n = 2$ à la main : si $a_1 + a_2 > 0$ et $a_1 a_2 > 0$, que dire des signes ?
2. Les nombres $\sigma_k$ ne sortent pas de nulle part : développe le produit $(X-a_1)(X-a_2)\cdots(X-a_n)$.
3. Tu obtiens un polynôme dont les $a_i$ sont exactement les racines. Il suffit donc de montrer qu'il n'a aucune racine négative ou nulle.
4. Remplace $X$ par $-y$ avec $y > 0$ et regarde le signe de chacun des termes obtenus. Sont-ils tous du même signe ?

## Solution

La réponse est **oui**.

**Le polynôme qui porte les $\sigma_k$.**

Posons

$$P(X) = (X - a_1)(X-a_2)\cdots(X-a_n) .$$

En développant, on obtient la formule classique

$$P(X) = X^n - \sigma_1 X^{n-1} + \sigma_2 X^{n-2} - \cdots + (-1)^n \sigma_n
= \sum_{k=0}^{n} (-1)^k \sigma_k X^{\,n-k} ,$$

où l'on a posé $\sigma_0 = 1$. En effet, développer le produit revient à choisir dans chaque facteur soit $X$, soit $-a_i$ ; si l'on choisit $-a_i$ dans exactement $k$ facteurs, on obtient un terme $(-1)^k a_{i_1}\cdots a_{i_k} X^{\,n-k}$, et la somme de tous ces termes pour un $k$ fixé vaut $(-1)^k \sigma_k X^{\,n-k}$.

Par construction, les racines de $P$ sont exactement $a_1, \ldots, a_n$. Il suffit donc de montrer que $P$ n'a aucune racine négative ou nulle.

**En zéro.**

$$P(0) = (-1)^n \sigma_n \neq 0 ,$$

puisque $\sigma_n > 0$. Donc aucun $a_i$ n'est nul.

**En un point strictement négatif.**

Soit $y > 0$ et calculons $P(-y)$. Le terme d'indice $k$ vaut

$$(-1)^k \sigma_k \,(-y)^{\,n-k} = (-1)^k \sigma_k (-1)^{\,n-k} y^{\,n-k} = (-1)^{n} \sigma_k\, y^{\,n-k} ,$$

car $(-1)^k (-1)^{n-k} = (-1)^n$. Le facteur $(-1)^n$ ne dépend pas de $k$ : il se met en facteur devant toute la somme.

$$P(-y) = (-1)^n \sum_{k=0}^{n} \sigma_k\, y^{\,n-k} .$$

Or tous les $\sigma_k$ sont strictement positifs (y compris $\sigma_0 = 1$) et $y > 0$, donc la somme est strictement positive. Ainsi

$$P(-y) \neq 0 \qquad \text{pour tout } y > 0 .$$

**Conclusion.**

Le polynôme $P$ ne s'annule ni en $0$, ni en aucun réel strictement négatif. Toutes ses racines sont donc strictement positives, c'est-à-dire :

$$\boxed{\ \text{oui, les nombres } a_1, \ldots, a_n \text{ sont tous strictement positifs.}\ }$$

## Going further

La réciproque est évidente : si tous les $a_i$ sont strictement positifs, chaque $\sigma_k$ est une somme de produits de nombres positifs, donc positif. On a donc une équivalence.

Notons aussi que l'hypothèse porte sur **tous** les $\sigma_k$ : il ne suffit pas d'en supposer quelques-uns positifs. Avec $n=3$ et $(a_1,a_2,a_3) = (-1, 2, 3)$, on trouve $\sigma_1 = 4 > 0$ et $\sigma_2 = -2-3+6 = 1 > 0$, mais $\sigma_3 = -6 < 0$ : c'est bien le dernier qui trahit la présence d'un nombre négatif.
