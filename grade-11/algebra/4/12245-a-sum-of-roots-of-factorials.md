---
id: "12245"
title: "Une somme de racines de factorielles"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, factorielle, racine-k-ieme, somme-telescopique, regroupement-de-facteurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de février 2016, senior"
  reference: "2017-10_ofm-2015-2016-test-fevrier.pdf, test du 23 février 2016, exercice 1 ; corrigé 2017-10_ofm-2015-2016-test-fevrier-corrige.pdf (le corrigé procède par récurrence, la solution ci-dessous fait le même calcul sous forme de somme télescopique)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-fevrier.pdf"
---

## Statement

Pour un réel $a > 0$ et un entier $k \geqslant 1$, on note $\sqrt[k]{a}$ l'unique réel $b > 0$ tel que $b^k = a$.

Montrer que, pour tout entier $n \geqslant 2$,

$$\sum_{k=2}^{n} \frac{1}{\sqrt[k]{(2k)!}} \geqslant \frac{n - 1}{2n + 2}.$$

## Hints

1. Il suffit de minorer chaque terme de la somme par un nombre plus simple, dont la somme se calcule.
2. Vérifie que $\frac{n - 1}{2n + 2} = \frac{1}{2} - \frac{1}{n + 1}$, et que $\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k + 1}$.
3. Il reste à montrer que $(2k)! \leqslant \left(k(k+1)\right)^k$. Regroupe les facteurs de $(2k)!$ deux par deux : $1$ avec $2k$, $2$ avec $2k - 1$, et ainsi de suite.

## Solution

**Étape 1. Une majoration de $(2k)!$.**

Soit $k \geqslant 1$ un entier. On regroupe les $2k$ facteurs de $(2k)! = 1 \times 2 \times \cdots \times (2k)$ en $k$ paires : $1$ avec $2k$, $2$ avec $2k - 1$, et ainsi de suite jusqu'à $k$ avec $k + 1$. La paire numéro $j$, pour $j = 1, 2, \ldots, k$, est formée de $j$ et de $2k + 1 - j$. Donc
$$(2k)! = \left(1 \times 2k\right) \times \left(2 \times (2k - 1)\right) \times \cdots \times \left(k \times (k + 1)\right).$$

Chaque paire a un produit au plus égal à $k(k + 1)$. En effet, en développant,
$$k(k + 1) - j\,(2k + 1 - j) = k^2 + k - 2kj - j + j^2 = (k - j)^2 + (k - j) = (k - j)(k - j + 1),$$
et ce nombre est positif ou nul, puisque $k - j \geqslant 0$.

On a donc $k$ inégalités $0 < j\,(2k + 1 - j) \leqslant k(k + 1)$ entre nombres positifs. En les multipliant membre à membre, on obtient
$$(2k)! \leqslant \left(k(k + 1)\right)^k.$$

**Étape 2. Une minoration de chaque terme.**

Si $0 < u \leqslant v$, alors $\sqrt[k]{u} \leqslant \sqrt[k]{v}$. En effet, si l'on avait $\sqrt[k]{u} > \sqrt[k]{v}$, on obtiendrait en élevant à la puissance $k$ des nombres positifs $u > v$, ce qui est faux.

Appliquons cela à $u = (2k)!$ et $v = \left(k(k+1)\right)^k$, dont la racine $k$-ième est $k(k + 1)$ :
$$\sqrt[k]{(2k)!} \leqslant k(k + 1), \qquad \text{donc} \qquad \frac{1}{\sqrt[k]{(2k)!}} \geqslant \frac{1}{k(k + 1)}.$$

**Étape 3. Une somme télescopique.**

Pour tout $k \geqslant 1$, on a
$$\frac{1}{k(k + 1)} = \frac{(k + 1) - k}{k(k + 1)} = \frac{1}{k} - \frac{1}{k + 1}.$$

En additionnant les minorations de l'étape 2 pour $k = 2, 3, \ldots, n$, on obtient
$$\sum_{k=2}^{n} \frac{1}{\sqrt[k]{(2k)!}} \geqslant \left(\frac{1}{2} - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + \cdots + \left(\frac{1}{n} - \frac{1}{n + 1}\right).$$

Dans le membre de droite, chaque fraction $\frac{1}{3}, \frac{1}{4}, \ldots, \frac{1}{n}$ apparaît une fois avec le signe $+$ et une fois avec le signe $-$. Il ne reste que le premier et le dernier terme :
$$\frac{1}{2} - \frac{1}{n + 1} = \frac{(n + 1) - 2}{2\,(n + 1)} = \frac{n - 1}{2n + 2}.$$

C'est l'inégalité demandée.

## Going further

Pour $n \geqslant 2$, l'inégalité est stricte. Pourquoi ?

Montre de la même façon que $(n!)^2 \geqslant n^n$ pour tout entier $n \geqslant 1$. On pourra écrire $(n!)^2$ comme le produit des $n$ nombres $j\,(n + 1 - j)$, pour $j = 1, 2, \ldots, n$.
