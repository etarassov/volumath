---
id: "10437"
title: "La plus petite somme de quatre parties entières"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, partie-entiere, minimum, inverse]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa partie entière, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,75} \rfloor = 3$ et $\lfloor 2 \rfloor = 2$.

Déterminer la plus petite valeur possible de

$$\left\lfloor \frac{a + b + c}{d} \right\rfloor + \left\lfloor \frac{b + c + d}{a} \right\rfloor + \left\lfloor \frac{c + d + a}{b} \right\rfloor + \left\lfloor \frac{d + a + b}{c} \right\rfloor$$

lorsque $a$, $b$, $c$, $d$ sont des entiers strictement positifs.

## Hints

1. Pour un réel $x$, compare $\lfloor x \rfloor$ et $x - 1$.
2. Sans les parties entières, écris la somme des quatre fractions comme une somme de douze fractions de la forme $\frac{a}{b}$, et regroupe-les par paires.
3. Montre que $t + \frac{1}{t} \geqslant 2$ pour tout réel $t > 0$. Quelle minoration en déduis-tu pour la somme des parties entières ? N'oublie pas que cette somme est un entier.
4. Pour trouver un exemple, prends des nombres presque égaux : trois nombres égaux et un quatrième un peu plus petit.

## Solution

Notons $f(a, b, c, d)$ la somme des quatre parties entières, et

$$T = \frac{a + b + c}{d} + \frac{b + c + d}{a} + \frac{c + d + a}{b} + \frac{d + a + b}{c}$$

la même somme sans les parties entières.

**Étape 1 : $\lfloor x \rfloor > x - 1$.** Par définition, $\lfloor x \rfloor$ est un entier et $\lfloor x \rfloor \leqslant x < \lfloor x \rfloor + 1$. La seconde inégalité donne $\lfloor x \rfloor > x - 1$. En l'appliquant aux quatre fractions et en additionnant,

$$f(a, b, c, d) > T - 4 .$$

**Étape 2 : $T \geqslant 12$.** En coupant chaque fraction en trois, on obtient douze fractions, que l'on regroupe par paires d'inverses :

$$T = \left( \frac{a}{b} + \frac{b}{a} \right) + \left( \frac{a}{c} + \frac{c}{a} \right) + \left( \frac{a}{d} + \frac{d}{a} \right) + \left( \frac{b}{c} + \frac{c}{b} \right) + \left( \frac{b}{d} + \frac{d}{b} \right) + \left( \frac{c}{d} + \frac{d}{c} \right) .$$

Or, pour tout réel $t > 0$,

$$t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t - 1)^2}{t} \geqslant 0 ,$$

donc $t + \frac{1}{t} \geqslant 2$. Chacune des six parenthèses vaut au moins $2$, donc $T \geqslant 12$.

**Étape 3 : la minoration.** Les étapes 1 et 2 donnent $f(a, b, c, d) > 12 - 4 = 8$. Comme $f(a, b, c, d)$ est une somme d'entiers, c'est un entier, et un entier strictement plus grand que $8$ vaut au moins $9$ :

$$f(a, b, c, d) \geqslant 9 .$$

**Étape 4 : la valeur $9$ est atteinte.** Prenons $a = b = c = 5$ et $d = 4$. Alors

$$\left\lfloor \frac{15}{4} \right\rfloor + \left\lfloor \frac{14}{5} \right\rfloor + \left\lfloor \frac{14}{5} \right\rfloor + \left\lfloor \frac{14}{5} \right\rfloor = 3 + 2 + 2 + 2 = 9 .$$

**Conclusion.** La plus petite valeur possible est $9$.

## Going further

1. Que vaut la somme quand $a = b = c = d$ ? Pourquoi est-elle alors loin du minimum ?
2. La démonstration utilise-t-elle que $a$, $b$, $c$, $d$ sont des entiers ? Quelle est la plus petite valeur quand ce sont des réels strictement positifs quelconques ?
3. Avec trois nombres, montrer de la même façon que $\left\lfloor \frac{a + b}{c} \right\rfloor + \left\lfloor \frac{b + c}{a} \right\rfloor + \left\lfloor \frac{c + a}{b} \right\rfloor \geqslant 4$, puis trouver des entiers strictement positifs pour lesquels la somme vaut $4$.
