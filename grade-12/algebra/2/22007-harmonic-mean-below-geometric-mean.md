---
id: "22007"
title: "Moyenne harmonique et moyenne géométrique"
grade: 12
theme: algebra
difficulty: 2
duration_min: 25
tags: [inegalite, inegalite-arithmetico-geometrique, moyenne-harmonique, moyenne-geometrique, logarithme, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Inégalités » (Gaspard D.), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $n \geq 1$ un entier et $a_1, a_2, \ldots, a_n$ des nombres réels strictement positifs. On appelle :

- *moyenne géométrique* de ces nombres le nombre $g = \sqrt[n]{a_1 a_2 \cdots a_n}$, c'est-à-dire le nombre positif dont la puissance $n$-ième vaut $a_1 a_2 \cdots a_n$ ;
- *moyenne harmonique* de ces nombres le nombre
$$h = \frac{n}{\frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_n}}.$$

Montrer que $h \leq g$, et trouver les cas d'égalité.

On pourra utiliser l'inégalité entre la moyenne arithmétique et la moyenne géométrique : pour des réels $x_1, \ldots, x_n$ strictement positifs,
$$\frac{x_1 + x_2 + \cdots + x_n}{n} \geq \sqrt[n]{x_1 x_2 \cdots x_n},$$
avec égalité seulement si $x_1 = x_2 = \cdots = x_n$. On commencera par la démontrer.

## Hints

1. Pour démontrer l'inégalité entre les moyennes arithmétique et géométrique, étudiez la fonction $t \mapsto t - 1 - \ln t$ sur $]0, +\infty[$.
2. Notez $m$ la moyenne arithmétique des $x_i$ et appliquez l'inégalité $\ln t \leq t - 1$ aux nombres $t = \frac{x_i}{m}$. Additionnez.
3. Pour la moyenne harmonique, appliquez l'inégalité aux inverses $\frac{1}{a_1}, \ldots, \frac{1}{a_n}$.

## Solution

**Étape 1 : $\ln t \leq t - 1$ pour tout $t > 0$.** Posons $f(t) = t - 1 - \ln t$ sur $]0, +\infty[$. Sa dérivée est $f'(t) = 1 - \frac{1}{t} = \frac{t - 1}{t}$ : elle est négative sur $]0, 1]$ et positive sur $[1, +\infty[$. Donc $f$ atteint son minimum en $t = 1$, et ce minimum vaut $f(1) = 0$. Ainsi $\ln t \leq t - 1$, avec égalité seulement pour $t = 1$ (la dérivée ne s'annule qu'en $1$, donc $f$ est strictement décroissante puis strictement croissante).

**Étape 2 : moyenne arithmétique et moyenne géométrique.** Soient $x_1, \ldots, x_n > 0$ et $m = \frac{x_1 + \cdots + x_n}{n} > 0$. Pour chaque $i$, l'étape 1 donne
$$\ln \frac{x_i}{m} \leq \frac{x_i}{m} - 1.$$
Additionnons ces $n$ inégalités. À droite, on obtient $\frac{x_1 + \cdots + x_n}{m} - n = n - n = 0$. À gauche, la somme des logarithmes est le logarithme du produit. Donc
$$\ln \frac{x_1 x_2 \cdots x_n}{m^n} \leq 0, \qquad \text{c'est-à-dire} \qquad x_1 x_2 \cdots x_n \leq m^n.$$
En prenant la racine $n$-ième, qui est croissante, $\sqrt[n]{x_1 \cdots x_n} \leq m$. Il y a égalité seulement si chacune des $n$ inégalités est une égalité, donc si $\frac{x_i}{m} = 1$ pour tout $i$ : tous les $x_i$ sont égaux à $m$.

**Étape 3 : la moyenne harmonique.** Appliquons l'étape 2 aux nombres $x_i = \frac{1}{a_i}$ :
$$\frac{1}{n}\left(\frac{1}{a_1} + \cdots + \frac{1}{a_n}\right) \geq \sqrt[n]{\frac{1}{a_1 a_2 \cdots a_n}} = \frac{1}{g}.$$
Les deux membres sont strictement positifs. En passant aux inverses, l'ordre s'inverse :
$$h = \frac{n}{\frac{1}{a_1} + \cdots + \frac{1}{a_n}} \leq g.$$

**Cas d'égalité.** Il y a égalité seulement si les nombres $\frac{1}{a_i}$ sont tous égaux, c'est-à-dire si $a_1 = a_2 = \cdots = a_n$. Réciproquement, si tous les $a_i$ valent un même nombre $a$, alors $h = \frac{n}{n/a} = a$ et $g = \sqrt[n]{a^n} = a$.

**Conclusion.** La moyenne harmonique de nombres strictement positifs est toujours inférieure ou égale à leur moyenne géométrique, avec égalité seulement quand tous les nombres sont égaux.

## Going further

1. Pour deux nombres $a, b > 0$, vérifiez directement que $h = \frac{2ab}{a+b}$, puis que $h \leq \sqrt{ab}$ sans logarithme.
2. Un cycliste monte une côte à $10$ km/h puis la redescend à $30$ km/h. Quelle est sa vitesse moyenne sur l'aller-retour ? Quelle moyenne des deux vitesses retrouve-t-on ?
