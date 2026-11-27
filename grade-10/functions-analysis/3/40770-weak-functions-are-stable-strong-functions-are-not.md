---
id: "40770"
title: "Fonctions faibles et fortes : somme, produit, quotient, composée"
grade: 10
theme: functions-analysis
difficulty: 3
duration_min: 45
tags: [fonctions, inegalite, maximum, composition, produit, quotient, contre-exemple]
adapted_from: null
see_also: ["40767", "40768", "40769", "40771", "40772"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 3 « Que la force soit avec f ! », partie III « Une multitude de fonctions fortes et faibles », questions 10 à 13"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $I$ désigne un intervalle ouvert inclus dans $]0, +\infty[$, et toutes les fonctions considérées sont à valeurs strictement positives. Pour deux réels $a > 0$ et $b > 0$, on note

$$R(a, b) = \frac{\max(a, b)}{\min(a, b)}.$$

C'est le rapport du plus grand des deux nombres au plus petit ; il est toujours supérieur ou égal à $1$.

Soit $k$ un entier naturel non nul et $f$ une fonction définie sur $I$. On dit que $f$ est **$k$-forte** si $R(f(x), f(y)) \geqslant R(x, y)^k$ pour tous $x$ et $y$ de $I$, et que $f$ est **$k$-faible** si $R(f(x), f(y)) \leqslant R(x, y)^k$ pour tous $x$ et $y$ de $I$. (Ces définitions sont équivalentes à celles des exercices 40767 et 40768.)

On dit que $f$ est **forte** s'il existe un entier $k \geqslant 1$ pour lequel $f$ est $k$-forte, et **faible** s'il existe un entier $k \geqslant 1$ pour lequel $f$ est $k$-faible.

1. Démontrer que, si $f$ est faible, la fonction $F$ définie sur $I$ par $F(x) = \frac{1}{f(x)}$ est faible.
2. Démontrer que, si deux fonctions $f$ et $g$ définies sur $I$ sont faibles, les fonctions $f + g$, $f \times g$ et $\frac{f}{g}$ sont faibles.
3. Démontrer, à l'aide de contre-exemples, que si deux fonctions $f$ et $g$ définies sur $I$ sont fortes, les fonctions $f + g$, $f \times g$ et $\frac{f}{g}$ ne sont pas nécessairement fortes.
4. Soit $f$ une fonction définie sur $I$ et $g$ une fonction définie sur $]0, +\infty[$. On note $g \circ f$ la fonction définie sur $I$ par $(g \circ f)(x) = g(f(x))$ : on applique d'abord $f$, puis $g$.

   a) Démontrer que, si $f$ et $g$ sont faibles, la fonction $g \circ f$ est faible.

   b) Démontrer que, si $f$ et $g$ sont fortes, la fonction $g \circ f$ est forte.

## Hints

