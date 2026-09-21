---
id: "7235"
title: "Le rayon du cercle inscrit dans le triangle 3-4-5"
grade: 10
theme: geometry
difficulty: 2
duration_min: 20
tags: [cercle inscrit, aire, demi-perimetre, triangle rectangle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Première journée », exercices d'échauffement, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Un triangle a pour côtés $3$, $4$ et $5$.

Déterminer le rayon de son cercle inscrit, c'est-à-dire du cercle intérieur au triangle et
tangent à ses trois côtés.

## Hints

1. Ce triangle a une particularité. Compare $3^2 + 4^2$ et $5^2$.
2. Appelle $I$ le centre du cercle inscrit et découpe le triangle en trois petits triangles
   $IAB$, $IBC$, $ICA$. Quelle est la hauteur de chacun ?
3. Additionne les trois aires. Que trouves-tu ?

## Solution

**Le triangle est rectangle.**

$$3^2 + 4^2 = 9 + 16 = 25 = 5^2 .$$
D'après la réciproque du théorème de Pythagore, le triangle est rectangle, l'hypoténuse étant le
côté de longueur $5$.

**Son aire.**

Les deux côtés de l'angle droit mesurent $3$ et $4$, donc l'aire vaut
$$S = \frac{3 \times 4}{2} = 6 .$$

**Le découpage par le centre du cercle inscrit.**

Notons $ABC$ le triangle, $I$ le centre du cercle inscrit et $r$ son rayon.

Relions $I$ aux trois sommets : le triangle $ABC$ est découpé en trois triangles $IAB$, $IBC$ et
$ICA$, qui ne se chevauchent pas et qui le recouvrent entièrement.

Le cercle inscrit est tangent au côté $[AB]$, donc la distance de $I$ à la droite $(AB)$ vaut
exactement $r$ : c'est la hauteur du triangle $IAB$ relative à la base $[AB]$. Ainsi
$$\text{aire}(IAB) = \frac{AB \times r}{2} .$$
De même pour les deux autres :
$$\text{aire}(IBC) = \frac{BC \times r}{2}, \qquad \text{aire}(ICA) = \frac{CA \times r}{2} .$$

**La formule.**

En additionnant :
$$S = \frac{r}{2}\,(AB + BC + CA) = r \times \frac{AB+BC+CA}{2} = r \times p ,$$
où $p$ désigne le **demi-périmètre** du triangle.

**Le calcul.**

Ici
$$p = \frac{3+4+5}{2} = 6 \qquad \text{et} \qquad S = 6 ,$$
donc
$$r = \frac{S}{p} = \frac{6}{6} = 1 .$$

**Le rayon du cercle inscrit vaut $\boxed{1}$.**

## Going further

La relation $S = r\,p$ que l'on vient d'établir est vraie pour **tous** les triangles, pas
seulement celui-ci : c'est l'une des formules les plus utiles de la géométrie du triangle.

Dans le cas d'un triangle rectangle de côtés $a$, $b$ et d'hypoténuse $c$, on peut aussi montrer
que
$$r = \frac{a+b-c}{2} .$$
Avec $a = 3$, $b = 4$, $c = 5$ : $r = \dfrac{3+4-5}{2} = 1$. On retrouve bien le même résultat.
