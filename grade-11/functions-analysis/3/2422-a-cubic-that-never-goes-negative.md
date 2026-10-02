---
id: "2422"
title: "Un polynôme de degré trois qui ne descend jamais sous zéro"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [derivee, variations, minimum, inegalite, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, The AM-GM Inequality"
  reference: "Handout-434-535.pdf, exercice 7c (indication dans Handout-435-535.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-434-535.pdf"
---

## Statement

On considère la fonction $f$ définie sur $\mathbb{R}$ par

$$f(x) = 3x^{3} - 6x^{2} + 4 .$$

1. Étudier les variations de $f$ sur $[0\,;+\infty[$.
2. En déduire que $f(x) \ge 0$ pour tout $x \ge 0$, et préciser la plus petite valeur prise par $f$ sur $[0\,;+\infty[$.
3. L'inégalité $f(x) \ge 0$ est-elle vraie pour tout réel $x$ ?

## Hints

1. Calcule $f'(x)$ et factorise-la. Elle s'annule en deux points seulement.
2. Dresse le tableau de variations de $f$ sur $[0\,;+\infty[$ : $f$ commence par décroître, puis croît.
3. Le minimum de $f$ sur $[0\,;+\infty[$ est atteint là où la dérivée change de signe. Calcule soigneusement la valeur de $f$ en ce point, en gardant des fractions.
4. Pour la question 3, il suffit d'essayer une valeur négative de $x$.

## Solution

### 1. Les variations

La fonction $f$ est un polynôme, donc dérivable sur $\mathbb{R}$, et

$$f'(x) = 9x^{2} - 12x = 3x\,(3x - 4) .$$

Sur $[0\,;+\infty[$, le facteur $3x$ est positif ou nul, et $3x - 4$ s'annule en $x = \dfrac{4}{3}$. Donc

* pour $0 < x < \dfrac{4}{3}$ : $f'(x) < 0$, $f$ est décroissante ;
* pour $x > \dfrac{4}{3}$ : $f'(x) > 0$, $f$ est croissante.

| $x$ | $0$ | | $\dfrac{4}{3}$ | | $+\infty$ |
|---|---|---|---|---|---|
| signe de $f'(x)$ | $0$ | $-$ | $0$ | $+$ | |
| variations de $f$ | $4$ | décroissante | $\dfrac{4}{9}$ | croissante | $+\infty$ |

### 2. Le minimum

D'après le tableau, $f$ atteint sur $[0\,;+\infty[$ son minimum en $x = \dfrac{4}{3}$. Calculons-le :

$$f\left(\frac{4}{3}\right) = 3 \times \frac{64}{27} - 6 \times \frac{16}{9} + 4 = \frac{64}{9} - \frac{96}{9} + \frac{36}{9} = \frac{4}{9} .$$

Donc pour tout $x \ge 0$

$$f(x) \ \ge \ \frac{4}{9} \ > \ 0 ,$$

et en particulier $3x^{3} - 6x^{2} + 4 \ge 0$. L'inégalité est même stricte, et la plus petite valeur atteinte est $\dfrac{4}{9}$, obtenue pour $x = \dfrac{4}{3}$.

*Remarque.* On note au passage $f(0) = 4$ et que $f$ tend vers $+\infty$ quand $x$ tend vers $+\infty$, puisque le terme dominant $3x^3$ l'emporte.

### 3. Sur $\mathbb{R}$ tout entier

Non. Il suffit d'un contre-exemple :

$$f(-1) = 3\times(-1) - 6\times 1 + 4 = -3 - 6 + 4 = -5 < 0 .$$

L'hypothèse $x \ge 0$ est donc indispensable. Elle n'a rien d'artificiel : quand $x$ tend vers $-\infty$, $3x^{3}$ tend vers $-\infty$ et entraîne $f$ avec lui.

## Going further

1. Voici une démonstration sans dérivée. L'inégalité entre moyenne arithmétique et moyenne géométrique de trois nombres positifs, $\dfrac{u+v+w}{3} \ge \sqrt[3]{uvw}$, appliquée à $u = 2x^{3}$, $v = x^{3}$ et $w = 4$, donne $\dfrac{3x^{3}+4}{3} \ge \sqrt[3]{8x^{6}} = 2x^{2}$. Retrouver ainsi le résultat de la question 2.
2. Pourquoi cette seconde méthode ne donne-t-elle pas la valeur $\dfrac{4}{9}$ du minimum ? Que donne-t-elle exactement ?
3. Combien la fonction $f$ a-t-elle de racines réelles ? En donner une valeur approchée à la calculatrice.