1. **Question 1.** Comparer $R\left(\frac{1}{a}, \frac{1}{b}\right)$ et $R(a, b)$.
2. **Question 2.** Pour $M \geqslant 1$, l'inégalité $R(a, b) \leqslant M$ signifie exactement $a \leqslant M b$ et $b \leqslant M a$.
3. **Question 2.** Si $f$ est $k$-faible, est-elle aussi $(k+1)$-faible ? Cela permet de prendre le même entier pour $f$ et pour $g$.
4. **Question 2.** Pour le produit, montrer que $R(ac, bd) \leqslant R(a, b) \times R(c, d)$. Pour le quotient, utiliser la question 1.
5. **Question 3.** Les fonctions $x \mapsto x$ et $x \mapsto \frac{1}{x}$ sont $1$-fortes sur $]0, +\infty[$. Que dire d'une fonction constante ? Et de $x \mapsto x + \frac{1}{x}$, en $x = \frac{1}{2}$ et en $x = 2$ ?
6. **Question 4.** Appliquer d'abord la condition sur $g$ aux deux nombres $f(x)$ et $f(y)$.

## Solution

Quelques propriétés de $R$ servent partout. Pour $a, b > 0$ :

- $R(a, b) = R(b, a) \geqslant 1$, et $R(a, b) = 1$ seulement si $a = b$ ;
- $R\left(\frac{1}{a}, \frac{1}{b}\right) = R(a, b)$, car $\frac{1}{a}$ et $\frac{1}{b}$ sont rangés dans l'ordre inverse de $a$ et $b$ ;
- pour $M \geqslant 1$, $R(a, b) \leqslant M$ équivaut à « $a \leqslant M b$ et $b \leqslant M a$ » (l'une des deux est toujours vraie, l'autre dit exactement que le plus grand est au plus $M$ fois le plus petit).

De plus, si $f$ est $k$-faible et $m \geqslant k$, alors $f$ est $m$-faible, puisque $R(x, y)^k \leqslant R(x, y)^m$ (car $R(x, y) \geqslant 1$).

**1.** Si $f$ est $k$-faible, alors pour tous $x$, $y$ de $I$, $R(F(x), F(y)) = R(f(x), f(y)) \leqslant R(x, y)^k$. Donc $F$ est $k$-faible, et en particulier faible.

**2.** Supposons $f$ $k$-faible et $g$ $\ell$-faible, et fixons $x$, $y$ dans $I$.

*Somme.* Soit $m$ le plus grand des entiers $k$ et $\ell$ : $f$ et $g$ sont toutes deux $m$-faibles. Posons $M = R(x, y)^m \geqslant 1$. D'après la troisième propriété, $f(y) \leqslant M f(x)$ et $g(y) \leqslant M g(x)$, donc $f(y) + g(y) \leqslant M\,(f(x) + g(x))$. De même $f(x) + g(x) \leqslant M\,(f(y) + g(y))$. Donc $R(f(x) + g(x), f(y) + g(y)) \leqslant M$ : la fonction $f + g$ est $m$-faible.

*Produit.* Pour $a, b, c, d > 0$, on a $\frac{ac}{bd} = \frac{a}{b} \times \frac{c}{d} \leqslant R(a, b)\,R(c, d)$, et de même $\frac{bd}{ac} \leqslant R(a, b)\,R(c, d)$. Le plus grand de ces deux quotients est $R(ac, bd)$, donc $R(ac, bd) \leqslant R(a, b)\,R(c, d)$. Ainsi

$$R(f(x)\,g(x), f(y)\,g(y)) \leqslant R(f(x), f(y)) \times R(g(x), g(y)) \leqslant R(x, y)^k \times R(x, y)^\ell = R(x, y)^{k + \ell}.$$

La fonction $f \times g$ est $(k + \ell)$-faible.

*Quotient.* D'après la question 1, $\frac{1}{g}$ est $\ell$-faible. Donc $\frac{f}{g} = f \times \frac{1}{g}$ est $(k + \ell)$-faible, d'après le cas du produit.

**3.** Prenons $I = ]0, +\infty[$. Les fonctions $u(x) = x$ et $v(x) = \frac{1}{x}$ sont $1$-fortes : $R(u(x), u(y)) = R(x, y)$ et $R(v(x), v(y)) = R(x, y)$.

*Une fonction constante n'est pas forte.* Si $c(x) = 1$ pour tout $x$, alors pour $x = 1$ et $y = 2$, $R(c(x), c(y)) = 1 < 2^k = R(1, 2)^k$ pour tout $k \geqslant 1$.

- *Produit.* $u \times v$ est la fonction constante $1$ : elle n'est pas forte.
- *Quotient.* $\frac{u}{u}$ est la fonction constante $1$ : elle n'est pas forte.
- *Somme.* $(u + v)(x) = x + \frac{1}{x}$. Pour $x = \frac{1}{2}$ et $y = 2$, on a $(u + v)(x) = (u + v)(y) = \frac{5}{2}$, donc $R((u+v)(x), (u+v)(y)) = 1$, alors que $R(x, y)^k = 4^k > 1$ pour tout $k \geqslant 1$. La fonction $u + v$ n'est pas forte.

**4.** Supposons $f$ $k$-faible ou $k$-forte, et $g$ $\ell$-faible ou $\ell$-forte. Fixons $x$, $y$ dans $I$ et posons $a = f(x)$, $b = f(y)$, qui sont des réels strictement positifs, donc dans le domaine de $g$.

**a)** Si $f$ et $g$ sont faibles :

$$R(g(a), g(b)) \leqslant R(a, b)^\ell \leqslant \left(R(x, y)^k\right)^\ell = R(x, y)^{k\ell},$$

car $R(a, b) \leqslant R(x, y)^k$ et que les deux membres sont positifs. Donc $g \circ f$ est $k\ell$-faible.

**b)** Si $f$ et $g$ sont fortes, les mêmes étapes avec les inégalités dans l'autre sens donnent

$$R(g(a), g(b)) \geqslant R(a, b)^\ell \geqslant \left(R(x, y)^k\right)^\ell = R(x, y)^{k\ell}.$$

Donc $g \circ f$ est $k\ell$-forte.

**Bilan.** L'inverse, la somme, le produit, le quotient et la composée de fonctions faibles sont faibles. La composée de deux fonctions fortes est forte, mais la somme, le produit et le quotient de deux fonctions fortes ne le sont pas toujours.

## Going further

- Les fonctions constantes strictement positives et la fonction $x \mapsto x$ sont faibles. Avec la question 2, montrer que toute fonction polynôme à coefficients positifs non tous nuls est faible sur $]0, +\infty[$.
- Dans la suite du sujet, ces résultats servaient à démontrer des inégalités : voir les exercices 40771 et 40772.
