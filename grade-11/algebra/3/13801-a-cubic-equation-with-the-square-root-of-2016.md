---
id: "13801"
title: "Une équation du troisième degré avec √2016"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [polynome, changement-de-variable, factorisation, second-degre, racines]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2017, éliminatoires"
  reference: "2017-09_coupe_printemps_2017_elim_lycee.pdf, questionnaire lycéens, exercice 11 ; réponse dans 2017-09_coupe_printemps_2017_elim_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2017_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2017_elim_lycee.pdf"
---

## Statement

L'équation

$$2016\,x^3 - 4x + \frac{3}{\sqrt{2016}} = 0$$

a trois solutions réelles, que l'on note $a < b < c$.

Déterminer la valeur de $-\dfrac{1}{a b^2 c}$.

*(On demande seulement la valeur, mais il faut savoir l'expliquer.)*

## Hints

1. Les nombres $2016$ et $\sqrt{2016}$ se ressemblent beaucoup. Essaie d'écrire
   $x = \dfrac{t}{\sqrt{2016}}$ et cherche l'équation que vérifie alors $t$.
2. L'équation en $t$ a des coefficients entiers et une solution très simple. Une fois qu'on
   la connaît, on peut factoriser.
3. Inutile de calculer $a$ et $c$ séparément : leur produit suffit. En revanche, il faut
   savoir laquelle des trois solutions est celle du milieu, $b$.

## Solution

**On change d'échelle.** Posons $x = \dfrac{t}{\sqrt{2016}}$, autrement dit
$t = \sqrt{2016}\,x$. Comme $\left(\sqrt{2016}\right)^2 = 2016$, on a
$\left(\sqrt{2016}\right)^3 = 2016\sqrt{2016}$, donc

$$2016\,x^3 = 2016 \times \frac{t^3}{2016\sqrt{2016}} = \frac{t^3}{\sqrt{2016}}
\qquad \text{et} \qquad 4x = \frac{4t}{\sqrt{2016}}.$$

L'équation devient

$$\frac{t^3 - 4t + 3}{\sqrt{2016}} = 0, \qquad \text{c'est-à-dire} \qquad t^3 - 4t + 3 = 0.$$

**On résout l'équation en $t$.** Le nombre $t = 1$ est solution, car $1 - 4 + 3 = 0$. On
peut donc mettre $t - 1$ en facteur :

$$t^3 - 4t + 3 = (t - 1)\left(t^2 + t - 3\right).$$

On le vérifie en développant :
$(t - 1)(t^2 + t - 3) = t^3 + t^2 - 3t - t^2 - t + 3 = t^3 - 4t + 3$.

Le trinôme $t^2 + t - 3$ a pour discriminant $1 + 12 = 13 > 0$, donc deux racines

$$t_1 = \frac{-1 - \sqrt{13}}{2} \qquad \text{et} \qquad t_2 = \frac{-1 + \sqrt{13}}{2}.$$

Leur produit vaut $\dfrac{(-1)^2 - 13}{4} = -3$ (c'est aussi le terme constant du trinôme,
dont le coefficient de $t^2$ vaut $1$).

**On range les solutions.** On a $t_1 < 0 < 1$. Et $1 < t_2$, car cela revient à
$3 < \sqrt{13}$, c'est-à-dire $9 < 13$. Donc

$$t_1 < 1 < t_2.$$

Comme $x = \dfrac{t}{\sqrt{2016}}$ et que diviser par un nombre positif ne change pas
l'ordre, les solutions de l'équation de départ, rangées dans l'ordre, sont

$$a = \frac{t_1}{\sqrt{2016}}, \qquad b = \frac{1}{\sqrt{2016}}, \qquad c = \frac{t_2}{\sqrt{2016}}.$$

**On calcule.** On a $b^2 = \dfrac{1}{2016}$ et $ac = \dfrac{t_1 t_2}{2016} = \dfrac{-3}{2016}$.
Donc

$$a b^2 c = \frac{-3}{2016} \times \frac{1}{2016} = -\frac{3}{2016^2},
\qquad \text{puis} \qquad -\frac{1}{a b^2 c} = \frac{2016^2}{3} = 672 \times 2016.$$

Enfin $672 \times 2016 = 1\,344\,000 + 10\,752 = 1\,354\,752$.

**La réponse est $1\,354\,752$.**
