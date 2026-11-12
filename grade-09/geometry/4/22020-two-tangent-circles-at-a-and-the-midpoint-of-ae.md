---
id: "22020"
title: "Deux cercles tangents en A et le milieu de [AE]"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [angle-tangentiel, angle-inscrit, triangles-semblables, tangente, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 5, British MO 2012/2013, Round 1 (on a ajouté que l'angle en A est aigu et que D est à l'intérieur du triangle, pour pouvoir raisonner avec des angles ordinaires)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle dont l'angle $\widehat{BAC}$ est aigu.

- On note $\mathcal{C}_B$ le cercle qui passe par $B$ et qui est tangent à la droite $(AC)$ au point $A$.
- On note $\mathcal{C}_C$ le cercle qui passe par $C$ et qui est tangent à la droite $(AB)$ au point $A$.

Les cercles $\mathcal{C}_B$ et $\mathcal{C}_C$ se recoupent en un point $D$. On admet que $D$ est à l'intérieur du triangle $ABC$. La droite $(AD)$ recoupe le cercle circonscrit au triangle $ABC$ en un point $E$.

Démontrer que $D$ est le milieu du segment $[AE]$.

## Hints

1. L'angle entre une tangente et une corde est égal à un angle inscrit. Traduisez ainsi que $(AC)$ est tangente à $\mathcal{C}_B$ en $A$.
2. Vous devez obtenir $\widehat{DAC} = \widehat{DBA}$ et $\widehat{DAB} = \widehat{DCA}$. Trouvez deux triangles semblables et exprimez $DA$ à l'aide de $DB$, $AB$ et $AC$.
3. Montrez ensuite que les triangles $DBE$ et $ABC$ sont semblables, et exprimez $DE$ de la même façon.

## Solution

**Deux outils sur les cercles.**

- *Angle inscrit.* Si $U$, $V$, $X$, $Y$ sont quatre points d'un cercle, et si $X$ et $Y$ sont du même côté de la droite $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$. (Les deux angles valent la moitié de l'angle au centre qui intercepte le même arc.)
- *Angle entre une tangente et une corde.* Soit $[AD]$ une corde d'un cercle, $T$ un point de la tangente en $A$ et $B$ un point du cercle situé de l'autre côté de la droite $(AD)$ par rapport à $T$. Alors $\widehat{TAD} = \widehat{ABD}$. (C'est le cas limite de l'angle inscrit, quand un des points vient se coller sur $A$. On le prouve avec le centre $O$ : le triangle $OAD$ est isocèle, et la tangente est perpendiculaire au rayon $[OA]$.)

**Étape 1 : traduire les deux tangences.** Le point $D$ est à l'intérieur du triangle, donc la demi-droite $[AD)$ passe à l'intérieur de l'angle $\widehat{BAC}$ : les points $B$ et $C$ sont de part et d'autre de la droite $(AD)$.

- Dans $\mathcal{C}_B$, la droite $(AC)$ est la tangente en $A$, et $B$ est de l'autre côté de $(AD)$ par rapport à $C$. Donc $\widehat{DAC} = \widehat{DBA}$.
- Dans $\mathcal{C}_C$, la droite $(AB)$ est la tangente en $A$. De même, $\widehat{DAB} = \widehat{DCA}$.

**Étape 2 : une première paire de triangles semblables.** Les triangles $DBA$ et $DAC$ ont deux angles égaux deux à deux : l'angle en $B$ du premier est égal à l'angle en $A$ du second, et l'angle en $A$ du premier est égal à l'angle en $C$ du second. Ils sont donc semblables, avec les sommets qui se correspondent ainsi : $D \to D$, $B \to A$, $A \to C$. Les côtés sont proportionnels :

$$\frac{DA}{DB} = \frac{AC}{BA}, \qquad \text{donc} \qquad DA = DB \times \frac{AC}{AB}.$$

**Étape 3 : une deuxième paire de triangles semblables.** Comme $D$ est à l'intérieur du triangle, la droite $(AD)$ traverse le côté $[BC]$ puis recoupe le cercle circonscrit en $E$ : le point $D$ est entre $A$ et $E$, et $E$ est sur l'arc $BC$ qui ne contient pas $A$. Sur ce cercle, les points se suivent dans l'ordre $A$, $B$, $E$, $C$.

- *L'angle en $E$.* Les points $E$ et $C$ sont du même côté de $(AB)$, donc $\widehat{AEB} = \widehat{ACB}$. Comme $D$ est sur $[AE]$, $\widehat{DEB} = \widehat{AEB} = \widehat{ACB}$.
- *L'angle en $B$.* Les points $A$ et $B$ sont du même côté de $(CE)$, donc $\widehat{CBE} = \widehat{CAE} = \widehat{CAD}$, et d'après l'étape 1, $\widehat{CAD} = \widehat{DBA}$. Comme $D$ est à l'intérieur de l'angle $\widehat{ABC}$ et $C$ à l'intérieur de l'angle $\widehat{DBE}$,
$$\widehat{DBE} = \widehat{DBC} + \widehat{CBE} = \widehat{DBC} + \widehat{DBA} = \widehat{ABC}.$$

Les triangles $DBE$ et $ABC$ ont donc deux angles égaux deux à deux, en $B$ et en $E$ pour le premier, en $B$ et en $C$ pour le second. Ils sont semblables, avec $D \to A$, $B \to B$, $E \to C$. Donc

$$\frac{DE}{AC} = \frac{DB}{AB}, \qquad \text{donc} \qquad DE = DB \times \frac{AC}{AB}.$$

**Conclusion.** Les étapes 2 et 3 donnent $DA = DE$. Comme $D$ est sur le segment $[AE]$, le point $D$ est le milieu de $[AE]$.

## Going further

1. Montrez que $\widehat{ADB} = \widehat{ADC} = 180^\circ - \widehat{BAC}$, puis que $\widehat{BDC} = 2\,\widehat{BAC}$.
2. Déduisez de l'étape 2 que $DA^2 = DB \times DC$.
