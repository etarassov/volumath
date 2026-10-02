---
id: "12029"
title: "a/(b + tc) + b/(c + ta) + c/(a + tb) ≥ 3/(1 + t)"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalites, fractions, carres, somme cyclique, inegalite de nesbitt]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du stage de mars 2013"
  reference: "2017-10_ofm-2012-2013-test-stage.pdf, exercice 3 ; corrigé 2017-10_ofm-2012-2013-test-stage-corrige.pdf (trois solutions : inégalité arithmético-géométrique, inégalité de Jensen, inégalité de Cauchy-Schwarz ; la troisième est reprise ici, avec une démonstration du lemme utilisé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-stage.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-stage.pdf"
---

## Statement

Démontrer que, pour tous réels $a, b, c > 0$ et pour tout réel $t \geqslant 0$,

$$\frac{a}{b + tc} + \frac{b}{c + ta} + \frac{c}{a + tb} \;\geqslant\; \frac{3}{1 + t} .$$

## Hints

1. Que vaut le membre de gauche quand $a = b = c$ ?
2. Multipliez le numérateur et le dénominateur de chaque fraction par son numérateur, par exemple
$$\frac{a}{b + tc} = \frac{a^2}{ab + tac} .$$
Que vaut la somme des trois nouveaux dénominateurs ?
3. Démontrez que, pour des réels $u, v, w > 0$ et des réels $a, b, c$, on a
$$\left(\frac{a^2}{u} + \frac{b^2}{v} + \frac{c^2}{w}\right)(u + v + w) \geqslant (a + b + c)^2 .$$
Développez le membre de gauche, et regroupez les termes deux par deux.

## Solution

**Étape 1 : un lemme.** *Pour tous réels $a$, $b$, $c$ et tous réels $u, v, w > 0$,*

$$\left(\frac{a^2}{u} + \frac{b^2}{v} + \frac{c^2}{w}\right)(u + v + w) \;\geqslant\; (a + b + c)^2 . \qquad (1)$$

En développant, le membre de gauche vaut

$$a^2 + b^2 + c^2 + \left(\frac{a^2 v}{u} + \frac{b^2 u}{v}\right) + \left(\frac{b^2 w}{v} + \frac{c^2 v}{w}\right) + \left(\frac{c^2 u}{w} + \frac{a^2 w}{u}\right),$$

et le membre de droite vaut $a^2 + b^2 + c^2 + 2ab + 2bc + 2ca$. Or, pour la première parenthèse,

$$\frac{a^2 v}{u} + \frac{b^2 u}{v} - 2ab = \frac{a^2 v^2 + b^2 u^2 - 2ab\,uv}{uv} = \frac{(av - bu)^2}{uv} \geqslant 0 ,$$

donc cette parenthèse est au moins égale à $2ab$. De même, la deuxième est au moins égale à $2bc$, et la troisième à $2ca$. En ajoutant, on obtient $(1)$.

**Étape 2 : transformer les fractions.** Comme $a, b, c > 0$ et $t \geqslant 0$, tous les dénominateurs sont strictement positifs. En multipliant le numérateur et le dénominateur de chaque fraction par son numérateur :

$$S = \frac{a}{b + tc} + \frac{b}{c + ta} + \frac{c}{a + tb} = \frac{a^2}{ab + tca} + \frac{b^2}{bc + tab} + \frac{c^2}{ca + tbc} .$$

Les trois nouveaux dénominateurs sont strictement positifs, et leur somme vaut

$$(ab + tca) + (bc + tab) + (ca + tbc) = (ab + bc + ca) + t\,(ab + bc + ca) = (1 + t)(ab + bc + ca) .$$

**Étape 3 : appliquer le lemme.** Avec $u = ab + tca$, $v = bc + tab$, $w = ca + tbc$, l'inégalité $(1)$ donne

$$S \times (1 + t)(ab + bc + ca) \;\geqslant\; (a + b + c)^2 . \qquad (2)$$

**Étape 4 : comparer $(a + b + c)^2$ et $ab + bc + ca$.** On a

$$a^2 + b^2 + c^2 - (ab + bc + ca) = \frac{1}{2}\left((a - b)^2 + (b - c)^2 + (c - a)^2\right) \geqslant 0 ,$$

donc $a^2 + b^2 + c^2 \geqslant ab + bc + ca$, et

$$(a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca) \;\geqslant\; 3\,(ab + bc + ca) .$$

**Conclusion.** Avec $(2)$, on obtient $S \times (1 + t)(ab + bc + ca) \geqslant 3\,(ab + bc + ca)$. En divisant par le nombre strictement positif $(1 + t)(ab + bc + ca)$ :

$$\frac{a}{b + tc} + \frac{b}{c + ta} + \frac{c}{a + tb} \;\geqslant\; \frac{3}{1 + t} .$$

Il y a égalité quand $a = b = c$.

## Going further

Deux valeurs de $t$ donnent des inégalités célèbres :

- pour $t = 0$, on obtient $\dfrac{a}{b} + \dfrac{b}{c} + \dfrac{c}{a} \geqslant 3$ ;
- pour $t = 1$, on obtient l'*inégalité de Nesbitt* : $\dfrac{a}{b + c} + \dfrac{b}{c + a} + \dfrac{c}{a + b} \geqslant \dfrac{3}{2}$.

Le lemme de l'étape 1 est un cas particulier de l'*inégalité de Cauchy-Schwarz*. Il reste vrai avec autant de fractions que l'on veut, avec la même démonstration.
