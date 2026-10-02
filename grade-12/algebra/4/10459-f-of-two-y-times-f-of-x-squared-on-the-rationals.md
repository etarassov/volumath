---
id: "10459"
title: "f(x)² f(2y) + f(y)² f(2x) = 2 f(x) f(y) f(x + y) sur les rationnels"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, exponentielle, rationnels, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices communs, exercice 5 ; corrigé 2019-02_envoi-3-cor.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur l'ensemble $\mathbb{Q}$ des nombres rationnels, à valeurs réelles et ne s'annulant jamais, telles que

$$f(x)^2 f(2y) + f(y)^2 f(2x) = 2 f(x) f(y) f(x + y)$$

pour tous rationnels $x$ et $y$.

## Hints

1. Si $f$ est une solution et $\lambda$ un réel non nul, la fonction $\lambda f$ est-elle encore une solution ? Cela permet de se ramener au cas $f(0) = 1$.
2. Prends $x = 0$. Qu'obtiens-tu pour $f(2y)$ ? Que peux-tu en déduire sur le signe de $f$ ?
3. Remplace $f(2x)$ et $f(2y)$ dans l'équation de départ. Tu dois obtenir une relation très simple entre $f(x + y)$, $f(x)$ et $f(y)$.
4. Pose $a = f(1)$. Calcule $f(n)$ pour un entier $n$, puis $f(m / q)^q$ pour un rationnel $m / q$.

## Solution

**Les solutions.** Soient $c$ un réel non nul et $a$ un réel strictement positif. La fonction $f(x) = c\,a^x$ ne s'annule pas et convient, car pour tous rationnels $x$ et $y$, chacun des deux termes de gauche vaut $c^3 a^{2x + 2y}$, et le membre de droite vaut $2c^3 a^{x + y + x + y}$. (Ici $a^x = e^{x \ln a}$.)

Montrons qu'il n'y en a pas d'autre. Soit $f$ une solution.

**Étape 1 : se ramener à $f(0) = 1$.** Posons $c = f(0) \neq 0$ et $g = f / c$. Chaque membre de l'équation est un produit de trois valeurs de $f$. En divisant l'équation par $c^3$, on voit que $g$ vérifie la même équation, avec en plus $g(0) = 1$.

**Étape 2 : $x = 0$.** Avec $x = 0$, l'équation pour $g$ devient

$$g(2y) + g(y)^2 = 2 g(y)^2 , \qquad \text{donc} \qquad g(2y) = g(y)^2 \qquad \text{pour tout } y \in \mathbb{Q} . \qquad (1)$$

Tout rationnel $t$ s'écrit $t = 2 \cdot (t / 2)$ avec $t / 2$ rationnel, donc $g(t) = g(t / 2)^2 \geqslant 0$. Comme $g$ ne s'annule pas, $g(t) > 0$ pour tout $t$.

**Étape 3 : $g(x + y) = g(x)\,g(y)$.** On remplace $g(2y)$ et $g(2x)$ grâce à $(1)$ :

$$g(x)^2 g(y)^2 + g(y)^2 g(x)^2 = 2 g(x) g(y) g(x + y) .$$

En divisant par $2 g(x) g(y) \neq 0$, on obtient

$$g(x + y) = g(x)\,g(y) \qquad \text{pour tous } x, y \in \mathbb{Q} . \qquad (2)$$

**Étape 4 : les valeurs de $g$.** Posons $a = g(1) > 0$.

- Par récurrence sur l'entier $k \geqslant 1$, la relation $(2)$ donne $g(k t) = g(t)^k$ pour tout rationnel $t$ : c'est clair pour $k = 1$, et $g((k + 1)t) = g(kt)\,g(t) = g(t)^{k+1}$.
- Avec $t = 1$, on obtient $g(n) = a^n$ pour tout entier $n \geqslant 1$, et c'est encore vrai pour $n = 0$. Pour $n \geqslant 1$, la relation $(2)$ donne $g(n)\,g(-n) = g(0) = 1$, donc $g(-n) = a^{-n}$. Ainsi $g(m) = a^m$ pour tout entier relatif $m$.
- Soit enfin un rationnel $r = m / q$, avec $m$ entier relatif et $q \geqslant 1$ entier. Avec $k = q$ et $t = r$, on obtient $g(r)^q = g(m) = a^m$. Le nombre $a^r = e^{r \ln a}$ est strictement positif et vérifie aussi $(a^r)^q = a^m$. Comme la fonction $u \mapsto u^q$ est strictement croissante sur $]0, +\infty[$, deux nombres strictement positifs qui ont la même puissance $q$-ième sont égaux. Donc $g(r) = a^r$.

**Conclusion.** On a $g(x) = a^x$ pour tout rationnel $x$, donc $f(x) = c\,a^x$. Les solutions sont exactement les fonctions

$$f(x) = c\,a^x , \qquad \text{avec } c \text{ réel non nul et } a > 0 ,$$

ce qui s'écrit aussi $f(x) = c\,e^{kx}$ avec $c \neq 0$ et $k$ réel.

## Going further

1. Pourquoi l'énoncé exige-t-il que $f$ ne s'annule jamais ? Trouver une solution de l'équation qui s'annule en certains points sans être la fonction nulle.
2. Que deviennent les solutions si $f$ est définie sur $\mathbb{R}$ au lieu de $\mathbb{Q}$, et supposée continue ?
