---
id: "7937"
title: "Les trois hauteurs et le rayon du cercle inscrit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle-inscrit, aire, hauteur, inegalite, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe D, exercice 4 (énoncé p. 219, solution p. 219). Le polycopié conclut par l'inégalité de Cauchy-Schwarz ; la preuve donnée ici n'utilise que x + 1/x ≥ 2."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Dans un triangle $ABC$, on note $a = BC$, $b = CA$, $c = AB$, puis $r$ le rayon du cercle inscrit et $h_a$, $h_b$, $h_c$ les longueurs des hauteurs issues de $A$, $B$ et $C$.

1. Montrer que $h_a + h_b + h_c > 6r$.
2. Montrer que $h_a + h_b + h_c \ge 9r$, et déterminer les cas d'égalité.

## Hints

1. Calcule l'aire $S$ du triangle de deux façons : avec une hauteur, puis en découpant le triangle en trois à partir du centre du cercle inscrit.
2. Tu obtiens $S = \frac{a h_a}{2}$ et $S = \frac{r(a+b+c)}{2}$. Exprime le rapport $\frac{h_a}{r}$ : il ne dépend que des longueurs des côtés.
3. Pour la question 1, sers-toi de l'inégalité triangulaire.
4. Pour la question 2, développe le produit $(a+b+c)\left(\frac1a + \frac1b + \frac1c\right)$ et regroupe les termes deux par deux. Souviens-toi que $x + \frac{1}{x} \ge 2$ pour $x > 0$.

## Solution

**Étape 0 : l'aire, calculée de deux façons.**

Notons $S$ l'aire du triangle et $I$ le centre du cercle inscrit.

*Avec une hauteur :* en prenant $[BC]$ comme base,

$$S = \frac{a\,h_a}{2} , \qquad \text{et de même} \qquad S = \frac{b\,h_b}{2} = \frac{c\,h_c}{2} .$$

*Avec le cercle inscrit :* les segments $[IA]$, $[IB]$, $[IC]$ découpent le triangle en trois triangles $IBC$, $ICA$, $IAB$. Le cercle inscrit est tangent aux trois côtés, donc la distance de $I$ à chacun d'eux vaut $r$ : c'est la hauteur de chacun de ces trois petits triangles. D'où

$$S = \frac{a r}{2} + \frac{b r}{2} + \frac{c r}{2} = \frac{r(a+b+c)}{2} .$$

**Étape 1 : le rapport $h_a / r$.**

Des deux expressions, $h_a = \dfrac{2S}{a}$ et $r = \dfrac{2S}{a+b+c}$, on tire

$$\frac{h_a}{r} = \frac{a+b+c}{a} , \qquad \frac{h_b}{r} = \frac{a+b+c}{b} , \qquad \frac{h_c}{r} = \frac{a+b+c}{c} .$$

Donc

$$\frac{h_a + h_b + h_c}{r} = (a+b+c)\left(\frac{1}{a} + \frac{1}{b} + \frac{1}{c}\right) . \qquad (\star)$$

Tout le problème est maintenant une question d'inégalités sur $a$, $b$, $c$.

**Question 1 : la minoration par $6r$.**

D'après l'inégalité triangulaire, $b + c > a$. Donc

$$\frac{h_a}{r} = \frac{a+b+c}{a} = 1 + \frac{b+c}{a} > 1 + 1 = 2 ,$$

c'est-à-dire $h_a > 2r$. De même $h_b > 2r$ et $h_c > 2r$. En additionnant,

$$h_a + h_b + h_c > 6r .$$

**Question 2 : la minoration par $9r$.**

Développons le produit de $(\star)$ :

$$(a+b+c)\left(\frac1a + \frac1b + \frac1c\right) = 3 + \left(\frac{a}{b} + \frac{b}{a}\right) + \left(\frac{b}{c} + \frac{c}{b}\right) + \left(\frac{a}{c} + \frac{c}{a}\right) .$$

Or, pour tout réel $x > 0$,

$$x + \frac{1}{x} - 2 = \frac{x^2 - 2x + 1}{x} = \frac{(x-1)^2}{x} \ge 0 ,$$

donc $x + \frac1x \ge 2$, avec égalité si et seulement si $x = 1$.

En appliquant cela aux trois parenthèses (avec $x = \frac{a}{b}$, puis $\frac{b}{c}$, puis $\frac{a}{c}$) :

$$(a+b+c)\left(\frac1a + \frac1b + \frac1c\right) \ge 3 + 2 + 2 + 2 = 9 .$$

D'après $(\star)$, on en déduit

$$h_a + h_b + h_c \ge 9r .$$

**Les cas d'égalité.**

Il y a égalité si et seulement si les trois inégalités $x + \frac1x \ge 2$ sont des égalités, c'est-à-dire si

$$\frac{a}{b} = 1, \qquad \frac{b}{c} = 1, \qquad \frac{a}{c} = 1 ,$$

autrement dit $a = b = c$ : le triangle est **équilatéral**.

Réciproquement, dans un triangle équilatéral les trois hauteurs sont égales à $3r$ (le centre du cercle inscrit est le centre de gravité, situé au tiers de chaque hauteur), donc leur somme vaut exactement $9r$.

**Conclusion.** Pour tout triangle, $6r < h_a + h_b + h_c$ et $h_a + h_b + h_c \ge 9r$, avec égalité dans la seconde exactement pour les triangles équilatéraux.
