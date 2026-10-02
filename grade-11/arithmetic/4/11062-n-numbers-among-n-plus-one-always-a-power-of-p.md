---
id: "11062"
title: "n nombres parmi n + 1, et toujours une puissance de p"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [puissances, divisibilite, nombres-premiers-entre-eux, restes, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Seniors, exercice 16 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. On a précisé que 1 = p⁰ compte comme une puissance de p ; les réponses restent les mêmes sans cette convention (voir « Pour aller plus loin »)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Soit $p$ un nombre premier et $n$ un entier avec $n \geqslant 2$. On appelle *puissance de $p$* un nombre de la forme $p^k$ avec $k$ entier naturel (ainsi $1 = p^0$ en est une).

1. À quelle condition sur $n$ et $p$ existe-t-il $n + 1$ entiers relatifs, pas forcément distincts, tels que la somme de $n$ quelconques d'entre eux soit toujours une puissance de $p$ ?
2. Même question avec $n + 1$ entiers **strictement positifs**.

## Hints

1. Appelle $y_1, \ldots, y_{n+1}$ les nombres et $T$ leur somme. La somme de tous sauf $y_i$ vaut $T - y_i$. Que vaut la somme de ces $n + 1$ quantités ?
2. Tu dois trouver que la question revient à choisir des exposants $\alpha_1, \ldots, \alpha_{n+1}$ tels que $n$ divise $p^{\alpha_1} + \cdots + p^{\alpha_{n+1}}$.
3. Pour la première question, rappelle-toi que $p - 1$ divise $p^\alpha - 1$. Essaie aussi $p = 3$ et $n = 2$.
4. Pour la seconde question, range les exposants dans l'ordre croissant et compare $T$ à la plus grande des puissances.

## Solution

**Réponse :**

1. Il faut et il suffit que $n$ et $p - 1$ soient premiers entre eux.
2. Il faut et il suffit que $n$ soit une puissance de $p$.

**Étape 1 : reformulation.**

Soient $y_1, \ldots, y_{n+1}$ des entiers, et $T = y_1 + \cdots + y_{n+1}$. La somme des $n$ nombres autres que $y_i$ vaut $T - y_i$. La condition demandée s'écrit donc : il existe des entiers naturels $\alpha_1, \ldots, \alpha_{n+1}$ tels que
$$T - y_i = p^{\alpha_i} \qquad \text{pour } i = 1, \ldots, n + 1 .$$

En additionnant ces $n + 1$ égalités, on obtient $(n + 1)\,T - T = n\,T$ à gauche, donc
$$n\,T = p^{\alpha_1} + p^{\alpha_2} + \cdots + p^{\alpha_{n+1}} . \qquad (1)$$
En particulier, $n$ divise la somme $\Sigma = p^{\alpha_1} + \cdots + p^{\alpha_{n+1}}$.

Réciproquement, si des exposants $\alpha_1, \ldots, \alpha_{n+1}$ sont tels que $n$ divise $\Sigma$, on pose $T = \Sigma / n$, qui est entier, et $y_i = T - p^{\alpha_i}$. Ce sont des entiers, leur somme vaut $(n + 1)\,T - \Sigma = (n + 1)\,T - n\,T = T$, et la somme de tous sauf $y_i$ vaut bien $T - y_i = p^{\alpha_i}$.

Conclusion : **des entiers qui conviennent existent si et seulement si on peut choisir $n + 1$ exposants tels que $n$ divise $p^{\alpha_1} + \cdots + p^{\alpha_{n+1}}$.** Les nombres sont alors $y_i = T - p^{\alpha_i}$ avec $T = \Sigma / n$.

**Étape 2 : première question, la condition est nécessaire.**

Pour tout $\alpha \geqslant 1$, on a $p^\alpha - 1 = (p - 1)(p^{\alpha-1} + \cdots + p + 1)$, donc $p - 1$ divise $p^\alpha - 1$, et c'est encore vrai pour $\alpha = 0$. Par conséquent
$$\Sigma - (n + 1) = (p^{\alpha_1} - 1) + \cdots + (p^{\alpha_{n+1}} - 1)$$
est un multiple de $p - 1$.

Soit $d$ un diviseur commun de $n$ et de $p - 1$. Il divise $\Sigma - (n + 1)$, et il divise $\Sigma$ car $n$ divise $\Sigma$. Il divise donc la différence $n + 1$. Comme il divise aussi $n$, il divise $(n + 1) - n = 1$. Donc $d = 1$ : les nombres $n$ et $p - 1$ sont premiers entre eux.

Par exemple, pour $p = 3$ et $n = 2$, c'est impossible : trois entiers dont toutes les sommes deux à deux sont des puissances de $3$ n'existent pas.

**Étape 3 : première question, la condition est suffisante.**

On suppose $n$ et $p - 1$ premiers entre eux. On cherche des exposants égaux à $0$ ou $1$ : $x$ d'entre eux valent $0$ et les $n + 1 - x$ autres valent $1$. Alors
$$\Sigma = x + (n + 1 - x)\,p = (n + 1)\,p - x\,(p - 1) = n\,p + [p - x\,(p - 1)],$$
et $n$ divise $\Sigma$ si et seulement si $x\,(p - 1)$ a le même reste que $p$ dans la division par $n$.

Montrons qu'un tel $x$ existe parmi $1, 2, \ldots, n$. Les $n$ nombres $1 \cdot (p - 1)$, $2 \cdot (p - 1)$, ..., $n \cdot (p - 1)$ ont des restes deux à deux différents dans la division par $n$. En effet, si $x\,(p - 1)$ et $x'\,(p - 1)$ avaient le même reste, avec $1 \leqslant x' < x \leqslant n$, alors $n$ diviserait $(x - x')(p - 1)$. Prenons un nombre premier $q$ qui divise $n$, et appelons $e$ son exposant dans $n$. Il ne divise pas $p - 1$, puisque $n$ et $p - 1$ sont premiers entre eux, donc $q^e$, qui divise $(x - x')(p - 1)$, divise $x - x'$ (l'exposant de $q$ dans un produit est la somme des exposants de $q$ dans les facteurs, et il vaut $0$ dans $p - 1$). Ceci vaut pour chaque facteur premier de $n$, donc $n$ divise $x - x'$, ce qui est impossible car $0 < x - x' < n$.

Il y a $n$ restes possibles, de $0$ à $n - 1$, et nos $n$ nombres donnent $n$ restes différents : tous les restes sont atteints, en particulier celui de $p$. On obtient ainsi $x$ entre $1$ et $n$, et $n + 1 - x \geqslant 1$.

*Exemple.* Pour $p = 5$ et $n = 3$, on cherche $x$ tel que $4x$ ait le même reste que $5$ dans la division par $3$ : $x = 2$ convient. Alors $\Sigma = 1 + 1 + 5 + 5 = 12$, $T = 4$, et les nombres sont $4 - 1 = 3$, $3$, $4 - 5 = -1$, $-1$. Les sommes de trois d'entre eux valent $3 + 3 - 1 = 5$ et $3 - 1 - 1 = 1$.

**Étape 4 : seconde question.**

*La condition est suffisante.* Si $n = p^k$ (avec $k \geqslant 1$ car $n \geqslant 2$), on prend $y_1 = \cdots = y_{n+1} = 1$ : toute somme de $n$ d'entre eux vaut $n = p^k$.

*La condition est nécessaire.* Supposons les $y_i$ strictement positifs, et rangeons les exposants dans l'ordre croissant : $\alpha_1 \leqslant \alpha_2 \leqslant \cdots \leqslant \alpha_{n+1}$. Notons $\beta = \alpha_{n+1}$ le plus grand. Comme $y_{n+1} = T - p^\beta > 0$, on a $T > p^\beta$, et (1) donne
$$p^{\alpha_1} + p^{\alpha_2} + \cdots + p^{\alpha_{n+1}} = n\,T > n\,p^\beta . \qquad (2)$$

Montrons que $\alpha_2 = \alpha_3 = \cdots = \alpha_{n+1} = \beta$. Sinon $\alpha_2 \leqslant \beta - 1$, et donc aussi $\alpha_1 \leqslant \beta - 1$. Dans la somme de gauche, les deux premiers termes valent au plus $p^{\beta-1}$ chacun, et les $n - 1$ autres au plus $p^\beta$ chacun. La somme vaut donc au plus
$$2\,p^{\beta-1} + (n - 1)\,p^\beta \leqslant p \cdot p^{\beta-1} + (n - 1)\,p^\beta = n\,p^\beta,$$
car $p \geqslant 2$. Cela contredit (2).

Ainsi $\alpha_2 = \cdots = \alpha_{n+1} = \beta$, et (1) devient $n\,T = p^{\alpha_1} + n\,p^\beta$, d'où $p^{\alpha_1} = n\,(T - p^\beta)$. Donc $n$ divise $p^{\alpha_1}$. Comme $p$ est premier, les diviseurs de $p^{\alpha_1}$ sont des puissances de $p$ : $n$ est une puissance de $p$.

**Conclusion.** Avec des entiers relatifs, c'est possible exactement quand $n$ et $p - 1$ sont premiers entre eux (en particulier toujours pour $p = 2$). Avec des entiers strictement positifs, c'est possible exactement quand $n$ est une puissance de $p$.

## Going further

Les réponses ne changent pas si l'on refuse $1 = p^0$ comme puissance de $p$. Dans la première question, on remplace les exposants $0$ et $1$ de l'étape 3 par $1$ et $2$ : la somme est alors multipliée par $p$, et elle reste divisible par $n$. Dans la seconde question, l'exemple $y_i = 1$ donne la somme $n = p^k$ avec $k \geqslant 1$.
