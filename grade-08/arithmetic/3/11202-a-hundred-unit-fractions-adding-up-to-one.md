---
id: "11202"
title: "Cent fractions de numérateur 1 dont la somme vaut 1"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [fractions, fractions-egyptiennes, construction, puissances-de-deux]
adapted_from: null
see_also: ["8678"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Juniors, exercice 3 ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf (le corrigé procède par récurrence, la solution ci-dessous est une construction directe)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

Trouver cent entiers strictement positifs $n_1, n_2, \ldots, n_{100}$, **tous différents**,
tels que
$$\frac{1}{n_1} + \frac{1}{n_2} + \cdots + \frac{1}{n_{100}} = 1 .$$

## Hints

1. Commence par $1 = \frac{1}{2} + \frac{1}{2}$. Puis découpe le dernier $\frac{1}{2}$ en
   $\frac{1}{4} + \frac{1}{4}$, puis le dernier $\frac{1}{4}$, et ainsi de suite. Combien de
   fractions obtiens-tu, et qu'est-ce qui ne va pas ?
2. À la fin, il reste deux fractions égales. Il faudrait écrire l'une d'elles comme somme de
   deux fractions de numérateur $1$ **différentes**. Par exemple, $\frac{1}{2}$ est-il égal à
   $\frac{1}{3} + \frac{1}{6}$ ?
3. Plus généralement, compare $\frac{1}{N}$ et $\frac{2}{3N} + \frac{1}{3N}$.

## Solution

**Étape 1. Couper en deux, encore et encore.**

On a $\frac{1}{2} + \frac{1}{2} = 1$. En découpant le dernier $\frac{1}{2}$ en
$\frac{1}{4} + \frac{1}{4}$, puis le dernier $\frac{1}{4}$ en $\frac{1}{8} + \frac{1}{8}$, et
ainsi de suite, on obtient pour tout entier $k \geqslant 1$ :
$$1 = \frac{1}{2} + \frac{1}{2^2} + \frac{1}{2^3} + \cdots + \frac{1}{2^k} + \frac{1}{2^k} .$$

On peut le vérifier en regroupant à partir de la droite : les deux dernières fractions donnent
$\frac{2}{2^k} = \frac{1}{2^{k-1}}$, qui s'ajoute à la fraction précédente pour donner
$\frac{1}{2^{k-2}}$, et ainsi de suite jusqu'à $\frac{1}{2} + \frac{1}{2} = 1$.

Cette somme contient $k + 1$ fractions. Elles sont toutes différentes, **sauf les deux
dernières**, qui sont égales.

**Étape 2. Découper la fraction en trop.**

Pour tout entier pair $N$, on a
$$\frac{1}{3N/2} + \frac{1}{3N} = \frac{2}{3N} + \frac{1}{3N} = \frac{3}{3N} = \frac{1}{N} .$$

Prenons $k = 98$ et $N = 2^{98}$. On remplace la dernière fraction $\frac{1}{2^{98}}$ par
$\frac{1}{3 \times 2^{97}} + \frac{1}{3 \times 2^{98}}$. On obtient
$$1 = \frac{1}{2} + \frac{1}{2^2} + \cdots + \frac{1}{2^{98}} + \frac{1}{3 \times 2^{97}} + \frac{1}{3 \times 2^{98}} .$$

**Étape 3. Vérifier.**

- Il y a $98$ fractions de la forme $\frac{1}{2^j}$, avec $j = 1, \ldots, 98$, plus deux
  autres : cela fait bien $100$ fractions.
- Les $98$ premiers dénominateurs sont des puissances de $2$ différentes.
- Les deux derniers sont des multiples de $3$, donc ce ne sont pas des puissances de $2$, et ils
  sont différents l'un de l'autre.

**Conclusion : les cent entiers $2, 2^2, 2^3, \ldots, 2^{98}, 3 \times 2^{97}, 3 \times 2^{98}$
sont tous différents et la somme de leurs inverses vaut $1$.**

## Going further

Une autre construction utilise l'égalité
$$\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1} .$$
En l'additionnant pour $k = 1, 2, \ldots, 99$, presque tout se simplifie :
$$\frac{1}{1 \times 2} + \frac{1}{2 \times 3} + \cdots + \frac{1}{99 \times 100} = 1 - \frac{1}{100} .$$
Il suffit alors d'ajouter $\frac{1}{100}$. Les dénominateurs sont
$2, 6, 12, 20, \ldots, 9\,900$ et $100$, tous différents, car $100$ n'est pas de la forme
$k(k+1)$ : $9 \times 10 = 90$ et $10 \times 11 = 110$.

Avec deux fractions seulement, c'est impossible. Supposons $n_1 < n_2$. Si $n_1 = 1$, la somme
dépasse $1$. Sinon $n_1 \geqslant 2$ et $n_2 \geqslant 3$, donc
$\frac{1}{n_1} \leqslant \frac{1}{2}$ et $\frac{1}{n_2} < \frac{1}{2}$, et la somme est plus
petite que $1$.
