---
id: "2818"
title: "Trois fractions dont la somme atteint au moins 3/2"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, fractions, symetrie, cas-degalite]
adapted_from: null
see_also: ["2817"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Inequalities and convex functions"
  reference: "Handout-874-964.pdf, problème 9"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-874-964.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels strictement positifs. Démontrer que

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} \;\geqslant\; \frac{3}{2}.$$

Dans quel cas a-t-on l'égalité ?

## Hints

1. Commence par tester : $a = b = c$, puis $a = 1$, $b = 1$, $c = 100$, puis $a = 1$, $b = 1$, $c$ très proche de $0$. Que vaut la somme dans chaque cas ? Le minimum semble-t-il atteint quelque part ?
2. Une remarque qui simplifie tout : l'expression ne change pas si l'on multiplie $a$, $b$ et $c$ par un même nombre strictement positif. Vérifie-le.
3. Pose $x = b+c$, $y = c+a$, $z = a+b$. Exprime $a$, $b$, $c$ en fonction de $x$, $y$, $z$ et de la somme $s = a+b+c$.
4. Autre chemin, plus direct : multiplie et divise chaque fraction pour la mettre sous la forme « un carré divisé par un dénominateur ». Par exemple $\dfrac{a}{b+c} = \dfrac{a^2}{a(b+c)}$.
5. Il te faudra ensuite comparer $(a+b+c)^2$ et $3(ab+bc+ca)$.

## Solution

**Deux outils.**

*Outil 1.* Pour tous réels $x$, $y$, $z$ et tous réels strictement positifs $m$, $n$, $p$ :

$$\frac{x^2}{m} + \frac{y^2}{n} + \frac{z^2}{p} \;\geqslant\; \frac{(x+y+z)^2}{m+n+p}.$$

*Démonstration rapide pour deux fractions* (le cas de trois s'en déduit en l'appliquant deux fois). Comme $m$, $n$ et $m+n$ sont strictement positifs, l'inégalité $\dfrac{x^2}{m} + \dfrac{y^2}{n} \geqslant \dfrac{(x+y)^2}{m+n}$ équivaut, après multiplication par $mn(m+n)$ et simplification, à

$$x^2n^2 + y^2m^2 \geqslant 2mnxy, \qquad \text{c'est-à-dire} \qquad (xn - ym)^2 \geqslant 0,$$

ce qui est toujours vrai. L'égalité a lieu exactement quand $\dfrac{x}{m} = \dfrac{y}{n}$.

*Outil 2.* Pour tous réels $a$, $b$, $c$ :

$$(a+b+c)^2 \geqslant 3\,(ab+bc+ca).$$

*Démonstration.* En développant, l'inégalité s'écrit $a^2+b^2+c^2 + 2(ab+bc+ca) \geqslant 3(ab+bc+ca)$, soit

$$a^2+b^2+c^2 \geqslant ab+bc+ca .$$

Or le double de la différence vaut

$$2\left(a^2+b^2+c^2 - ab-bc-ca\right) = (a-b)^2 + (b-c)^2 + (c-a)^2 \geqslant 0 .$$

L'égalité a lieu exactement quand $a = b = c$.

**La démonstration.**

Écrivons chaque fraction avec un carré au numérateur, ce qui est permis car $a$, $b$, $c$ sont strictement positifs :

$$\frac{a}{b+c} = \frac{a^2}{a(b+c)}, \qquad \frac{b}{c+a} = \frac{b^2}{b(c+a)}, \qquad \frac{c}{a+b} = \frac{c^2}{c(a+b)} .$$

Les trois dénominateurs $a(b+c)$, $b(c+a)$, $c(a+b)$ sont strictement positifs. L'outil 1 donne donc

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} \;\geqslant\; \frac{(a+b+c)^2}{a(b+c) + b(c+a) + c(a+b)} .$$

Calculons le dénominateur :

$$a(b+c) + b(c+a) + c(a+b) = ab + ac + bc + ab + ca + cb = 2\,(ab+bc+ca).$$

D'où

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} \;\geqslant\; \frac{(a+b+c)^2}{2\,(ab+bc+ca)} .$$

L'outil 2 donne $(a+b+c)^2 \geqslant 3(ab+bc+ca)$, et $2(ab+bc+ca) > 0$, donc

$$\frac{(a+b+c)^2}{2\,(ab+bc+ca)} \;\geqslant\; \frac{3\,(ab+bc+ca)}{2\,(ab+bc+ca)} = \frac{3}{2}.$$

En enchaînant :

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} \;\geqslant\; \frac{3}{2}.$$

**Le cas d'égalité.**

Pour que la chaîne soit une suite d'égalités, il faut en particulier l'égalité dans l'outil 2, c'est-à-dire $a = b = c$. Réciproquement, si $a = b = c$, chaque fraction vaut $\dfrac{a}{2a} = \dfrac12$ et la somme vaut exactement $\dfrac32$.

**Conclusion.** Pour tous réels strictement positifs $a$, $b$, $c$,

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} \geqslant \frac{3}{2},$$

avec égalité si et seulement si $a = b = c$.

**Ce qui surprend.** La somme peut être aussi grande qu'on veut : en prenant $a = 1$, $b = c$ très petits, la première fraction explose. Mais elle ne peut jamais descendre sous $\dfrac32$, et ce minimum est atteint au point le plus symétrique. Cette inégalité porte le nom d'**inégalité de Nesbitt**.

## Going further

1. Voici une deuxième démonstration. Poser $s = a+b+c$, puis remarquer que $\dfrac{a}{b+c} = \dfrac{s}{b+c} - 1$. En déduire que la somme vaut $s\left(\dfrac{1}{b+c} + \dfrac{1}{c+a} + \dfrac{1}{a+b}\right) - 3$, puis conclure avec l'inégalité $\dfrac1x + \dfrac1y + \dfrac1z \geqslant \dfrac{9}{x+y+z}$.
2. Que devient l'inégalité avec quatre nombres : $\dfrac{a}{b+c+d} + \dfrac{b}{c+d+a} + \dfrac{c}{d+a+b} + \dfrac{d}{a+b+c} \geqslant \; ?$
3. Montrer que la somme de l'énoncé n'a pas de maximum : construire des valeurs de $a$, $b$, $c$ pour lesquelles elle dépasse $1000$.
