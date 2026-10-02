---
id: "10660"
title: "Le produit de deux sommes pondérées"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, somme, carre, second-degre, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 8 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé applique l'inégalité entre moyennes arithmétique et géométrique avec des coefficients √n et 1/√n ; ici on utilise seulement 4AB ⩽ (A + B)²."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier et $x_1, x_2, \ldots, x_n$ des réels positifs ou nuls. Montrer que

$$\left(\frac{x_1}{1} + \frac{x_2}{2} + \cdots + \frac{x_n}{n}\right)\left(1 \cdot x_1 + 2 \cdot x_2 + \cdots + n \cdot x_n\right) \leqslant \frac{(n + 1)^2}{4n}\,(x_1 + x_2 + \cdots + x_n)^2$$

Dans quels cas a-t-on l'égalité ?

## Hints

1. Note $A$ la première somme, $B$ la deuxième et $S = x_1 + \cdots + x_n$. Pour deux réels $U$ et $V$, compare $4UV$ et $(U + V)^2$.
2. Applique cette comparaison à $U = nA$ et $V = B$, pas à $A$ et $B$. Que vaut le coefficient de $x_k$ dans $nA + B$ ?
3. Montre que $\frac{n}{k} + k \leqslant n + 1$ pour tout entier $k$ entre $1$ et $n$. Multiplie par $k$ et factorise.
4. Pour l'égalité, les deux étapes doivent être des égalités. Quels $x_k$ peuvent être non nuls ?

## Solution

Notons

$$A = \frac{x_1}{1} + \frac{x_2}{2} + \cdots + \frac{x_n}{n}, \qquad B = 1 \cdot x_1 + 2 \cdot x_2 + \cdots + n \cdot x_n, \qquad S = x_1 + \cdots + x_n$$

Ces trois nombres sont positifs ou nuls. On veut montrer que $4nAB \leqslant (n + 1)^2 S^2$, puis diviser par $4n$.

**Étape 1. Un produit est plus petit que le carré de la demi-somme.**

Pour deux réels $U$ et $V$, $(U + V)^2 - 4UV = (U - V)^2 \geqslant 0$. Avec $U = nA$ et $V = B$ :

$$4nAB = 4 \cdot (nA) \cdot B \leqslant (nA + B)^2$$

**Étape 2. Majorer $nA + B$.**

En regroupant les termes en $x_k$,

$$nA + B = \left(\frac{n}{1} + 1\right)x_1 + \left(\frac{n}{2} + 2\right)x_2 + \cdots + \left(\frac{n}{n} + n\right)x_n$$

Pour un entier $k$ avec $1 \leqslant k \leqslant n$, multiplions par $k > 0$ :

$$\frac{n}{k} + k \leqslant n + 1 \iff n + k^2 \leqslant (n + 1)k \iff k^2 - (n + 1)k + n \leqslant 0 \iff (k - 1)(k - n) \leqslant 0$$

La dernière inégalité est vraie, car $k - 1 \geqslant 0$ et $k - n \leqslant 0$. Comme chaque $x_k$ est positif ou nul, on obtient

$$nA + B \leqslant (n + 1)(x_1 + \cdots + x_n) = (n + 1)S$$

Les deux membres sont positifs, donc $(nA + B)^2 \leqslant (n + 1)^2S^2$.

**Étape 3. L'inégalité.**

Par les étapes 1 et 2, $4nAB \leqslant (n + 1)^2S^2$. En divisant par $4n > 0$, on obtient l'inégalité de l'énoncé.

**Étape 4. Les cas d'égalité.**

Il y a égalité si et seulement si les deux étapes sont des égalités : $nA = B$ (étape 1) et $nA + B = (n + 1)S$ (étape 2).

- **Si $n = 1$**, l'inégalité s'écrit $x_1 \cdot x_1 \leqslant \frac{4}{4}\,x_1^2$ : c'est toujours une égalité.
- **Si $n \geqslant 2$.** On a $(n + 1)S - (nA + B) = \sum_k \left(n + 1 - \frac{n}{k} - k\right)x_k$, une somme de termes positifs ou nuls. Elle est nulle seulement si chaque terme est nul. Pour $1 < k < n$, le coefficient $n + 1 - \frac{n}{k} - k = -\frac{(k - 1)(k - n)}{k}$ est strictement positif, donc $x_k = 0$. Pour $k = 1$ et $k = n$, le coefficient est nul, et $x_1$, $x_n$ sont libres. Il reste alors $nA = nx_1 + x_n$ et $B = x_1 + nx_n$. L'égalité $nA = B$ s'écrit $(n - 1)x_1 = (n - 1)x_n$, soit $x_1 = x_n$.

Inversement, si $x_1 = x_n = t$ et les autres $x_k$ sont nuls, alors $A = t\left(1 + \frac{1}{n}\right)$, $B = t(1 + n)$ et $S = 2t$. Le membre de gauche vaut $\frac{(n + 1)^2}{n}\,t^2$, et le membre de droite $\frac{(n + 1)^2}{4n} \times 4t^2$, la même chose.

**Conclusion : l'inégalité est toujours vraie. Pour $n = 1$, c'est toujours une égalité. Pour $n \geqslant 2$, il y a égalité exactement quand $x_1 = x_n$ et que tous les autres $x_k$ sont nuls.**
