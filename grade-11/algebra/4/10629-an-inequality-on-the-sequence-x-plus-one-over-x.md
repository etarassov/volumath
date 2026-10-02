---
id: "10629"
title: "Une inégalité sur la suite x + 1/x"
grade: 11
theme: algebra
difficulty: 4
duration_min: 50
tags: [inegalite, suite-recurrente, telescopage, somme-et-produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 8 ; corrigé 2022-01_corrige-envoi-2.pdf. Le corrigé utilise l'inégalité de Cauchy-Schwarz sous la forme « des mauvais élèves » ; la solution ci-dessous la démontre dans le cas utile avec t + 1/t ⩾ 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $(x_k)_{k \geqslant 1}$ la suite définie par $x_1 = \sqrt{2}$ et, pour tout entier $k \geqslant 1$,

$$x_{k+1} = x_k + \frac{1}{x_k}$$

Montrer que

$$\frac{x_1^2}{2x_1x_2 - 1} + \frac{x_2^2}{2x_2x_3 - 1} + \cdots + \frac{x_{2021}^2}{2x_{2021}x_{2022} - 1} > \frac{2021^2}{x_{2021}^2 + \frac{1}{x_{2021}^2}}$$

## Hints

1. Multiplie la relation de récurrence par $x_k$ : que vaut $x_k x_{k+1}$ ? Simplifie chaque fraction du membre de gauche.
2. Pose $u_k = 2 + \frac{1}{x_k^2}$. Montre que le membre de gauche vaut $\frac{1}{u_1} + \cdots + \frac{1}{u_{2021}}$.
3. Élève la relation de récurrence au carré, et additionne pour $k$ de $1$ à $2020$. Montre que $x_{2021}^2 + \frac{1}{x_{2021}^2} = u_1 + u_2 + \cdots + u_{2021}$.
4. Il reste à montrer que $(u_1 + \cdots + u_N)\left(\frac{1}{u_1} + \cdots + \frac{1}{u_N}\right) > N^2$. Développe le produit et regroupe les termes deux par deux.

## Solution

Notons $N = 2021$.

**Étape 1. La suite est positive et strictement croissante.**

$x_1 > 0$, et si $x_k > 0$ alors $x_{k+1} = x_k + \frac{1}{x_k} > 0$. Par récurrence, tous les $x_k$ sont strictement positifs. Alors $x_{k+1} - x_k = \frac{1}{x_k} > 0$ : la suite est strictement croissante.

**Étape 2. Simplifier le membre de gauche.**

En multipliant la relation par $x_k$, on obtient $x_k x_{k+1} = x_k^2 + 1$, donc $2x_kx_{k+1} - 1 = 2x_k^2 + 1 > 0$. Chaque fraction s'écrit, en divisant en haut et en bas par $x_k^2$,

$$\frac{x_k^2}{2x_k x_{k+1} - 1} = \frac{x_k^2}{2x_k^2 + 1} = \frac{1}{2 + \frac{1}{x_k^2}} = \frac{1}{u_k}$$

avec $u_k = 2 + \frac{1}{x_k^2} > 0$. Le membre de gauche vaut donc $G = \frac{1}{u_1} + \cdots + \frac{1}{u_N}$.

**Étape 3. Simplifier le membre de droite.**

En élevant la relation au carré : $x_{k+1}^2 = x_k^2 + 2 + \frac{1}{x_k^2} = x_k^2 + u_k$. Donc $x_{k+1}^2 - x_k^2 = u_k$. En additionnant ces égalités pour $k$ de $1$ à $N - 1$, les termes se simplifient deux à deux :

$$x_N^2 - x_1^2 = u_1 + u_2 + \cdots + u_{N-1}$$

Comme $x_1^2 = 2$, on obtient

$$x_N^2 + \frac{1}{x_N^2} = 2 + u_1 + \cdots + u_{N-1} + \frac{1}{x_N^2} = u_1 + \cdots + u_{N-1} + u_N$$

Notons $T = u_1 + \cdots + u_N$. L'inégalité à montrer devient $G > \frac{N^2}{T}$, c'est-à-dire, puisque $T > 0$,

$$\left(u_1 + \cdots + u_N\right)\left(\frac{1}{u_1} + \cdots + \frac{1}{u_N}\right) > N^2$$

**Étape 4. Le produit d'une somme par la somme des inverses.**

En développant, on obtient tous les produits $\frac{u_i}{u_j}$ pour $i$ et $j$ entre $1$ et $N$. Les $N$ produits avec $i = j$ valent $1$. Les autres se regroupent par paires $\{i, j\}$ avec $i < j$ : il y a $\frac{N(N-1)}{2}$ paires, et chacune donne $\frac{u_i}{u_j} + \frac{u_j}{u_i}$. Donc

$$T \times G = N + \sum_{1 \leqslant i < j \leqslant N} \left(\frac{u_i}{u_j} + \frac{u_j}{u_i}\right)$$

Pour tout réel $t > 0$, $t + \frac{1}{t} - 2 = \frac{(t - 1)^2}{t} \geqslant 0$, avec égalité seulement si $t = 1$. Chaque paire donne donc au moins $2$, et

$$T \times G \geqslant N + 2 \times \frac{N(N-1)}{2} = N^2$$

**Étape 5. L'inégalité est stricte.**

La paire $\{1, 2\}$ donne strictement plus que $2$, car $u_1 \neq u_2$ : en effet $0 < x_1 < x_2$, donc $\frac{1}{x_1^2} \neq \frac{1}{x_2^2}$. Donc $T \times G > N^2$.

**Conclusion : l'inégalité de l'énoncé est vraie, et elle est stricte.**
