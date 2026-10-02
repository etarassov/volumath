---
id: "11820"
title: "Une liste qui compte ses propres multiples"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, nombre-de-diviseurs, double-comptage, liste-autoreferente]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 7 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On cherche une liste de $n$ entiers $a_1, a_2, \ldots, a_n$ telle que, pour chaque $i$ de $1$ à $n$,

> $a_i$ est égal au nombre de termes de la liste $a_1, a_2, \ldots, a_n$ qui sont divisibles par $i$.

Trouver tous les entiers $n$ pour lesquels une telle liste existe.

## Hints

1. Que vaut $a_1$ ? Peut-on avoir $a_i = 0$ ? Montrer que $1 \leqslant a_i \leqslant n$ pour tout $i$.
2. Compter de deux façons le nombre de couples $(i, k)$ tels que $i$ divise $a_k$ : d'abord en fixant $i$, puis en fixant $k$.
3. On obtient $a_1 + \cdots + a_n = d(a_1) + \cdots + d(a_n)$, où $d(x)$ est le nombre de diviseurs de $x$. Comparer $d(x)$ et $x$.

## Solution

Supposons qu'une telle liste existe.

**Étape 1 : encadrer les $a_i$.** Chaque $a_i$ compte des termes de la liste, donc $0 \leqslant a_i \leqslant n$. Si l'on avait $a_i = 0$, alors $a_i$ serait divisible par $i$ (car $0 = i \times 0$), donc au moins un terme de la liste serait divisible par $i$, et $a_i \geqslant 1$ : c'est contradictoire. Donc $1 \leqslant a_i \leqslant n$ pour tout $i$. De plus, tous les termes sont divisibles par $1$, donc $a_1 = n$.

**Étape 2 : un double comptage.** Comptons les couples $(i, k)$, avec $i$ et $k$ entre $1$ et $n$, tels que $i$ divise $a_k$.

- En fixant $i$ : le nombre de $k$ tels que $i$ divise $a_k$ est exactement $a_i$, par définition. Le nombre de couples est donc $a_1 + a_2 + \cdots + a_n$.
- En fixant $k$ : le nombre de $i$ entre $1$ et $n$ qui divisent $a_k$ est le nombre $d(a_k)$ de diviseurs positifs de $a_k$, car tous ces diviseurs sont au plus $a_k \leqslant n$. Le nombre de couples est donc $d(a_1) + d(a_2) + \cdots + d(a_n)$.

Ainsi

$$(a_1 - d(a_1)) + (a_2 - d(a_2)) + \cdots + (a_n - d(a_n)) = 0.$$

**Étape 3 : comparer $d(x)$ et $x$.** Pour un entier $x \geqslant 1$, les diviseurs de $x$ sont parmi $1, 2, \ldots, x$, donc $d(x) \leqslant x$. Si $x \geqslant 3$, le nombre $x - 1$ est au moins $2$ et ne divise pas $x$ (le reste de la division de $x$ par $x - 1$ vaut $1$). Il manque donc au moins un nombre de la liste $1, \ldots, x$, et $d(x) \leqslant x - 1 < x$. Enfin $d(1) = 1$ et $d(2) = 2$. Donc $d(x) = x$ seulement pour $x = 1$ et $x = 2$.

**Étape 4 : conclusion.** Dans la somme de l'étape 2, chaque parenthèse est positive ou nulle et leur somme est nulle : elles sont toutes nulles. Chaque $a_k$ vaut donc $1$ ou $2$. En particulier $n = a_1$ vaut $1$ ou $2$.

Réciproquement, ces deux valeurs conviennent :

- pour $n = 1$, la liste $a_1 = 1$ convient ;
- pour $n = 2$, la liste $a_1 = 2$, $a_2 = 1$ convient : les deux termes sont divisibles par $1$, et un seul, le nombre $2$, est divisible par $2$.

**Les entiers cherchés sont $n = 1$ et $n = 2$.**

## Going further

- Pour $n = 1$ et $n = 2$, les listes trouvées sont-elles les seules possibles ?
