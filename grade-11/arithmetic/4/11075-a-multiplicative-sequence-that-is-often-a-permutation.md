---
id: "11075"
title: "Une suite multiplicative qui est souvent une permutation"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [suites, permutations, absurde, puissances, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 13 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 1}$ une suite d'entiers qui vérifie les deux conditions suivantes :

- pour tous entiers $m, n \geqslant 1$, on a $a_{mn} = a_m \, a_n$ ;
- il existe une infinité d'entiers $n$ tels que les nombres $a_1, a_2, \ldots, a_n$ soient
  exactement les nombres $1, 2, \ldots, n$, dans un certain ordre.

Montrer que $a_n = n$ pour tout $n \geqslant 1$.

## Hints

1. Commence par $a_1$ : que donne la première condition avec $m = n = 1$ ?
2. Raisonne par l'absurde et regarde le plus petit indice $k$ tel que $a_k \neq k$. Montre que
   $a_k \geqslant k + 1$.
3. Que vaut $a_{k^t}$ en fonction de $a_k$ ? Pour un « bon » entier $n$ (un de ceux de la
   deuxième condition), que peux-tu dire de $a_{k^t}$ quand $k^t \leqslant n$ ?
4. Choisis $t$ le plus grand possible avec $k^t \leqslant n$. Compare alors $(k+1)^t$ et
   $k^{t+1}$, et montre que $\left(1 + \frac{1}{k}\right)^t \geqslant 1 + \frac{t}{k}$.

## Solution

Appelons **bon** un entier $n$ tel que $a_1, \ldots, a_n$ soient exactement les nombres
$1, \ldots, n$ dans un certain ordre. Il y a une infinité de bons entiers. Pour un bon entier $n$,
chaque $a_i$ avec $i \leqslant n$ est donc compris entre $1$ et $n$, et deux d'entre eux ne sont
jamais égaux.

**Étape 1 : $a_1 = 1$.**

Avec $m = n = 1$, on obtient $a_1 = a_1 \times a_1$, donc $a_1 = 0$ ou $a_1 = 1$. Or pour un bon
entier $n$, $a_1$ est compris entre $1$ et $n$. Donc $a_1 = 1$.

**Étape 2 : le premier indice où ça se passe mal.**

Supposons par l'absurde que $a_n \neq n$ pour au moins un $n$, et notons $k$ le plus petit tel
indice. D'après l'étape 1, $k \geqslant 2$, et $a_1 = 1$, $a_2 = 2$, …, $a_{k-1} = k - 1$.

Prenons un bon entier $n \geqslant k$. Les nombres $a_1, \ldots, a_n$ sont distincts et compris
entre $1$ et $n$. Les valeurs $1, \ldots, k-1$ sont déjà prises par $a_1, \ldots, a_{k-1}$, donc
$a_k$ vaut au moins $k$. Comme $a_k \neq k$, on a
$$a_k \geqslant k + 1.$$

**Étape 3 : les puissances de $k$.**

En appliquant la première condition plusieurs fois, $a_{k^2} = a_k \, a_k = a_k^2$, puis
$a_{k^3} = a_{k^2} \, a_k = a_k^3$, et ainsi de suite : $a_{k^t} = a_k^t$ pour tout $t \geqslant 1$.

Prenons maintenant un bon entier $n \geqslant k^{k^2}$ : il en existe, puisqu'il y en a une
infinité. Soit $t$ le plus grand entier tel que $k^t \leqslant n$. Alors $t \geqslant k^2$ et
$n < k^{t+1}$. Comme $k^t \leqslant n$ et que $n$ est bon, $a_{k^t}$ est au plus $n$. On obtient
la chaîne
$$(k+1)^t \leqslant a_k^t = a_{k^t} \leqslant n < k^{t+1}.$$
En divisant par $k^t$ :
$$\left(1 + \frac{1}{k}\right)^t < k. \qquad (1)$$

**Étape 4 : une inégalité de puissances.**

Montrons que pour tout réel $x \geqslant 0$ et tout entier $s \geqslant 1$,
$(1 + x)^s \geqslant 1 + s x$. C'est vrai pour $s = 1$. Si c'est vrai pour un certain $s$, alors
$$(1+x)^{s+1} = (1+x)^s (1+x) \geqslant (1 + s x)(1 + x) = 1 + (s+1) x + s x^2 \geqslant 1 + (s+1)x,$$
donc c'est vrai pour $s + 1$, et ainsi de proche en proche pour tout $s$.

Avec $x = \frac{1}{k}$ et $s = t \geqslant k^2$ :
$$\left(1 + \frac{1}{k}\right)^t \geqslant 1 + \frac{t}{k} \geqslant 1 + \frac{k^2}{k} = 1 + k > k.$$
Cela contredit $(1)$.

**Conclusion.** L'hypothèse de départ est fausse : $a_n = n$ pour tout entier $n \geqslant 1$.

## Going further

La deuxième condition est indispensable. La suite définie par $a_n = n^2$ vérifie
$a_{mn} = a_m \, a_n$, et ses termes sont tous distincts et positifs, mais pour $n \geqslant 2$
la liste $a_1, \ldots, a_n$ contient $n^2 > n$ et n'est donc jamais une permutation de
$1, \ldots, n$.

Que se passe-t-il si l'on demande seulement que $a_1, \ldots, a_n$ soit une permutation de
$1, \ldots, n$ pour **un seul** entier $n$ ? Trouver une suite qui vérifie $a_{mn} = a_m a_n$
pour tous $m, n$, telle que $a_1, \ldots, a_5$ soit une permutation de $1, \ldots, 5$, mais qui
n'est pas la suite $a_n = n$.

*Réponse* : on échange les nombres premiers $3$ et $5$. Pour $n \geqslant 2$, on écrit $n$ comme
produit de nombres premiers, on remplace chaque $3$ par $5$ et chaque $5$ par $3$, et on appelle
$a_n$ le produit obtenu (avec $a_1 = 1$). Par exemple $a_6 = a_{2 \times 3} = 2 \times 5 = 10$.
Cette suite vérifie $a_{mn} = a_m a_n$, car écrire $mn$ en facteurs premiers revient à mettre bout à
bout les écritures de $m$ et de $n$. Ses cinq premiers termes sont $1, 2, 5, 4, 3$ : c'est bien une
permutation de $1, \ldots, 5$, alors que $a_3 = 5 \neq 3$.
