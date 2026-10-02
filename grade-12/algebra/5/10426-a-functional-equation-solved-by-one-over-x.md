---
id: "10426"
title: "Une équation fonctionnelle dont la solution est 1/x"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, inegalite, recurrence, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe A, exercice 8 (Iran 2014) ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $]0, +\infty[$, à valeurs dans $]0, +\infty[$, telles que

$$f\left( \frac{y}{f(x + 1)} \right) + f\left( \frac{x + 1}{x\,f(y)} \right) = f(y)$$

pour tous réels $x > 0$ et $y > 0$.

## Hints

1. Cherche une solution parmi les fonctions usuelles.
2. Montre que $y\,f(y) \leqslant 1$ pour tout $y > 0$. Pour cela, si $y\,f(y) > 1$, choisis $x$ de sorte que le second terme du membre de gauche soit exactement $f(y)$.
3. Utilise ensuite $f(t) \leqslant \frac{1}{t}$ sur chacun des deux termes de gauche. Tu dois obtenir $y\,f(y) \leqslant (x + 1)\,f(x + 1)$ pour tous $x, y > 0$. Que peut-on en déduire pour la fonction $t \mapsto t\,f(t)$ sur $]1, +\infty[$ ?
4. Une fois $f(t) = \frac{1}{t}$ connu pour $t > 1$, prends $x = 1$ pour descendre vers les petits $t$, de $]1, +\infty[$ à $]\frac{1}{2}, +\infty[$, puis à $]\frac{1}{4}, +\infty[$, et ainsi de suite.

## Solution

**Une solution.** La fonction $f(t) = \frac{1}{t}$ convient. En effet, pour tous $x, y > 0$,

$$f\left( \frac{y}{f(x + 1)} \right) + f\left( \frac{x + 1}{x\,f(y)} \right) = f(y(x + 1)) + f\left( \frac{(x + 1)\,y}{x} \right) = \frac{1}{(x + 1)\,y} + \frac{x}{(x + 1)\,y} = \frac{1}{y} = f(y) .$$

Montrons que c'est la seule. Soit $f$ une solution.

**Étape 1 : $y\,f(y) \leqslant 1$ pour tout $y > 0$.** Supposons qu'un réel $y > 0$ vérifie $y\,f(y) > 1$, et posons $x = \frac{1}{y\,f(y) - 1} > 0$. Alors

$$x + 1 = \frac{y\,f(y)}{y\,f(y) - 1}, \qquad x\,f(y) = \frac{f(y)}{y\,f(y) - 1}, \qquad \text{donc} \qquad \frac{x + 1}{x\,f(y)} = y .$$

L'équation devient $f\left( \frac{y}{f(x + 1)} \right) + f(y) = f(y)$, donc $f\left( \frac{y}{f(x + 1)} \right) = 0$, ce qui est impossible car $f$ est à valeurs strictement positives. Ainsi $y\,f(y) \leqslant 1$, autrement dit

$$f(t) \leqslant \frac{1}{t} \qquad \text{pour tout } t > 0 . \qquad (1)$$

**Étape 2 : $t\,f(t)$ est constant sur $]1, +\infty[$.** Appliquons $(1)$ aux deux termes du membre de gauche de l'équation :

$$f(y) \leqslant \frac{f(x + 1)}{y} + \frac{x\,f(y)}{x + 1} .$$

En regroupant les termes en $f(y)$, on obtient $f(y)\left( 1 - \frac{x}{x + 1} \right) \leqslant \frac{f(x + 1)}{y}$, c'est-à-dire $\frac{f(y)}{x + 1} \leqslant \frac{f(x + 1)}{y}$, soit

$$y\,f(y) \leqslant (x + 1)\,f(x + 1) \qquad \text{pour tous } x, y > 0 . \qquad (2)$$

Soient $a > 1$ et $b > 1$. En appliquant $(2)$ avec $y = a$ et $x = b - 1$, on obtient $a\,f(a) \leqslant b\,f(b)$, et en échangeant les rôles, $b\,f(b) \leqslant a\,f(a)$. Donc $a\,f(a) = b\,f(b)$. Il existe donc une constante $c$ telle que $t\,f(t) = c$ pour tout $t > 1$, et d'après $(1)$, $0 < c \leqslant 1$.

**Étape 3 : $c = 1$.** Soient $x > 0$ et $y > 1$. Alors $f(x + 1) = \frac{c}{x + 1}$ et $f(y) = \frac{c}{y}$, donc les deux arguments de l'équation valent

$$\frac{y}{f(x + 1)} = \frac{(x + 1)\,y}{c}, \qquad \frac{x + 1}{x\,f(y)} = \frac{(x + 1)\,y}{c\,x} .$$

Comme $c \leqslant 1$, $y > 1$ et $x + 1 > 1$, ces deux nombres sont strictement plus grands que $1$, donc $f$ y vaut $c$ divisé par l'argument. L'équation devient

$$\frac{c^2}{(x + 1)\,y} + \frac{c^2\,x}{(x + 1)\,y} = \frac{c}{y}, \qquad \text{c'est-à-dire} \qquad \frac{c^2}{y} = \frac{c}{y} .$$

Comme $c > 0$, on obtient $c = 1$. Ainsi $f(t) = \frac{1}{t}$ pour tout $t > 1$.

**Étape 4 : descendre vers $0$.** Montrons par récurrence que, pour tout entier $k \geqslant 0$, la propriété

$$\mathcal{P}_k : \quad f(t) = \frac{1}{t} \quad \text{pour tout } t > \frac{1}{2^k}$$

est vraie. L'étape 3 donne $\mathcal{P}_0$. Supposons $\mathcal{P}_k$ vraie, et soit $y > \frac{1}{2^{k+1}}$. Prenons $x = 1$ dans l'équation. Comme $f(2) = \frac{1}{2}$, elle s'écrit

$$f(2y) + f\left( \frac{2}{f(y)} \right) = f(y) .$$

- On a $2y > \frac{1}{2^k}$, donc $f(2y) = \frac{1}{2y}$ par $\mathcal{P}_k$.
- D'après $(1)$, $f(y) \leqslant \frac{1}{y}$, donc $\frac{2}{f(y)} \geqslant 2y > \frac{1}{2^k}$, et $f\left( \frac{2}{f(y)} \right) = \frac{f(y)}{2}$ par $\mathcal{P}_k$.

L'équation devient $\frac{1}{2y} + \frac{f(y)}{2} = f(y)$, d'où $f(y) = \frac{1}{y}$. C'est $\mathcal{P}_{k+1}$.

Enfin, tout réel $t > 0$ est strictement plus grand que $\frac{1}{2^k}$ pour un entier $k$ assez grand, car $\frac{1}{2^k}$ tend vers $0$. Donc $f(t) = \frac{1}{t}$.

**Conclusion.** La seule fonction qui convient est $f(t) = \dfrac{1}{t}$.

## Going further

1. Pour quelles constantes $c > 0$ la fonction $t \mapsto \frac{c}{t}$ est-elle solution ?
2. Les fonctions $t \mapsto \frac{2}{t}$ et $t \mapsto \frac{1}{2t}$ ne sont pas solutions. À quelle étape de la démonstration chacune est-elle exclue ?
