---
id: "7806"
title: "La somme des inverses de trois nombres inconnus"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, fonctions-symetriques, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels tels que
$$a + b + c = 4, \qquad a^2 + b^2 + c^2 = 8, \qquad abc = 1.$$

Calculer
$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c}.$$

## Hints

1. N'essaie pas de trouver $a$, $b$ et $c$ : on n'en a pas besoin, et c'est très pénible.
2. Réduis d'abord $\frac1a + \frac1b + \frac1c$ au même dénominateur. Quel est ce dénominateur,
   et qu'apparaît-il au numérateur ?
3. Il te manque alors la valeur de $ab + bc + ca$. Développe $(a+b+c)^2$ : tu y verras à la fois
   $a^2 + b^2 + c^2$ et $ab + bc + ca$.

## Solution

**Étape 1 : on met la somme au même dénominateur.**

$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c}
 = \frac{bc}{abc} + \frac{ca}{abc} + \frac{ab}{abc}
 = \frac{ab + bc + ca}{abc}.$$

Comme $abc = 1$, il reste simplement
$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} = ab + bc + ca.$$

Tout revient donc à calculer $ab + bc + ca$.

**Étape 2 : on développe le carré de la somme.**

$$(a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca).$$

On connaît les deux premiers morceaux :
$$4^2 = 8 + 2(ab + bc + ca),$$
c'est-à-dire
$$16 = 8 + 2(ab + bc + ca),$$
donc
$$ab + bc + ca = \frac{16 - 8}{2} = 4.$$

**Conclusion.**

$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} = \boxed{4}.$$

*Remarque.* On n'a jamais eu besoin de savoir qui sont $a$, $b$ et $c$. Les trois données de
l'énoncé sont ce qu'on appelle les **fonctions symétriques** des trois nombres, et beaucoup de
quantités se calculent à partir d'elles seules.
