---
id: "11629"
title: "Une inégalité avec des cubes quand a + b + c = 9"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, identites-remarquables, cubes, tangente, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercices du groupe A, exercice 11 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels strictement positifs tels que $a + b + c = 9$. Montrer que

$$\frac{a^3 + b^3}{ab + 9} + \frac{b^3 + c^3}{bc + 9} + \frac{c^3 + a^3}{ca + 9} \geqslant 9.$$

## Hints

1. Que vaut chaque fraction quand $a = b = c = 3$ ? C'est le cas d'égalité.
2. Cherche à minorer chaque fraction par une expression qui ne dépend que de $a + b$. Essaie de montrer que $(a^3 + b^3)/(ab + 9) \geqslant (a + b) - 3$. Pourquoi cela suffirait-il ?
3. Pose $s = a + b$. Montre que $a^3 + b^3 \geqslant s^3/4$ et que $ab \leqslant s^2/4$.

## Solution

**L'idée.** Quand $a = b = c = 3$, chaque fraction vaut $54/18 = 3$, et la somme vaut exactement $9$. On va montrer que, pour tous réels $a, b > 0$,

$$\frac{a^3 + b^3}{ab + 9} \geqslant (a + b) - 3. \qquad (\star)$$

Cela suffit : en écrivant $(\star)$ pour les couples $(a, b)$, $(b, c)$ et $(c, a)$, puis en additionnant, on obtient

$$\frac{a^3 + b^3}{ab + 9} + \frac{b^3 + c^3}{bc + 9} + \frac{c^3 + a^3}{ca + 9} \geqslant 2(a + b + c) - 9 = 18 - 9 = 9.$$

Prouvons maintenant $(\star)$. Posons $s = a + b$, qui est strictement positif.

**Étape 1 : $a^3 + b^3 \geqslant s^3/4$.** On factorise $a^3 + b^3 = (a + b)(a^2 - ab + b^2)$ (il suffit de développer pour le vérifier). Or

$$4(a^2 - ab + b^2) - (a + b)^2 = 3a^2 - 6ab + 3b^2 = 3(a - b)^2 \geqslant 0,$$

donc $a^2 - ab + b^2 \geqslant s^2/4$. En multipliant par $a + b = s > 0$, on obtient $a^3 + b^3 \geqslant s^3/4$.

**Étape 2 : $ab \leqslant s^2/4$.** En effet $(a + b)^2 - 4ab = (a - b)^2 \geqslant 0$.

**Étape 3 : on se ramène à une seule variable.** Avec les étapes 1 et 2, le numérateur est au moins $s^3/4$, et le dénominateur, qui est positif, est au plus $s^2/4 + 9$. Donc

$$\frac{a^3 + b^3}{ab + 9} \geqslant \frac{s^3 / 4}{s^2/4 + 9} = \frac{s^3}{s^2 + 36}.$$

**Étape 4 : $s^3/(s^2 + 36) \geqslant s - 3$.** Comme $s^2 + 36 > 0$, cela revient à

$$s^3 \geqslant (s - 3)(s^2 + 36) = s^3 - 3s^2 + 36s - 108,$$

c'est-à-dire à $3s^2 - 36s + 108 \geqslant 0$. Or $3s^2 - 36s + 108 = 3(s^2 - 12s + 36) = 3(s - 6)^2$, qui est bien positif ou nul.

Les étapes 3 et 4 donnent $(\star)$.

**Conclusion : la somme des trois fractions est toujours supérieure ou égale à $9$, avec égalité quand $a = b = c = 3$.**

## Going further

**D'où vient « $s - 3$ » ?** Posons $g(s) = s^3/(s^2 + 36)$. Au cas d'égalité, $s = a + b = 6$ et $g(6) = 3$. On cherche une fonction affine qui reste sous la courbe de $g$ et la touche en $s = 6$ : c'est la tangente en ce point. La dérivée vaut

$$g'(s) = \frac{3s^2(s^2 + 36) - s^3 \times 2s}{(s^2 + 36)^2} = \frac{s^4 + 108 s^2}{(s^2 + 36)^2},$$

donc

$$g'(6) = \frac{1296 + 3888}{72^2} = \frac{5184}{5184} = 1.$$

La tangente en $6$ a pour équation $y = 3 + (s - 6) = s - 3$. Cette méthode, minorer chaque morceau par sa tangente au cas d'égalité, sert souvent pour les inégalités symétriques.
