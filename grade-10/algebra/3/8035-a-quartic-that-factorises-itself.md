---
id: "8035"
title: "Une équation de degré 4 qui se factorise toute seule"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, identites-remarquables, equation, degre-quatre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : arithmétique, mercredi 23 après-midi (Rémi Lesbats), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Résoudre, dans l'ensemble des nombres réels, l'équation

$$x^4 - 2 = x^3 + x^2 + x .$$

## Hints

1. Ajoute $1$ aux deux membres. Le membre de droite devient $x^3 + x^2 + x + 1$ : peux-tu le
   factoriser en regroupant les termes deux par deux ?
2. Le membre de gauche devient $x^4 - 1$. C'est une différence de deux carrés.
3. Les deux membres ont maintenant un facteur commun. Ramène tout d'un même côté et
   factorise-le.
4. Un produit est nul si et seulement si l'un de ses facteurs est nul. Le facteur $x^2 + 1$
   peut-il être nul ?

## Solution

**On ajoute $1$ de chaque côté.** L'équation devient

$$x^4 - 1 = x^3 + x^2 + x + 1 .$$

**On factorise le membre de droite.** En regroupant les termes deux par deux :

$$x^3 + x^2 + x + 1 = x^2\,(x + 1) + (x + 1) = (x^2 + 1)(x + 1).$$

**On factorise le membre de gauche.** C'est une différence de deux carrés, deux fois de
suite :

$$x^4 - 1 = (x^2)^2 - 1^2 = (x^2 + 1)(x^2 - 1) = (x^2 + 1)(x + 1)(x - 1).$$

**On rassemble.** L'équation s'écrit maintenant

$$(x^2 + 1)(x + 1)(x - 1) = (x^2 + 1)(x + 1),$$

c'est-à-dire, en ramenant tout à gauche et en mettant $(x^2+1)(x+1)$ en facteur,

$$(x^2 + 1)(x + 1)[(x - 1) - 1] = 0, \qquad \text{soit} \qquad (x^2 + 1)(x + 1)(x - 2) = 0 .$$

**On conclut.** Un produit est nul si et seulement si l'un de ses facteurs est nul.

- $x^2 + 1 = 0$ est impossible, car $x^2 \geqslant 0$ donc $x^2 + 1 \geqslant 1$ ;
- $x + 1 = 0$ donne $x = -1$ ;
- $x - 2 = 0$ donne $x = 2$.

**Vérification.** Pour $x = -1$ : à gauche $1 - 2 = -1$, à droite $-1 + 1 - 1 = -1$. Pour
$x = 2$ : à gauche $16 - 2 = 14$, à droite $8 + 4 + 2 = 14$.

**Les solutions sont $x = -1$ et $x = 2$.**

## Going further

L'astuce « ajouter $1$ » n'est pas tombée du ciel : le membre de droite ressemble à
$1 + x + x^2 + x^3$, et on connaît la formule

$$1 + x + x^2 + x^3 = \frac{x^4 - 1}{x - 1} \qquad (x \neq 1),$$

qui relie précisément les deux membres. Dès qu'on voit une somme de puissances consécutives,
il est presque toujours payant de la remplacer par cette fraction, ou de la factoriser en
regroupant les termes deux par deux comme on l'a fait ici.
