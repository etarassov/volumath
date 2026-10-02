---
id: "13439"
title: "Trois inégalités et le produit abc"
grade: 9
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, somme-cyclique, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 7 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels strictement positifs tels que

$$a + b \geqslant ab, \qquad b + c \geqslant bc \qquad \text{et} \qquad c + a \geqslant ca.$$

Montrer que

$$a + b + c \geqslant \frac{3}{4}\,abc.$$

## Hints

1. Essaie avec $a = b = c$. Pour quelles valeurs les trois hypothèses sont-elles vraies ? Que donne l'inégalité à montrer quand $a = b = c = 2$ ?
2. Additionne les trois inégalités de l'énoncé. Tu obtiens une comparaison entre $a + b + c$ et $ab + bc + ca$.
3. Il reste à comparer $ab + bc + ca$ et $abc$. Multiplie la première hypothèse par $c$. Que fais-tu des deux autres ?

## Solution

On va passer par une étape intermédiaire : la somme $ab + bc + ca$.

**Étape 1 : on additionne les trois hypothèses.** On obtient

$$(a + b) + (b + c) + (c + a) \geqslant ab + bc + ca,$$

c'est-à-dire $2(a + b + c) \geqslant ab + bc + ca$, ou encore

$$a + b + c \geqslant \frac{1}{2}(ab + bc + ca). \qquad (1)$$

**Étape 2 : on fait apparaître $abc$.** On multiplie les deux membres de la première hypothèse $a + b \geqslant ab$ par le nombre $c$. Comme $c > 0$, le sens de l'inégalité ne change pas :

$$ca + cb \geqslant abc.$$

De la même façon, on multiplie la deuxième hypothèse par $a > 0$ et la troisième par $b > 0$ :

$$ab + ac \geqslant abc \qquad \text{et} \qquad bc + ba \geqslant abc.$$

On additionne ces trois inégalités. Dans le membre de gauche, chacun des produits $ab$, $bc$ et $ca$ apparaît deux fois :

$$2(ab + bc + ca) \geqslant 3abc, \qquad \text{donc} \qquad ab + bc + ca \geqslant \frac{3}{2}\,abc. \qquad (2)$$

**Étape 3 : on combine.** D'après $(1)$ puis $(2)$,

$$a + b + c \geqslant \frac{1}{2}(ab + bc + ca) \geqslant \frac{1}{2} \times \frac{3}{2}\,abc = \frac{3}{4}\,abc.$$

**Conclusion.** On a bien $a + b + c \geqslant \frac{3}{4}\,abc$.

*On ne peut pas faire mieux.* Pour $a = b = c = 2$, les trois hypothèses sont vraies, car $2 + 2 = 4 = 2 \times 2$. Et $a + b + c = 6$, tandis que $\frac{3}{4} \times 8 = 6$ : il y a égalité. On ne peut donc pas remplacer $\frac{3}{4}$ par un nombre plus grand.

*Une autre façon de voir.* En divisant $a + b \geqslant ab$ par $ab$, on obtient $\frac{1}{a} + \frac{1}{b} \geqslant 1$. Avec $x = \frac{1}{a}$, $y = \frac{1}{b}$ et $z = \frac{1}{c}$, les hypothèses deviennent $x + y \geqslant 1$, $y + z \geqslant 1$ et $z + x \geqslant 1$. En divisant l'inégalité à montrer par $abc$, elle devient $xy + yz + zx \geqslant \frac{3}{4}$. On la démontre avec les mêmes deux étapes, dans l'autre ordre : en additionnant les hypothèses, $x + y + z \geqslant \frac{3}{2}$ ; en multipliant $y + z \geqslant 1$ par $x$, et de même pour les deux autres, puis en additionnant, $2(xy + yz + zx) \geqslant x + y + z$.

## Going further

On garde les mêmes hypothèses. Montrer que le produit $abc$ peut être plus grand que $1000$ (essaie $b = c = 1$). Montrer aussi que la somme $a + b + c$ peut être plus petite que $1$. Les deux membres de l'inégalité démontrée peuvent donc être très grands ou très petits.
