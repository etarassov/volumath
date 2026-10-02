---
id: "11025"
title: "Des ensembles où toutes les moyennes sont entières"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, moyenne, puissances, factorielle, construction, raisonnement-par-labsurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 5 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Un ensemble $E$ d'entiers strictement positifs est dit **intéressant** si, pour tout entier $n \geqslant 1$
et pour tous éléments $x_1, \ldots, x_n$ de $E$ deux à deux distincts, leur moyenne arithmétique et leur
moyenne géométrique

$$\frac{x_1 + x_2 + \cdots + x_n}{n} \qquad \text{et} \qquad \sqrt[n]{x_1 \times x_2 \times \cdots \times x_n}$$

sont toutes les deux des entiers.

1. Existe-t-il un ensemble intéressant qui contient exactement $2022$ éléments ?
2. Existe-t-il un ensemble intéressant qui contient une infinité d'éléments ?

## Hints

1. Pour la première question, on ne choisit jamais plus de $2022$ éléments à la fois, donc $n \leqslant 2022$. Cherche des nombres qui sont à la fois des multiples de $n$ et des puissances $n$-ièmes, pour tous les $n$ de $1$ à $2022$ en même temps.
2. Le nombre $N = 2022! = 1 \times 2 \times \cdots \times 2022$ est un multiple de chaque entier de $1$ à $2022$. Essaie des puissances de $N$, avec des exposants bien choisis.
3. Pour la seconde question, prends deux éléments $a \neq b$, et ajoute à chacun les **mêmes** $n - 1$ autres éléments. Que peux-tu dire de $a - b$ ?

## Solution

**1. Oui.** Posons $N = 2022! = 1 \times 2 \times 3 \times \cdots \times 2022$, et

$$E = \left\{ N^{N}, \; N^{2N}, \; N^{3N}, \; \ldots, \; N^{2022 N} \right\} .$$

Ces $2022$ nombres sont distincts, car les exposants sont distincts. Prenons $n$ éléments distincts de
$E$. Comme $E$ n'en a que $2022$, on a $1 \leqslant n \leqslant 2022$, donc $n$ divise $N$. Écrivons
$N = nq$ avec $q$ entier.

- *Moyenne arithmétique.* Chaque élément $N^{kN}$ est un multiple de $N$ (l'exposant vaut au moins $1$),
  donc un multiple de $n$. La somme de $n$ multiples de $n$ est un multiple de $n$, et la moyenne
  arithmétique est un entier.
- *Moyenne géométrique.* Chaque élément s'écrit $N^{kN} = N^{knq} = \left( N^{kq} \right)^n$. Si les éléments
  choisis sont $N^{k_1 N}, \ldots, N^{k_n N}$, leur produit vaut
  $$\left( N^{k_1 q} \times N^{k_2 q} \times \cdots \times N^{k_n q} \right)^n ,$$
  donc sa racine $n$-ième est l'entier $N^{k_1 q} \times \cdots \times N^{k_n q}$.

L'ensemble $E$ est donc intéressant.

**2. Non.** Supposons qu'il existe un ensemble intéressant $E$ infini, et prenons-y deux éléments
$a \neq b$. Soit $n \geqslant 2$ un entier quelconque. Comme $E$ est infini, on peut choisir $n - 1$
éléments $y_1, \ldots, y_{n-1}$ de $E$, deux à deux distincts et tous différents de $a$ et de $b$.

On applique la définition aux $n$ éléments $y_1, \ldots, y_{n-1}, a$, puis aux $n$ éléments
$y_1, \ldots, y_{n-1}, b$ : les deux nombres

$$\frac{y_1 + \cdots + y_{n-1} + a}{n} \qquad \text{et} \qquad \frac{y_1 + \cdots + y_{n-1} + b}{n}$$

sont des entiers. Leur différence $\dfrac{a - b}{n}$ est donc un entier : $n$ divise $a - b$.

Or ceci vaut pour **tout** $n \geqslant 2$. Prenons $n = |a - b| + 1$. Ce nombre divise $a - b$, qui
n'est pas nul, et il est strictement plus grand que $|a - b|$ : c'est impossible.

Il n'existe donc pas d'ensemble intéressant infini.

## Going further

Dans la seconde question, on n'a utilisé que les moyennes arithmétiques. Il n'existe donc même pas
d'ensemble infini dont toutes les moyennes arithmétiques sont entières.

Attention à bien lire la définition : elle porte sur **tous** les choix de quelques éléments distincts,
et pas seulement sur la moyenne de l'ensemble entier.
