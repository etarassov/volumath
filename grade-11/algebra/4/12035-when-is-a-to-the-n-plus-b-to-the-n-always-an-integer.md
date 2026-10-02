---
id: "12035"
title: "Quand aⁿ + bⁿ est-il entier pour tout n ?"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [somme-et-produit, puissances, suite-recurrente, parite, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-2.pdf, exercice 6 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-2.pdf"
---

## Statement

Pour deux nombres réels $a$ et $b$ et un entier $n \geqslant 1$, on note $S_n = a^n + b^n$.

1. On suppose que $S_1$, $S_2$, $S_3$ et $S_4$ sont des entiers. Montrer que $S_n$ est un entier pour tout $n \geqslant 1$.
2. Est-il vrai que, si $S_1$, $S_2$ et $S_3$ sont des entiers, alors $S_n$ est un entier pour tout $n \geqslant 1$ ?

## Hints

1. Notez $s = a + b$ et $p = ab$. Exprimez $S_2$ à l'aide de $s$ et $p$, puis $S_4$ à l'aide de $S_2$ et $p$.
2. Développez $(a + b)(a^{n+1} + b^{n+1})$. Quelle relation obtenez-vous entre $S_{n+2}$, $S_{n+1}$ et $S_n$ ?
3. On sait que $2p$ et $2p^2$ sont entiers. Montrez que $p$ est entier.
4. Pour la question 2, cherchez $a$ et $b$ avec $s = 2$ et $p = 1/2$.

## Solution

**Réponse.** 1. Oui. 2. Non.

Notons $s = a + b$ et $p = ab$.

**Une relation entre trois termes consécutifs.** Pour tout $n \geqslant 1$,

$$(a + b)(a^{n+1} + b^{n+1}) = a^{n+2} + ab^{n+1} + ba^{n+1} + b^{n+2} = S_{n+2} + ab\,(a^n + b^n) .$$

Donc

$$S_{n+2} = s\,S_{n+1} - p\,S_n . \qquad (1)$$

**Question 1.**

*Étape 1 : $s$ et $p$ sont entiers.* D'abord $s = S_1$ est entier. Ensuite

$$S_2 = a^2 + b^2 = (a + b)^2 - 2ab = s^2 - 2p ,$$

donc $2p = s^2 - S_2$ est un entier ; notons-le $q$. De même, en appliquant la même identité à $a^2$ et $b^2$ :

$$S_4 = (a^2)^2 + (b^2)^2 = (a^2 + b^2)^2 - 2a^2b^2 = S_2^2 - 2p^2 ,$$

donc $2p^2 = S_2^2 - S_4$ est un entier. Or $2p^2 = q^2/2$. Ainsi $q^2$ est pair, donc $q$ est pair (le carré d'un nombre impair est impair). Par conséquent $p = q/2$ est un entier.

*Étape 2 : tous les $S_n$ sont entiers.* Les deux premiers termes $S_1$ et $S_2$ sont entiers. Si $S_n$ et $S_{n+1}$ sont entiers, alors, d'après $(1)$, $S_{n+2}$ est entier, car $s$ et $p$ le sont. De proche en proche, $S_n$ est un entier pour tout $n \geqslant 1$.

On remarque que l'hypothèse sur $S_3$ n'a pas servi : il suffit que $S_1$, $S_2$ et $S_4$ soient entiers.

**Question 2.** La réponse est non. Prenons

$$a = 1 + \frac{\sqrt 2}{2} , \qquad b = 1 - \frac{\sqrt 2}{2} .$$

Alors $s = a + b = 2$ et $p = ab = 1 - 2/4 = 1/2$. On calcule :

- $S_1 = s = 2$ ;
- $S_2 = s^2 - 2p = 4 - 1 = 3$ ;
- $S_3 = s\,S_2 - p\,S_1 = 6 - 1 = 5$, d'après $(1)$ ;
- $S_4 = s\,S_3 - p\,S_2 = 10 - 3/2 = 17/2$, d'après $(1)$.

Les trois premiers sont entiers, mais $S_4$ ne l'est pas.

**Conclusion.** Si $S_1$, $S_2$, $S_3$, $S_4$ sont entiers, tous les $S_n$ le sont. Avec seulement $S_1$, $S_2$, $S_3$ entiers, ce n'est plus vrai.

## Going further

Comment trouver le contre-exemple ? D'après l'étape 1, $S_1$ et $S_2$ entiers forcent $s$ et $2p$ entiers. Si $p$ n'est pas entier, $2p$ est impair. Alors $S_3 = s^3 - 3sp$ est entier exactement quand $3sp$ l'est, c'est-à-dire quand $s$ est pair. Montrer que, dans ce cas, $S_4$ n'est jamais entier. Les contre-exemples sont donc exactement les nombres $a$ et $b$ tels que $s$ est pair et $2p$ impair. Il faut encore que $a$ et $b$ soient réels, c'est-à-dire $s^2 \geqslant 4p$.
