---
id: "8418"
title: "Six fractions qui font au moins six"
grade: 10
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, fraction, regroupement, carre-positif, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités et manipulations algébriques » (Auguste De Lambilly), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois nombres réels strictement positifs. Montrer que

$$\frac{x}{y} + \frac{y}{z} + \frac{z}{x} + \frac{x}{z} + \frac{z}{y} + \frac{y}{x} \;\geqslant\; 6.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Six termes, et le résultat est $6 = 6 \times 1$... ou bien $6 = 3 \times 2$. Laquelle des deux lectures est la bonne ?
2. Regarde les six fractions : elles vont naturellement par paires. Quelle fraction est l'inverse de $\frac{x}{y}$ ?
3. Il suffit donc de savoir que pour tout réel $u > 0$, on a $u + \dfrac{1}{u} \geqslant 2$. Démontre-le en ramenant tout au même dénominateur.

## Solution

**Étape 1. Un petit résultat qui servira trois fois.**

Soit $u$ un réel strictement positif. Alors

$$u + \frac{1}{u} - 2 = \frac{u^2 + 1 - 2u}{u} = \frac{(u-1)^2}{u}.$$

Le numérateur est un carré, donc positif ou nul, et le dénominateur est strictement positif. Le quotient est donc positif ou nul :

$$u + \frac{1}{u} \geqslant 2,$$

avec égalité exactement lorsque $u = 1$.

**Étape 2. On regroupe les six fractions par paires.**

Les six fractions se rangent deux par deux, chaque paire étant formée d'une fraction et de son inverse :

$$\left( \frac{x}{y} + \frac{y}{x} \right) + \left( \frac{y}{z} + \frac{z}{y} \right) + \left( \frac{z}{x} + \frac{x}{z} \right).$$

**Étape 3. On applique l'étape 1 à chaque paire.**

Les trois quotients $\dfrac{x}{y}$, $\dfrac{y}{z}$, $\dfrac{z}{x}$ sont strictement positifs, donc chacune des trois parenthèses vaut au moins $2$ :

$$\frac{x}{y} + \frac{y}{x} \geqslant 2, \qquad \frac{y}{z} + \frac{z}{y} \geqslant 2, \qquad \frac{z}{x} + \frac{x}{z} \geqslant 2.$$

**Étape 4. On additionne.**

$$\frac{x}{y} + \frac{y}{z} + \frac{z}{x} + \frac{x}{z} + \frac{z}{y} + \frac{y}{x} \geqslant 2 + 2 + 2 = 6.$$

**Cas d'égalité.** Pour que la somme vaille exactement $6$, il faut que les trois inégalités de l'étape 3 soient toutes des égalités, donc que

$$\frac{x}{y} = 1, \qquad \frac{y}{z} = 1, \qquad \frac{z}{x} = 1,$$

c'est-à-dire $x = y = z$. Réciproquement, si $x = y = z$, les six fractions valent $1$ et la somme vaut bien $6$.

L'égalité a donc lieu exactement lorsque $x = y = z$.
