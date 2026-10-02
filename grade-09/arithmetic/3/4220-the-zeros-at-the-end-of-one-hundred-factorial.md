---
id: "4220"
title: "Les zéros à la fin de 100 !"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorielle, decomposition-en-facteurs-premiers, divisibilite]
adapted_from: null
see_also: ["7037"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, More Remainders and Divisibility"
  reference: "Handout-1942-1790.pdf, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1942-1790.pdf"
---

## Statement

Pour un entier $n \geq 1$, on note $n!$ (qui se lit « factorielle $n$ ») le produit de tous les
entiers de $1$ à $n$ :
$$n! = 1 \times 2 \times 3 \times \cdots \times n.$$

**a)** Par combien de zéros se termine l'écriture de $10!$ ?

**b)** Par combien de zéros se termine l'écriture de $100!$ ?

*Pour la question b), il n'est évidemment pas question de calculer le nombre : il a $158$ chiffres.*

## Hints

1. Un nombre se termine par un zéro exactement quand il est divisible par $10$. Par deux zéros
   quand il est divisible par $100$, et ainsi de suite.
2. $10 = 2 \times 5$. Le nombre de zéros de fin est donc le nombre de fois que l'on peut sortir
   un facteur $2$ **et** un facteur $5$ du produit.
3. Dans un produit d'entiers consécutifs, les facteurs $2$ sont beaucoup plus nombreux que les
   facteurs $5$. Lequel des deux limite le nombre de paires ?
4. Attention, $25 = 5 \times 5$ apporte **deux** facteurs $5$ à lui tout seul.

## Solution

**Le principe.** Un nombre se termine par exactement $z$ zéros lorsqu'il est divisible par $10^z$
mais pas par $10^{z+1}$. Comme $10 = 2 \times 5$, il faut compter combien de fois on peut extraire
la paire $(2, 5)$ de la décomposition en facteurs premiers de $n!$.

Autrement dit, si $n!$ contient $a$ facteurs $2$ et $b$ facteurs $5$ dans sa décomposition, le
nombre de zéros de fin vaut le plus petit des deux nombres $a$ et $b$.

**a) Le cas de $10!$.**

Parmi $1, 2, \ldots, 10$, les multiples de $5$ sont $5$ et $10$ : cela fait $b = 2$ facteurs $5$.

Les multiples de $2$ sont $2, 4, 6, 8, 10$, et $4 = 2^2$ et $8 = 2^3$ en apportent plusieurs : on
a $a = 1 + 2 + 1 + 3 + 1 = 8$ facteurs $2$. Il y en a bien plus que de facteurs $5$.

Le nombre de zéros est donc $\min(8, 2) = 2$.

*Vérification :* $10! = 3\,628\,800$, qui se termine bien par $\mathbf{2}$ zéros. ✓

**b) Le cas de $100!$.**

Comptons d'abord les facteurs $5$ dans $100! = 1 \times 2 \times \cdots \times 100$.

- Les multiples de $5$ entre $1$ et $100$ sont $5, 10, 15, \ldots, 100$ : il y en a
  $100 \div 5 = 20$. Chacun apporte au moins un facteur $5$.
- Parmi eux, les multiples de $25$ apportent un facteur $5$ **supplémentaire** : ce sont $25$,
  $50$, $75$ et $100$, soit $100 \div 25 = 4$ nombres.
- Il n'y a pas de multiple de $125$ inférieur à $100$, donc on s'arrête là.

Au total, $100!$ contient
$$b = 20 + 4 = 24$$
facteurs $5$.

Comptons maintenant les facteurs $2$. Rien que les $50$ nombres pairs en apportent chacun au
moins un, donc $a \geq 50$. C'est déjà bien plus que $24$, inutile de compter plus finement.

Le nombre de zéros vaut donc $\min(a, b) = 24$.

**Conclusion.** $10!$ se termine par $\mathbf{2}$ zéros et $100!$ se termine par $\mathbf{24}$
zéros.

## Going further

1. Combien de zéros à la fin de $1000!$ ? (Réponse : $200 + 40 + 8 + 1 = 249$.)
2. Existe-t-il un entier $n$ tel que $n!$ se termine par exactement $5$ zéros ?
   (Non : on passe de $4$ zéros pour $20!$ à $6$ zéros pour $25!$, car $25$ apporte deux facteurs
   $5$ d'un coup.)
