---
id: "10431"
title: "f(f(x) + 3y) = 12x + f(f(y) − x)"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, injectivite, surjectivite, fonction-affine]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(f(x) + 3y) = 12x + f(f(y) - x) .$$

## Hints

1. Cherche d'abord les solutions affines $f(x) = mx + c$ : quelles valeurs de $m$ et de $c$ conviennent ?
2. Choisis $y$ en fonction de $x$ pour que l'argument du membre de gauche soit $0$. Que dit alors l'équation sur les valeurs prises par $f$ ?
3. Suppose que $f(a) = f(b)$, et compare l'équation écrite avec $y = a$ et avec $y = b$. Tu dois trouver que $f$ reprend la même valeur quand on ajoute $3(b - a)$ à la variable.
4. Montre ensuite que $f(a) = f(b)$ entraîne $a = b$. Pour finir, prends $x = 0$.

## Solution

**Les fonctions $f(x) = 3x + c$ conviennent.** Soit $c$ un réel et $f(x) = 3x + c$. Pour tous $x$ et $y$,

$$f(f(x) + 3y) = 3(3x + c + 3y) + c = 9x + 9y + 4c ,$$

$$12x + f(f(y) - x) = 12x + 3(3y + c - x) + c = 9x + 9y + 4c .$$

Les deux membres sont égaux. Montrons qu'il n'y a pas d'autre solution. Soit $f$ une solution.

**Étape 1 : $f$ prend toutes les valeurs réelles.** Soit $x$ un réel. Prenons $y = -\frac{f(x)}{3}$, de sorte que $f(x) + 3y = 0$. L'équation devient

$$f(0) = 12x + f(f(y) - x), \qquad \text{donc} \qquad f(f(y) - x) = f(0) - 12x .$$

Soit maintenant $t$ un réel quelconque. Choisissons $x = \frac{f(0) - t}{12}$, de sorte que $f(0) - 12x = t$, puis $y = -\frac{f(x)}{3}$. Le calcul précédent montre que $t = f(f(y) - x)$. Ainsi tout réel $t$ est une valeur de $f$.

**Étape 2 : si $f(a) = f(b)$, alors $f$ revient à la même valeur après un décalage.** Soient $a$ et $b$ deux réels tels que $f(a) = f(b)$. Écrivons l'équation avec $y = a$, puis avec $y = b$ : pour tout réel $x$,

$$f(f(x) + 3a) = 12x + f(f(a) - x) = 12x + f(f(b) - x) = f(f(x) + 3b) . \qquad (1)$$

Soit $t$ un réel. D'après l'étape 1, il existe un réel $x$ tel que $f(x) = t - 3a$. Avec ce $x$, l'égalité $(1)$ s'écrit $f(t) = f(t + 3b - 3a)$. Posons $p = 3(b - a)$. Nous avons montré :

$$f(t + p) = f(t) \qquad \text{pour tout réel } t . \qquad (2)$$

**Étape 3 : si $f(a) = f(b)$, alors $a = b$.** Gardons les notations de l'étape 2. D'après $(2)$ avec $t = 0$, on a $f(p) = f(0)$. Écrivons l'équation de départ avec $x = p$ et $y = 0$ :

$$f(f(p)) = 12p + f(f(0) - p) .$$

À gauche, $f(f(p)) = f(f(0))$, puisque $f(p) = f(0)$. À droite, d'après $(2)$ avec $t = f(0) - p$, on a $f(f(0) - p) = f(f(0) - p + p) = f(f(0))$. Il reste $f(f(0)) = 12p + f(f(0))$, donc $p = 0$, c'est-à-dire $a = b$.

Ainsi deux réels différents ont toujours des images différentes.

**Étape 4 : conclusion.** Écrivons l'équation avec $x = 0$ : pour tout réel $y$,

$$f(f(0) + 3y) = f(f(y)) .$$

D'après l'étape 3, les deux nombres dont on prend l'image sont égaux : $f(y) = f(0) + 3y$. En notant $c = f(0)$, on obtient $f(y) = 3y + c$ pour tout réel $y$.

**Conclusion.** Les solutions sont exactement les fonctions $f(x) = 3x + c$, où $c$ est un réel quelconque.

## Going further

1. Parmi les fonctions affines $f(x) = mx + c$, vérifier directement que seules celles avec $m = 3$ conviennent.
2. Soit $k$ un réel différent de $0$ et de $-1$. Montrer que la même méthode résout l'équation $f(f(x) + ky) = k(k + 1)\,x + f(f(y) - x)$, et que ses solutions sont les fonctions $x \mapsto kx + c$.
3. Pour $k = -1$, l'équation devient $f(f(x) - y) = f(f(y) - x)$. Quelle étape de la méthode ne marche plus ? Montrer que toutes les fonctions constantes sont alors solutions.
