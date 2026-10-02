---
id: "11004"
title: "Chaque somme partielle divisible par son nombre de termes"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, permutation, encadrement, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 8 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On veut ranger les nombres $1, 2, \ldots, n$ dans un certain ordre,
$a_1, a_2, \ldots, a_n$ (chaque nombre est utilisé exactement une fois), de sorte que pour tout $k$ de
$1$ à $n$,
$$k \ \text{divise} \ a_1 + a_2 + \cdots + a_k .$$
Autrement dit : le premier nombre est divisible par $1$, la somme des deux premiers est divisible par
$2$, la somme des trois premiers est divisible par $3$, et ainsi de suite.

Pour quelles valeurs de $n$ est-ce possible ?

## Hints

1. Essaie à la main pour $n = 1, 2, 3, 4$.
2. Quand $k = n$, la somme contient tous les nombres : elle vaut $1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$. Montre que $n$ doit être impair.
3. Pour $k = n - 1$, la somme des $n - 1$ premiers nombres vaut $\dfrac{n(n+1)}{2} - a_n$. Écris $\dfrac{n(n+1)}{2} = \dfrac{(n-1)(n+1)}{2} + \dfrac{n+1}{2}$ et encadre ce qui doit être un multiple de $n - 1$.
4. Recommence avec $k = n - 2$ : tu dois trouver la même valeur pour $a_{n-1}$ que pour $a_n$.

## Solution

**Les petits cas.**

- $n = 1$ : le rangement $(1)$ convient.
- $n = 2$ : la somme $1 + 2 = 3$ n'est pas divisible par $2$, c'est impossible.
- $n = 3$ : le rangement $(1, 3, 2)$ convient, car $1$, puis $1 + 3 = 4$ divisible par $2$, puis $1 + 3 + 2 = 6$ divisible par $3$.

On montre maintenant qu'aucun $n \geqslant 4$ ne convient. Supposons qu'un rangement existe pour un
certain $n \geqslant 4$.

**$n$ est impair.** Pour $k = n$, la condition dit que $n$ divise
$1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$. Si $n$ était pair, on aurait
$\dfrac{n(n+1)}{2} = \dfrac{n}{2} \times (n+1)$ ; pour que ce soit un multiple de $n$, il faudrait que
$n + 1$ soit pair, ce qui est faux. Donc $n$ est impair, $n \geqslant 5$, et $\dfrac{n+1}{2}$ est un entier.

**La valeur de $a_n$.** Pour $k = n - 1$, la somme des $n - 1$ premiers nombres est
$$\frac{n(n+1)}{2} - a_n = (n-1) \times \frac{n+1}{2} + \left( \frac{n+1}{2} - a_n \right).$$
Le premier terme est un multiple de $n - 1$, donc $n - 1$ doit diviser $\dfrac{n+1}{2} - a_n$.

Or $1 \leqslant a_n \leqslant n$, donc
$$-\frac{n-1}{2} \leqslant \frac{n+1}{2} - a_n \leqslant \frac{n-1}{2} .$$
Le seul multiple de $n - 1$ dans cet intervalle est $0$ (les autres sont au moins $n - 1$ en valeur
absolue). Donc $a_n = \dfrac{n+1}{2}$.

**La valeur de $a_{n-1}$.** Pour $k = n - 2$, la somme des $n - 2$ premiers nombres est
$$\frac{n(n+1)}{2} - a_n - a_{n-1} = \frac{(n-1)(n+1)}{2} - a_{n-1} = (n-2) \times \frac{n+1}{2} + \left( \frac{n+1}{2} - a_{n-1} \right).$$
Donc $n - 2$ divise $\dfrac{n+1}{2} - a_{n-1}$, qui est encore compris entre $-\dfrac{n-1}{2}$ et
$\dfrac{n-1}{2}$. Pour $n \geqslant 5$, on a $\dfrac{n-1}{2} < n - 2$ (cela revient à $n > 3$), donc le seul
multiple possible est encore $0$, et $a_{n-1} = \dfrac{n+1}{2}$.

**La contradiction.** On trouve $a_{n-1} = a_n$, alors que chaque nombre n'est utilisé qu'une fois.
Aucun $n \geqslant 4$ ne convient.

**Conclusion.** Le rangement est possible exactement pour $n = 1$ et $n = 3$.
