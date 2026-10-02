---
id: "12656"
title: "La plus petite somme de parties entières sur une permutation"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [partie-entiere, permutation, minimum, puissances-de-2, inegalites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2022"
  reference: "2022-07_Enonce-Web-Test-4.pdf, exercice 6 (senior) ; corrigé 2022-04_Corrige-Web-Test-4.pdf. L'énoncé définit une permutation comme une suite σ, puis l'appelle a₁, …, a₂₀₂₂ : on a gardé une seule notation. Dans le corrigé, le rang bᵢ n'est défini que pour i ⩽ k − 1, et non pour i ⩽ k."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-4.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ la partie entière de $x$, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

On range les entiers de $1$ à $2022$ dans un certain ordre : on obtient une suite $a_1, a_2, \ldots, a_{2022}$ dans laquelle chaque entier de $1$ à $2022$ apparaît exactement une fois. Une telle suite s'appelle une **permutation** des entiers de $1$ à $2022$.

Quelle est la plus petite valeur possible de la somme
$$\left\lfloor \frac{a_1}{1} \right\rfloor + \left\lfloor \frac{a_2}{2} \right\rfloor + \cdots + \left\lfloor \frac{a_{2022}}{2022} \right\rfloor$$
lorsque $a_1, a_2, \ldots, a_{2022}$ est une permutation des entiers de $1$ à $2022$ ?

## Hints

1. Remplace $2022$ par un petit entier $n$, et cherche le minimum pour $n = 1, 2, 3, \ldots, 8$. Quand le minimum augmente-t-il ?
2. Pour rendre la somme petite, on veut $a_i < i$, ce qui donne un terme nul, le plus souvent possible. Découpe les positions en blocs $\{1\}$, $\{2, 3\}$, $\{4, \ldots, 7\}$, $\{8, \ldots, 15\}$, … et essaie de n'avoir qu'un seul terme non nul, égal à $1$, dans chaque bloc.
3. Pour la minoration, regarde la position $k_1$ où se trouve le nombre $2022$ : le terme correspondant vaut $\lfloor 2022/k_1 \rfloor$. Puis regarde le plus grand des nombres placés avant la position $k_1$ : il vaut au moins $k_1 - 1$. Où est-il placé ? Continue ainsi jusqu'à la position $1$.
4. Tu obtiens des positions $k_1 > k_2 > \cdots > k_r = 1$, et des termes qui valent au moins $\lambda_j = \lfloor (k_{j-1} - 1)/k_j \rfloor$, avec $k_0 = 2023$. Montre que $k_{j-1} \leqslant (\lambda_j + 1)\,k_j$, multiplie ces inégalités, puis compare $\lambda + 1$ et $2^\lambda$.

## Solution

On va montrer que **la plus petite valeur possible est $11$.**

Pour une permutation $a_1, \ldots, a_{2022}$, on note $S$ la somme de l'énoncé. Tous ses termes sont des entiers positifs ou nuls. Le nombre $11$ vient de l'encadrement
$$2^{10} = 1024 \leqslant 2022 < 2048 = 2^{11}.$$

**Étape 1 : une permutation pour laquelle $S = 11$.** On découpe les positions de $1$ à $2022$ en $11$ blocs :
$$\{1\}, \quad \{2, 3\}, \quad \{4, \ldots, 7\}, \quad \{8, \ldots, 15\}, \quad \ldots, \quad \{512, \ldots, 1023\}, \quad \{1024, \ldots, 2022\}.$$
Le bloc numéro $j$ (pour $j$ allant de $0$ à $10$) commence à la position $2^j$. Il se termine à la position $2^{j+1} - 1$, sauf le dernier, qui se termine à $2022$. On note $e$ la dernière position d'un bloc.

Dans chaque bloc, on place à la première position $2^j$ le plus grand nombre du bloc, $e$, et l'on décale tous les autres d'un cran : à la position $i$, pour $2^j < i \leqslant e$, on place $a_i = i - 1$. Les nombres placés dans le bloc sont exactement ceux du bloc, donc on obtient bien une permutation. Pour $2022$, cela donne
$$1, \quad 3, 2, \quad 7, 4, 5, 6, \quad 15, 8, 9, \ldots, 14, \quad \ldots, \quad 2022, 1024, 1025, \ldots, 2021.$$

Calculons les termes d'un bloc.

- À la position $i$, avec $2^j < i \leqslant e$ : on a $0 \leqslant i - 1 < i$, donc $\lfloor (i-1)/i \rfloor = 0$.
- À la première position $2^j$ : on a $2^j \leqslant e < 2^{j+1}$, donc $1 \leqslant e/2^j < 2$, et $\lfloor e/2^j \rfloor = 1$. Pour le premier bloc, c'est $\lfloor 1/1 \rfloor = 1$.

Chaque bloc apporte exactement $1$ à la somme. Avec $11$ blocs, on obtient $S = 11$.

**Étape 2 : trois petits outils.**

- *(O1)* Si l'on prend $m$ entiers distincts, tous au moins égaux à $1$, le plus grand vaut au moins $m$. En effet, rangés dans l'ordre croissant, le premier vaut au moins $1$, le deuxième au moins $2$, et ainsi de suite.
- *(O2)* Soient $p \geqslant 0$ et $k \geqslant 1$ deux entiers, et $\lambda = \lfloor p/k \rfloor$. Alors $p/k < \lambda + 1$, donc $p < (\lambda + 1)k$. Comme ce sont des entiers, $p + 1 \leqslant (\lambda + 1)k$.
- *(O3)* Pour tout entier $\lambda \geqslant 0$, on a $2^\lambda \geqslant \lambda + 1$. En effet, $2^\lambda = 1 + (1 + 2 + 4 + \cdots + 2^{\lambda - 1})$, et la parenthèse contient $\lambda$ nombres qui valent tous au moins $1$.

**Étape 3 : une chaîne de positions.** Soit maintenant une permutation quelconque. On construit des positions de la façon suivante.

- On pose $k_0 = 2023$, et l'on note $k_1$ la position du nombre $2022$ : $a_{k_1} = 2022$.
- Si $k_1 > 1$, on regarde les nombres placés avant la position $k_1$, c'est-à-dire $a_1, \ldots, a_{k_1 - 1}$. On note $k_2$ la position du plus grand d'entre eux. On a $k_2 < k_1$.
- On continue : tant que $k_j > 1$, on note $k_{j+1}$ la position du plus grand des nombres $a_1, \ldots, a_{k_j - 1}$.

Les positions diminuent à chaque fois, donc on finit par arriver à la position $1$. On obtient
$$2023 = k_0 > k_1 > k_2 > \cdots > k_r = 1.$$

*Chacun de ces termes est assez grand.* Pour $j$ entre $1$ et $r$, on montre que $a_{k_j} \geqslant k_{j-1} - 1$.

- Pour $j = 1$, c'est une égalité : $a_{k_1} = 2022 = k_0 - 1$.
- Pour $j \geqslant 2$, le nombre $a_{k_j}$ est le plus grand des $k_{j-1} - 1$ nombres $a_1, \ldots, a_{k_{j-1} - 1}$. Ce sont des entiers distincts, au moins égaux à $1$. D'après (O1), on a bien $a_{k_j} \geqslant k_{j-1} - 1$.

On pose $\lambda_j = \left\lfloor (k_{j-1} - 1)/k_j \right\rfloor$. Comme la partie entière ne diminue pas quand le nombre augmente,
$$\left\lfloor \frac{a_{k_j}}{k_j} \right\rfloor \geqslant \lambda_j.$$
Les positions $k_1, \ldots, k_r$ sont distinctes, et les autres termes de $S$ sont positifs ou nuls. Donc
$$S \geqslant \lambda_1 + \lambda_2 + \cdots + \lambda_r.$$

**Étape 4 : on minore $\lambda_1 + \cdots + \lambda_r$.** D'après (O2), appliqué à $p = k_{j-1} - 1$ et $k = k_j$, on a
$$k_{j-1} \leqslant (\lambda_j + 1)\, k_j \qquad \text{pour } j = 1, \ldots, r.$$
En enchaînant ces inégalités, et comme $k_r = 1$ :
$$2023 = k_0 \leqslant (\lambda_1 + 1)\,k_1 \leqslant (\lambda_1 + 1)(\lambda_2 + 1)\,k_2 \leqslant \cdots \leqslant (\lambda_1 + 1)(\lambda_2 + 1) \cdots (\lambda_r + 1).$$
D'après (O3), chaque facteur $\lambda_j + 1$ est au plus $2^{\lambda_j}$. Donc
$$2^{\lambda_1 + \lambda_2 + \cdots + \lambda_r} = 2^{\lambda_1} \times 2^{\lambda_2} \times \cdots \times 2^{\lambda_r} \geqslant 2023 > 1024 = 2^{10}.$$
L'exposant $\lambda_1 + \cdots + \lambda_r$ est donc un entier strictement plus grand que $10$, c'est-à-dire au moins $11$. D'après l'étape 3, $S \geqslant 11$.

**Conclusion.** Pour toute permutation, $S \geqslant 11$, et l'étape 1 donne une permutation pour laquelle $S = 11$. **La plus petite valeur possible de la somme est $11$.**

## Going further

- Le même raisonnement marche pour tout entier $n \geqslant 1$ à la place de $2022$ : la plus petite valeur est le plus petit entier $s$ tel que $2^s > n$, c'est-à-dire le nombre de chiffres de $n$ écrit en base $2$. Pour $n = 7$, la permutation $1, 3, 2, 7, 4, 5, 6$ donne $1 + 1 + 0 + 1 + 0 + 0 + 0 = 3$, et l'on ne peut pas faire moins.
- Le corrigé officiel raisonne par récurrence. Il note $S_n$ le minimum pour les entiers de $1$ à $n$ et montre que $S_n$ est le plus petit des nombres $S_{k-1} + \lfloor n/k \rfloor$, pour $k$ entre $1$ et $n$ (ici $k$ est la position de $n$). Il en déduit la formule à l'aide du logarithme en base $2$, qui se voit en Terminale. La chaîne de positions utilisée ici évite la récurrence et le logarithme.
- Le commentaire des correcteurs note que le problème était difficile, et que beaucoup d'élèves ont cru à tort avoir une solution complète, en traitant seulement des cas particuliers ou sans prouver leurs affirmations.
