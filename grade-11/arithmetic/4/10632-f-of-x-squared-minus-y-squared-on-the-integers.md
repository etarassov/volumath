---
id: "10632"
title: "f(x² − y²) = f(x)f(y) sur les entiers"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [equation-fonctionnelle, parite, difference-de-deux-carres, analyse-synthese, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 2 (algèbre)"
  reference: "2021-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 13 ; corrigé 2022-01_corrige-envoi-2.pdf. Le corrigé écrit f(4(k + 1) − 1) au lieu de f(4(k + 1) − 4) ; c'est une coquille sans conséquence."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-12_Sujet-envoi-2.pdf"
---

## Statement

On note $\mathbb{N} = \{0, 1, 2, \ldots\}$. Déterminer toutes les fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que $f(0) = 0$ et

$$f(x^2 - y^2) = f(x)\,f(y)$$

pour tous les entiers naturels $x$ et $y$ tels que $x > y$.

## Hints

1. Prends $y = 0$. Que vaut $f(1)$ ?
2. Écris un nombre impair $2k + 1$ comme une différence de deux carrés. Montre que $f$ s'annule sur tous les nombres impairs, en regardant le plus petit nombre impair où elle ne s'annulerait pas.
3. Fais de même avec les multiples de $4$ : $4k = (k + 1)^2 - (k - 1)^2$.
4. Montre qu'une différence de deux carrés n'est jamais de la forme $4l + 2$. Que dit alors l'équation sur les produits $f(x)f(y)$ ?

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour $x > y$.

**Étape 1. $f$ s'annule sur les carrés.**

Pour $x \geqslant 1$, $E(x, 0)$ donne $f(x^2) = f(x)f(0) = 0$. En particulier $f(1) = 0$.

**Étape 2. $f$ s'annule sur les nombres impairs.**

Supposons le contraire, et soit $m$ le plus petit nombre impair tel que $f(m) \neq 0$. Comme $f(1) = 0$, on a $m \geqslant 3$, donc $m = 2k + 1$ avec $k \geqslant 1$. Or $2k + 1 = (k + 1)^2 - k^2$, donc $E(k + 1, k)$ donne

$$f(m) = f(k + 1)\,f(k)$$

L'un des deux nombres $k$ et $k + 1$ est impair, et il est plus petit que $m$ (car $k + 1 < 2k + 1$). Par définition de $m$, son image est nulle, donc $f(m) = 0$. C'est une contradiction.

**Étape 3. $f$ s'annule sur les multiples de $4$.**

Supposons le contraire, et soit $4k$ le plus petit multiple de $4$ tel que $f(4k) \neq 0$. Comme $f(0) = 0$, on a $k \geqslant 1$. Or $4k = (k + 1)^2 - (k - 1)^2$, donc $E(k + 1, k - 1)$ donne

$$f(4k) = f(k + 1)\,f(k - 1)$$

- Si $k$ est pair, $k + 1$ est impair, donc $f(k + 1) = 0$ par l'étape 2.
- Si $k$ est impair, $k - 1$ et $k + 1$ sont deux nombres pairs qui se suivent de $2$ en $2$ : l'un d'eux est un multiple de $4$. Il est plus petit que $4k$, donc son image est nulle.

Dans les deux cas $f(4k) = 0$, ce qui est une contradiction.

**Étape 4. Une différence de deux carrés n'est jamais de la forme $4l + 2$.**

On a $x^2 - y^2 = (x - y)(x + y)$, et les deux facteurs ont la même parité, car leur somme $2x$ est paire. S'ils sont impairs, le produit est impair. S'ils sont pairs, le produit est un multiple de $4$.

Par les étapes 2 et 3, on a donc $f(x^2 - y^2) = 0$ pour tous $x > y$, et l'équation donne

$$f(x)\,f(y) = 0 \qquad \text{pour tous } x > y$$

Ainsi deux entiers différents ne peuvent pas avoir tous les deux une image non nulle : $f$ est nulle partout, sauf peut-être en un seul entier $x_0$. Par les étapes 2 et 3, cet entier n'est ni impair, ni multiple de $4$ : il est de la forme $4l + 2$.

**Étape 5. Vérification.**

Soit $x_0$ un entier de la forme $4l + 2$, soit $c$ un entier naturel, et soit $f$ la fonction qui vaut $c$ en $x_0$ et $0$ partout ailleurs. Alors $f(0) = 0$. Pour $x > y$ :

- $x^2 - y^2$ est impair ou multiple de $4$ (étape 4), donc différent de $x_0$, et $f(x^2 - y^2) = 0$ ;
- $x$ et $y$ sont différents, donc l'un des deux n'est pas $x_0$, et $f(x)f(y) = 0$.

L'équation est vérifiée.

**Conclusion : les solutions sont les fonctions nulles partout sauf, éventuellement, en un seul entier de la forme $4l + 2$ (comme $2$, $6$, $10$, ...), où elles prennent une valeur entière naturelle quelconque. La fonction nulle en fait partie.**
