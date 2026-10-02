---
id: "10667"
title: "Une suite circulaire de somme nulle et la constante C"
grade: 11
theme: algebra
difficulty: 5
duration_min: 90
tags: [inegalite, suite-circulaire, signe, somme, parite, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 17 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé multiplie une inégalité par C − 1 sans traiter le cas C < 1, où ce nombre est négatif, et l'affichage de sa somme répète le même terme ; la solution ci-dessous est réécrite."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et $C > 0$ un réel. On suppose qu'il existe des réels $x_1, x_2, \ldots, x_n$, non tous nuls, tels que :

- $x_1 + x_2 + \cdots + x_n = 0$ ;
- pour tout indice $i$ entre $1$ et $n$, on a $x_i \leqslant x_{i+1}$ ou $x_i \leqslant x_{i+1} + Cx_{i+2}$, où l'on pose $x_{n+1} = x_1$ et $x_{n+2} = x_2$.

1. Montrer que $C \geqslant 2$.
2. On suppose que $C = 2$. Montrer que $n$ est pair.

## Hints

1. Regarde le signe de $x_{i+2}$. S'il est négatif ou nul, laquelle des deux conditions est la plus forte ? Et s'il est strictement positif ?
2. Montre que deux termes voisins ne peuvent pas être tous les deux négatifs ou nuls.
3. Les termes négatifs ou nuls découpent le cercle en blocs de termes strictement positifs. Écris la condition à l'indice situé juste avant chaque terme négatif ou nul, puis additionne.
4. Pour un bloc $a_1, \ldots, a_m$, montre que $a_1 + a_2 + \cdots + a_m + a_m \geqslant Ca_1$ quand $C \leqslant 2$. Pars de la fin du bloc et remonte de deux en deux. Quand l'inégalité est-elle stricte ?

## Solution

Les $n$ nombres sont disposés en cercle : on lit les indices modulo $n$, avec $x_{n+1} = x_1$, $x_{n+2} = x_2$, $x_0 = x_n$, et ainsi de suite. On note $(H_i)$ la condition de l'énoncé à l'indice $i$.

**Étape 1. Simplifier la condition.**

- Si $x_{i+2} \leqslant 0$, alors $x_{i+1} + Cx_{i+2} \leqslant x_{i+1}$. Dans les deux cas, $(H_i)$ donne $x_i \leqslant x_{i+1}$.
- Si $x_{i+2} > 0$, alors $x_{i+1} \leqslant x_{i+1} + Cx_{i+2}$. Dans les deux cas, $(H_i)$ donne $x_i \leqslant x_{i+1} + Cx_{i+2}$.

**Étape 2. Deux voisins ne sont jamais tous les deux négatifs ou nuls.**

Supposons $x_i \leqslant 0$ et $x_{i+1} \leqslant 0$. La condition $(H_{i-1})$, avec $x_{i+1} \leqslant 0$, donne $x_{i-1} \leqslant x_i \leqslant 0$. Les voisins $x_{i-1}$ et $x_i$ sont alors tous les deux négatifs ou nuls, et on recommence : $x_{i-2} \leqslant 0$, puis $x_{i-3} \leqslant 0$, et ainsi de suite tout autour du cercle. Tous les termes seraient négatifs ou nuls. Comme leur somme est nulle, ils seraient tous nuls, ce qui est exclu.

Les termes ne sont pas tous nuls et leur somme est nulle, donc certains sont strictement négatifs et d'autres strictement positifs. Appelons **creux** les termes négatifs ou nuls. Il y en a au moins un, et deux creux ne sont jamais voisins. En faisant le tour du cercle, on rencontre donc un creux, puis un **bloc** d'au moins un terme strictement positif, puis un creux, puis un bloc, et ainsi de suite. S'il y a $K$ creux, il y a $K$ blocs, de longueurs $m_1, \ldots, m_K \geqslant 1$, et

$$n = (m_1 + 1) + (m_2 + 1) + \cdots + (m_K + 1)$$

**Étape 3. Une inégalité à chaque creux.**

Soit $x_j$ un creux. Ses voisins sont strictement positifs : $x_{j-1}$ est le dernier terme du bloc qui le précède, et $x_{j+1}$ le premier terme du bloc qui le suit. Comme $x_{j+1} > 0$, l'étape 1 appliquée à $(H_{j-1})$ donne $x_{j-1} \leqslant x_j + Cx_{j+1}$, c'est-à-dire

$$-x_j \leqslant Cx_{j+1} - x_{j-1}$$

Additionnons ces inégalités pour tous les creux.

- À gauche, on obtient l'opposé de la somme des creux. Comme la somme de tous les termes est nulle, c'est la somme des termes strictement positifs, c'est-à-dire la somme des sommes des blocs.
- À droite, chaque bloc apparaît une fois par son premier terme (venant du creux qui le précède) et une fois par son dernier terme (venant du creux qui le suit).

Donc

$$(\star) \qquad \sum_{\text{blocs}} \left(\text{somme du bloc}\right) \leqslant \sum_{\text{blocs}} \left(C \times \text{premier terme} - \text{dernier terme}\right)$$

**Étape 4. Ce qui se passe dans un bloc.**

Soit $a_1, a_2, \ldots, a_m$ les termes d'un bloc, dans l'ordre. Ils sont strictement positifs, et il y a un creux juste avant $a_1$ et un creux juste après $a_m$. Par l'étape 1 :

- pour $1 \leqslant t \leqslant m - 2$, le terme situé deux places après $a_t$ est $a_{t+2} > 0$, donc $a_t \leqslant a_{t+1} + Ca_{t+2}$ ;
- si $m \geqslant 2$, le terme situé deux places après $a_{m-1}$ est un creux, donc $a_{m-1} \leqslant a_m$.

Pour $1 \leqslant t \leqslant m$, posons $T_t = a_t + a_{t+1} + \cdots + a_m + a_m$ (la somme de $a_t$ à $a_m$, plus $a_m$ une seconde fois) et $d_t = T_t - Ca_t$. Remarquons que $d_1 > 0$ signifie exactement : la somme du bloc est strictement plus grande que $Ca_1 - a_m$.

*Lemme.* Si $C \leqslant 2$, alors $d_1 \geqslant 0$. De plus $d_1 > 0$ si $C < 2$, ou si $m$ est pair.

*Preuve.* Si $C \leqslant 1$, alors $T_1$ contient $a_1$ et encore $a_m > 0$, donc $T_1 > a_1 \geqslant Ca_1$, et $d_1 > 0$. Supposons maintenant $1 \leqslant C \leqslant 2$.

- **À la fin du bloc.** $d_m = 2a_m - Ca_m = (2 - C)a_m \geqslant 0$, et $d_m > 0$ si $C < 2$. Si $m \geqslant 2$, on a aussi $d_{m-1} = (1 - C)a_{m-1} + 2a_m \geqslant -a_{m-1} + 2a_m \geqslant a_m > 0$, car $1 - C \geqslant -1$ et $a_{m-1} \leqslant a_m$.
- **En remontant de deux en deux.** Soit $t \leqslant m - 2$. On a $d_t = T_{t+1} - (C - 1)a_t$. Comme $C - 1 \geqslant 0$, l'inégalité $a_t \leqslant a_{t+1} + Ca_{t+2}$ donne $(C - 1)a_t \leqslant (C - 1)a_{t+1} + C(C - 1)a_{t+2}$. Avec $T_{t+1} = a_{t+1} + T_{t+2}$ et $T_{t+2} = d_{t+2} + Ca_{t+2}$, on obtient

$$d_t \geqslant a_{t+1} + d_{t+2} + Ca_{t+2} - (C - 1)a_{t+1} - C(C - 1)a_{t+2} = d_{t+2} + (2 - C)\left(a_{t+1} + Ca_{t+2}\right)$$

Donc $d_t \geqslant d_{t+2}$, et même $d_t > d_{t+2}$ si $C < 2$.

En partant de $t = 1$ et en avançant de deux en deux, on arrive à $m$ si $m$ est impair, et à $m - 1$ si $m$ est pair. Si $m$ est impair, $d_1 \geqslant d_m \geqslant 0$, avec $d_1 > 0$ si $C < 2$. Si $m$ est pair, $d_1 \geqslant d_{m-1} > 0$. Le lemme est démontré.

**Étape 5. Question 1 : $C \geqslant 2$.**

Supposons $C < 2$. Par le lemme, chaque bloc vérifie $\text{somme du bloc} > C \times \text{premier terme} - \text{dernier terme}$. En additionnant sur tous les blocs, on obtient l'inégalité stricte contraire de $(\star)$. C'est impossible, donc $C \geqslant 2$.

**Étape 6. Question 2 : si $C = 2$, alors $n$ est pair.**

Avec $C = 2$, le lemme donne, pour chaque bloc, $\text{somme du bloc} \geqslant 2 \times \text{premier terme} - \text{dernier terme}$. Si l'une de ces inégalités était stricte, en additionnant on contredirait $(\star)$. Elles sont donc toutes des égalités. Or le lemme dit que l'inégalité est stricte pour un bloc de longueur paire. Tous les blocs sont donc de longueur impaire, et chaque nombre $m_j + 1$ est pair. Par l'étape 2, $n$ est une somme de nombres pairs.

**Conclusion : on a nécessairement $C \geqslant 2$, et si $C = 2$, alors $n$ est pair.**

## Going further

Montre que pour $n = 2$ et $C = 2$, les nombres $x_1 = 1$ et $x_2 = -1$ vérifient les deux conditions. La valeur $2$ de la question 1 ne peut donc pas être améliorée.
