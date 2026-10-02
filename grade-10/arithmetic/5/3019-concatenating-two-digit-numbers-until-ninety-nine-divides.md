---
id: "3019"
title: "Coller les nombres à deux chiffres jusqu'à tomber sur un multiple de 99"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [divisibilite, restes, chiffres, somme-des-premiers-entiers, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 9 (réponse dans Handout-3328-2885.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Pour un entier $n$ à deux chiffres, on note $S_n$ le nombre obtenu en écrivant les uns à la
suite des autres tous les entiers à deux chiffres de $12$ jusqu'à $n$. Par exemple

$$S_{14} = 121314, \qquad S_{32} = 121314 \ldots 3132.$$

Trouver le plus petit entier $n \geq 12$ tel que $S_n$ soit divisible par $99$.

## Hints

1. $100 = 99 + 1$. Que vaut $100$ modulo $99$ ? Et $100^k$ ?
2. $S_n$ est composé de tranches de deux chiffres. Écris $S_n$ comme une somme de tranches multipliées par des puissances de $100$.
3. Tu obtiens : $S_n$ a le même reste modulo $99$ que $12 + 13 + \cdots + n$.
4. Cette somme vaut $\dfrac{n(n+1)}{2} - 66$. Multiplie par $2$ (ce qui ne change rien, car $99$ est impair) et factorise $n^2 + n - 132$.
5. Tu arrives à $99 \mid (n-11)(n+12)$. Souviens-toi que $99 = 9 \times 11$ et teste les candidats.

## Solution

**La clé : 100 laisse le reste 1.**

$100 = 99 + 1$, donc $100 \equiv 1 \pmod{99}$, et par conséquent $100^k \equiv 1 \pmod{99}$
pour tout entier $k \geq 0$.

Le nombre $S_n$ est fait de tranches de deux chiffres : $12$, $13$, …, $n$. En comptant
depuis la droite,

$$S_n = 12 \times 100^{\,n-12} + 13 \times 100^{\,n-13} + \cdots + (n-1) \times 100 + n.$$

Chaque puissance de $100$ valant $1$ modulo $99$, on obtient

$$S_n \equiv 12 + 13 + \cdots + n \pmod{99}.$$

**La somme.**

$$12 + 13 + \cdots + n = (1 + 2 + \cdots + n) - (1 + 2 + \cdots + 11)
= \frac{n(n+1)}{2} - 66.$$

On cherche donc $n$ tel que

$$99 \ \Big|\ \frac{n(n+1)}{2} - 66.$$

**Se débarrasser du demi.**

Notons $M = \dfrac{n(n+1)}{2} - 66$, de sorte que $2M = n(n+1) - 132$. Comme $99$ est impair,
$99 \mid M$ équivaut à $99 \mid 2M$. La condition devient

$$99 \mid n^2 + n - 132.$$

Or le trinôme se factorise : ses racines sont $11$ et $-12$, donc

$$n^2 + n - 132 = (n - 11)(n + 12).$$

**Chercher le plus petit n.**

Il faut $99 = 9 \times 11$ divise $(n-11)(n+12)$.

*Le facteur 11.* Modulo $11$, $n - 11 \equiv n$ et $n + 12 \equiv n + 1$. Il faut donc
$11 \mid n(n+1)$, c'est-à-dire $n \equiv 0$ ou $n \equiv 10 \pmod{11}$.

Les candidats à deux chiffres, dans l'ordre croissant à partir de $12$, sont donc

$$21, \quad 22, \quad 32, \quad 33, \quad 43, \quad 44, \ldots$$

*On les teste.*

| $n$ | $(n-11)(n+12)$ | multiple de $99$ ? |
|---|---|---|
| $21$ | $10 \times 33 = 330$ | non ($330 = 3 \times 99 + 33$) |
| $22$ | $11 \times 34 = 374$ | non |
| $32$ | $21 \times 44 = 924$ | non ($924 = 9 \times 99 + 33$) |
| $33$ | $22 \times 45 = 990$ | **oui**, $990 = 10 \times 99$ |

**Conclusion.**

Le plus petit entier convenable est $n = 33$.

Vérification par la somme : $12 + 13 + \cdots + 33 = \dfrac{33 \times 34}{2} - 66 = 561 - 66 = 495$,
et $495 = 5 \times 99$.

## Going further

Le même raisonnement avec $101$ au lieu de $99$ marcherait aussi, mais avec un signe qui
alterne : $100 \equiv -1 \pmod{101}$, donc il faudrait faire la somme **alternée** des
tranches. C'est exactement le critère de divisibilité par $11$, transposé aux tranches de
deux chiffres.
