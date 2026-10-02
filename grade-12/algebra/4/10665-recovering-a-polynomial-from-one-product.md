---
id: "10665"
title: "Retrouver un polynôme à partir d'un seul produit"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [polynome, racines, congruences, construction, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 14 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Émile prépare une énigme pour Benoît. Il choisit en secret un polynôme $P$ unitaire de degré $2023$ à coefficients entiers, c'est-à-dire de la forme

$$P(X) = X^{2023} + a_{2022}X^{2022} + a_{2021}X^{2021} + \cdots + a_1X + a_0$$

où $a_0, a_1, \ldots, a_{2022}$ sont des entiers relatifs. Il donne à Benoît $k$ entiers $n_1, n_2, \ldots, n_k$, avec $k \geqslant 1$, ainsi que la valeur du produit $P(n_1)P(n_2)\cdots P(n_k)$. Avec ces informations, Benoît doit retrouver $P$.

Quel est le plus petit entier $k$ pour lequel Émile peut choisir $P$ et $n_1, \ldots, n_k$ de sorte que $P$ soit le seul polynôme unitaire de degré $2023$ à coefficients entiers compatible avec les informations données à Benoît ?

## Hints

1. Si $k$ est petit, Benoît ne peut pas distinguer $P$ d'un autre polynôme $Q$ qui prend les mêmes valeurs en $n_1, \ldots, n_k$. Comment fabriquer un tel $Q$ ?
2. Pour $k = 2023$, essaie de faire en sorte que le produit vaille $1$. Que peut-on dire alors des entiers $Q(n_1), \ldots, Q(n_k)$ ?
3. Choisis tous les $n_i$ multiples de $3$. Pourquoi les nombres $Q(n_i)$ ont-ils alors tous le même reste dans la division par $3$ ?
4. Un polynôme de degré au plus $2022$ qui s'annule en $2023$ nombres différents est le polynôme nul.

## Solution

On utilise le résultat suivant, vu en mathématiques expertes : un polynôme non nul de degré $d$ a au plus $d$ racines. Donc un polynôme de degré au plus $d$ qui s'annule en plus de $d$ nombres différents est le polynôme nul.

**Étape 1. Si $k \leqslant 2022$, Émile ne peut pas réussir.**

Quels que soient $P$ et $n_1, \ldots, n_k$, posons

$$Q = P + (X - n_1)(X - n_2)\cdots(X - n_k)$$

Le polynôme ajouté est de degré $k < 2023$, donc $Q$ est encore unitaire de degré $2023$, à coefficients entiers, et $Q \neq P$. Mais $Q(n_i) = P(n_i)$ pour chaque $i$, donc $Q(n_1)\cdots Q(n_k) = P(n_1)\cdots P(n_k)$. Benoît ne peut pas savoir si le polynôme est $P$ ou $Q$.

**Étape 2. Pour $k = 2023$, Émile peut réussir.**

Émile choisit $n_i = 3i$ pour $i = 1, \ldots, 2023$, et

$$P = (X - 3)(X - 6)\cdots(X - 6069) + 1$$

qui est bien unitaire de degré $2023$ à coefficients entiers. Pour chaque $i$, $P(n_i) = 0 + 1 = 1$, donc le produit donné à Benoît vaut $1$.

Soit $Q$ un polynôme unitaire de degré $2023$ à coefficients entiers tel que $Q(n_1)\cdots Q(n_{2023}) = 1$. Montrons que $Q = P$.

- **Chaque $Q(n_i)$ vaut $1$ ou $-1$.** Ce sont des entiers dont le produit vaut $1$. Aucun n'est nul, donc chacun a une valeur absolue au moins égale à $1$. Si l'un avait une valeur absolue au moins égale à $2$, le produit aurait une valeur absolue au moins égale à $2$.
- **Les $Q(n_i)$ sont tous égaux.** Écrivons $Q = X^{2023} + b_{2022}X^{2022} + \cdots + b_1X + b_0$. Alors $Q(n_i) - b_0 = n_i^{2023} + b_{2022}n_i^{2022} + \cdots + b_1n_i$ est une somme de multiples de $n_i$, donc de multiples de $3$. Ainsi tous les $Q(n_i)$ ont le même reste que $b_0$ dans la division par $3$. Or $1 - (-1) = 2$ n'est pas un multiple de $3$ : $1$ et $-1$ n'ont pas le même reste. Les $Q(n_i)$ sont donc tous égaux à $1$, ou tous égaux à $-1$.
- **Ils valent tous $1$.** S'ils valaient tous $-1$, leur produit vaudrait $(-1)^{2023} = -1$, car $2023$ est impair.

Considérons enfin $D = P - Q$. Les termes en $X^{2023}$ se simplifient, donc $D$ est de degré au plus $2022$. Et $D(n_i) = 1 - 1 = 0$ pour les $2023$ nombres différents $3, 6, \ldots, 6069$. Donc $D$ est le polynôme nul, et $Q = P$.

**Conclusion : le plus petit $k$ possible est $k = 2023$.**
