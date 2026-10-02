---
id: "10432"
title: "Trois racines carrées dont la somme dépasse toujours 2"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, racine-carree, inegalite-arithmetico-geometrique, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 3 (algèbre)"
  reference: "2017-10_ofm-2015-2016-envoi-3.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2015-2016-envoi-3-solutions.pdf (l'inégalité arithmético-géométrique citée par le corrigé est démontrée ici avec un carré)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-3.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que

$$\sqrt{\frac{a}{b + c}} + \sqrt{\frac{b}{c + a}} + \sqrt{\frac{c}{a + b}} > 2 .$$

## Hints

1. Vérifie que $\sqrt{\frac{a}{b + c}} = \frac{a}{\sqrt{a\,(b + c)}}$.
2. Pour deux réels $x, y \geqslant 0$, développe $\left( \sqrt{x} - \sqrt{y} \right)^2$. Déduis-en une majoration de $\sqrt{xy}$, puis de $\sqrt{a\,(b + c)}$.
3. Tu dois obtenir $\sqrt{\frac{a}{b + c}} \geqslant \frac{2a}{a + b + c}$. Additionne les trois inégalités de ce type. Pourquoi l'inégalité finale est-elle stricte ?

## Solution

**Lemme.** *Pour tous réels $x, y \geqslant 0$, on a $\sqrt{xy} \leqslant \frac{x + y}{2}$, avec égalité seulement si $x = y$.* En effet,

$$\frac{x + y}{2} - \sqrt{xy} = \frac{x - 2\sqrt{x}\sqrt{y} + y}{2} = \frac{\left( \sqrt{x} - \sqrt{y} \right)^2}{2} \geqslant 0 ,$$

et ce nombre est nul seulement si $\sqrt{x} = \sqrt{y}$, c'est-à-dire si $x = y$.

**Étape 1 : minorer chaque racine.** En multipliant le numérateur et le dénominateur par $\sqrt{a}$,

$$\sqrt{\frac{a}{b + c}} = \frac{\sqrt{a}}{\sqrt{b + c}} = \frac{\sqrt{a} \times \sqrt{a}}{\sqrt{a}\,\sqrt{b + c}} = \frac{a}{\sqrt{a\,(b + c)}} .$$

D'après le lemme avec $x = a$ et $y = b + c$,

$$\sqrt{a\,(b + c)} \leqslant \frac{a + b + c}{2} .$$

Le dénominateur est donc au plus égal à $\frac{a + b + c}{2}$. Comme $a > 0$, diminuer le dénominateur ne peut qu'augmenter la fraction, et l'on obtient

$$\sqrt{\frac{a}{b + c}} \geqslant \frac{a}{(a + b + c)/2} = \frac{2a}{a + b + c} ,$$

avec égalité seulement si $a = b + c$. De la même façon,

$$\sqrt{\frac{b}{c + a}} \geqslant \frac{2b}{a + b + c}, \qquad \text{avec égalité seulement si } b = c + a ,$$

$$\sqrt{\frac{c}{a + b}} \geqslant \frac{2c}{a + b + c}, \qquad \text{avec égalité seulement si } c = a + b .$$

**Étape 2 : additionner.** En additionnant les trois inégalités,

$$\sqrt{\frac{a}{b + c}} + \sqrt{\frac{b}{c + a}} + \sqrt{\frac{c}{a + b}} \geqslant \frac{2a + 2b + 2c}{a + b + c} = 2 .$$

**Étape 3 : l'inégalité est stricte.** Pour avoir égalité à la fin, il faudrait l'égalité dans les trois inégalités de l'étape 1, donc à la fois $a = b + c$, $b = c + a$ et $c = a + b$. En additionnant ces trois égalités, on obtiendrait $a + b + c = 2(a + b + c)$, donc $a + b + c = 0$. C'est impossible, car $a$, $b$, $c$ sont strictement positifs. Au moins une des trois inégalités est donc stricte, et la somme est strictement plus grande que $2$.

**Conclusion.** Pour tous réels $a, b, c > 0$, la somme des trois racines est strictement plus grande que $2$.

## Going further

1. Prendre $a = b = 1$ et $c$ très petit. Que devient la somme ? En déduire qu'on ne peut pas remplacer $2$ par un nombre plus grand.
2. Calculer la somme pour $a = b = c$. Est-ce la plus petite valeur possible ?
