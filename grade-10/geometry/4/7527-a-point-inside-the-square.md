---
id: "7527"
title: "Un point caché dans le carré"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [carre, triangle-isocele, triangle-equilateral, chasse-aux-angles, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 18 (solution p. 241, résolue par Alexandre Thiault). La solution imprimée passe par la trigonométrie et la formule de l'angle moitié ; celle donnée ici est synthétique."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

$ABCD$ est un carré, et $E$ est un point situé **à l'intérieur** du carré tel que le triangle $AEB$ soit isocèle en $E$, avec

$$\widehat{AEB} = 150°.$$

![Le carré ABCD et le point intérieur E, avec le triangle AEB isocèle en E](7527-figure-1.svg)

Déterminer la mesure de l'angle $\widehat{CED}$.

## Hints

1. Commence par calculer les angles $\widehat{EAB}$ et $\widehat{EBA}$.
2. Il n'y a **qu'un seul** point intérieur au carré vérifiant les conditions de l'énoncé : il est sur la médiatrice de $[AB]$, à une hauteur imposée par l'angle. Si tu trouves un point qui convient, c'est le bon.
3. Prends le problème à l'envers : construis le point $E'$ intérieur au carré tel que le triangle $DE'C$ soit **équilatéral**, puis calcule $\widehat{AE'B}$.
4. Pour ce calcul, le triangle $ADE'$ est isocèle : quels sont ses angles ?

## Solution

**Réponse : $\widehat{CED} = 60°$, et le triangle $CED$ est équilatéral.**

**Étape 1. Il n'y a qu'un seul point $E$ possible.**

Le triangle $AEB$ est isocèle en $E$, donc $E$ est sur la médiatrice du segment $[AB]$. Et sa distance à la droite $(AB)$ est imposée : plus $E$ s'éloigne de $(AB)$, plus l'angle $\widehat{AEB}$ diminue, donc il n'y a qu'une seule position possible du bon côté de $(AB)$.

Conclusion : si on exhibe un point intérieur au carré qui est sur la médiatrice de $[AB]$ et qui voit $[AB]$ sous un angle de $150°$, c'est nécessairement $E$.

**Étape 2. On construit le candidat.**

Soit $E'$ le point intérieur au carré tel que le triangle $DE'C$ soit **équilatéral**, construit sur le côté $[DC]$ vers l'intérieur.

Prenons le côté du carré égal à $1$. Alors

$$DE' = E'C = DC = 1, \qquad \widehat{E'DC} = \widehat{E'CD} = 60°.$$

Par symétrie par rapport à la médiatrice de $[DC]$, qui est aussi celle de $[AB]$, le point $E'$ est bien sur la médiatrice de $[AB]$.

**Étape 3. On calcule $\widehat{AE'B}$.**

Regardons le triangle $ADE'$.

- Son angle en $D$ vaut $\widehat{ADE'} = \widehat{ADC} - \widehat{E'DC} = 90° - 60° = 30°$.
- Ses côtés $DA$ et $DE'$ valent tous deux $1$ : il est isocèle en $D$.

Donc ses angles à la base valent

$$\widehat{DAE'} = \widehat{DE'A} = \frac{180° - 30°}{2} = 75°.$$

On en déduit

$$\widehat{E'AB} = \widehat{DAB} - \widehat{DAE'} = 90° - 75° = 15°.$$

Par symétrie, $\widehat{E'BA} = 15°$ également. Dans le triangle $AE'B$ :

$$\widehat{AE'B} = 180° - 15° - 15° = 150°.$$

De plus $E'A = E'B$ par symétrie : le triangle $AE'B$ est isocèle en $E'$.

**Étape 4. On conclut.**

Le point $E'$ est intérieur au carré, il est sur la médiatrice de $[AB]$, le triangle $AE'B$ est isocèle en $E'$ et $\widehat{AE'B} = 150°$. D'après l'étape 1, $E' = E$.

Le triangle $CED = CE'D$ est donc équilatéral, et

$$\widehat{CED} = 60°.$$

## Going further

La démonstration est un retournement de problème : au lieu de partir de $E$ et de calculer, on part de la réponse supposée et on vérifie qu'elle donne bien les données de l'énoncé. Cette manœuvre n'est licite que grâce à l'étape 1, l'**unicité** du point $E$ : sans elle, on aurait seulement montré qu'il existe un point vérifiant l'énoncé pour lequel la réponse est $60°$, ce qui ne suffirait pas.

Vérifions au passage par le calcul. Avec $AB = 1$, le point $E$ est à la distance $h$ de $(AB)$ avec $\tan(75°) = \dfrac{1/2}{h}$, donc $h = \dfrac{1}{2\tan 75°} \approx 0{,}134$. Le côté du carré valant $1$, le point $E$ est à la distance $1 - 0{,}134 = 0{,}866$ de la droite $(DC)$. Or $0{,}866 \approx \dfrac{\sqrt3}{2}$, qui est exactement la hauteur d'un triangle équilatéral de côté $1$. Tout concorde.

À toi : dans le même carré, place $E$ de sorte que $\widehat{AEB} = 120°$ au lieu de $150°$, toujours avec $EA = EB$. Que vaut alors $\widehat{CED}$ ? Cette fois la réponse n'est plus un angle « rond », ce qui montre à quel point la valeur $150°$ était choisie pour que la figure se referme.
