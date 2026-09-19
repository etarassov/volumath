---
id: "0636"
title: "Le quadrilatère à trois côtés égaux"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [quadrilatere, angles, triangle-isocele, mediatrice, calcul-dangles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 16, section « Problèmes divers », d'après M. A. Volchkevich, 2020"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Trois côtés d'un quadrilatère ont la même longueur. Les deux angles du quadrilatère formés par ces trois côtés mesurent $90°$ et $150°$.

Autrement dit : $ABCD$ est un quadrilatère non croisé tel que

$$AB = BC = CD, \qquad \widehat{ABC} = 90°, \qquad \widehat{BCD} = 150°.$$

Déterminer les deux autres angles du quadrilatère, $\widehat{DAB}$ et $\widehat{CDA}$.

## Hints

1. Commence par une figure exacte : prends $5$ cm pour les trois côtés égaux et construis les angles au rapporteur. Mesure les deux angles cherchés, tu sauras ce que tu dois démontrer.
2. Trace la diagonale $[BD]$. Le triangle $BCD$ a deux côtés égaux et tu connais son angle au sommet.
3. À quelle distance le point $D$ se trouve-t-il de la droite $(BC)$ ? Appelle $H$ le pied de la perpendiculaire à $(BC)$ passant par $D$ et regarde l'angle du triangle $CHD$ en $C$ : il vaut $180° - 150°$.
4. Le milieu du côté $[AB]$ se trouve, lui aussi, à une certaine distance de la droite $(BC)$. Compare les deux distances.
5. Si deux points sont à la même distance de $(BC)$ et du même côté, la droite qui les joint est parallèle à $(BC)$.

## Solution

**Étape 1 : le triangle $BCD$.**

Comme $CB = CD$, le triangle $BCD$ est isocèle en $C$, et son angle au sommet est $\widehat{BCD} = 150°$. Ses deux angles à la base sont donc égaux et valent

$$\widehat{DBC} = \widehat{BDC} = \frac{180° - 150°}{2} = 15°.$$

On en déduit tout de suite

$$\widehat{ABD} = \widehat{ABC} - \widehat{DBC} = 90° - 15° = 75°.$$

**Étape 2 : à quelle hauteur se trouve $D$ ?**

Notons $a$ la longueur commune $AB = BC = CD$, et $H$ le pied de la perpendiculaire à la droite $(BC)$ passant par $D$.

Le point $H$ est sur la droite $(BC)$, du côté de $C$ opposé à $B$, car l'angle $\widehat{BCD} = 150°$ est obtus. L'angle du triangle $DCH$ en $C$ vaut donc

$$180° - 150° = 30°.$$

Le triangle $DCH$ est rectangle en $H$ et possède un angle de $30°$ en $C$ : le côté opposé à cet angle de $30°$ vaut la moitié de l'hypoténuse, donc

$$DH = \frac{CD}{2} = \frac{a}{2}.$$

La distance du point $D$ à la droite $(BC)$ vaut donc $\dfrac{a}{2}$.

**Étape 3 : le milieu de $[AB]$.**

Notons $M$ le milieu du côté $[AB]$. Comme $\widehat{ABC} = 90°$, le côté $[AB]$ est perpendiculaire à $(BC)$, et la distance de $M$ à la droite $(BC)$ est simplement

$$MB = \frac{AB}{2} = \frac{a}{2}.$$

Les points $M$ et $D$ sont donc à la même distance de la droite $(BC)$, et tous les deux du même côté, celui où se trouve le quadrilatère. La droite $(MD)$ est par conséquent **parallèle** à $(BC)$.

**Étape 4 : $(MD)$ est la médiatrice de $[AB]$.**

La droite $(MD)$ est parallèle à $(BC)$, et $(AB)$ est perpendiculaire à $(BC)$ : donc $(MD)$ est perpendiculaire à $(AB)$. Comme elle passe par le milieu $M$ de $[AB]$, c'est la médiatrice du segment $[AB]$.

Le point $D$ est sur cette médiatrice, donc il est à égale distance des deux extrémités :

$$DA = DB.$$

**Étape 5 : on termine.**

Le triangle $ABD$ est isocèle en $D$, ses angles à la base sont égaux :

$$\widehat{DAB} = \widehat{DBA} = 75°.$$

Voilà le premier angle cherché. Pour le second, on peut par exemple utiliser la somme des angles du quadrilatère, qui vaut $360°$ :

$$\widehat{CDA} = 360° - 75° - 90° - 150° = 45°.$$

**Conclusion.** L'angle en $A$ mesure $75°$ et l'angle en $D$ mesure $45°$.

*(Si l'on avait posé les données dans l'autre sens, avec $\widehat{ABC} = 150°$ et $\widehat{BCD} = 90°$, on obtiendrait la figure symétrique : les deux angles cherchés seraient les mêmes, $45°$ en $A$ et $75°$ en $D$.)*

**Vérification.** $75° + 90° + 150° + 45° = 360°$ ✔. On peut aussi retrouver l'angle en $D$ en deux morceaux :

$$\widehat{CDA} = \widehat{BDC} + \widehat{ADB} = 15° + \bigl(180° - 75° - 75°\bigr) = 15° + 30° = 45°. \ ✔$$

## Going further

1. Reprends l'énoncé avec les deux angles donnés égaux à $90°$ et $90°$. Quelle est alors la nature du quadrilatère ?
2. Prolonge les côtés $[AB]$ et $[DC]$ au-delà de $B$ et de $C$. Les deux droites obtenues se coupent-elles ? Si oui, quel angle forment-elles ?
3. Place la figure dans un repère d'origine $B$, avec $C$ sur l'axe des abscisses et $a = 1$. Donne les coordonnées des quatre sommets, puis calcule $DA$ et $DB$ pour vérifier par le calcul qu'elles sont égales.
