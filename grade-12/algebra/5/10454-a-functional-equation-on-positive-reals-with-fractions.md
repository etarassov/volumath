---
id: "10454"
title: "Une équation fonctionnelle sur les réels positifs avec des fractions"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, injectivite, surjectivite, fonction-reciproque, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe A, exercice 9 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $]0, +\infty[$, à valeurs dans $]0, +\infty[$, telles que, pour tous réels $x > 0$ et $y > 0$,

$$f\left( \frac{f(x)}{y\,f(x) + 1} \right) = \frac{x}{x\,f(y) + 1} .$$

## Hints

1. Cherche une solution évidente.
2. Pour $z > 0$, étudie la fonction $h_z(t) = t / (tz + 1)$ sur $]0, +\infty[$ : sens de variation, valeurs prises. L'équation s'écrit avec deux fonctions de ce type.
3. Montre que $f$ est injective (prends $y = 1$), puis qu'elle prend toutes les valeurs de $]0, +\infty[$.
4. Si $x' < f(x)$, trouve un $y > 0$ tel que $f(x) / (y\,f(x) + 1) = x'$. Qu'en déduis-tu pour $f(x')$ ? Prends ensuite $x' = x$.
5. La fonction $g$ qui « défait » $f$, c'est-à-dire telle que $g(f(t)) = t$ et $f(g(t)) = t$, vérifie la même équation que $f$.

## Solution

**Une solution.** La fonction identité $f(x) = x$ convient : les deux membres valent alors $x / (xy + 1)$.

Montrons que c'est la seule. Soit $f$ une solution.

**Étape 1 : une fonction auxiliaire.** Pour $z > 0$, posons, pour tout $t > 0$,

$$h_z(t) = \frac{t}{tz + 1} = \frac{1}{z + 1/t} .$$

Quand $t$ augmente, $1/t$ diminue, donc $z + 1/t$ diminue et $h_z(t)$ augmente : la fonction $h_z$ est strictement croissante. De plus, elle prend toutes les valeurs de $]0, 1/z[$, et chacune une seule fois : si $0 < w < 1/z$, l'égalité $h_z(t) = w$ équivaut à $1/t = 1/w - z$, c'est-à-dire à $t = 1 / (1/w - z)$, qui est bien un réel strictement positif.

Avec cette notation, l'équation s'écrit

$$f\left( h_y(f(x)) \right) = h_{f(y)}(x) \qquad \text{pour tous } x, y > 0 . \qquad (E)$$

**Étape 2 : $f$ est injective.** Soient $x, x' > 0$ tels que $f(x) = f(x')$. En prenant $y = 1$ dans $(E)$,

$$h_{f(1)}(x) = f\left( h_1(f(x)) \right) = f\left( h_1(f(x')) \right) = h_{f(1)}(x') .$$

Comme $h_{f(1)}$ est strictement croissante, $x = x'$. Deux nombres différents ont donc des images différentes.

**Étape 3 : $f$ prend toutes les valeurs.** Fixons $y > 0$. Quand $x$ parcourt $]0, +\infty[$, le membre de droite de $(E)$ prend toutes les valeurs de $]0, 1/f(y)[$, d'après l'étape 1. Le membre de gauche est une valeur de $f$. Donc, pour chaque $y > 0$,

$$\text{tout réel } w \text{ tel que } 0 < w < \frac{1}{f(y)} \text{ est une valeur de } f . \qquad (1)$$

Soit maintenant $w > 0$ quelconque. Choisissons un réel $z$ tel que $0 < z < 1/f(1)$ et $z < 1/w$. D'après $(1)$ avec $y = 1$, il existe $y' > 0$ tel que $f(y') = z$. D'après $(1)$ avec $y = y'$, la fonction $f$ prend toutes les valeurs strictement comprises entre $0$ et $1/z$, et $w$ en fait partie, puisque $w < 1/z$. Donc $w$ est une valeur de $f$.

**Étape 4 : la fonction réciproque.** D'après les étapes 2 et 3, chaque réel $t > 0$ est l'image par $f$ d'un unique réel, que l'on note $g(t)$. On a donc

$$f(g(t)) = t \qquad \text{et} \qquad g(f(t)) = t \qquad \text{pour tout } t > 0 .$$

Montrons que $g$ vérifie la même équation que $f$. Soient $x, y > 0$. Appliquons l'équation de l'énoncé aux nombres $g(x)$ et $g(y)$. Comme $f(g(x)) = x$ et $f(g(y)) = y$, on obtient

$$f\left( \frac{x}{g(y)\,x + 1} \right) = \frac{g(x)}{g(x)\,y + 1} .$$

Appliquons $g$ aux deux membres. À gauche, $g$ défait $f$, et il reste

$$\frac{x}{x\,g(y) + 1} = g\left( \frac{g(x)}{y\,g(x) + 1} \right) ,$$

qui est l'équation de l'énoncé, écrite pour $g$. Comme $g$ est elle aussi à valeurs dans $]0, +\infty[$, tout ce que l'on démontre pour une solution quelconque vaut aussi pour $g$.

**Étape 5 : $f(x) \leqslant x$.** Soient $x, x' > 0$ tels que $x' < f(x)$. Posons

$$y = \frac{1}{x'} - \frac{1}{f(x)} ,$$

qui est strictement positif. Alors $y\,f(x) + 1 = f(x) / x'$, donc $f(x) / (y\,f(x) + 1) = x'$, et l'équation donne

$$f(x') = \frac{x}{x\,f(y) + 1} < x ,$$

car $x\,f(y) > 0$. On a montré : *si $x' < f(x)$, alors $f(x') < x$.*

Supposons qu'un réel $x > 0$ vérifie $x < f(x)$. En prenant $x' = x$ dans ce qui précède, on obtient $f(x) < x$, ce qui est absurde. Donc

$$f(x) \leqslant x \qquad \text{pour tout } x > 0 .$$

**Étape 6 : $f(x) \geqslant x$.** D'après l'étape 4, la fonction $g$ est aussi une solution, donc l'étape 5 s'applique à elle : $g(t) \leqslant t$ pour tout $t > 0$. Avec $t = f(x)$, on obtient

$$x = g(f(x)) \leqslant f(x) .$$

**Conclusion.** Pour tout $x > 0$, on a $f(x) \leqslant x$ et $f(x) \geqslant x$, donc $f(x) = x$. La seule solution est l'identité.

## Going further

1. La fonction $f(x) = x/2$ prend toutes les valeurs de $]0, +\infty[$, chacune une seule fois, et vérifie $f(x) \leqslant x$. Vérifier qu'elle n'est pas solution. À quelle étape de la démonstration est-elle exclue ?
2. Sans utiliser la fonction $g$, montrer à partir de l'étape 5 que toute solution vérifie $f(f(x)) \leqslant x$ pour tout $x > 0$.
