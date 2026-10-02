---
id: "10661"
title: "Une suite qui compte ses propres termes"
grade: 10
theme: algebra
difficulty: 5
duration_min: 75
tags: [suite, entiers, denombrement, monotonie, descente-infinie, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 9 (repris mot pour mot en exercice 15 des Seniors) ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soit $c$ un entier positif ou nul. Trouver toutes les suites $a_1, a_2, a_3, \ldots$ d'entiers strictement positifs telles que, pour tout entier $n \geqslant 1$,

$$a_n \text{ est égal au nombre d'indices } i \geqslant 1 \text{ tels que } a_i \leqslant a_{n+1} + c$$

(en particulier, on suppose que ce nombre d'indices est fini).

## Hints

1. Cherche d'abord une solution de la forme $a_n = n + d$, avec $d$ un entier à trouver.
2. Montre que la suite est croissante (au sens large). Si $a_n > a_{n+1}$, que peux-tu dire de $a_{n+1}$ et $a_{n+2}$ ? Une suite d'entiers strictement positifs peut-elle décroître strictement pour toujours ?
3. Si deux termes $a_i$ et $a_j$ sont égaux, avec $i < j$, montre qu'ils sont égaux à $a_1$. La suite est donc constante au début, puis strictement croissante.
4. Quand la suite est strictement croissante, compte les termes inférieurs ou égaux à $a_{n+1} + c$. Montre que $a_n \leqslant n + c + 1$, et que l'égalité a lieu pour tous les $n$ assez grands.
5. Enfin, redescends : prends le plus grand indice $M$ pour lequel $a_M \neq M + c + 1$, et compte.

## Solution

Pour un entier $v$, notons $N(v)$ le nombre d'indices $i$ tels que $a_i \leqslant v$. Si $v \leqslant w$, alors $N(v) \leqslant N(w)$. La condition de l'énoncé s'écrit : pour tout $n \geqslant 1$,

$$a_n = N(a_{n+1} + c)$$

On va montrer que la seule solution est $a_n = n + c + 1$.

**Étape 1. Cette suite convient.**

Si $a_n = n + c + 1$ pour tout $n$, alors $a_{n+1} + c = n + 2c + 2$. Les indices $i$ tels que $i + c + 1 \leqslant n + 2c + 2$ sont ceux tels que $i \leqslant n + c + 1$ : il y en a $n + c + 1$, c'est-à-dire $a_n$. La condition est vérifiée.

Soit maintenant $(a_n)$ une suite qui vérifie la condition.

**Étape 2. La suite est croissante.**

Supposons que $a_n > a_{n+1}$ pour un certain $n$, c'est-à-dire $N(a_{n+1} + c) > N(a_{n+2} + c)$. Si on avait $a_{n+1} \leqslant a_{n+2}$, on aurait $N(a_{n+1} + c) \leqslant N(a_{n+2} + c)$. Donc $a_{n+1} > a_{n+2}$.

En recommençant, on trouve $a_n > a_{n+1} > a_{n+2} > a_{n+3} > \cdots$ : une suite d'entiers strictement positifs qui décroît strictement pour toujours. C'est impossible, car en partant de $a_n$ on atteindrait $0$ après au plus $a_n$ pas. Donc $a_n \leqslant a_{n+1}$ pour tout $n$.

**Étape 3. Deux termes égaux sont égaux à $a_1$.**

Supposons $a_i = a_j$ avec $1 < i < j$. Alors $a_{i-1} = N(a_i + c) = N(a_j + c) = a_{j-1}$. Comme $i - 1 < i \leqslant j - 1$ et que la suite est croissante,

$$a_{i-1} \leqslant a_i \leqslant a_{j-1} = a_{i-1}$$

donc $a_{i-1} = a_i = a_j$. On a remplacé $i$ par $i - 1$. En recommençant, on arrive à $a_1 = a_j$.

Par croissance, les termes égaux à $a_1$ forment donc un bloc au début de la suite, et après ce bloc, deux termes consécutifs sont toujours différents. La suite ne peut pas être constante tout entière : sinon tous les termes seraient inférieurs ou égaux à $a_2 + c$, et $N(a_2 + c)$ serait infini. Il existe donc un indice $K$ tel que

$$a_1 = a_2 = \cdots = a_K < a_{K+1} < a_{K+2} < \cdots$$

Après le rang $K$, les termes sont des entiers qui augmentent strictement, donc $a_{m+1} \geqslant a_m + 1$ pour $m \geqslant K$.

**Étape 4. Pour $n \geqslant K$, on a $a_n \leqslant n + c + 1$.**

Soit $n \geqslant K$. Comptons les indices $i$ tels que $a_i \leqslant a_{n+1} + c$.

- Tous les $i \leqslant n + 1$ conviennent, car $a_i \leqslant a_{n+1}$.
- Après $n + 1$, la suite croît strictement, donc les indices qui conviennent sont $n + 2, \ldots, n + k$ pour un certain $k \geqslant 1$ (avec $k = 1$ s'il n'y en a aucun).

Donc $a_n = n + k$. Comme la suite augmente d'au moins $1$ à chaque pas après $n + 1$, on a $a_{n+k} \geqslant a_{n+1} + (k - 1)$. Or $a_{n+k} \leqslant a_{n+1} + c$. Donc $k - 1 \leqslant c$, et

$$a_n = n + k \leqslant n + c + 1$$

**Étape 5. L'égalité a lieu pour tous les grands indices.**

Gardons $n = K$ et le $k$ de l'étape 4, et posons $m_0 = K + k + 1$. L'indice $m_0$ ne convient pas dans le comptage, donc $a_{m_0} > a_{K+1} + c \geqslant a_K + 1 + c = K + k + c + 1$. Comme ce sont des entiers, $a_{m_0} \geqslant K + k + c + 2$, c'est-à-dire

$$a_{m_0} \geqslant m_0 + c + 1$$

Pour $m \geqslant m_0$, la suite augmente d'au moins $1$ à chaque pas, donc $a_m \geqslant a_{m_0} + (m - m_0) \geqslant m + c + 1$. Avec l'étape 4, on obtient $a_m = m + c + 1$ pour tout $m \geqslant m_0$.

**Étape 6. L'égalité a lieu partout.**

Supposons qu'il existe des indices $m$ avec $a_m \neq m + c + 1$. Par l'étape 5, ils sont tous plus petits que $m_0$. Soit $M$ le plus grand. Alors $a_{M+1} = M + c + 2$, et

$$a_M = N(a_{M+1} + c) = N(M + 2c + 2)$$

Comptons les indices $i$ tels que $a_i \leqslant M + 2c + 2$.

- Tous les $i \leqslant M$ conviennent, car $a_i \leqslant a_M \leqslant a_{M+1} = M + c + 2 \leqslant M + 2c + 2$.
- Pour $i > M$, on a $a_i = i + c + 1$, et $i + c + 1 \leqslant M + 2c + 2$ revient à $i \leqslant M + c + 1$. Cela fait $c + 1$ indices : $M + 1, \ldots, M + c + 1$.

Donc $a_M = M + c + 1$, ce qui contredit le choix de $M$. Ainsi $a_n = n + c + 1$ pour tout $n$.

**Conclusion : pour chaque entier $c \geqslant 0$, il y a une seule suite qui convient : $a_n = n + c + 1$ pour tout $n \geqslant 1$.**
