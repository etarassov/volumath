---
id: "11831"
title: "aⁿ est petit devant 1 + a + ⋯ + a²ⁿ"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, puissances, regroupement de termes, identites remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 2 (repris mot pour mot en exercice 10 des Seniors) ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $a$ un réel strictement positif et $n \geqslant 1$ un entier. Montrer que

$$\frac{a^n}{1 + a + a^2 + \cdots + a^{2n}} < \frac{1}{2n}.$$

## Hints

1. Il suffit de montrer que $1 + a + \cdots + a^{2n} > 2n\, a^n$. Il y a $2n + 1$ termes à gauche.
2. Regrouper les termes deux par deux : le premier avec le dernier, le deuxième avec l'avant-dernier, et ainsi de suite. Que reste-t-il au milieu ?
3. Montrer que $a^k + a^{2n-k} \geqslant 2a^n$ pour $0 \leqslant k \leqslant n$. On pourra factoriser $a^k + a^{2n-k} - 2a^n$ par $a^k$.

## Solution

**Se ramener à une inégalité sans fraction.** Les deux dénominateurs sont strictement positifs. L'inégalité demandée équivaut donc à

$$1 + a + a^2 + \cdots + a^{2n} > 2n\, a^n.$$

**Un lemme.** Pour tout entier $k$ entre $0$ et $n$, on a $a^k + a^{2n-k} \geqslant 2a^n$. En effet, en posant $m = n - k \geqslant 0$,

$$a^k + a^{2n-k} - 2a^n = a^k\left(1 + a^{2m} - 2a^m\right) = a^k \left(1 - a^m\right)^2 \geqslant 0,$$

car $a^k > 0$ et un carré est positif.

**Regrouper les termes.** La somme $1 + a + \cdots + a^{2n}$ compte $2n + 1$ termes, de $a^0$ à $a^{2n}$. On associe $a^0$ avec $a^{2n}$, puis $a^1$ avec $a^{2n-1}$, et ainsi de suite jusqu'à $a^{n-1}$ avec $a^{n+1}$. Cela fait $n$ paires, et il reste le terme du milieu, $a^n$ :

$$1 + a + \cdots + a^{2n} = \left(a^0 + a^{2n}\right) + \left(a^1 + a^{2n-1}\right) + \cdots + \left(a^{n-1} + a^{n+1}\right) + a^n.$$

D'après le lemme, chacune des $n$ paires vaut au moins $2a^n$. Donc

$$1 + a + \cdots + a^{2n} \geqslant n \times 2a^n + a^n = (2n + 1)\, a^n > 2n\, a^n,$$

la dernière inégalité venant de $a^n > 0$.

**Conclusion.** On a bien $1 + a + \cdots + a^{2n} > 2n\, a^n$, et en divisant par les deux nombres strictement positifs $2n$ et $1 + a + \cdots + a^{2n}$, on obtient

$$\frac{a^n}{1 + a + a^2 + \cdots + a^{2n}} < \frac{1}{2n}.$$

## Going further

- La preuve donne en fait mieux : $\frac{a^n}{1 + a + \cdots + a^{2n}} \leqslant \frac{1}{2n + 1}$. Pour quelles valeurs de $a$ a-t-on égalité ?
- Montrer de même que $1 + a + \cdots + a^{2n-1} \geqslant 2n\, a^{n-1}\sqrt{a}$ pour $a > 0$, en écrivant $a = b^2$.
