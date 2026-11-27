---
id: "17822"
title: "Le milieu de la hauteur, le cercle inscrit et le cercle exinscrit"
grade: 9
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle-inscrit, cercle-exinscrit, thales, triangles-semblables, alignement, hauteur]
adapted_from: null
see_also: ["40164"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mardi et mercredi matin (Vincent Jugé), exercice 4, p.58 ; solution p.59 (par deux homothéties). L'énoncé imprimé demande que « M, D et I » soient alignés sans définir I : il s'agit du centre J du cercle exinscrit (la figure de la solution l'appelle I)."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle. On note :

- $D$ le point où le cercle inscrit touche le côté $[BC]$ ;
- $J$ le centre du cercle exinscrit dans l'angle $\widehat{A}$, c'est-à-dire du cercle tangent au segment $[BC]$ et aux demi-droites $[AB)$ et $[AC)$ au-delà de $B$ et de $C$ ;
- $M$ le milieu de la hauteur issue de $A$.

Montrer que les points $M$, $D$ et $J$ sont alignés.

## Hints

1. Notez $r$ le rayon du cercle inscrit, $I$ son centre, et $\rho$ le rayon du cercle exinscrit. Les points $A$, $I$, $J$ sont alignés : pourquoi ? Que vaut le rapport $\frac{AI}{AJ}$ ?
2. Le cercle exinscrit touche $(BC)$ en $E$. Soit $Z$ le point du cercle exinscrit diamétralement opposé à $E$. Montrez que $A$, $D$ et $Z$ sont alignés.
3. Les droites $(AH)$ et $(ZE)$ sont perpendiculaires à $(BC)$, où $H$ est le pied de la hauteur. Appliquez le théorème de Thalès autour du point $D$.
4. Soit $M'$ le point où la droite $(JD)$ coupe la hauteur $(AH)$. Calculez $M'H$.

## Solution

**Notations.** Soient $I$ et $r$ le centre et le rayon du cercle inscrit, $\rho$ le rayon du cercle exinscrit, $E$ le point où le cercle exinscrit touche $(BC)$, $H$ le pied de la hauteur issue de $A$ et $h = AH$. Soit enfin $Z$ le point du cercle exinscrit diamétralement opposé à $E$. Un rayon qui aboutit à un point de contact est perpendiculaire à la tangente, donc $(ID)$, $(JE)$ et $(AH)$ sont toutes les trois perpendiculaires à $(BC)$. Le point $Z$ est sur la droite $(JE)$, de l'autre côté de $J$ par rapport à $E$, avec $JZ = \rho$ et $ZE = 2\rho$.

Si $AB = AC$, la figure est symétrique par rapport à la hauteur issue de $A$, et $M$, $D$, $J$ sont tous sur cette hauteur. On suppose maintenant $AB \neq AC$.

**Étape 1 : le rapport $\frac{AI}{AJ}$.** Les deux cercles sont tangents aux deux droites $(AB)$ et $(AC)$, donc leurs centres sont sur la bissectrice de l'angle $\widehat{BAC}$ : les points $A$, $I$, $J$ sont alignés, dans cet ordre. Soient $F$ et $F'$ les points où les deux cercles touchent la droite $(AB)$. Les triangles $AFI$ et $AF'J$ sont rectangles en $F$ et en $F'$ et ont le même angle en $A$ : ils sont semblables. Donc

$$\frac{AI}{AJ} = \frac{IF}{JF'} = \frac{r}{\rho} .$$

**Étape 2 : $A$, $D$, $Z$ sont alignés.** Dans le triangle $AJZ$, menons par $I$ la parallèle à $(JZ)$. Elle coupe $[AZ]$ en un point $D'$, et le théorème de Thalès donne

$$\frac{ID'}{JZ} = \frac{AI}{AJ} = \frac{r}{\rho}, \qquad \text{donc} \qquad ID' = r .$$

La droite $(ID')$ est parallèle à $(JZ)$, donc perpendiculaire à $(BC)$, et $D'$ est du côté de $(BC)$ en partant de $I$, comme $Z$ l'est en partant de $J$. Le point de cette perpendiculaire situé à la distance $r$ de $I$ en direction de $(BC)$ est $D$. Donc $D' = D$ : **le point $D$ est sur le segment $[AZ]$.**

**Étape 3 : Thalès autour de $D$.** Les points $A$ et $Z$ sont de part et d'autre de $(BC)$, la droite $(AZ)$ coupe $(BC)$ en $D$, et $(AH) \parallel (ZE)$. Le théorème de Thalès dans les triangles $DAH$ et $DZE$ donne

$$\frac{DH}{DE} = \frac{AH}{ZE} = \frac{h}{2\rho} .$$

Comme $AB \neq AC$, les points $D$ et $H$ sont différents (sinon la hauteur serait aussi une bissectrice).

**Étape 4 : la droite $(JD)$.** La droite $(JD)$ n'est pas parallèle à la hauteur, car $D \neq E$. Elle coupe la droite $(AH)$ en un point $M'$, et $J$ et $M'$ sont de part et d'autre de $(BC)$. Comme $(M'H) \parallel (JE)$, le théorème de Thalès dans les triangles $DM'H$ et $DJE$ donne

$$\frac{M'H}{JE} = \frac{DH}{DE} = \frac{h}{2\rho}, \qquad \text{donc} \qquad M'H = \rho \times \frac{h}{2\rho} = \frac{h}{2} .$$

Le point $M'$ est sur la hauteur, du même côté de $(BC)$ que $A$, à la distance $\frac{h}{2}$ de $H$ : c'est le milieu $M$ de $[AH]$.

**Conclusion :** $M = M'$ est sur la droite $(JD)$, donc **$M$, $D$ et $J$ sont alignés.**

## Going further

Les étapes 2 et 4 sont deux homothéties. L'homothétie de centre $A$ qui envoie le cercle inscrit sur le cercle exinscrit envoie $D$ sur $Z$. L'homothétie de centre $D$ qui envoie $A$ sur $Z$ envoie la hauteur $[AH]$ sur le diamètre $[ZE]$, donc le milieu $M$ de la hauteur sur le milieu $J$ du diamètre.

Le résultat de l'étape 2 est un classique à retenir : le point de contact du cercle inscrit avec $[BC]$ et le point du cercle exinscrit diamétralement opposé à son point de contact avec $[BC]$ sont alignés avec $A$.
