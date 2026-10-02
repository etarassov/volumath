---
id: "10434"
title: "n fractions dont la somme ne dépasse pas 1"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, moyenne-arithmetico-geometrique, raisonnement-par-l-absurde, produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf (qui développe les produits à l'aide des polynômes symétriques élémentaires ; la solution ci-dessous, par l'absurde, n'utilise que l'inégalité entre moyennes, démontrée à partir de ln t ⩽ t − 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, et soient $x_1, x_2, \ldots, x_n$ des réels positifs dont le produit vaut $1$ :

$$x_1 x_2 \cdots x_n = 1 .$$

Montrer que

$$\frac{1}{n - 1 + x_1} + \frac{1}{n - 1 + x_2} + \cdots + \frac{1}{n - 1 + x_n} \leqslant 1 .$$

## Hints

1. Pose $a_i = \frac{1}{n - 1 + x_i}$ et $b_i = \frac{x_i}{n - 1 + x_i}$. Que vaut $(n - 1)\,a_i + b_i$ ? Et $\frac{b_i}{a_i}$ ?
2. Raisonne par l'absurde : suppose que $a_1 + \cdots + a_n > 1$. Montre qu'alors $b_1 + \cdots + b_n < 1$.
3. Déduis-en que $(n - 1)\,a_i$ est strictement plus grand que la somme des $b_j$ pour $j \neq i$. Applique l'inégalité entre moyennes à ces $n - 1$ nombres.
4. Multiplie les $n$ inégalités obtenues. Combien de fois chaque $b_j$ apparaît-il ? Utilise enfin $x_1 x_2 \cdots x_n = 1$.

## Solution

**Lemme 1.** *Pour tout réel $t > 0$, $\ln t \leqslant t - 1$.* La fonction $g(t) = t - 1 - \ln t$ a pour dérivée $g'(t) = 1 - \frac{1}{t}$, négative sur $]0, 1]$ et positive sur $[1, +\infty[$. Son minimum est donc $g(1) = 0$, et $g(t) \geqslant 0$.

**Lemme 2 (inégalité entre moyennes).** *Pour un entier $m \geqslant 1$ et des réels $y_1, \ldots, y_m > 0$, on a*

$$y_1 + \cdots + y_m \geqslant m\,\sqrt[m]{y_1 \cdots y_m} .$$

Posons $G = \sqrt[m]{y_1 \cdots y_m} > 0$, de sorte que $G^m = y_1 \cdots y_m$. Le lemme 1 appliqué à chaque $t = \frac{y_j}{G}$ donne

$$\sum_{j=1}^{m} \left( \frac{y_j}{G} - 1 \right) \geqslant \sum_{j=1}^{m} \ln \frac{y_j}{G} = \ln \frac{y_1 \cdots y_m}{G^m} = \ln 1 = 0 ,$$

donc $\frac{y_1 + \cdots + y_m}{G} \geqslant m$, ce qui est le résultat.

**Étape 1 : de nouvelles notations.** Aucun $x_i$ n'est nul, puisque leur produit vaut $1$ : ils sont donc strictement positifs. Posons, pour chaque $i$,

$$a_i = \frac{1}{n - 1 + x_i}, \qquad b_i = \frac{x_i}{n - 1 + x_i} .$$

Ce sont des réels strictement positifs, et

$$(n - 1)\,a_i + b_i = \frac{n - 1 + x_i}{n - 1 + x_i} = 1, \qquad \frac{b_i}{a_i} = x_i . \qquad (1)$$

Il s'agit de montrer que $a_1 + a_2 + \cdots + a_n \leqslant 1$. Raisonnons par l'absurde, et supposons que

$$a_1 + a_2 + \cdots + a_n > 1 .$$

**Étape 2 : la somme des $b_i$.** D'après $(1)$, $b_i = 1 - (n - 1)\,a_i$. En additionnant pour $i = 1, \ldots, n$,

$$b_1 + \cdots + b_n = n - (n - 1)(a_1 + \cdots + a_n) < n - (n - 1) = 1 .$$

**Étape 3 : minorer chaque $a_i$.** Fixons un indice $i$. D'après $(1)$ et l'étape 2,

$$(n - 1)\,a_i = 1 - b_i > (b_1 + \cdots + b_n) - b_i = \sum_{j \neq i} b_j .$$

La dernière somme porte sur les $n - 1$ nombres $b_j$ avec $j \neq i$. D'après le lemme 2 avec $m = n - 1$,

$$\sum_{j \neq i} b_j \geqslant (n - 1)\,\sqrt[n-1]{\prod_{j \neq i} b_j} .$$

En enchaînant les deux inégalités et en divisant par $n - 1$,

$$a_i > \sqrt[n-1]{\prod_{j \neq i} b_j} . \qquad (2)$$

**Étape 4 : multiplier.** Tous les nombres de $(2)$ sont strictement positifs, donc on peut multiplier membre à membre les $n$ inégalités $(2)$, pour $i = 1, \ldots, n$ :

$$a_1 a_2 \cdots a_n > \sqrt[n-1]{\prod_{i=1}^{n} \prod_{j \neq i} b_j} .$$

Dans le double produit sous la racine, un nombre $b_j$ donné apparaît une fois pour chaque $i \neq j$, c'est-à-dire $n - 1$ fois. Ce double produit vaut donc $(b_1 b_2 \cdots b_n)^{n-1}$, et sa racine $(n-1)$-ième vaut $b_1 b_2 \cdots b_n$. Ainsi

$$a_1 a_2 \cdots a_n > b_1 b_2 \cdots b_n .$$

**Étape 5 : la contradiction.** D'après $(1)$,

$$x_1 x_2 \cdots x_n = \frac{b_1}{a_1} \times \frac{b_2}{a_2} \times \cdots \times \frac{b_n}{a_n} = \frac{b_1 b_2 \cdots b_n}{a_1 a_2 \cdots a_n} < 1 ,$$

ce qui contredit l'hypothèse $x_1 x_2 \cdots x_n = 1$.

**Conclusion.** La supposition de l'étape 1 est fausse, donc

$$\frac{1}{n - 1 + x_1} + \frac{1}{n - 1 + x_2} + \cdots + \frac{1}{n - 1 + x_n} \leqslant 1 .$$

Il y a égalité par exemple quand tous les $x_i$ valent $1$ : la somme vaut alors $n \times \frac{1}{n} = 1$.

## Going further

1. Pour $n = 2$, montrer que la somme vaut toujours exactement $1$.
2. En utilisant l'étape 2, montrer que sous les mêmes hypothèses
   $$\frac{x_1}{n - 1 + x_1} + \frac{x_2}{n - 1 + x_2} + \cdots + \frac{x_n}{n - 1 + x_n} \geqslant 1 .$$
