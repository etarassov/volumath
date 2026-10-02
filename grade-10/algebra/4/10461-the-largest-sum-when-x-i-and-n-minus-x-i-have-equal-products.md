---
id: "10461"
title: "x₁⋯xₙ = (n − x₁)⋯(n − xₙ) : la plus grande somme"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, produits, maximum, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Senior, exercice 7 ; corrigé 2019-02_envoi-3-cor.pdf (qui procède par récurrence sur une somme de fractions ; ici un raisonnement par l'absurde compare directement les deux produits, facteur par facteur)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On considère des réels $x_1, x_2, \ldots, x_n$, tous dans l'intervalle $[0, n]$, tels que

$$x_1 x_2 \cdots x_n = (n - x_1)(n - x_2) \cdots (n - x_n) .$$

Déterminer la plus grande valeur que peut prendre la somme $x_1 + x_2 + \cdots + x_n$.

## Hints

1. Commence par $n = 2$ : développe la condition. Puis cherche, pour $n = 3$, des exemples où la somme est grande. Que se passe-t-il si l'un des $x_i$ vaut $0$ ?
2. Pose $u_i = n - x_i$, de sorte que la condition s'écrit $x_1 \cdots x_n = u_1 \cdots u_n$. Que devient l'inégalité $x_1 + \cdots + x_n > n(n - 1)$ pour les $u_i$ ?
3. Dans ce cas, montre que chaque $x_i$ est strictement plus grand que la somme des $u_j$ pour $j \neq i$, et compare $x_1$ à $u_2$, $x_2$ à $u_3$, et ainsi de suite.

## Solution

**La réponse est $n(n - 1)$.**

**Cette valeur est atteinte.** Prenons $x_1 = x_2 = \cdots = x_{n-1} = n$ et $x_n = 0$. Ces nombres sont dans $[0, n]$. Le produit $x_1 \cdots x_n$ vaut $0$ car $x_n = 0$, et le produit $(n - x_1) \cdots (n - x_n)$ vaut aussi $0$ car $n - x_1 = 0$ (ici on utilise $n \geqslant 2$, pour que $x_1$ et $x_n$ soient deux nombres différents de la liste). La condition est donc vérifiée, et la somme vaut $(n - 1) \times n$.

**On ne peut pas faire mieux.** Supposons, par l'absurde, que des réels $x_1, \ldots, x_n$ de $[0, n]$ vérifient la condition et que

$$x_1 + x_2 + \cdots + x_n > n(n - 1) .$$

Posons $u_i = n - x_i$ pour chaque $i$. Comme $x_i \in [0, n]$, on a $u_i \geqslant 0$. La condition de l'énoncé s'écrit

$$x_1 x_2 \cdots x_n = u_1 u_2 \cdots u_n , \qquad (1)$$

et la somme des $u_i$ vaut

$$u_1 + \cdots + u_n = n \cdot n - (x_1 + \cdots + x_n) < n^2 - n(n - 1) = n .$$

*Chaque $x_i$ est grand.* Fixons un indice $i$. On a

$$x_i = n - u_i > (u_1 + \cdots + u_n) - u_i ,$$

et le membre de droite est la somme des $u_j$ pour $j \neq i$. Comme tous les $u_j$ sont positifs ou nuls, cette somme est au moins égale à n'importe lequel de ses termes.

*Comparer les deux produits facteur par facteur.* Pour lire les indices en tournant, posons $u_{n+1} = u_1$. Comme $n \geqslant 2$, l'indice $i + 1$ (lu en tournant) est différent de $i$, donc d'après ce qui précède

$$x_i > u_{i+1} \geqslant 0 \qquad \text{pour } i = 1, 2, \ldots, n .$$

Tous les $x_i$ sont donc strictement positifs, et le produit $x_1 \cdots x_n$ est strictement positif. Si l'un des $u_j$ est nul, le produit $u_2 u_3 \cdots u_n u_1$ est nul, donc strictement plus petit. Sinon, on multiplie membre à membre $n$ inégalités strictes entre nombres strictement positifs, et on obtient encore

$$x_1 x_2 \cdots x_n > u_2 u_3 \cdots u_n u_1 = u_1 u_2 \cdots u_n .$$

Cela contredit $(1)$. Donc la somme $x_1 + \cdots + x_n$ est toujours au plus égale à $n(n - 1)$.

**Conclusion.** La plus grande valeur possible de $x_1 + x_2 + \cdots + x_n$ est $n(n - 1)$, atteinte par exemple pour $(n, n, \ldots, n, 0)$.

## Going further

1. Pour $n = 2$, montrer que la somme $x_1 + x_2$ ne peut prendre qu'une seule valeur.
2. Pour $n = 3$, trouver tous les triplets $(x_1, x_2, x_3)$ qui vérifient la condition et dont la somme vaut $6$.
