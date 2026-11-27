---
id: "40606"
title: "Pied de hauteur rationnel, et pas de triangle équilatéral à sommets entiers"
grade: 11
theme: geometry
difficulty: 3
duration_min: 35
tags: [produit-scalaire, projete-orthogonal, coordonnees, rationnels, irrationnel, triangle-equilateral, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40607", "40608", "40609", "5604"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème III « Dans l'espace tout entier », partie A, questions 1 a), 1 b) et 2 (la question 1 c), sur l'espace, est dans l'exercice 40608)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé. Un point $M(x ; y)$ est dit *entier* lorsque ses deux
coordonnées $x$ et $y$ sont des entiers. On rappelle qu'un nombre *rationnel* est un quotient
$\frac{a}{b}$ de deux entiers, avec $b \neq 0$ ; la somme, la différence, le produit et le
quotient de deux rationnels sont des rationnels. On admet que $\sqrt{3}$ n'est pas rationnel.

Les triangles sont supposés non aplatis.

1. Soit $ABC$ un triangle et $H$ le pied de sa hauteur issue de $A$, c'est-à-dire le point
   d'intersection de la droite $(BC)$ et de sa perpendiculaire passant par $A$.

   a) Montrer que
   $$\overrightarrow{AH} = \overrightarrow{AB} + \frac{\overrightarrow{BA} \cdot \overrightarrow{BC}}{BC^2}\,\overrightarrow{BC} .$$

   b) En déduire que si $A$, $B$ et $C$ sont des points entiers, alors les coordonnées de $H$ sont
   des nombres rationnels.
2. Existe-t-il un triangle équilatéral dont les trois sommets sont des points entiers ?

## Hints

1. **Question 1.** Comme $H$ est sur la droite $(BC)$, il existe un réel $t$ tel que
   $\overrightarrow{BH} = t\,\overrightarrow{BC}$. Traduire ensuite que $(AH)$ est perpendiculaire
   à $(BC)$.
2. **Question 1.** Pour b), si $A$, $B$, $C$ sont entiers, que peut-on dire du produit scalaire
   $\overrightarrow{BA} \cdot \overrightarrow{BC}$ et de $BC^2$ ?
3. **Question 2.** Supposer qu'un tel triangle existe. Que vaut la longueur $AH$ en fonction de
   la longueur $BC$ ?
4. **Question 2.** Si $\overrightarrow{BC}$ a pour coordonnées $(x ; y)$, le vecteur $(-y ; x)$
   lui est orthogonal et a la même longueur. Le vecteur $\overrightarrow{HA}$ lui est colinéaire :
   avec quel coefficient ?
5. **Question 2.** Les coordonnées de $\overrightarrow{HA}$ sont rationnelles d'après la question 1.

## Solution

**1.** a) Le point $H$ est sur la droite $(BC)$, donc il existe un réel $t$ tel que
$\overrightarrow{BH} = t\,\overrightarrow{BC}$, et
$\overrightarrow{AH} = \overrightarrow{AB} + \overrightarrow{BH} = \overrightarrow{AB} + t\,\overrightarrow{BC}$.
La droite $(AH)$ est perpendiculaire à $(BC)$, donc
$\overrightarrow{AH} \cdot \overrightarrow{BC} = 0$, c'est-à-dire
$$\overrightarrow{AB} \cdot \overrightarrow{BC} + t\,BC^2 = 0 .$$
Comme $B \neq C$, $BC^2 \neq 0$ et
$t = \frac{-\overrightarrow{AB} \cdot \overrightarrow{BC}}{BC^2} = \frac{\overrightarrow{BA} \cdot \overrightarrow{BC}}{BC^2}$,
ce qui donne la formule demandée.

b) Si $A$, $B$ et $C$ sont entiers, les coordonnées de $\overrightarrow{BA}$ et de
$\overrightarrow{BC}$ sont des entiers. Dans un repère orthonormé,
$\overrightarrow{BA} \cdot \overrightarrow{BC} = x x' + y y'$ et $BC^2 = x'^2 + y'^2$ sont donc des
entiers, le second non nul : $t$ est rationnel. Or
$\overrightarrow{BH} = t\,\overrightarrow{BC}$ donne
$$x_H = x_B + t\,(x_C - x_B) , \qquad y_H = y_B + t\,(y_C - y_B) ,$$
qui sont rationnels. **Conclusion :** les coordonnées de $H$ sont rationnelles.

