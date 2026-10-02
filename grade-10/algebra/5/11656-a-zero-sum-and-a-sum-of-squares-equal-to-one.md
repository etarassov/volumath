---
id: "11656"
title: "Une somme nulle et une somme des carrés égale à 1"
grade: 10
theme: algebra
difficulty: 5
duration_min: 35
tags: [inegalites, maximum, minimum, somme nulle, somme des carres, racine carree]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 5 (pot-pourri)"
  reference: "2019-02_envoi-5.pdf, exercices Communs, exercice 5 (l'en-tête du document porte « Envoi 4 : pot-pourri ») ; corrigé juge_Corrige-Envoi-5-2019.pdf (le corrigé utilise l'inégalité de Cauchy-Schwarz et écrit x² ⩾ 1/√(n(n−1)) au lieu de x² ⩾ 1/(n(n−1)) ; la preuve ci-dessous est différente)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/02/envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-02_envoi-5.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, et soient $x_1, x_2, \ldots, x_n$ des nombres réels tels que

$$x_1 + x_2 + \cdots + x_n = 0 \qquad \text{et} \qquad x_1^2 + x_2^2 + \cdots + x_n^2 = 1.$$

Montrer que l'un au moins des nombres $x_i$ vérifie

$$x_i \geqslant \frac{1}{\sqrt{n(n-1)}}.$$

## Hints

1. Appelle $M$ le plus grand des nombres $x_i$ et $m$ le plus petit. Pourquoi a-t-on $M > 0$ et $m < 0$ ?
2. Pour chaque $i$, les deux nombres $M - x_i$ et $x_i - m$ sont positifs ou nuls. Développe leur produit, puis additionne les $n$ inégalités obtenues.
3. Tu dois trouver $M \times (-m) \geqslant 1/n$. Il reste à comparer $-m$ et $M$.
4. Le nombre $-m$ est égal à la somme des $n - 1$ autres nombres $x_i$. Chacun d'eux est au plus égal à $M$.

## Solution

On note $M$ le plus grand des nombres $x_1, \ldots, x_n$, et $m$ le plus petit. Il suffit de montrer que $M \geqslant 1/\sqrt{n(n-1)}$ : l'indice $i$ pour lequel $x_i = M$ conviendra.

**Étape 1 : $M > 0$ et $m < 0$.** Si l'on avait $M \leqslant 0$, tous les $x_i$ seraient négatifs ou nuls. Comme leur somme est nulle, ils seraient tous nuls, et la somme de leurs carrés vaudrait $0$, pas $1$. Donc $M > 0$. De même, si l'on avait $m \geqslant 0$, tous les $x_i$ seraient positifs ou nuls de somme nulle, donc tous nuls. Donc $m < 0$.

**Étape 2 : un produit de deux écarts.** Pour chaque $i$, on a $m \leqslant x_i \leqslant M$, donc $M - x_i \geqslant 0$ et $x_i - m \geqslant 0$. Leur produit est positif ou nul :

$$(M - x_i)(x_i - m) \geqslant 0, \qquad \text{c'est-à-dire} \qquad (M + m)\,x_i - x_i^2 - Mm \geqslant 0.$$

On additionne ces $n$ inégalités, pour $i = 1, 2, \ldots, n$ :

$$(M + m)(x_1 + \cdots + x_n) - (x_1^2 + \cdots + x_n^2) - n\,Mm \geqslant 0.$$

D'après les hypothèses, la première parenthèse vaut $0$ et la deuxième vaut $1$. Il reste $-1 - n\,Mm \geqslant 0$, donc

$$M \times (-m) \geqslant \frac{1}{n}. \qquad (\star)$$

**Étape 3 : comparer $-m$ et $M$.** Soit $j$ un indice tel que $x_j = m$. Comme la somme des $x_i$ est nulle, $-m = -x_j$ est égal à la somme des $n - 1$ autres nombres. Chacun d'eux est au plus égal à $M$, donc

$$-m \leqslant (n - 1)\,M.$$

**Étape 4 : conclusion.** Comme $M > 0$, on peut multiplier cette inégalité par $M$ sans changer son sens. Avec $(\star)$ :

$$(n - 1)\,M^2 \geqslant M \times (-m) \geqslant \frac{1}{n}, \qquad \text{donc} \qquad M^2 \geqslant \frac{1}{n(n-1)}.$$

Comme $M > 0$, on obtient $M \geqslant 1/\sqrt{n(n-1)}$.

**Conclusion : le plus grand des nombres $x_i$ est au moins égal à $1/\sqrt{n(n-1)}$.**

## Going further

On ne peut pas faire mieux. Prenons

$$x_1 = -\sqrt{\frac{n-1}{n}} \qquad \text{et} \qquad x_2 = x_3 = \cdots = x_n = \frac{1}{\sqrt{n(n-1)}}.$$

Leur somme et la somme de leurs carrés valent

$$-\sqrt{\frac{n-1}{n}} + \frac{n-1}{\sqrt{n(n-1)}} = -\sqrt{\frac{n-1}{n}} + \sqrt{\frac{n-1}{n}} = 0 \qquad \text{et} \qquad \frac{n-1}{n} + (n - 1) \times \frac{1}{n(n-1)} = 1.$$

Ici, le plus grand nombre est exactement $1/\sqrt{n(n-1)}$.

En appliquant le résultat aux nombres $-x_1, \ldots, -x_n$, qui vérifient les mêmes hypothèses, on obtient aussi un indice $i$ tel que $x_i \leqslant -1/\sqrt{n(n-1)}$.

Le corrigé original sépare les nombres strictement positifs des autres. Il utilise l'inégalité $(y_1 + \cdots + y_p)^2 \leqslant p\,(y_1^2 + \cdots + y_p^2)$, un cas de l'inégalité de Cauchy-Schwarz, pour montrer que la somme des carrés des nombres strictement positifs est au moins $1/n$. Comme il y a au plus $n - 1$ tels nombres, l'un des carrés est au moins $1/(n(n-1))$.
