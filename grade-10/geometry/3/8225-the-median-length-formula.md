---
id: "8225"
title: "La longueur d'une médiane"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [mediane, pythagore, coordonnees, longueurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, TD « Les points du triangle » (Henry Bambury), exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

$ABC$ est un triangle et $A'$ est le milieu du côté $[BC]$. Le segment $[AA']$ est donc la médiane issue de $A$.

Démontrer la relation

$$AB^2 + AC^2 = \frac{BC^2}{2} + 2\,AA'^2 .$$

## Hints

1. Il n'y a que des carrés de longueurs dans cette formule : le théorème de Pythagore doit servir. Mais le triangle n'est pas rectangle... il faut donc en fabriquer.
2. Trace la hauteur issue de $A$ et note $H$ son pied sur la droite $(BC)$. Combien de triangles rectangles cela crée-t-il ?
3. Plutôt que de manipuler des longueurs avec des signes, place un repère : mets l'origine en $A'$, l'axe des abscisses sur la droite $(BC)$.
4. Dans ce repère, écris les coordonnées de $B$, de $C$ et de $A$. Que valent-elles en fonction de $BC$ et de la position de $H$ ?
5. Calcule $AB^2$, $AC^2$ et $AA'^2$ avec ces coordonnées, puis additionne les deux premiers. Beaucoup de choses vont se simplifier.

## Solution

**Un repère bien choisi.**

Plaçons-nous dans un repère orthonormé dont l'origine est $A'$ et dont l'axe des abscisses est la droite $(BC)$.

Posons $m = \dfrac{BC}{2}$. Comme $A'$ est le milieu de $[BC]$, les deux extrémités sont symétriques par rapport à l'origine :

$$B = (-m,\ 0), \qquad C = (m,\ 0) .$$

Le point $A$ n'est pas sur la droite $(BC)$ ; notons

$$A = (h,\ d) ,$$

où $h$ est son abscisse (c'est l'abscisse du pied $H$ de la hauteur issue de $A$) et $d \neq 0$ son ordonnée.

**Les trois longueurs.**

Avec la formule de la distance dans un repère orthonormé :

$$AB^2 = (h - (-m))^2 + d^2 = (h + m)^2 + d^2 ,$$
$$AC^2 = (h - m)^2 + d^2 ,$$
$$AA'^2 = (h - 0)^2 + (d - 0)^2 = h^2 + d^2 .$$

**Additionner.**

$$AB^2 + AC^2 = (h+m)^2 + (h-m)^2 + 2d^2 .$$

Développons les deux carrés :

$$(h+m)^2 + (h-m)^2 = \left(h^2 + 2hm + m^2\right) + \left(h^2 - 2hm + m^2\right) = 2h^2 + 2m^2 .$$

Les doubles produits se compensent : c'est **toute** l'astuce, et c'est le milieu qui la permet. Donc

$$AB^2 + AC^2 = 2h^2 + 2m^2 + 2d^2 = 2\left(h^2 + d^2\right) + 2m^2 = 2\,AA'^2 + 2m^2 .$$

**Revenir à $BC$.**

Comme $m = \dfrac{BC}{2}$, on a $2m^2 = 2 \times \dfrac{BC^2}{4} = \dfrac{BC^2}{2}$. Finalement

$$\boxed{AB^2 + AC^2 = \frac{BC^2}{2} + 2\,AA'^2 .}$$

**Deux cas particuliers instructifs.**

- Si $AB = AC$, le triangle est isocèle en $A$ et la médiane est aussi une hauteur, donc $h = 0$ et $AA' = d$. La formule donne $2AB^2 = \tfrac{BC^2}{2} + 2AA'^2$, c'est-à-dire, en divisant par $2$, le théorème de Pythagore dans le triangle rectangle $ABA'$. ✓
- Si le triangle est rectangle en $A$, alors $AB^2 + AC^2 = BC^2$, et la formule donne $BC^2 = \tfrac{BC^2}{2} + 2AA'^2$, soit $AA' = \tfrac{BC}{2}$ : on retrouve que **dans un triangle rectangle, la médiane issue de l'angle droit vaut la moitié de l'hypoténuse**. ✓

**Vérification numérique.** Prenons $AB = 5$, $AC = 5$, $BC = 6$. Alors $AA' = \sqrt{25 - 9} = 4$, et la formule donne $25 + 25 = \tfrac{36}{2} + 2 \times 16 = 18 + 32 = 50$. ✓

## Going further

Écrire la même relation pour les médianes issues de $B$ et de $C$, puis additionner les trois. Montrer ainsi que la somme des carrés des trois médianes vaut $\tfrac34$ de la somme des carrés des trois côtés.
