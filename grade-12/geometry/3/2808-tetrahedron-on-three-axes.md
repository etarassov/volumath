---
id: "2808"
title: "Le tétraèdre posé sur les trois axes"
grade: 12
theme: geometry
difficulty: 3
duration_min: 30
tags: [espace, tetraedre, volume, pythagore, systeme]
adapted_from: null
see_also: ["3412"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 18 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

L'espace est muni d'un repère orthonormé $(O ; \vec{\imath}, \vec{\jmath}, \vec{k})$.

Un triangle $ABC$ dont les côtés mesurent $5$, $6$ et $7$ est placé de telle sorte que chacun de ses trois sommets se trouve sur un des trois demi-axes positifs : $A$ sur $[Ox)$, $B$ sur $[Oy)$ et $C$ sur $[Oz)$.

Quel est le volume du tétraèdre $OABC$ ?

## Hints

1. Donne des coordonnées aux trois sommets. Un point du demi-axe des abscisses positives s'écrit $A(a\,;0\,;0)$ avec $a > 0$.
2. Exprime les trois longueurs $AB$, $BC$ et $CA$ en fonction de $a$, $b$ et $c$. Tu obtiens un système de trois équations.
3. Ces trois équations portent sur $a^2$, $b^2$ et $c^2$, pas sur $a$, $b$, $c$ : c'est un système linéaire en ces trois inconnues. Additionne les trois équations.
4. Pour le volume : les trois arêtes $[OA]$, $[OB]$ et $[OC]$ sont deux à deux perpendiculaires. Prends le triangle $OAB$ comme base. Quelle est sa hauteur ?
5. À la fin, tu n'auras pas besoin de $a$, $b$, $c$ séparément, seulement du produit $a^2b^2c^2$.

## Solution

**Poser les coordonnées.**

Les trois sommets sont sur les demi-axes positifs, donc il existe trois réels strictement positifs $a$, $b$, $c$ tels que

$$A(a\,;0\,;0), \qquad B(0\,;b\,;0), \qquad C(0\,;0\,;c).$$

Les distances se calculent dans le repère orthonormé :

$$AB^2 = a^2 + b^2, \qquad BC^2 = b^2 + c^2, \qquad CA^2 = c^2 + a^2 .$$

(Chacune de ces égalités est aussi, tout simplement, le théorème de Pythagore dans un triangle rectangle en $O$.)

**Le système.**

Attribuons les longueurs : $AB = 5$, $BC = 6$ et $CA = 7$. Le système devient

$$a^2 + b^2 = 25, \qquad b^2 + c^2 = 36, \qquad c^2 + a^2 = 49 .$$

Additionnons les trois lignes : chaque carré apparaît exactement deux fois, donc

$$2\left(a^2 + b^2 + c^2\right) = 25 + 36 + 49 = 110, \qquad \text{d'où} \qquad a^2 + b^2 + c^2 = 55 .$$

En retranchant chacune des trois équations de départ à cette somme :

$$c^2 = 55 - 25 = 30, \qquad a^2 = 55 - 36 = 19, \qquad b^2 = 55 - 49 = 6 .$$

Les trois valeurs sont strictement positives : la configuration existe bien, avec

$$a = \sqrt{19}, \qquad b = \sqrt{6}, \qquad c = \sqrt{30} .$$

**Le volume.**

Les arêtes $[OA]$, $[OB]$ et $[OC]$ sont portées par les trois axes, donc deux à deux perpendiculaires. Prenons comme base le triangle $OAB$, qui est rectangle en $O$ :

$$\text{aire}(OAB) = \frac{OA \times OB}{2} = \frac{ab}{2}.$$

Ce triangle est contenu dans le plan $(xOy)$, et la droite $(OC)$ est perpendiculaire à ce plan. La hauteur du tétraèdre issue de $C$ est donc exactement $OC = c$. D'où

$$V = \frac13 \times \text{aire}(OAB) \times OC = \frac13 \times \frac{ab}{2} \times c = \frac{abc}{6}.$$

**Le calcul final.**

$$(abc)^2 = a^2 b^2 c^2 = 19 \times 6 \times 30 = 3420 .$$

Or $3420 = 36 \times 95$, donc $abc = \sqrt{3420} = 6\sqrt{95}$, et

$$V = \frac{6\sqrt{95}}{6} = \sqrt{95} .$$

**Conclusion.** Le volume du tétraèdre $OABC$ vaut

$$V = \sqrt{95} \approx \text{9,75}.$$

**Une remarque.** On a choisi d'attribuer $5$ à $AB$, $6$ à $BC$ et $7$ à $CA$. Un autre choix permuterait simplement les trois valeurs $19$, $6$ et $30$ entre $a^2$, $b^2$ et $c^2$ : leur produit, et donc le volume, ne changerait pas. Le résultat ne dépend pas de la façon dont on étiquette les côtés.

## Going further

1. Retrouver l'aire du triangle $ABC$ de côtés $5$, $6$, $7$, puis en déduire la distance du point $O$ au plan $(ABC)$.
2. Peut-on placer de la même façon un triangle de côtés $2$, $3$ et $6$ ? Que se passe-t-il dans le calcul ?
3. À quelle condition sur les longueurs $p$, $q$, $r$ des côtés d'un triangle peut-on le poser ainsi sur les trois demi-axes ?
