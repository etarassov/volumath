---
id: "22017"
title: "f(f(x)² + f(y)) = x f(x) + y"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, injectivite, surjectivite, bijection, involution, substitution]
adapted_from: null
see_also: ["10608"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 9 (le corrigé, dans le cas f(1) = 1, écrit f(1 − y) = y − 1 sans justifier le signe ; la solution ci-dessous traite les deux signes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f\left(f(x)^2 + f(y)\right) = x f(x) + y.$$

## Hints

1. Avec $x = 0$, montrez que $f$ prend toutes les valeurs réelles, et que $f(a) = f(b)$ entraîne $a = b$.
2. Il existe donc un réel $r$ tel que $f(r) = 0$. Utilisez $x = r$ pour obtenir $f(f(y)) = y$.
3. Comparez l'équation écrite pour $x = z$ et pour $x = f(z)$. Vous devez trouver $f(z)^2 = z^2$.
4. Attention : $f(z) = z$ ou $f(z) = -z$ pour chaque $z$, mais le signe pourrait changer d'un $z$ à l'autre. Distinguez les cas $f(1) = 1$ et $f(1) = -1$, et utilisez $x = 1$.

## Solution

**Vocabulaire.** Une fonction $f : \mathbb{R} \to \mathbb{R}$ est *surjective* si elle prend toutes les valeurs réelles, et *injective* si $f(a) = f(b)$ entraîne toujours $a = b$.

**Étape 1 : $f$ est surjective et injective.** Avec $x = 0$, pour tout réel $y$,

$$f\left(f(0)^2 + f(y)\right) = y. \qquad (1)$$

- Tout réel $y$ est donc une valeur de $f$ : $f$ est surjective.
- Si $f(a) = f(b)$, alors $(1)$ donne $a = f\left(f(0)^2 + f(a)\right) = f\left(f(0)^2 + f(b)\right) = b$ : $f$ est injective.

**Étape 2 : $f(f(y)) = y$.** Comme $f$ est surjective, il existe un réel $r$ tel que $f(r) = 0$. Avec $x = r$, l'équation devient, pour tout réel $y$,

$$f(f(y)) = r \times 0 + y = y. \qquad (2)$$

**Étape 3 : $f(z)^2 = z^2$.** Soit $z$ un réel. Écrivons l'équation avec $x = z$, puis avec $x = f(z)$, en utilisant $f(f(z)) = z$ :

$$f\left(f(z)^2 + f(y)\right) = z f(z) + y, \qquad f\left(z^2 + f(y)\right) = f(z) \times z + y.$$

Les deux membres de droite sont égaux, donc $f\left(f(z)^2 + f(y)\right) = f\left(z^2 + f(y)\right)$. Comme $f$ est injective, $f(z)^2 = z^2$. Ainsi, pour chaque réel $z$, on a $f(z) = z$ ou $f(z) = -z$.

**Étape 4 : le signe est le même partout.** En particulier $f(1) = 1$ ou $f(1) = -1$.

*Premier cas : $f(1) = 1$.* Avec $x = 1$, l'équation donne, pour tout réel $y$,

$$f(1 + f(y)) = 1 + y. \qquad (3)$$

Soit $y \neq 0$, et supposons $f(y) = -y$. Alors $(3)$ donne $f(1 - y) = 1 + y$. Or $f(1 - y)$ vaut $1 - y$ ou $-(1 - y) = y - 1$.

- Si $f(1 - y) = 1 - y$, alors $1 - y = 1 + y$, donc $y = 0$ : impossible.
- Si $f(1 - y) = y - 1$, alors $y - 1 = 1 + y$, donc $-1 = 1$ : impossible.

Donc $f(y) = y$ pour tout $y \neq 0$. Enfin $f(0)^2 = 0$, donc $f(0) = 0$. Ainsi $f(y) = y$ pour tout réel $y$.

*Deuxième cas : $f(1) = -1$.* Avec $x = 1$, l'équation donne $f(1 + f(y)) = -1 + y$ pour tout réel $y$. Soit $y \neq 0$, et supposons $f(y) = y$. Alors $f(1 + y) = y - 1$. Or $f(1 + y)$ vaut $1 + y$ ou $-1 - y$.

- Si $f(1 + y) = 1 + y$, alors $1 + y = y - 1$ : impossible.
- Si $f(1 + y) = -1 - y$, alors $-1 - y = y - 1$, donc $y = 0$ : impossible.

Donc $f(y) = -y$ pour tout $y \neq 0$, et aussi pour $y = 0$. Ainsi $f(y) = -y$ pour tout réel $y$.

**Vérification.**

- Pour $f(x) = x$ : à gauche $f(x^2 + y) = x^2 + y$, à droite $x \times x + y = x^2 + y$. Cela convient.
- Pour $f(x) = -x$ : à gauche $f(x^2 - y) = -x^2 + y$, à droite $x \times (-x) + y = -x^2 + y$. Cela convient.

**Conclusion.** Les solutions sont exactement les deux fonctions $x \mapsto x$ et $x \mapsto -x$.

## Going further

1. Pourquoi l'étape 4 est-elle nécessaire ? Écrivez une fonction qui vérifie $f(z)^2 = z^2$ pour tout $z$ sans être $x \mapsto x$ ni $x \mapsto -x$.
2. Résoudre l'équation voisine $f\left(x f(x) + f(y)\right) = f(x)^2 + y$.