**2.** La réponse est **non**. Supposons que $ABC$ soit un triangle équilatéral de côté $\ell$
dont les trois sommets sont entiers, et soit $H$ le pied de la hauteur issue de $A$.

*La longueur $AH$.* Dans un triangle équilatéral, la hauteur issue de $A$ est aussi la médiane,
donc $H$ est le milieu de $[BC]$ et $BH = \frac{\ell}{2}$. Le théorème de Pythagore dans le
triangle $ABH$, rectangle en $H$, donne
$AH^2 = \ell^2 - \frac{\ell^2}{4} = \frac{3}{4}\,\ell^2$, donc $AH = \frac{\sqrt{3}}{2}\,\ell$.

*La direction de $\overrightarrow{HA}$.* Notons $(x ; y)$ les coordonnées de
$\overrightarrow{BC}$ : ce sont des entiers, non tous deux nuls. Le vecteur $\vec{v}(-y ; x)$
vérifie $\vec{v} \cdot \overrightarrow{BC} = -yx + xy = 0$ et a pour longueur
$\sqrt{x^2 + y^2} = \ell$. Le vecteur $\overrightarrow{HA}$, de coordonnées $(u ; w)$, est lui
aussi orthogonal à $\overrightarrow{BC}$ : $ux + wy = 0$. Si $x \neq 0$, on en tire
$u = -\frac{w}{x}\,y$, donc $(u ; w) = \frac{w}{x}\,(-y ; x)$. Si $x = 0$, alors $y \neq 0$, et
de même $(u ; w) = -\frac{u}{y}\,(-y ; x)$. Dans les deux cas, $\overrightarrow{HA} = \lambda\,\vec{v}$
pour un réel $\lambda$. En prenant les longueurs, $\frac{\sqrt{3}}{2}\,\ell = |\lambda|\,\ell$,
donc $\lambda = \frac{\sqrt{3}}{2}$ ou $\lambda = -\frac{\sqrt{3}}{2}$.

*La contradiction.* D'après la question 1, $H$ a des coordonnées rationnelles, et $A$ est
entier, donc les coordonnées $(u ; w)$ de $\overrightarrow{HA}$ sont rationnelles. Or
$(u ; w) = \lambda\,(-y ; x)$ : si $x \neq 0$, $\lambda = \frac{w}{x}$ est rationnel ; si
$x = 0$, alors $y \neq 0$ et $\lambda = -\frac{u}{y}$ est rationnel. Donc
$\sqrt{3} = \pm 2\lambda$ serait rationnel, ce qui est faux.

**Conclusion :** aucun triangle équilatéral n'a ses trois sommets en des points entiers du plan.

**Bilan.** Le pied d'une hauteur d'un triangle à sommets entiers a des coordonnées rationnelles.
Pour un triangle équilatéral, le vecteur qui va de ce pied au sommet serait à la fois à
coordonnées rationnelles et égal à $\pm\frac{\sqrt{3}}{2}$ fois un vecteur à coordonnées entières
non nul, ce qui rendrait $\sqrt{3}$ rationnel. Il n'existe donc pas de triangle équilatéral à
sommets entiers dans le plan.

## Going further

- Dans l'espace, c'est possible : les points $(1 ; 0 ; 0)$, $(0 ; 1 ; 0)$ et $(0 ; 0 ; 1)$
  forment un triangle équilatéral. Où l'argument précédent ne marche-t-il plus ? La suite du
  sujet étudiait les triangles à sommets entiers de l'espace : voir les exercices 40608 et 40609.
- L'exercice 5604 répond à la question 2 par une tout autre méthode, avec le théorème de Pick.
- Montrer que, dans le plan, la tangente de chaque angle non droit d'un triangle à sommets
  entiers est un nombre rationnel (on pourra utiliser $\tan \widehat{B} = \frac{AH}{BH}$ quand
  l'angle $\widehat{B}$ est aigu). Un tel triangle peut-il avoir un angle de $60°$ ?
