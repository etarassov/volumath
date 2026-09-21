---
id: "7115"
title: "Le cercle inscrit du triangle 3-4-5"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [cercle inscrit, aire, triangle rectangle, pythagore]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Un triangle a pour longueurs de côtés $3$, $4$ et $5$.

Calculer le rayon de son **cercle inscrit**, c'est-à-dire du cercle intérieur au triangle et
tangent aux trois côtés.

## Hints

1. Commence par identifier la nature de ce triangle. Que vaut $3^2 + 4^2$ ?
2. Appelle $I$ le centre du cercle inscrit et $r$ son rayon. Relie $I$ aux trois sommets :
   le triangle est découpé en trois petits triangles.
3. Pour chacun de ces trois petits triangles, quelle est la hauteur issue de $I$ ?
4. Calcule l'aire du grand triangle de deux façons.

## Solution

**Le triangle est rectangle.** On a

$$3^2 + 4^2 = 9 + 16 = 25 = 5^2 .$$

D'après la réciproque du théorème de Pythagore, le triangle est rectangle, et l'angle droit
est celui opposé au côté de longueur $5$.

Son aire se calcule alors immédiatement, les deux côtés de l'angle droit étant $3$ et $4$ :

$$\mathcal{A} = \frac{3 \times 4}{2} = 6 .$$

**L'aire, calculée autrement.** Appelons $A$, $B$, $C$ les sommets du triangle,
$a = BC$, $b = CA$, $c = AB$ les longueurs des côtés, et $I$ le centre du cercle inscrit,
de rayon $r$.

Traçons les segments $[IA]$, $[IB]$ et $[IC]$. Ils découpent le triangle $ABC$ en trois
triangles $IBC$, $ICA$ et $IAB$, qui ne se chevauchent pas et qui le recouvrent en entier.

Regardons le triangle $IAB$ et prenons $[AB]$ pour base. Sa hauteur est la distance de $I$
à la droite $(AB)$. Or le cercle inscrit est tangent à $(AB)$ et a pour centre $I$ : cette
distance est donc exactement le rayon $r$. D'où

$$\text{aire}(IAB) = \frac{c \times r}{2} .$$

De même $\text{aire}(IBC) = \dfrac{a r}{2}$ et $\text{aire}(ICA) = \dfrac{b r}{2}$. En
additionnant :

$$\mathcal{A} = \frac{ar}{2} + \frac{br}{2} + \frac{cr}{2} = \frac{r(a+b+c)}{2} .$$

**On conclut.** Ici $a + b + c = 3 + 4 + 5 = 12$, donc

$$6 = \frac{r \times 12}{2} = 6r, \qquad \text{d'où} \qquad r = 1 .$$

Le rayon du cercle inscrit vaut $\boxed{1}$.

## Going further

La formule obtenue en chemin est utile et se retient :

$$\text{aire} = \frac{r \times \text{périmètre}}{2},$$

autrement dit l'aire d'un triangle est égale au rayon du cercle inscrit multiplié par le
demi-périmètre. Elle vaut pour **tous** les triangles, pas seulement pour celui-ci.

Il existe une deuxième méthode, propre aux triangles rectangles. Si $A$ est le sommet de
l'angle droit et si $E$, $F$ sont les points où le cercle touche les deux côtés de l'angle
droit, alors $AEIF$ est un carré de côté $r$. En posant $u = AE = AF$, $v = BF = BD$ et
$w = CD = CE$ (deux tangentes issues d'un même point ont la même longueur), on obtient
$u + v = c$, $v + w = a$, $w + u = b$, d'où en additionnant

$$u = \frac{-a+b+c}{2} = \frac{-5+4+3}{2} = 1 = r .$$

On retrouve bien $r = 1$.
