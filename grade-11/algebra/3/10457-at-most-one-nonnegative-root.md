---
id: "10457"
title: "Au plus une racine positive"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [polynomes, racines, fonction-decroissante]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices du groupe Junior, exercice 3 ; corrigé 2019-02_envoi-3-cor.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Soient $n \geqslant 1$ un entier et $P$ un polynôme de la forme

$$P(x) = x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 ,$$

où $a_0, a_1, \ldots, a_{n-1}$ sont des réels. On suppose que $a_0 < 0$ et que $a_1, \ldots, a_{n-1}$ sont tous négatifs ou nuls.

Montrer qu'il existe au plus un réel $y \geqslant 0$ tel que $P(y) = 0$. (On ne demande pas de montrer qu'un tel $y$ existe.)

## Hints

1. Le nombre $0$ peut-il être une racine de $P$ ?
2. Pour $y > 0$, l'égalité $P(y) = 0$ revient à $P(y) / y^n = 0$. Écris cette égalité sous la forme « $1$ = une somme de termes positifs ».
3. Comment varie chacun de ces termes quand $y$ augmente ?

## Solution

**Étape 1 : $0$ n'est pas une racine.** On a $P(0) = a_0 < 0$, donc $P(0) \neq 0$. Une racine positive ou nulle de $P$ est donc forcément strictement positive.

**Étape 2 : réécrire l'équation.** Posons $b_k = -a_k$ pour $k = 0, \ldots, n - 1$. Par hypothèse, $b_0 > 0$ et $b_1, \ldots, b_{n-1} \geqslant 0$. Soit $y > 0$. En divisant $P(y)$ par $y^n > 0$, on obtient

$$\frac{P(y)}{y^n} = 1 - \left( \frac{b_{n-1}}{y} + \frac{b_{n-2}}{y^2} + \cdots + \frac{b_1}{y^{n-1}} + \frac{b_0}{y^n} \right) .$$

Notons $g(y)$ la somme entre parenthèses. Alors, pour $y > 0$,

$$P(y) = 0 \iff g(y) = 1 .$$

**Étape 3 : $g$ est strictement décroissante sur $]0, +\infty[$.** Soient $0 < y < z$. Pour tout entier $m \geqslant 1$, on a $0 < y^m < z^m$, donc $1 / y^m > 1 / z^m$. En multipliant par $b_k \geqslant 0$, chaque terme de $g$ vérifie

$$\frac{b_k}{y^{n-k}} \geqslant \frac{b_k}{z^{n-k}} ,$$

et pour $k = 0$ l'inégalité est stricte, car $b_0 > 0$. En additionnant, $g(y) > g(z)$.

**Conclusion.** Une fonction strictement décroissante prend chaque valeur au plus une fois. Il existe donc au plus un réel $y > 0$ tel que $g(y) = 1$, c'est-à-dire tel que $P(y) = 0$. Avec l'étape 1, $P$ a au plus une racine positive ou nulle.

## Going further

1. Montrer qu'une telle racine existe toujours. (On pourra utiliser le théorème des valeurs intermédiaires, vu en Terminale, en comparant $P(0)$ et $P(y)$ pour $y$ grand.)
2. Sans l'hypothèse sur $a_1, \ldots, a_{n-1}$, le résultat est faux. Développer $(x - 1)(x - 2)(x - 3)$ pour trouver un polynôme unitaire de degré $3$, avec $a_0 < 0$, qui a trois racines strictement positives.
