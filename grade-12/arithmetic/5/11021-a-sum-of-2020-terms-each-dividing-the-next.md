---
id: "11021"
title: "Une somme de 2020 termes qui se divisent les uns les autres"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [recurrence, divisibilite, puissances-de-deux, construction, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 17 ; corrigé 2021-02_Corrige-envoi-3.pdf. Le corrigé mélange les notations N_k et n_k et conclut « N = n_2019 », alors que sa récurrence donne le rang pour 2020 termes à l'indice 2020."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Montrer qu'il existe un entier naturel $N$ tel que, pour tout entier $n \geqslant N$, on puisse trouver des
entiers $a_1, a_2, \ldots, a_{2020}$ vérifiant les trois conditions :

- $n = a_1 + a_2 + \cdots + a_{2020}$ ;
- $1 \leqslant a_1 < a_2 < \cdots < a_{2020}$ ;
- pour tout $i$ de $1$ à $2019$, $a_i$ divise $a_{i+1}$.

## Hints

1. Le nombre $2020$ ne joue aucun rôle particulier. Démontre le résultat pour un nombre $k$ quelconque de
   termes, par récurrence sur $k$.
2. Si $m$ s'écrit comme une telle somme de $k$ termes, alors $1 + 2m$ s'écrit comme une telle somme de
   $k + 1$ termes. Et si l'on multiplie tous les termes d'une telle somme par un même entier, on obtient
   encore une telle somme.
3. L'indication 2 règle les nombres dont la partie impaire est grande. Il reste les nombres de la forme
   $2^e \times (\text{petit nombre impair})$. Pour une puissance de $4$, pense à
   $4^t = 1 + (2^t - 1)(2^t + 1)$.

## Solution

Disons qu'une somme $a_1 + a_2 + \cdots + a_k$ est une **chaîne de longueur $k$** si
$1 \leqslant a_1 < a_2 < \cdots < a_k$ et si chaque terme divise le suivant. On démontre, par récurrence sur
$k \geqslant 1$, la propriété

$\mathcal{P}(k)$ : *il existe un entier $N_k \geqslant 1$ tel que tout entier $n \geqslant N_k$ s'écrit comme
une chaîne de longueur $k$.*

La propriété $\mathcal{P}(2020)$ est exactement l'énoncé, avec $N = N_{2020}$.

**Trois remarques.**

- (R1) *Si $a_1 + \cdots + a_k$ est une chaîne et $c \geqslant 1$ un entier, alors
  $ca_1 + \cdots + ca_k$ est encore une chaîne*, car multiplier par $c$ ne change ni l'ordre ni les
  divisibilités.
- (R2) *Si $m = a_1 + \cdots + a_k$ est une chaîne, alors $1 + 2m = 1 + 2a_1 + \cdots + 2a_k$ est une
  chaîne de longueur $k + 1$.* En effet $1 < 2a_1$, le nombre $1$ divise $2a_1$, et la suite $2a_1, \ldots,
  2a_k$ est une chaîne d'après (R1).
- (R3) *Si $t \geqslant 2$ et si $2^t + 1 = b_1 + \cdots + b_k$ est une chaîne, alors $4^t$ s'écrit comme
  une chaîne de longueur $k + 1$.* En effet
  $$4^t = 1 + (2^t - 1)(2^t + 1) = 1 + (2^t - 1)b_1 + \cdots + (2^t - 1)b_k .$$
  Comme $t \geqslant 2$, on a $2^t - 1 \geqslant 3$, donc $1 < (2^t - 1)b_1$ ; le nombre $1$ divise
  $(2^t - 1)b_1$ ; et la suite des $(2^t - 1)b_i$ est une chaîne d'après (R1).

**Initialisation.** Tout entier $n \geqslant 1$ est une chaîne de longueur $1$ (avec $a_1 = n$). On prend
$N_1 = 1$.

**Hérédité.** Supposons $\mathcal{P}(k)$ vraie, et posons $M = \max(N_k, 4)$. Soit $n \geqslant 1$. On
écrit $n = 2^e \times o$ avec $o$ impair, puis $e = 2t + r$ avec $r \in \{0, 1\}$, de sorte que
$$n = 4^t \times 2^r \times o .$$

- *Cas A : $o \geqslant 2N_k + 1$.* Alors $o = 1 + 2m$ avec $m \geqslant N_k$. Par $\mathcal{P}(k)$, $m$
  est une chaîne de longueur $k$ ; par (R2), $o$ est une chaîne de longueur $k + 1$ ; par (R1), en
  multipliant par $2^e$, $n$ aussi.
- *Cas B : $2^t \geqslant M$.* Alors $t \geqslant 2$ (car $2^t \geqslant 4$) et $2^t + 1 > N_k$. Par
  $\mathcal{P}(k)$, $2^t + 1$ est une chaîne de longueur $k$ ; par (R3), $4^t$ est une chaîne de longueur
  $k + 1$ ; par (R1), en multipliant par $2^r \times o$, $n$ aussi.

*Si aucun des deux cas ne se produit*, alors $o \leqslant 2N_k - 1 < 2M$ et $2^t < M$, donc
$$n = 2^r \times (2^t)^2 \times o < 2 \times M^2 \times 2M = 4M^3 .$$
Ainsi tout entier $n \geqslant 4M^3$ tombe dans le cas A ou dans le cas B, et s'écrit comme une chaîne de
longueur $k + 1$. La propriété $\mathcal{P}(k + 1)$ est vraie avec $N_{k+1} = 4M^3$.

**Conclusion.** Par récurrence, $\mathcal{P}(k)$ est vraie pour tout $k \geqslant 1$. En particulier
$\mathcal{P}(2020)$ fournit l'entier $N$ cherché.

## Going further

Pour $k = 2$, on peut trouver le meilleur $N$ à la main. Une chaîne de longueur $2$ s'écrit
$a + ca = a(1 + c)$ avec $c \geqslant 2$ : ce sont exactement les entiers qui ont un diviseur supérieur ou
égal à $3$, donc tous les entiers sauf $1$ et $2$. Ainsi $N_2 = 3$ convient, et c'est le plus petit
possible.
