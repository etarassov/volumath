---
id: "13852"
title: "Un grand triangle sur la base d'un triangle équilatéral"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [triangle-equilateral, aire, racine-carree, pythagore]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 21 (aussi sujet senior, exercice 18) ; réponse 120 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soit $ABC$ un triangle équilatéral d'aire $75\sqrt{3}$. Soient $E$ et $D$ deux points de la
droite $(BC)$ tels que $E$, $B$, $C$ et $D$ soient alignés dans cet ordre, et tels que
$EB = CD$.

On suppose que l'aire du triangle $ADE$ vaut $900$. Que vaut la longueur $DE$ ?

## Hints

1. Les triangles $ABC$ et $ADE$ ont une hauteur en commun. Laquelle ?
2. Exprime la hauteur d'un triangle équilatéral de côté $a$, puis son aire, en fonction de $a$.
3. Une fois la hauteur connue, l'aire de $ADE$ donne la longueur $DE$.

## Solution

Notons $a$ le côté du triangle $ABC$, et $H$ le pied de la hauteur issue de $A$. Dans un
triangle équilatéral, $H$ est le milieu de $[BC]$.

**La hauteur en fonction du côté.** Le triangle $AHB$ est rectangle en $H$, avec $AB = a$ et
$BH = \dfrac{a}{2}$. D'après le théorème de Pythagore,

$$AH^2 = a^2 - \frac{a^2}{4} = \frac{3a^2}{4}, \qquad \text{donc} \qquad AH = \frac{\sqrt{3}}{2}\,a.$$

**Le côté et la hauteur.** L'aire de $ABC$ vaut

$$\frac{BC \times AH}{2} = \frac{\sqrt{3}}{4}\,a^2 = 75\sqrt{3},$$

donc $a^2 = 300$. Alors $AH^2 = \dfrac{3 \times 300}{4} = 225$, et $AH = 15$.

**La longueur $DE$.** Le triangle $ADE$ a sa base $[DE]$ sur la droite $(BC)$. Sa hauteur issue de
$A$ est donc encore $[AH]$, de longueur $15$. Son aire vaut

$$\frac{DE \times 15}{2} = 900, \qquad \text{donc} \qquad DE = \frac{1800}{15} = 120.$$

**On trouve $DE = 120$.**

L'hypothèse $EB = CD$ ne sert pas au calcul : elle dit seulement que la figure est symétrique
par rapport à la droite $(AH)$.
