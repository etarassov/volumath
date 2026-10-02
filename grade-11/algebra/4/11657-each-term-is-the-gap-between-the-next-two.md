---
id: "11657"
title: "Chaque terme est l'écart entre les deux suivants"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suites, valeur-absolue, suite-non-bornee, minorant, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 5 (pot-pourri)"
  reference: "2019-02_envoi-5.pdf, exercices Seniors, exercice 7 (l'en-tête du document porte « Envoi 4 : pot-pourri ») ; corrigé juge_Corrige-Envoi-5-2019.pdf (le corrigé prend m = min(a₁, a₂, a₃) et affirme qu'un plus petit indice i tel que aᵢ < m donne un terme plus petit que tous les précédents, ce qui oublie a₀ ; l'argument reste juste en ne comparant qu'aux termes d'indice 1 à i − 1, et la solution ci-dessous prend plutôt m = min(a₀, a₁, a₂))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/02/envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-02_envoi-5.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 0}$ une suite de nombres réels telle que, pour tout entier naturel $n$,

$$a_n = |a_{n+1} - a_{n+2}|.$$

On suppose de plus que $a_0$ et $a_1$ sont strictement positifs et différents.

Montrer que la suite $(a_n)$ n'est pas bornée.

## Hints

1. Tous les termes sont positifs ou nuls. Pourquoi ? Montre ensuite que $a_2 > 0$.
2. Pose $m = \min(a_0, a_1, a_2)$. On veut montrer que tous les termes sont au moins égaux à $m$. Si ce n'est pas le cas, prends le plus petit indice $i$ tel que $a_i < m$, et regarde $a_{i-2}$ puis $a_{i-3}$.
3. Si $a_n = |a_{n+1} - a_{n+2}|$, alors l'un des deux nombres $a_{n+1}$ ou $a_{n+2}$ est égal à $a_n$ plus l'autre.
4. Partant d'un terme, on trouve un peu plus loin un terme plus grand d'au moins $m$. Que se passe-t-il si l'on recommence ?

## Solution

**Étape 1 : les premiers termes.** Pour tout $n$, le terme $a_n$ est une valeur absolue, donc $a_n \geqslant 0$.

On a $a_0 > 0$ et $a_1 > 0$ par hypothèse. Si l'on avait $a_2 = 0$, alors $a_0 = |a_1 - a_2| = a_1$, ce qui est exclu puisque $a_0 \neq a_1$. Donc $a_2 > 0$, et le nombre

$$m = \min(a_0, a_1, a_2)$$

est strictement positif.

**Étape 2 : tous les termes sont au moins égaux à $m$.** Raisonnons par l'absurde, et supposons qu'il existe des indices $i$ tels que $a_i < m$. Prenons le plus petit d'entre eux. Par définition de $m$, on a $i \geqslant 3$, et pour tout $j < i$, on a $a_j \geqslant m > a_i$.

- D'abord $a_{i-2} = |a_{i-1} - a_i|$. Comme $a_{i-1} > a_i$, cela donne $a_{i-2} = a_{i-1} - a_i$. En particulier $a_{i-2} \leqslant a_{i-1}$, puisque $a_i \geqslant 0$.
- Ensuite $a_{i-3} = |a_{i-2} - a_{i-1}| = a_{i-1} - a_{i-2} = a_{i-1} - (a_{i-1} - a_i) = a_i$.

On obtient $a_{i-3} = a_i < m$, alors que $i - 3$ est un indice plus petit que $i$ (et positif ou nul, puisque $i \geqslant 3$). Cela contredit le choix de $i$. Donc

$$a_n \geqslant m \quad \text{pour tout entier naturel } n.$$

**Étape 3 : un terme plus grand un peu plus loin.** Soit $n$ un entier naturel. On a $a_n = |a_{n+1} - a_{n+2}|$.

- Si $a_{n+1} \geqslant a_{n+2}$, alors $a_n = a_{n+1} - a_{n+2}$, donc $a_{n+1} = a_n + a_{n+2} \geqslant a_n + m$.
- Sinon, $a_n = a_{n+2} - a_{n+1}$, donc $a_{n+2} = a_n + a_{n+1} \geqslant a_n + m$.

Dans les deux cas, **l'un des termes $a_{n+1}$ ou $a_{n+2}$ est au moins égal à $a_n + m$.**

**Étape 4 : conclusion.** Partons de $n_0 = 0$, avec $a_{n_0} \geqslant m$. D'après l'étape 3, il existe un indice $n_1 > n_0$ tel que $a_{n_1} \geqslant a_{n_0} + m \geqslant 2m$. En appliquant à nouveau l'étape 3 à partir de $n_1$, on trouve $n_2 > n_1$ tel que $a_{n_2} \geqslant 3m$, et ainsi de suite : pour tout entier $k \geqslant 1$, on obtient un indice $n_{k-1}$ tel que $a_{n_{k-1}} \geqslant km$.

Soit maintenant un réel $A$ quelconque. Comme $m > 0$, on peut choisir un entier $k \geqslant 1$ tel que $km > A$, et le terme $a_{n_{k-1}}$ dépasse alors $A$. Aucun réel ne majore donc la suite.

**Conclusion : la suite $(a_n)$ n'est pas bornée.**

## Going further

Une telle suite n'est pas déterminée par $a_0$ et $a_1$ : la relation $a_n = |a_{n+1} - a_{n+2}|$ donne $a_{n+2} = a_{n+1} + a_n$ ou $a_{n+2} = a_{n+1} - a_n$, et le second choix n'est possible que si $a_{n+1} \geqslant a_n$. Par exemple, avec $a_0 = 1$ et $a_1 = 2$, on peut choisir $a_2 = 3$ ou $a_2 = 1$.

Que se passe-t-il si $a_0 = a_1$ ? Alors $a_2 = 0$ ou $a_2 = 2a_0$. Avec $a_2 = 0$, on trouve $a_3 = a_1 = a_0$, puis la suite peut continuer en $a_0, a_0, 0, a_0, a_0, 0, \ldots$, qui est bornée. L'hypothèse $a_0 \neq a_1$ est donc indispensable.
