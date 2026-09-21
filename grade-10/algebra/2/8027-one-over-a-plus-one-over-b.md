---
id: "8027"
title: "1/a + 1/b est au moins 4/(a+b)"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, carre d une somme, fractions, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de mi-parcours du dimanche 20 août, groupe A, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soient $a$ et $b$ deux réels strictement positifs.

1. Montrer que

$$\frac{1}{a} + \frac{1}{b} \geqslant \frac{4}{a + b}.$$

2. Pour quels couples $(a, b)$ y a-t-il égalité ?

3. En déduire que si deux réels strictement positifs $a$ et $b$ vérifient $a + b = 1$, alors
   $\dfrac{1}{a} + \dfrac{1}{b} \geqslant 4$.

## Hints

1. Toutes les quantités en jeu sont strictement positives. Que se passe-t-il si tu multiplies
   les deux membres par $a + b$ ?
2. Développe. Tu obtiens une inégalité entre $\dfrac{a}{b} + \dfrac{b}{a}$ et un nombre.
3. Ramène tout d'un même côté et cherche une identité remarquable.

## Solution

**On chasse les dénominateurs.** Comme $a > 0$ et $b > 0$, le nombre $a + b$ est strictement
positif, et multiplier les deux membres par $a + b$ ne change pas le sens de l'inégalité.
L'inégalité à démontrer équivaut donc à

$$(a + b)\left(\frac{1}{a} + \frac{1}{b}\right) \geqslant 4 .$$

**On développe.**

$$(a + b)\left(\frac{1}{a} + \frac{1}{b}\right) = \frac{a}{a} + \frac{a}{b} + \frac{b}{a} + \frac{b}{b} = 2 + \frac{a}{b} + \frac{b}{a}.$$

Il suffit donc de montrer que $\dfrac{a}{b} + \dfrac{b}{a} \geqslant 2$.

**On multiplie encore une fois.** Le nombre $ab$ est strictement positif, donc cette dernière
inégalité équivaut à

$$a^2 + b^2 \geqslant 2ab, \qquad \text{c'est-à-dire} \qquad a^2 - 2ab + b^2 \geqslant 0,$$

c'est-à-dire

$$(a - b)^2 \geqslant 0 .$$

Or un carré est toujours positif ou nul. L'inégalité de départ est donc vraie.

**Le cas d'égalité.** En remontant la chaîne, il y a égalité si et seulement si
$(a-b)^2 = 0$, c'est-à-dire si et seulement si $a = b$. On vérifie : pour $a = b$,

$$\frac{1}{a} + \frac{1}{a} = \frac{2}{a} \qquad \text{et} \qquad \frac{4}{a + a} = \frac{2}{a}.$$

**L'application.** Si $a + b = 1$, l'inégalité donne directement

$$\frac{1}{a} + \frac{1}{b} \geqslant \frac{4}{1} = 4 .$$

## Going further

Cette inégalité est un cas particulier d'un résultat très utile, parfois surnommé
« inégalité des mauvais élèves » :

$$\frac{x_1^2}{y_1} + \frac{x_2^2}{y_2} \geqslant \frac{(x_1 + x_2)^2}{y_1 + y_2}$$

pour $y_1, y_2 > 0$. Avec $x_1 = x_2 = 1$, $y_1 = a$ et $y_2 = b$, on retrouve exactement
l'énoncé. Le surnom vient de ce que l'élève qui « additionne les fractions en additionnant les
numérateurs et les dénominateurs » obtient par accident le bon membre de droite.
