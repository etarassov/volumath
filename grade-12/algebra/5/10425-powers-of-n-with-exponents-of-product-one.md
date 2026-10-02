---
id: "10425"
title: "Des puissances de n dont les exposants ont un produit égal à 1"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, inegalite-arithmetico-geometrique, logarithme, exponentielle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe A, exercice 7 (Iran 2014) ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (erreur de la source : l'énoncé dit n ⩾ 0, mais la racine n-ième n'a pas de sens pour n = 0 ; l'énoncé ci-dessous prend n ⩾ 1. L'inégalité arithmético-géométrique, citée par le corrigé, est démontrée ici à partir de ln t ⩽ t − 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soient $x_1, x_2, \ldots, x_{n+1}$ des réels strictement positifs dont le produit vaut $1$ :

$$x_1 x_2 \cdots x_{n+1} = 1 .$$

Montrer que

$$n^{1/x_1} + n^{1/x_2} + \cdots + n^{1/x_{n+1}} \geqslant n^{\sqrt[n]{x_1}} + n^{\sqrt[n]{x_2}} + \cdots + n^{\sqrt[n]{x_{n+1}}} .$$

(Pour un réel $t$, $n^t$ désigne $e^{t \ln n}$.)

## Hints

1. Démontre l'inégalité entre moyennes : pour des réels $y_1, \ldots, y_n > 0$, on a $\frac{y_1 + \cdots + y_n}{n} \geqslant \sqrt[n]{y_1 \cdots y_n}$. Tu peux utiliser $\ln t \leqslant t - 1$ pour tout $t > 0$, avec $t = \frac{y_i}{G}$ où $G$ est la moyenne géométrique.
2. Fixe un indice $j$ et regarde les $n$ termes $n^{1/x_i}$ pour $i \neq j$. Applique-leur l'inégalité entre moyennes.
3. L'exposant qui apparaît est la moyenne des $n$ nombres $\frac{1}{x_i}$, $i \neq j$. Applique-lui encore l'inégalité entre moyennes, et utilise que le produit de tous les $x_i$ vaut $1$.
4. Additionne les inégalités obtenues pour $j = 1, 2, \ldots, n + 1$. Combien de fois chaque terme $n^{1/x_i}$ apparaît-il ?

## Solution

**Lemme 1.** *Pour tout réel $t > 0$, $\ln t \leqslant t - 1$.* La fonction $g(t) = t - 1 - \ln t$ a pour dérivée $g'(t) = 1 - \frac{1}{t}$, négative sur $]0, 1]$ et positive sur $[1, +\infty[$. Elle atteint donc son minimum en $t = 1$, où elle vaut $0$. Donc $g(t) \geqslant 0$.

**Lemme 2 (inégalité entre moyennes).** *Pour des réels $y_1, \ldots, y_n > 0$, on a*

$$y_1 + \cdots + y_n \geqslant n\,\sqrt[n]{y_1 \cdots y_n} .$$

Posons $G = \sqrt[n]{y_1 \cdots y_n} > 0$, de sorte que $G^n = y_1 \cdots y_n$. D'après le lemme 1 appliqué à chaque $t = \frac{y_i}{G}$,

$$\sum_{i=1}^{n} \left( \frac{y_i}{G} - 1 \right) \geqslant \sum_{i=1}^{n} \ln \frac{y_i}{G} = \ln \frac{y_1 \cdots y_n}{G^n} = \ln 1 = 0 .$$

Donc $\frac{y_1 + \cdots + y_n}{G} \geqslant n$, ce qui est le résultat.

**Étape 1 : une inégalité pour chaque indice $j$.** Fixons $j \in \{1, \ldots, n + 1\}$. Il y a exactement $n$ indices $i \neq j$. Le lemme 2 appliqué aux $n$ nombres $n^{1/x_i}$, pour $i \neq j$, donne

$$\sum_{i \neq j} n^{1/x_i} \geqslant n \sqrt[n]{\prod_{i \neq j} n^{1/x_i}} = n \cdot n^{s_j}, \qquad \text{où} \qquad s_j = \frac{1}{n} \sum_{i \neq j} \frac{1}{x_i} .$$

(On a utilisé $n^a \cdot n^b = n^{a + b}$ et $\sqrt[n]{n^c} = n^{c/n}$.)

**Étape 2 : minorer l'exposant.** Le nombre $s_j$ est la moyenne des $n$ nombres $\frac{1}{x_i}$, $i \neq j$. D'après le lemme 2,

$$s_j \geqslant \sqrt[n]{\prod_{i \neq j} \frac{1}{x_i}} = \sqrt[n]{x_j} ,$$

car le produit des $x_i$ pour $i \neq j$ vaut $\frac{1}{x_j}$, puisque le produit de tous les $x_i$ vaut $1$.

Comme $n \geqslant 1$, on a $\ln n \geqslant 0$, donc la fonction $t \mapsto n^t = e^{t \ln n}$ est croissante (au sens large). Ainsi $n^{s_j} \geqslant n^{\sqrt[n]{x_j}}$, et l'étape 1 donne

$$\sum_{i \neq j} n^{1/x_i} \geqslant n \cdot n^{\sqrt[n]{x_j}} . \qquad (1)$$

**Étape 3 : additionner.** Additionnons les inégalités $(1)$ pour $j = 1, 2, \ldots, n + 1$. À gauche, un terme $n^{1/x_i}$ donné apparaît une fois pour chaque $j \neq i$, c'est-à-dire $n$ fois. On obtient

$$n \sum_{i=1}^{n+1} n^{1/x_i} \geqslant n \sum_{j=1}^{n+1} n^{\sqrt[n]{x_j}} .$$

En divisant par $n > 0$, on obtient l'inégalité demandée.

**Cas d'égalité.** Si tous les $x_i$ valent $1$, les deux membres valent $(n + 1)\,n$. Il y a donc égalité dans ce cas.

## Going further

1. Que devient l'inégalité pour $n = 1$ ?
2. En reprenant seulement l'étape 2, montrer que, sous les mêmes hypothèses,
   $$\frac{1}{x_1} + \frac{1}{x_2} + \cdots + \frac{1}{x_{n+1}} \geqslant \sqrt[n]{x_1} + \sqrt[n]{x_2} + \cdots + \sqrt[n]{x_{n+1}} .$$
