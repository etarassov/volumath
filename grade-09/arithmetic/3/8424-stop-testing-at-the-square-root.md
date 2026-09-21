---
id: "8424"
title: "S'arrêter à la racine carrée"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombre-premier, diviseurs, racine-carree, contraposee]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Nombres premiers » (Vladimir Ivanov), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $2$. Pour savoir si $n$ est premier, on peut tester l'un après l'autre les entiers $2, 3, 4, \ldots, n-1$ et regarder si l'un d'eux divise $n$.

Montrer qu'il suffit en fait de tester les entiers $d$ vérifiant $2 \leqslant d \leqslant \sqrt{n}$ : si aucun de ceux-là ne divise $n$, alors $n$ est premier.

C'est une économie considérable : pour tester $n = 1\,000\,000$, on passe de près d'un million de divisions à mille.

## Hints

1. Il est plus commode de démontrer la version retournée : si $n$ **n'est pas** premier, alors $n$ a un diviseur $d$ avec $2 \leqslant d \leqslant \sqrt{n}$.
2. Si $n$ n'est pas premier, il s'écrit $n = d \times e$ avec $d$ et $e$ tous les deux strictement compris entre $1$ et $n$.
3. Que se passerait-il si $d$ et $e$ étaient **tous les deux** strictement plus grands que $\sqrt{n}$ ? Regarde leur produit.

## Solution

**Ce qu'il faut démontrer.** L'énoncé dit : « si aucun entier $d$ avec $2 \leqslant d \leqslant \sqrt{n}$ ne divise $n$, alors $n$ est premier ». Il revient au même de démontrer la phrase retournée :

> si $n$ n'est pas premier, alors $n$ possède un diviseur $d$ avec $2 \leqslant d \leqslant \sqrt{n}$.

C'est cette version que nous allons prouver.

**Étape 1. Écrire $n$ comme un produit.**

Si $n \geqslant 2$ n'est pas premier, c'est qu'il possède un diviseur autre que $1$ et $n$. Notons-le $d$ : on a $2 \leqslant d \leqslant n-1$. Posons

$$e = \frac{n}{d},$$

qui est un entier puisque $d$ divise $n$. On a donc $n = d \times e$, avec $e \geqslant 2$ également (car $d \leqslant n-1 < n$).

**Étape 2. L'un des deux facteurs est petit.**

Supposons par l'absurde que l'on ait à la fois

$$d > \sqrt{n} \qquad \text{et} \qquad e > \sqrt{n}.$$

Ces deux nombres étant strictement positifs, on peut multiplier les deux inégalités :

$$n = d \times e > \sqrt{n} \times \sqrt{n} = n,$$

c'est-à-dire $n > n$, ce qui est absurde.

Donc au moins l'un des deux nombres $d$ et $e$ est inférieur ou égal à $\sqrt{n}$.

**Étape 3. Conclure.**

Ce nombre, appelons-le $d'$, est un diviseur de $n$ (que ce soit $d$ ou $e$, tous deux divisent $n$), il vaut au moins $2$, et il vérifie $d' \leqslant \sqrt{n}$.

Donc $n$ possède bien un diviseur compris entre $2$ et $\sqrt{n}$, ce qu'il fallait démontrer.

## Going further

Voyons le gain sur un exemple. Pour tester si $211$ est premier, on a $14^2 = 196 \leqslant 211$ et $15^2 = 225 > 211$, donc $\sqrt{211}$ est compris entre $14$ et $15$. Il suffit de tester les diviseurs de $2$ à $14$, et même seulement les nombres premiers $2$, $3$, $5$, $7$, $11$ et $13$ : aucun ne divise $211$, donc $211$ est premier. Six divisions au lieu de $209$.

Pourquoi peut-on se limiter aux diviseurs premiers ? Parce que si un entier $d \geqslant 2$ divise $n$, alors n'importe quel facteur premier de $d$ divise aussi $n$, et il est plus petit que $d$.
